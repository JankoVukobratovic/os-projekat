//
// Created by janko on 5/20/26.
//
#include "../lib/hw.h"
void* malloc(size_t size) {
    register uint64 a7_reg asm("a7") = 0x01; // Syscall identifier
    register uint64 a1_reg asm("a1") = size; // Target size parameter
    register uint64 a0_reg asm("a0");        // Placeholder for allocation pointer
    asm volatile (
        "ecall"
        : "=r" (a0_reg)
        : "r" (a7_reg), "r" (a1_reg)
        : "memory"
    );
    return (void*)a0_reg;
}

void memset(void* ptr, int value, size_t size) {
    char* byte_ptr = (char*)ptr;

    for (size_t i = 0; i < size; i++) {
        byte_ptr[i] = value;
    }
}

int free(void* ptr) {
    register uint64 a7_reg asm("a7") = 0x02; // Syscall identifier
    register uint64 a1_reg asm("a1") = (uint64)ptr;
    register uint64 a0_reg asm("a0");
    asm volatile (
        "ecall"
        : "=r" (a0_reg)
        : "r" (a7_reg), "r" (a1_reg)
        : "memory"
    );
    return (int)a0_reg;
}