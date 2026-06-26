//
// Created by janko on 6/11/26.
//

#include "../h/syscall_c.h"

int rw_buffer_open(rw_buffer_t* handle, const uint64 capacity)
{
    return (int)syscall(ECALL_RW_BUFFER_OPEN,
                        (uint64)handle, capacity, 0, 0, 0);
}

int rw_buffer_close(const rw_buffer_t handle)
{
    return (int)syscall(ECALL_RW_BUFFER_CLOSE,
                        (uint64)handle, 0, 0, 0, 0);
}

int rw_buffer_write(const rw_buffer_t handle, const void* src, const uint64 size)
{
    return (int)syscall(ECALL_RW_BUFFER_WRITE,
                        (uint64)handle, (uint64)src, size, 0, 0);
}

int rw_buffer_read(const rw_buffer_t handle, void* dst, const uint64 size)
{
    return (int)syscall(ECALL_RW_BUFFER_READ,
                        (uint64)handle, (uint64)dst, size, 0, 0);
}

void* mem_alloc(const size_t size)
{
    if (size == 0) return NULL;
    return (void*)syscall(ECALL_MEM_ALLOC, (uint64)size, 0, 0, 0, 0);
}

int thread_join(thread_t thread)
{
    if (thread == NULL) return -1;
    return (int)syscall(ECALL_THREAD_JOIN, (uint64)thread, 0, 0, 0, 0);
}

int thread_join_all()
{
    return (int)syscall(ECALL_THREAD_JOIN_ALL, 0, 0, 0, 0, 0);
}

int mem_free(void* ptr)
{
    if (ptr == NULL) return 0;
    return (int)syscall(ECALL_MEM_FREE, (uint64)ptr, 0, 0, 0, 0);
}

void* mem_set(void* ptr, const char value, const size_t size)
{
    if (ptr == NULL) return NULL;
    return (void*)syscall(ECALL_MEM_SET, (uint64)ptr, value, size, 0, 0);
}

int thread_create(thread_t* handle, void (*method)(void*), void* args)
{
    return (int)syscall(ECALL_THREAD_CREATE, (uint64)handle, (uint64)method, (uint64)args, 0, 0);
}

int thread_exit()
{
    return (int)syscall(ECALL_THREAD_EXIT, 0, 0, 0, 0, 0);
}

void thread_dispatch()
{
    syscall(ECALL_THREAD_DISPATCH, 0, 0, 0, 0, 0);
}

int sem_open(sem_t* handle, const uint64 init)
{
    if (handle == NULL) return -1;
    return (int)syscall(ECALL_SEM_OPEN, (uint64)handle, init, 0, 0, 0);
}


int sem_close(sem_t handle)
{
    if (handle == NULL) return -1;
    return (int)syscall(ECALL_SEM_CLOSE, (uint64)handle, 0, 0, 0, 0);
}

int sem_wait(const sem_t id)
{
    if (id == NULL) return -1;
    return (int)syscall(ECALL_SEM_WAIT, (uint64)id, 0, 0, 0, 0);
}

int sem_signal(const sem_t id)
{
    if (id == NULL) return -1;
    return (int)syscall(ECALL_SEM_SIGNAL, (uint64)id, 0, 0, 0, 0);
}

int sem_wait_n(const sem_t id, const unsigned n)
{
    if (id == NULL || n == 0) return -1;
    return (int)syscall(ECALL_SEM_WAIT_N, (uint64)id, (uint64)n, 0, 0, 0);
}

int sem_signal_n(const sem_t id, const unsigned n)
{
    if (id == NULL || n == 0) return -1;
    return (int)syscall(ECALL_SEM_SIGNAL_N, (uint64)id, (uint64)n, 0, 0, 0);
}

int time_sleep(const time_t ticks)
{
    return (int)syscall(ECALL_SLEEP, (uint64)ticks, 0, 0, 0, 0);
}

void puts(const char* s)
{
    syscall(ECALL_CONSOLE_PUTS, (uint64)s, 0, 0, 0, 0);
}
void gets(char* buf, const int max)
{
    syscall(ECALL_CONSOLE_GETS, (uint64)buf, (uint64)max, 0, 0, 0);
}

char getc()
{
    return (char)syscall(ECALL_CONSOLE_GETC, 0, 0, 0, 0, 0);
}

void putc(const char c)
{
    syscall(ECALL_CONSOLE_PUTC, (uint64)c, 0, 0, 0, 0);
}
