/* Vector Table Mapped to Address 0 at Reset */


.section .isr_vector 	
    .long    __StackTop         /* Initial Top of Stack */
    .long    Reset_Handler      /* Reset Handler */
    .long    0                  /* NMI Handler*/     
    .long    0         		/* Hard Fault Handler*/
    .long    0         		/* MPU Fault Handler*/
    .long    0         		/* Bus Fault Handler*/
    .long    0       		/* Usage Fault Handler*/
    .long    0      		/* Secure Fault Handler*/
    .long    0                  /* Reserved*/
    .long    0                  /* Reserved*/
    .long    0                  /* Reserved*/
    .long    0             	/* SVCall Handler*/
    .long    0         		/* Debug Monitor Handler*/
    .long    0                  /* Reserved*/
    .long    0           	/* PendSV Handler*/
    .long    0           	/* SysTick Handler*/

                /* External Interrupts*/
    .long    0            	/* 0:  Watchdog Timer*/
    .long    0           	/*  1:  Real Time Clock*/
    .long    0           	/*  2:  Timer0 / Timer1*/
    .long    0          	/*  3:  Timer2 / Timer3*/
    .long    0        		/*  4:  MCIa*/
    .long    0        		/*  5:  MCIb*/
    .long    0          	/*  6:  UART0 - DUT FPGA*/
    .long    0          	/*  7:  UART1 - DUT FPGA*/
    .long    0         		/*  8:  UART2 - DUT FPGA*/
    .long    0         		/*  9:  UART4 - not connected*/
    .long    0          	/* 10: AACI / AC97*/
    .long    0           	/* 11: CLCD Combined Interrupt*/
    .long    0          	/* 12: Ethernet*/
    .long    0       		/* 13: USB Device*/
    .long    0         		/* 14: USB Host Controller*/
    .long    0        		/* 15: Character LCD*/
    .long    0      		/* 16: Flexray*/
    .long    0           	/* 17: CAN*/
    .long    0            	/* 18: LIN*/
    .long    0          	/* 19: I2C ADC/DAC*/
    .long    0                  /* 20: Reserved*/
    .long    0                  /* 21: Reserved*/
    .long    0                  /* 22: Reserved*/
    .long    0                  /* 23: Reserved*/
    .long    0                  /* 24: Reserved*/
    .long    0                  /* 25: Reserved*/
    .long    0                  /* 26: Reserved*/
    .long    0                  /* 27: Reserved*/
    .long    0       		/* 28: Reserved - CPU FPGA CLCD*/
    .long    0                  /* 29: Reserved - CPU FPGA*/
    .long    0         		/* 30: UART3    - CPU FPGA*/
    .long    0         		/* 31: SPI Touchscreen - CPU FPGA*/     


.text
.global Reset_Handler
Reset_Handler:  
    ldr     R0, = main
    bx      R0
         
