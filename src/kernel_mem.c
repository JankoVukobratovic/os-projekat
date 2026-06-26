//
// Created by janko on 5/19/26.
//
#include "../lib/hw.h"
#include "../h/kernel_mem.h"

#include "../h/kernel_threading.h"

#define MAGIC_FREE 0x123456789ABCDEF
#define MAGIC_TAKEN 0x412321412413512
#define mem_of(mem) (mem+sizeof(FreeMem))

typedef struct _freeMem
{
    struct _freeMem* next;
    uint64 magic; //sits here to align with header[1]
    struct _freeMem* prev;
    uint64 size;
} FreeMem;

FreeMem* free_head;
int initialized;

void kernel_mem_init()
{
    if (initialized)
    {
        return;
    }
    const int lock = intr_save();
    if (!initialized)
    {
        free_head = (FreeMem*)HEAP_START_ADDR;

        free_head->size = (size_t)((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR);
        free_head->next = NULL;
        free_head->prev = NULL;
        free_head->magic = MAGIC_FREE;

        initialized = 1;
    }
    intr_restore(lock);
}

void* kernel_mem_alloc(size_t size)
{
    if (!initialized)
    {
        kernel_mem_init();
    }

    if (size == 0)
    {
        return NULL;
    }


    if (size < MEM_BLOCK_SIZE) size = MEM_BLOCK_SIZE;
    const size_t total_blocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE + 1; //for size header, magic number
    size_t requested_bytes = total_blocks * MEM_BLOCK_SIZE;

    const int lock = intr_save();

    FreeMem* curr = free_head;
    while (curr && curr->size < requested_bytes)
    {
        curr = curr->next;
    }

    // Out of memory
    if (!curr)
    {
        intr_restore(lock);
        return NULL;
    }

    const size_t remaining_bytes = curr->size - requested_bytes;
    FreeMem* allocated_chunk = curr;

    if (remaining_bytes >= MEM_BLOCK_SIZE)
    {
        FreeMem* new_free_node = (FreeMem*)((char*)curr + requested_bytes);
        new_free_node->size = remaining_bytes;
        new_free_node->next = curr->next;
        new_free_node->magic = MAGIC_FREE;
        new_free_node->prev = curr->prev;

        if (curr->prev)
        {
            curr->prev->next = new_free_node;
        }
        else
        {
            free_head = new_free_node;
        }

        if (curr->next)
        {
            curr->next->prev = new_free_node;
        }
    }
    else
    {
        // Leftover space is too small to form a block; absorb it completely
        requested_bytes = curr->size;

        if (curr->prev)
        {
            curr->prev->next = curr->next;
        }
        else
        {
            free_head = curr->next;
        }

        if (curr->next)
        {
            curr->next->prev = curr->prev;
        }
    }
    size_t* header = (size_t*)allocated_chunk;
    header[0] = requested_bytes;
    header[1] = MAGIC_TAKEN;

    intr_restore(lock);
    return (void*)((char*)allocated_chunk + 1 * MEM_BLOCK_SIZE);
}

int kernel_mem_free(void* ptr)
{
    if (!ptr) return 0;
    if (!initialized) return -2;

    const int lock = intr_save();
    char* chunk_start = (char*)ptr - 1 * MEM_BLOCK_SIZE;
    if (((size_t*)chunk_start)[1] != MAGIC_TAKEN)
    {
        intr_restore(lock);
        return -1; //double free
    }
    const size_t chunk_size = ((size_t*)chunk_start)[0];
    FreeMem* new_node = (FreeMem*)chunk_start;
    new_node->size = chunk_size;
    new_node->magic = MAGIC_FREE;

    if (!free_head)
    {
        new_node->next = NULL;
        new_node->prev = NULL;
        free_head = new_node;
        intr_restore(lock);
        return 0;
    }

    FreeMem* curr = free_head;
    while (curr && curr < new_node)
    {
        if (!curr->next || curr->next > new_node)
        {
            break;
        }
        curr = curr->next;
    }

    if (new_node < free_head)
    {
        new_node->next = free_head;
        new_node->prev = NULL;
        free_head->prev = new_node;
        free_head = new_node;

        if ((char*)new_node + new_node->size == (char*)new_node->next)
        {
            new_node->size += new_node->next->size;
            new_node->next = new_node->next->next;
            if (new_node->next) new_node->next->prev = new_node;
        }
    }
    else
    {
        if (curr)
        {
            new_node->next = curr->next;
            if (curr->next) curr->next->prev = new_node;
            curr->next = new_node;
        }
        new_node->prev = curr;

        if (new_node->next && (char*)new_node + new_node->size == (char*)new_node->next)
        {
            new_node->size += new_node->next->size;
            new_node->next = new_node->next->next;
            if (new_node->next) new_node->next->prev = new_node;
        }

        if (curr && (char*)curr + curr->size == (char*)new_node)
        {
            curr->size += new_node->size;
            curr->next = new_node->next;
            if (new_node->next) new_node->next->prev = curr;
        }
    }
    intr_restore(lock);
    return 0;
}

void* kernel_memset(void* ptr, uint64 value, size_t size)
{
    uint64* int64_ptr = (uint64*)ptr;
    while (size >= 8) {
        *int64_ptr = value;
        int64_ptr++;
        size -= 8;
    }
    return ptr;
}
