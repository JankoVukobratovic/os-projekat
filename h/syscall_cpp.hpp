//
// Created by janko on 6/11/26.
//

#pragma once

#include "syscall_c.h"
#include "systypes_c.hpp"

void * operator new(size_t);

void operator delete(void *);

class Thread {
public:
    Thread(void(*body)(void*), void*arg);

    virtual ~Thread();
    int start();
    static void dispatch();
    static int sleep(time_t);
protected:
    Thread();
    virtual void run()
    {
    }
private:
    static void runWrapper(void* arg) {
        static_cast<Thread*>(arg)->run();
    }

    thread_t myHandle;
    void (*body)(void *);
    void *arg;
};




class Semaphore {
public:
    explicit Semaphore(int init = 1);

    virtual
    ~Semaphore();
    int wait() const;
    int signal() const;
private:
    sem_t myHandle;
};

class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    void run() override;
    explicit PeriodicThread (time_t period);
    virtual void periodicActivation () {}
private:
    time_t period;
    bool running;
};

class RWBuffer {
public:
    explicit RWBuffer(uint64 capacity);
    virtual ~RWBuffer();
    int write(const void* src, uint64 size) const;
    int read(void* dst, uint64 size) const;
private:
    rw_buffer_t myHandle;
};

template <typename T>
class TypedRWBuffer : public RWBuffer {
public:
    explicit TypedRWBuffer(const uint64 count) : RWBuffer(count * sizeof(T)) {}
    int write(const T& item) const { return RWBuffer::write(&item, sizeof(T)); }
    int read(T& item)        const { return RWBuffer::read (&item, sizeof(T)); }
};

class Console {
public:
    static char getc();
    static void putc(char c);
    static void puts(const char* s);
    static void gets(char* buf, int max);
};
