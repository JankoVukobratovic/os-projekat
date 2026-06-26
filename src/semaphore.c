//
// Created by janko on 6/6/26.
//

#include "../h/kernel_mem.h"
#include "../h/systypes_c.hpp"
#include "../h/kernel_atomics.h"
#include "../h/kernel_threading.h"
#include "../lib/hw.h"


int kernel_sem_new(sem_t* handle, const uint64 val)
{
    const int lock = intr_save();
    sem_t sem = kernel_mem_alloc(sizeof(struct _sem));
    if (sem == NULL)
    {
        intr_restore(lock);
        return -1;
    }

    sem->wait_queue = NULL;
    sem->value = val;
    intr_restore(lock);
    *handle = sem;
    return 0;
}

int kernel_sem_close(const sem_t handle)
{
    if (handle == NULL)
        return -1;

    const int intr_state = intr_save();

    thread_t waiter = handle->wait_queue;
    while (waiter != NULL)
    {
        const thread_t next = waiter->next;
        waiter->wakeup_retval = -1;
        waiter->state = THREAD_READY;
        kernel_scheduler_append(waiter);
        waiter = next;
    }
    kernel_mem_free(handle);
    intr_restore(intr_state);
    return 0;
}

int kernel_sem_wait(const sem_t sem)
{
    if (sem == NULL)
    {
        return -1;
    }
    const int intr_state = intr_save();
    const thread_t current = kernel_scheduler_get_current_thread();

    if (current == NULL)
    {
        intr_restore(intr_state);
        return -1;
    }

    sem->value--;
    if (sem->value < 0)
    {
        current->state = THREAD_BLOCKED;
        current->next = sem->wait_queue;
        sem->wait_queue = current;

        kernel_thread_dispatch();
        const int retval = current->wakeup_retval;
        intr_restore(intr_state);
        return retval;
    }
    intr_restore(intr_state);
    return 0;
}


int kernel_sem_signal(sem_t sem)
{
    if (sem == NULL)
    {
        return -1;
    }
    const int intr_state = intr_save();
    sem->value++;
    if (sem->value <= 0)
    {
        const thread_t wakeup = sem->wait_queue;
        if (wakeup == NULL)
        {
            intr_restore(intr_state);
            return 0;
        }
        sem->wait_queue = wakeup->next;
        wakeup->state = THREAD_READY;
        kernel_scheduler_append(wakeup);
    }
    intr_restore(intr_state);
    return 0;
}
