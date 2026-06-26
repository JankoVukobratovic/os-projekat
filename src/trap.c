//
// Created by janko on 5/19/26.
//

// ReSharper disable CppDFAUnreadVariable
#ifdef __cplusplus
extern "C" {



#endif

#include "../h/kernel_trap.h"
#include "../lib/hw.h"
#include "../h/syscall_c.h"
#include "../h/kernel_mem.h"
#include "../h/kernel_atomics.h"
#include "../h/kernel_threading.h"
#include "../h/kernel_synchronized.h"
#include "../h/kernel_console.h"

extern void set_timer(uint64 stime_value);

void kernel_trap_init()
{
    extern void supervisorTrap();

    asm volatile("csrw stvec, %0" : : "r"(supervisorTrap));
}

void handle_syscall(TrapContext* frame)
{
    const uint64 syscall_code = frame->a0;
    const uint64 arg0 = frame->a1;
    const uint64 arg1 = frame->a2;
    const uint64 arg2 = frame->a3;
    const uint64 arg3 = frame->a4;
    const uint64 arg4 = frame->a5;
    switch (syscall_code)
    {
    case ECALL_MEM_ALLOC:
        {
            const size_t bytes_requested = (size_t)arg0;
            void* allocated_ptr = kernel_mem_alloc(bytes_requested);

            frame->a0 = (uint64)allocated_ptr;
            break;
        }
    case ECALL_MEM_FREE:
        {
            void* ptr_to_free = (void*)arg0;
            const int result = kernel_mem_free(ptr_to_free);

            frame->a0 = (uint64)result;
            break;
        }
    case ECALL_MEM_SET:
        {
            void* dest_ptr = (void*)arg0;
            const char value = (char)arg1;
            const size_t size = (size_t)arg2;

            void* result_ptr = kernel_memset(dest_ptr, value, size);

            frame->a0 = (uint64)result_ptr;
            break;
        }
    case ECALL_THREAD_DISPATCH:
        {
            kernel_thread_dispatch();
            break;
        }
    case ECALL_THREAD_CREATE:
        {
            thread_t* user_handle = (thread_t*)arg0;
            void (*start_routine)(void*) = (void (*)(void*))arg1;
            void* thread_arg = (void*)arg2;
            frame->a0 = kernel_thread_create_active(user_handle, start_routine, thread_arg, 0);

            break;
        }
    case ECALL_THREAD_EXIT:
        {
            // No need to touch sepc here because this thread's execution frame is
            // being destroyed or recycled by the supervisor.
            kernel_thread_exit();
            break;
        }
    case ECALL_THREAD_JOIN:
        {
            const thread_t target = (thread_t)arg0;
            frame->a0 = kernel_thread_join(target);
            break;
        }

    case ECALL_THREAD_JOIN_ALL:
        {
            frame->a0 = kernel_thread_join_all();
            break;
        }
    case ECALL_SEM_OPEN:
        {
            sem_t* user_handle = (sem_t*)arg0;
            const uint64 init_value = arg1;

            const int result = kernel_sem_new(user_handle, init_value);

            frame->a0 = (uint64)result;
            break;
        }
    case ECALL_SEM_CLOSE:
        {
            const sem_t user_handle = (sem_t)arg0;

            const int result = kernel_sem_close(user_handle); //todo

            frame->a0 = (uint64)result;
            break;
        }
    case ECALL_SEM_WAIT:
        {
            //   __putc('W');
            const sem_t sem_id = (sem_t)arg0;

            const int result = kernel_sem_wait(sem_id);

            frame->a0 = (uint64)result;
            break;
        }
    case ECALL_SEM_SIGNAL:
        {
            const sem_t sem_id = (sem_t)arg0;

            const int result = kernel_sem_signal(sem_id);

            frame->a0 = (uint64)result;
            break;
        }
    case ECALL_SLEEP:
        {
            const uint64 sleep_time = arg0;
            frame->a0 = kernel_thread_sleep(sleep_time);
            break;
        }
    case ECALL_RW_BUFFER_OPEN:
        {
            rw_buffer_t* handle = (rw_buffer_t*)arg0;
            const uint64 capacity = arg1;
            frame->a0 = (uint64)kernel_rw_buffer_open(handle, capacity);
            break;
        }
    case ECALL_RW_BUFFER_CLOSE:
        {
            const rw_buffer_t handle = (rw_buffer_t)arg0;
            frame->a0 = (uint64)kernel_rw_buffer_close(handle);
            break;
        }
    case ECALL_RW_BUFFER_WRITE:
        {
            const rw_buffer_t handle = (rw_buffer_t)arg0;
            const void* src = (const void*)arg1;
            const uint64 size = arg2;
            frame->a0 = (uint64)kernel_rw_buffer_write(handle, src, size);
            break;
        }
    case ECALL_RW_BUFFER_READ:
        {
            const rw_buffer_t handle = (rw_buffer_t)arg0;
            void* dst = (void*)arg1;
            const uint64 size = arg2;
            frame->a0 = (uint64)kernel_rw_buffer_read(handle, dst, size);
            break;
        }
    case ECALL_CONSOLE_PUTC:
        {
            const char c = (char)arg0;
            kernel_putc(c);
            frame->a0 = 0;
            break;
        }
    case ECALL_CONSOLE_GETC:
        {
            frame->a0 = (uint64)kernel_getc();
            break;
        }
    case ECALL_CONSOLE_PUTS:
        {
            const char* s = (const char*)arg0;
            kernel_puts(s);
            frame->a0 = 0;
            break;
        }
    case ECALL_CONSOLE_GETS:
        {
            char* buf = (char*)arg0;
            const int max = (int)arg1;
            kernel_gets(buf, max);
            frame->a0 = 0;
            break;
        }
    default:
        frame->a0 = -1;
        break;
    }
}

void handle_timer(void)
{
    int lock = intr_save();

    uint64 sip_mask = (1ULL << 1);
    asm volatile("csrc sip, %0" : : "r"(sip_mask));

    kernel_scheduler_update_sleeping_threads(1);

    if (kernel_scheduler_tick(1))
    {
        thread_t current = kernel_scheduler_get_current_thread();
        if (current != NULL)
        {
            kernel_thread_dispatch();
        }
    }
    intr_restore(lock);
}

void handle_console(void)
{
    const int irq = plic_claim();
    if (irq == (int)CONSOLE_IRQ)
    {
        kernel_console_irq_handler();
    }
    plic_complete(irq);
}

TrapContext* handleTrap(TrapContext* frame)
{
    uint64 a7 = frame->a7;
    uint64 scause_val;
    asm volatile ("csrr %0, scause" : "=r" (scause_val));

    uint64 is_interrupt = scause_val & (1ULL << 63);
    uint64 code = scause_val & ~(1ULL << 63); // Strip bit 63

    if (scause_val == 0x08 || scause_val == 0x09)
    {
        handle_syscall(frame);
        frame->sepc += 4;
    }
    else if (is_interrupt && code == 1)
    {
        handle_timer();
    }
    else if (is_interrupt && code == 9)
    {
        handle_console();
    }
    else
    {
        kernel_puts("\nPANIC but of my own doing\n");
        kernel_puts("THREAD ERROR! STOPPING THREAD\n");
        kernel_thread_exit();
        kernel_puts("Ok shouldnt be here really... yielding anyway...\n");
        while (1) kernel_thread_dispatch();
    }

    return frame;
}

#ifdef __cplusplus
}
#endif
