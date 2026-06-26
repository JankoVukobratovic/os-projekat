//
// Created by janko on 6/15/26.
//
#include "../h/syscall_cpp.hpp"

#include "syscall_c.h"

void* operator new(const size_t size)
{
    return mem_alloc(size);
}

void operator delete(void* ptr)
{
    mem_free(ptr);
}


Thread::Thread(void (*body)(void*), void* arg)
    : myHandle(nullptr), body(body), arg(arg)
{
}

Thread::Thread()
    : myHandle(nullptr), body(nullptr), arg(nullptr)
{
}

Thread::~Thread()
{
    //todo mark the thread as dead and make sure scheduler cleans it up instaed of switching to it
}

int Thread::start()
{
    if (body != nullptr)
    {
        return thread_create(&myHandle, body, arg);
    }
    else
    {
        return thread_create(&myHandle, runWrapper, this);
    }
}

PeriodicThread::PeriodicThread(const time_t period)
    : Thread(), period(period), running(false)
{
}

void PeriodicThread::terminate()
{
    running = false;
}

void PeriodicThread::run()
{
    running = true;
    // ReSharper disable once CppDFAConstantConditions
    // ReSharper disable once CppDFAEndlessLoop
    while (running)
    {
        Thread::sleep(period);
        // ReSharper disable once CppDFAConstantConditions
        if (!running) break;
        periodicActivation();
    }
}


void Thread::dispatch()
{
    thread_dispatch();
}

int Thread::sleep(time_t t)
{
    return time_sleep(t);
}


Semaphore::Semaphore(const int init)
{
    sem_t handle;
    sem_open(&handle, init);
    myHandle = handle; //fking clang tidy
}

Semaphore::~Semaphore()
{
    sem_close(myHandle);
}

int Semaphore::wait() const
{
    return sem_wait(myHandle);
}

int Semaphore::signal() const
{
    return sem_signal(myHandle);
}

RWBuffer::RWBuffer(const uint64 capacity)
{
    rw_buffer_t handle;
    rw_buffer_open(&handle, capacity);
    myHandle = handle;
}

RWBuffer::~RWBuffer()
{
    rw_buffer_close(myHandle);
}

int RWBuffer::write(const void* src, const uint64 size) const
{
    return rw_buffer_write(myHandle, src, size);
}

int RWBuffer::read(void* dst, const uint64 size) const
{
    return rw_buffer_read(myHandle, dst, size);
}

char Console::getc()
{
    return ::getc();
}
void Console::putc(const char c)
{
    ::putc(c);
}
void Console::puts(const char* s)
{
    ::puts(s);
}
void Console::gets(char* buf, const int max)
{
    ::gets(buf, max);
}
