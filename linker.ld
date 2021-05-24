ENTRY(start)

SECTIONS
{
	. = 1M;
	/* Multiboot header*/
	.rodata BLOCK(4K) : ALIGN(4K)
	{
		*(.multiboot)
	}
	/*Executable Code*/
	.text BLOCK(4K) : ALIGN(4K)
	{
		*(.text)
	}
	/*Read-only data*/
	.rodata BLOCK(4K) : ALIGN(4K)
	{
		*(.rodata)
	}
	/*Read-write data which is initialized */
	.data BLOCK(4K) : ALIGN(4K)
	{
		*(.data)
	}
	/*Read-write data which is uninitialized and stack */
	.bss BLOCK(4K) : ALIGN(4K)
	{
		*(COMMON)
		*(.bss)
	}
}
