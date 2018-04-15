/* Entry Point */
ENTRY(Reset_Handler)
/* Set stack top to end of RAM. */
__StackTop = 0x20100000;

SECTIONS
{

    .text : 
    {
        
        *(.text)
	. = 0x10000000; 
	KEEP(*(.isr_vector))
    
    } 
    .data : { *(.data) } 
    .bss : { *(.bss) }  

}


