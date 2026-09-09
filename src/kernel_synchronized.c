//
// Created by janko on 6/22/26.
//

#include "../h/kernel_synchronized.h"

#include "../h/kernel_atomics.h"
#include "../h/kernel_mem.h"

int kernel_rw_buffer_close(rw_buffer_t handle)
{
    if (!handle) return -1;
    kernel_sem_close(handle->empty);
    kernel_sem_close(handle->full);
    kernel_sem_close(handle->wr_mtx);
    kernel_sem_close(handle->rd_mtx);
    kernel_mem_free(handle->buf);
    kernel_mem_free(handle);
    return 0;
}


int kernel_rw_buffer_open(rw_buffer_t* handle, uint64 capacity)
{
    const int lock = intr_save();
    const rw_buffer_t buf = (rw_buffer_t)(kernel_mem_alloc(sizeof(struct _rw_buffer)));
    if (!buf)
    {
        intr_restore(lock);
        return -1;
    }

    buf->buf = (uint8*)(kernel_mem_alloc(capacity));
    if (!buf->buf)
    {
        kernel_mem_free(buf);
        intr_restore(lock);
        return -1;
    }

    buf->capacity = capacity;
    buf->rd = 0;
    buf->wr = 0;
    buf->empty = (sem_t)NULL;
    buf->full = (sem_t)NULL;
    buf->wr_mtx = (sem_t)NULL;
    buf->rd_mtx = (sem_t)NULL;
    intr_restore(lock);

    if (kernel_sem_new(&(buf->empty), capacity) < 0) goto fail;
    if (kernel_sem_new(&(buf->full), 0) < 0) goto fail;
    if (kernel_sem_new(&(buf->wr_mtx), 1) < 0) goto fail;
    if (kernel_sem_new(&(buf->rd_mtx), 1) < 0) goto fail;
    *handle = buf;
    return 0;

    fail:
        if (buf->empty) kernel_sem_close(buf->empty);
    if (buf->full) kernel_sem_close(buf->full);
    if (buf->wr_mtx) kernel_sem_close(buf->wr_mtx);
    if (buf->rd_mtx) kernel_sem_close(buf->rd_mtx);
    kernel_mem_free(buf->buf);
    kernel_mem_free(buf);
    return -1;
}


int kernel_rw_buffer_write(const rw_buffer_t handle, const void* src, const uint64 size)
{
    if (!handle || !src || size == 0) return -1;

    if (kernel_sem_wait(handle->wr_mtx) < 0) return -1;
    int result = 0;
    uint8* const src_bytes = (uint8*)(src);
    for (uint64 i = 0; i < size; i++)
    {
        if (kernel_sem_wait(handle->empty) < 0)
        {
            result = -1;
            break;
        }
        const int lock = intr_save();
        handle->buf[handle->wr] = src_bytes[i];
        handle->wr = (handle->wr + 1) % handle->capacity;
        intr_restore(lock);
        kernel_sem_signal(handle->full);
    }


    kernel_sem_signal(handle->wr_mtx);
    return result;
}

void __putc(char c);

int kernel_rw_buffer_read(const rw_buffer_t handle, void* dst, const uint64 size)
{
    if (!handle || !dst || size == 0) return -1;

    if (kernel_sem_wait(handle->rd_mtx) < 0) return -1;

    uint8* const dst_bytes = (uint8*)(dst);
    int result = 0;
    for (uint64 i = 0; i < size; i++)
    {
        if (kernel_sem_wait(handle->full) < 0)
        {
            result = -1;
            break;
        }
        const int lock = intr_save();
        dst_bytes[i] = handle->buf[handle->rd];
        handle->rd = (handle->rd + 1) % handle->capacity;
        intr_restore(lock);
        kernel_sem_signal(handle->empty);
    }
    kernel_sem_signal(handle->rd_mtx);
    return result;
}

