# 0 "src/asm.S"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/riscv64-linux-gnu/include/stdc-predef.h" 1 3
# 0 "<command-line>" 2
# 1 "src/asm.S"
# 0 "src/threads.S"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "/usr/riscv64-linux-gnu/include/stdc-predef.h" 1 3
# 0 "<command-line>" 2
# 1 "src/threads.S"
.global kernel_switch_thread
.global thread_stub
.global setjmp
.global longjmp
.global supervisorTrap
.global syscall
.global kernel_thread_stub

.align 4
kernel_switch_thread:
    # a0 = Pointer to old Context struct
    # a1 = Pointer to new Context struct

    # Save

    sd ra, 0(a0)
    sd sp, 8(a0)
    sd s0, 16(a0)
    sd s1, 24(a0)
    sd s2, 32(a0)
    sd s3, 40(a0)
    sd s4, 48(a0)
    sd s5, 56(a0)
    sd s6, 64(a0)
    sd s7, 72(a0)
    sd s8, 80(a0)
    sd s9, 88(a0)
    sd s10, 96(a0)
    sd s11, 104(a0)

    # Restore

    ld ra, 0(a1)
    ld sp, 8(a1)
    ld s0, 16(a1)
    ld s1, 24(a1)
    ld s2, 32(a1)
    ld s3, 40(a1)
    ld s4, 48(a1)
    ld s5, 56(a1)
    ld s6, 64(a1)
    ld s7, 72(a1)
    ld s8, 80(a1)
    ld s9, 88(a1)
    ld s10, 96(a1)
    ld s11, 104(a1)

    # 3. Jump to the restored 'ra' using the restored 'sp'
    ret

.align 4
kernel_thread_stub:
    csrw sscratch, s3
    csrrs zero, sstatus, 2

    mv a0, s1
    jalr s0

    call kernel_thread_exit
.align 4
thread_stub:
    # s0 start routine
    # s1 arg
    # s2 thread exit ptr
    # s3 kernel stack top

    csrw sscratch, s3

    li t0, 0x100
    csrc sstatus, t0

    li t0, 0x20
    csrs sstatus, t0

    csrw sepc, s0

    mv a0, s1
    mv ra, s2

    sret

.align 4
setjmp:
    sd ra, 0(a0)
    sd sp, 8(a0)
    sd s0, 16(a0)
    sd s1, 24(a0)
    sd s2, 32(a0)
    sd s3, 40(a0)
    sd s4, 48(a0)
    sd s5, 56(a0)
    sd s6, 64(a0)
    sd s7, 72(a0)
    sd s8, 80(a0)
    sd s9, 88(a0)
    sd s10, 96(a0)
    sd s11, 104(a0)

    li a0, 0 # Direct invocations of setjmp always return 0
    ret

.align 4
longjmp:
    ld ra, 0(a0)
    ld sp, 8(a0)
    ld s0, 16(a0)
    ld s1, 24(a0)
    ld s2, 32(a0)
    ld s3, 40(a0)
    ld s4, 48(a0)
    ld s5, 56(a0)
    ld s6, 64(a0)
    ld s7, 72(a0)
    ld s8, 80(a0)
    ld s9, 88(a0)
    ld s10, 96(a0)
    ld s11, 104(a0)

    mv a0, a1
    bnez a0, .exit
    li a0, 1
.exit:
    ret

.align 4
supervisorTrap:
    csrrw sp, sscratch, sp

    addi sp, sp, -272

    sd ra, 0(sp)
    sd gp, 16(sp)
    sd tp, 24(sp)
    sd t0, 32(sp)
    sd t1, 40(sp)
    sd t2, 48(sp)
    sd s0, 56(sp)
    sd s1, 64(sp)
    sd a0, 72(sp)
    sd a1, 80(sp)
    sd a2, 88(sp)
    sd a3, 96(sp)
    sd a4, 104(sp)
    sd a5, 112(sp)
    sd a6, 120(sp)
    sd a7, 128(sp)
    sd s2, 136(sp)
    sd s3, 144(sp)
    sd s4, 152(sp)
    sd s5, 160(sp)
    sd s6, 168(sp)
    sd s7, 176(sp)
    sd s8, 184(sp)
    sd s9, 192(sp)
    sd s10, 200(sp)
    sd s11, 208(sp)
    sd t3, 216(sp)
    sd t4, 224(sp)
    sd t5, 232(sp)
    sd t6, 240(sp)

    csrr t0, sscratch
    sd t0, 8(sp)

    csrr t0, sepc
    sd t0, 248(sp)
    csrr t1, sstatus
    sd t1, 256(sp)

    mv a0, sp


    call handleTrap


    mv sp, a0

    ld t0, 248(sp)
    csrw sepc, t0
    ld t1, 256(sp)
    csrw sstatus, t1

    ld ra, 0(sp)
    ld gp, 16(sp)
    ld tp, 24(sp)
    ld t1, 40(sp)
    ld t2, 48(sp)
    ld s0, 56(sp)
    ld s1, 64(sp)
    ld a0, 72(sp)
    ld a1, 80(sp)
    ld a2, 88(sp)
    ld a3, 96(sp)
    ld a4, 104(sp)
    ld a5, 112(sp)
    ld a6, 120(sp)
    ld a7, 128(sp)
    ld s2, 136(sp)
    ld s3, 144(sp)
    ld s4, 152(sp)
    ld s5, 160(sp)
    ld s6, 168(sp)
    ld s7, 176(sp)
    ld s8, 184(sp)
    ld s9, 192(sp)
    ld s10, 200(sp)
    ld s11, 208(sp)
    ld t3, 216(sp)
    ld t4, 224(sp)
    ld t5, 232(sp)
    ld t6, 240(sp)

    addi t0, sp, 272
    csrw sscratch, t0
    ld t0, 32(sp)
    ld sp, 8(sp)
    sret

syscall:
# a0 = code
# a1 = arg0
# a2 = arg1
# a3 = arg2
# a4 = arg3
# a5 = arg4

    ecall

    ret
