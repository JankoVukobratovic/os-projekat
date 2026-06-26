OUTPUT_ARCH( "riscv" )
ENTRY( _entry )

PHDRS
{
  text PT_LOAD FLAGS(5);  /* R + X */
  data PT_LOAD FLAGS(6);  /* R + W */
}

SECTIONS
{
  . = 0x80000000;
  .text : {
    *(.entry_os) . = ALIGN(0x1000);
    *(.text .text.*)
    . = ALIGN(0x1000);
    PROVIDE(etext = .);
  } :text
  .rodata : {
    . = ALIGN(16);
    *(.srodata .srodata.*)
    . = ALIGN(16);
    *(.rodata .rodata.*)
  } :data
  .data : {
    . = ALIGN(16);
    *(.sdata .sdata.*)
    . = ALIGN(16);
    *(.data .data.*)
  } :data
  .bss : {
    . = ALIGN(16);
    *(.sbss .sbss.*)
    . = ALIGN(16);
    *(.bss .bss.*)
  } :data
  PROVIDE(end = .);
}