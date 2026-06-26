.section .entry_os
.global _entry
_entry:
    la sp, stack_top

    call start
loop:
    j loop

.section .bss
.align 12
stack_bottom:
.space 4096 * 4
stack_top:

