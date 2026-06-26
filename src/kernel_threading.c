#include "../h/kernel_threading.h"
#include "../h/kernel_mem.h"
#include "../lib/hw.h"
#include "../h/kernel_console.h"
#include "../h/systypes_c.hpp"
#include "../h/kernel_atomics.h"

int active_worker_threads = 0;


extern void thread_stub(void);

static uint64 global_thread_id = 0;

int kernel_thread_create(thread_t* handle, void (*method)(void*), void* args, int is_system_thread)
{
    const thread_t new_thread = (thread_t)kernel_mem_alloc(sizeof(struct _thread));
    if (new_thread == NULL) return -1;

    void* stack_mem = kernel_mem_alloc(DEFAULT_STACK_SIZE);
    if (stack_mem == NULL)
    {
        kernel_mem_free(new_thread);
        return -1;
    }

    void* kernel_stack = kernel_mem_alloc(DEFAULT_STACK_SIZE);
    if (kernel_stack == NULL)
    {
        kernel_mem_free(new_thread);
        kernel_mem_free(stack_mem);
        return -1;
    }

    kernel_memset(&new_thread->context, 0, sizeof(Context));

//    extern int thread_exit();
    extern void kernel_thread_stub();

    const uint64 sp_top = (uint64)stack_mem + DEFAULT_STACK_SIZE & ~0xF;
    const uint64 ksp_top = (uint64)kernel_stack + DEFAULT_STACK_SIZE & ~0xF;
    new_thread->is_system = is_system_thread;

    const thread_t current = kernel_scheduler_get_current_thread();

    new_thread->parent = current;
    new_thread->active_children = 0;

    kernel_sem_new(&new_thread->join_sem, 0);
    kernel_sem_new(&new_thread->join_all_sem, 0);

    if (current != NULL && !is_system_thread)
    {
        current->active_children++;
    }

    if (is_system_thread)
    {
        new_thread->context.sp = sp_top;
        new_thread->context.ra = (uint64)kernel_thread_stub;
        new_thread->stack_memory = NULL;
        new_thread->context.s3 = ksp_top;
    }
    else
    {
        // --- User Mode Thread Configuration ---
        new_thread->context.sp = sp_top;
        new_thread->context.ra = (uint64)thread_stub;

        // Specific registers expected by the user context switch wrapper
        new_thread->context.s2 = (uint64)thread_exit; // Forged return address safety net
        new_thread->context.s3 = ksp_top; // Backing kernel stack top for sscratch
    }
    new_thread->context.s0 = (uint64)method;
    new_thread->context.s1 = (uint64)args;
    new_thread->kernel_stack_top = (void*)ksp_top;
    new_thread->kernel_stack_memory = kernel_stack;

    new_thread->id = global_thread_id++;
    new_thread->state = THREAD_READY;
    new_thread->stack_memory = stack_mem;

    new_thread->time_slice_run = 0;
    new_thread->max_time_slice = DEFAULT_TIME_SLICE;

    new_thread->wakeup_retval = 0;

    *handle = new_thread;
    return 0;
}

int kernel_thread_create_active(thread_t* handle, void (*method)(void*), void* args, int is_system_thread)
{
    if (kernel_thread_create(handle, method, args, is_system_thread))
    {
        return -1;
    }


    if (kernel_thread_start(*handle))
    {
        kernel_putc('E');
    }

    return 0;
}

int kernel_thread_start(const thread_t thread)
{
    if (thread == NULL) return -1;
    thread->state = THREAD_RUNNING;
    kernel_scheduler_append(thread);
    if (!thread->is_system)
    {
        active_worker_threads++;
    }
    return 0;
}

void kernel_thread_exit()
{
    const thread_t current = kernel_scheduler_get_current_thread();
    if (current != NULL)
    {
        current->state = THREAD_FINISHED;
        kernel_thread_dispatch();
    }
    // safeguard just in case

    kernel_puts("PANIC 2\n");
    // ReSharper disable once CppDFAEndlessLoop
    while (1) kernel_thread_dispatch();
}

int kernel_thread_join(thread_t thread)
{
    if (thread == NULL)
    {
        return -1;
    }
    return kernel_sem_wait(thread->join_sem);
}

int kernel_thread_join_all()
{
    const thread_t current = kernel_scheduler_get_current_thread();
    if (current == NULL) return -1;

    while (current->active_children > 0)
    {
        if (kernel_sem_wait(current->join_all_sem) < 0)
        {
            return -1;
        }
    }
    return 0;
}

void kernel_thread_dispatch()
{
    const int int_state = intr_save();
    const thread_t current = kernel_scheduler_get_current_thread();
    const thread_t scheduler = kernel_scheduler_get_scheduler_thread();

    if (current == NULL || //should never happen
        scheduler == NULL || //scheduler not initialized prob.
        current == scheduler)
    {
        intr_restore(int_state);
        return;
    }
    kernel_switch_thread(&current->context, &scheduler->context);
    intr_restore(int_state);
}


typedef struct
{
    thread_t head;
    thread_t tail;
} ReadyQueue;

struct _thread scheduler_thread;
static thread_t current_thread;

static ReadyQueue ready_queue = {
    NULL, NULL
};


#pragma region getters and setters

thread_t kernel_scheduler_get_current_thread(void)
{
    return current_thread;
}

static void scheduler_set_current_thread(const thread_t thread)
{
    current_thread = thread;
}

thread_t kernel_scheduler_get_scheduler_thread(void)
{
    return &scheduler_thread;
}

void kernel_scheduler_append(const thread_t thread)
{
    if (thread == NULL) return;

    thread->next = NULL;

    if (ready_queue.tail == NULL)
    {
        ready_queue.head = thread;
        ready_queue.tail = thread;
    }
    else
    {
        ready_queue.tail->next = thread;
        ready_queue.tail = thread;
    }
}

thread_t kernel_scheduler_pick_next(void)
{
    if (ready_queue.head == NULL)
    {
        return NULL;
    }

    const thread_t thread = ready_queue.head;

    ready_queue.head = ready_queue.head->next;

    if (ready_queue.head == NULL)
    {
        ready_queue.tail = NULL;
    }

    thread->next = NULL;
    return thread;
}

#pragma endregion


#pragma region init and main loop

int kernel_scheduler_init(void)
{
    current_thread = &scheduler_thread;

    kernel_memset(&scheduler_thread, 0, sizeof(struct _thread));
    scheduler_thread.id = 0xFFFFFFFF;
    scheduler_thread.state = THREAD_RUNNING;
    scheduler_thread.stack_memory = NULL; // starting main thread IS the scheduler thread !!!

    scheduler_thread.kernel_stack_memory = kernel_mem_alloc(DEFAULT_STACK_SIZE);
    scheduler_thread.kernel_stack_top = scheduler_thread.kernel_stack_memory + DEFAULT_STACK_SIZE;
    asm volatile("csrw sscratch, %0" :: "r"(scheduler_thread.kernel_stack_top));


    ready_queue.head = NULL;
    ready_queue.tail = NULL;
    return 0;
}

void kernel_scheduler()
{
    Context* scheduler_ctx = &(kernel_scheduler_get_scheduler_thread()->context);

    // ReSharper disable once CppDFAEndlessLoop
    while (1)
    {
        if (active_worker_threads == 0 && kernel_get_write_buffer_count() <= 0)
        {
            break;
        }

        thread_t next = kernel_scheduler_pick_next();

        if (next != NULL && next != current_thread)
        {
            scheduler_set_current_thread(next);
            asm volatile("csrw sscratch, %0" :: "r"(next->kernel_stack_top));

            kernel_switch_thread(scheduler_ctx, &next->context);

            thread_t just_finished = kernel_scheduler_get_current_thread();

            if (just_finished != NULL)
            {
                if (just_finished->state == THREAD_FINISHED)
                {
                    if (!just_finished->is_system)
                    {
                        active_worker_threads--;
                    }

                    while (just_finished->join_sem->wait_queue != NULL)
                    {
                        kernel_sem_signal(just_finished->join_sem);
                    }

                    if (just_finished->parent != NULL && !just_finished->is_system)
                    {
                        just_finished->parent->active_children--;
                        if (just_finished->parent->active_children <= 0) // < just in case
                        {
                            kernel_sem_signal(just_finished->parent->join_all_sem);
                        }
                    }

                    kernel_sem_close(just_finished->join_sem);
                    kernel_sem_close(just_finished->join_all_sem);

                    kernel_mem_free(just_finished->stack_memory);
                    kernel_mem_free(just_finished->kernel_stack_memory);
                    kernel_mem_free(just_finished);
                }
                if (just_finished->state == THREAD_BLOCKED)
                {
                    //
                }
                if (just_finished->state == THREAD_RUNNING || just_finished->state == THREAD_READY)
                {
                    //todo probably decide semantics of this
                    just_finished->state = THREAD_READY;
                    kernel_scheduler_append(just_finished);
                }
                if (just_finished->state == THREAD_SLEEPING)
                {
                    // do nothing really
                }

                scheduler_set_current_thread(NULL);
            }
        }
        else if (next == NULL)
        {
            int lock = intr_save();
            intr_restore(1);
            //__putc('E');
            asm volatile("wfi");
            intr_restore(lock);
        }
        else
        {
        }
    }
    volatile uint32* qemu_power_register = (uint32*)0x100000;
    *qemu_power_register = 0x5555;

    while (1)
    { //should never happen really
        asm volatile("wfi");
    }
}

int kernel_scheduler_tick(const uint64 time)
{
    const thread_t curr = kernel_scheduler_get_current_thread();
    if (curr == NULL) return -1;
    curr->time_slice_run += time;
    if (curr->time_slice_run >= curr->max_time_slice)
    {
        curr->time_slice_run -= curr->max_time_slice;
        return 1;
    }
    return 0;
}

#pragma endregion

#pragma region sleeping
static thread_t sleeping_queue_head = NULL;

int kernel_thread_sleep(uint64 ticks)
{
    const int int_state = intr_save();
    const thread_t current = kernel_scheduler_get_current_thread();

    if (current != NULL)
    {
        current->sleep_timeout = ticks;
        current->state = THREAD_SLEEPING;

        current->next = sleeping_queue_head;
        sleeping_queue_head = current;

        kernel_thread_dispatch();
    }
    else
    {
        return -1;
    }

    intr_restore(int_state);
    return 0;
}

void kernel_scheduler_update_sleeping_threads(const uint64 ticks)
{
    thread_t curr = sleeping_queue_head;
    thread_t prev = NULL;

    while (curr != NULL)
    {
        if (curr->sleep_timeout > 0)
        {
            curr->sleep_timeout -= ticks;
        }

        if (curr->sleep_timeout <= 0)
        {
            const thread_t wakeup = curr;
            if (prev == NULL)
            {
                sleeping_queue_head = curr->next;
            }
            else
            {
                prev->next = curr->next;
            }

            curr = curr->next;

            wakeup->state = THREAD_READY;
            kernel_scheduler_append(wakeup);
        }
        else
        {
            prev = curr;
            curr = curr->next;
        }
    }
}

#pragma endregion

#pragma region blocking


#pragma endregion
