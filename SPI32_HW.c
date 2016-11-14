
/****************************************************************************
 Module
   SPI32_HW.c

 Revision
   1.0.1

 Description
   Hardware SPI interface module for PIC18F2480

 Notes

 History
 When           Who     What/Why
 -------------- ---     --------
 10/28/16 17:40 lxw		 revised for 218d & PIC18F2480
 02/01/16 17:00 lxw		 revised for lab 8 & team project
 11/10/15 20:50 lxw		 completed placeholder service template
****************************************************************************/
/*----------------------------- Include Files -----------------------------*/
/* include header files for the framework and this service
*/

#include "SPI32_HW.h"
#include "SPI32_Defs.h"

#include "ES_Types.h"
#include "ES_Configure.h"
#include "ES_Framework.h"

#include "SPI32_ControlService.h"
#include <stdio.h>

/*----------------------------- Module Defines ----------------------------*/

/*---------------------------- Module Functions ---------------------------*/
/* prototypes for private functions for this service.They should be functions
   relevant to the behavior of this service
*/
static void HW_Init(void);

/*---------------------------- Module Variables ---------------------------*/

/*------------------------------ Module Code ------------------------------*/

/****************************************************************************
 Function
   SPI32_Init

 Parameters
   void

 Returns
   void

 Description
   initializes 32bit SPI communications HW
 Notes
   
 Author
   lxw, 02/11/16, 00:05
****************************************************************************/
void SPI32_Init(void){
	 //initialize hardware and EOT interrupt
	HW_Init();
}

/****************************************************************************
 Function
 SendByte

 Parameters
   uint8_t: newByte

 Returns
    None
 
  Description
    Writes to the SSBUF register to transmit data. If the buffer is not done
    sending, keep trying to send again until the buffer is full

****************************************************************************/
void SPI32_SendByte(uint8_t newByte) {
//    if (FirstSend == true) { //BF will be 0 at start
//        FirstSend = false;
//        SSPBUF = Data;
//    } else if (SSPSTATbits.BF != 0) { //If all bits have been sent
//        uint8_t dummy = SSPBUF;//read from buffer and discard data (resets BF))
//        SSPBUF = Data; //Set Buffer to Data
//    } else { // try sending again
////        ES_Timer_InitTimer(SPI_TEST_TIMER, ONE_SEC);
//        ES_Event ThisEvent;
//        ThisEvent.EventType = BUF_NOT_READY;
//        PostSPI_Service(ThisEvent);
//    }
    SSPBUF = newByte; //Write to buffer
}

/****************************************************************************
 Function
   HW_Init

 Parameters
   void

 Returns
   void

 Description
   initializes SPI functionality
 Notes
   
 Author
   lxw, 02/15/16, 02:45
****************************************************************************/
static void HW_Init(void){

/* SPI Initialization Code from Jeanny */
//See Page 13 for pins
    // RC5 for Data output
    // RC3 for CLK as output
    PORTC = 0x00; // Clear portC
    LATC = 0x00; // Clear Data Latches
    ADCON1 = 0x0F; //Set all pins as digital
    TRISC = 0x00; //(0 = output))
    
    SSPIE = 1; // Enable MSSP interrupt
    // To reconfigure SPI: clear SSPEN, reinitialize SSPCONx, set SSPEN
	//Set SSP Enable Bit and SSPEN of SSPCON1 register
    //Configure SDI, SDO, SCK, SS as serial
    SSPCON1 = 0x00; //Clear SSPCON1
    SSPSTAT = 0b01000000; //XMit occurs from active to idle clk state (CKE, 6))
    SSPADD = 0xFF;
    SSPCON1 = 0b00110000; //Set idle high (CKP, 4) and enable on (SSPEN 5), FOSC/4 speed)
	
}

/****************************************************************************
 Function
   SPI32_EOTResponse

 Parameters
	void

 Returns
  void

 Description
	EOT interrupt response for serial communication
 Notes
   
 Author
   lxw, 02/15/16, 16:20
****************************************************************************/
void SPI32_EOTResponse(void){
	 //start transmission byte delay timer
	//ES_Timer_InitTimer(SPI_BYTE_DELAY_TIMER, BYTE_XFER_DELAY);
    ES_Event EOTevent;
    EOTevent.EventType = ES_TIMEOUT;
    PostSPI32ControlService(EOTevent);
}
