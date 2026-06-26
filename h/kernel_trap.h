//
// Created by janko on 5/19/26.
//

#pragma once

#ifdef __cplusplus
extern "C" {
#endif
#include "../lib/hw.h"

    typedef struct {
        uint64 ra; // Offset 0
        uint64 sp; // Offset 8  (Original stack pointer before exception)
        uint64 gp; // Offset 16
        uint64 tp; // Offset 24
        uint64 t0; // Offset 32
        uint64 t1; // Offset 40
        uint64 t2; // Offset 48
        uint64 s0; // Offset 56
        uint64 s1; // Offset 64
        uint64 a0; // Offset 72  (Syscall ID / Return Value)
        uint64 a1; // Offset 80  (Arg 1)
        uint64 a2; // Offset 88  (Arg 2)
        uint64 a3; // Offset 96  (Arg 3)
        uint64 a4; // Offset 104 (Arg 4)
        uint64 a5; // Offset 112
        uint64 a6; // Offset 120
        uint64 a7; // Offset 128
        uint64 s2; // Offset 136
        uint64 s3; // Offset 144
        uint64 s4; // Offset 152
        uint64 s5; // Offset 160
        uint64 s6; // Offset 168
        uint64 s7; // Offset 176
        uint64 s8; // Offset 184
        uint64 s9; // Offset 192
        uint64 s10; // Offset 200
        uint64 s11; // Offset 208
        uint64 t3; // Offset 216
        uint64 t4; // Offset 224
        uint64 t5; // Offset 232
        uint64 t6; // Offset 240
        uint64 sepc; // Offset 248 (Saved Program Counter)
        uint64 sstatus; // Offset 256 (Saved Status Register)
    } TrapContext;

    void kernel_trap_init();

    void supervisor_trap();

    TrapContext* kernel_handle_trap(TrapContext *context) __attribute__((noinline));


#ifdef __cplusplus
}
#endif
