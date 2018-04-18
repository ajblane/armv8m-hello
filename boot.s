

.section .isr_vector 	
    .long    __StackTop         /* Initial Top of Stack */
    .long    Reset_Handler      /* Reset Handler */
   

.text
.global Reset_Handler
Reset_Handler:  
    ldr     R0, = main
    bx      R0
         
