/****************************************************************************
 Module
   Can_TransmitService.c

 Revision
   1.0.1

 Description
   ES Framework service for can control

 Notes

 History
 When           Who     What/Why
 -------------- ---     --------
 11/10/16 06:49 jw       started implementation of can service
 01/15/12 11:12 jec      revisions for Gen2 framework
 11/07/11 11:26 jec      made the queue static
 10/30/11 17:59 jec      fixed references to CurrentEvent in RunTemplateSM()
 10/23/11 18:20 jec      began conversion from SMTemplate.c (02/20/07 rev)
****************************************************************************/
/*----------------------------- Include Files -----------------------------*/
/* include header files for this state machine as well as any machines at the
   next lower level in the hierarchy that are sub-machines to this machine
*/
//std c libraries
#include "ES_Types.h"

//framework headers
#include "ES_Configure.h"
#include "ES_Framework.h"

//module includes
#include "Can_XmitService.h"

/*----------------------------- Module Defines ----------------------------*/
#define ONE_SEC 50
#define HALF_SEC ONE_SEC/2
#define TENTH_SEC ONE_SEC/10
#define THREE_SEC ONE_SEC*3
#define TOGGLE_TIME ONE_SEC
#define RX_NODE
//#define TX_NODE
/*---------------------------- Module Functions ---------------------------*/
/* prototypes for private functions for this machine.They should be functions
   relevant to the behavior of this state machine
*/
static void InitCanHardware(void);
static void InitPins(void);
static void ToggleDebugLED(void);

/*---------------------------- Module Variables ---------------------------*/
// everybody needs a state variable, you may need others as well.
// type of state variable should match that of enum in header file

// with the introduction of Gen2, we need a module level Priority var as well
static uint8_t MyPriority;//module-level variables



/*------------------------------ Module Code ------------------------------*/
/****************************************************************************
 Function
     InitPatternControlService

 Parameters
     uint8_t : the priority of this service

 Returns
     bool, false if error in initialization, true otherwise

 Description
     Saves away the priority, sets up the initial transition and does any
     other required initialization for this state machine
 Notes

 Author
     J. Edward Carryer, 10/23/11, 18:55
****************************************************************************/
bool InitCan_XmitService( uint8_t Priority )
{
  ES_Event ThisEvent;

  MyPriority = Priority;

   //post the initial transition event
  ThisEvent.EventType = ES_INIT;
  if (ES_PostToService( MyPriority, ThisEvent) == true)
  {
      return true;
  }else
  {
      return false;
  }
}

/****************************************************************************
 Function
     Post_CanTransmitService

 Parameters
     EF_Event ThisEvent , the event to post to the queue

 Returns
     boolean False if the Enqueue operation failed, True otherwise

 Description
     Posts an event to this state machine's queue
 Notes

 Author
     J. Edward Carryer, 10/23/11, 19:25
****************************************************************************/
bool PostCan_XmitService( ES_Event ThisEvent )
{
  return ES_PostToService( MyPriority, ThisEvent);
}


/****************************************************************************
 Function
    RunCan_TransmitService

 Parameters
   ES_Event : the event to process

 Returns
   ES_Event, ES_NO_EVENT if no error ES_ERROR otherwise

 Description
   add your description here
 Notes
   uses nested switch/case to implement the machine.
 Author
   J. Edward Carryer, 01/15/12, 15:23
****************************************************************************/
ES_Event RunCan_XmitService( ES_Event ThisEvent )
{
  ES_Event ReturnEvent;

  if (ThisEvent.EventType == ES_INIT) {
     InitPins();
     InitCanHardware();
     #ifdef TX_NODE
        XmitData(0xAA);
     #endif
  } 
  if (ThisEvent.EventType == ES_TIMEOUT) {
        if (ThisEvent.EventParam == CAN_DEBUG_TIMER) {
            #ifdef RX_NODE
                ToggleDebugLED();
            #endif
            #ifdef TX_NODE
                XmitData(0xAA);
            #endif
        }
  }
  ReturnEvent.EventType = ES_NO_EVENT; // assume no errors
  return ReturnEvent;
}

void XmitData(uint8_t DataByte) {
    TXB0CONbits.TXREQ = 0;
    // For testing Can transmit
    TXB0D0 = DataByte;
    // Load message identifier
//    TXB0SIDL = 0x00;
//    TXB0SIDH = 0b00100000; //only SID0 set
    TXB0SIDH = 0b10101010;
    TXB0SIDL = 0b10100000;
    // Set Data Length and RTR pg. 291
    TXB0DLC = 0b00000001; // 1 byte for now w/ RTR cleared
    TXB0CONbits.TXPRI0 = 1; //highest priority level
    TXB0CONbits.TXPRI1 = 1;
    // Mark ready for transmission
    TXB0CONbits.TXREQ = 1;
    //TXB0CON = 0b00001000;
}

void CanXmitResponse(void) 
{
    TXB0CONbits.TXREQ = 0;
    #ifdef TX_NODE
        ES_Timer_InitTimer(CAN_DEBUG_TIMER, TOGGLE_TIME);   
    #endif
}

void CanRCVResponse(void)
{
    if (RXB0CONbits.RXFUL == 1) {
        RXB0CONbits.RXFUL = 0;
    #ifdef RX_NODE
        ES_Timer_InitTimer(CAN_DEBUG_TIMER, TOGGLE_TIME);   
    #endif
    }
}

void CanErrorResponse(void) 
{
    if (LATA0 == 1) {
        LATA0 = 0;
    } else if (LATA0 == 0) {
        LATA0 = 1;
    }
}

void BusErrorResponse(void)
{
    if (LATA2 == 1) {
            LATA2 = 0;
    } else if (LATA2 == 0) {
        LATA2 = 1;
    }
}

/***************************************************************************
 private functions
 ***************************************************************************/
static void InitCanHardware(void)
{
	// 2. Ensure that the ECAN module is in Configuration
	// mode.
	CANCON = 0x80; //Request Configuration Mode p. 282
	// 3. Select ECAN Operational mode.
    while (CANSTATbits.OPMODE2 != 1);
    CIOCON = 0x20;
	// 4. Set up the Baud Rate registers.
	// page 317 (125kb/sec))
    
//    BRGCON1bits.SJW0 = 1; // Synchronization jump width time = 2 x TQ
//    BRGCON2bits.SAM = 1; // Bus line is sampled three times prior to the sample point
//    BRGCON2bits.SEG2PHTS = 1; // Seg2 length freely programmable
//    BRGCON2bits.PRSEG1 = 1; // Propagation time = 3 x TQ
//    BRGCON2bits.SEG1PH0 = 1; // Phase Segment 1 time = 8 x TQ
//    BRGCON2bits.SEG1PH1 = 1; 
//    BRGCON2bits.SEG1PH2 = 1; 
//    BRGCON3bits.SEG2PH0 = 1; // Phase Segment 2 time = 4 x TQ
//    BRGCON3bits.SEG2PH1 = 1;
//    BRGCON1bits.BRP0 = 1; // TQ = (2 x 4)/FOSC > 500 ns
//    BRGCON1bits.BRP1 = 1;
    
    //114 kbs baud rate
    BRGCON2bits.SEG2PHTS = 1; //freely programmable SEG2PH

    BRGCON1bits.BRP0 = 0;
    BRGCON1bits.BRP1 = 1;
    BRGCON1bits.BRP2 = 1;
    BRGCON1bits.BRP3 = 0;
    
    BRGCON2bits.PRSEG0 = 0; //1 TQ
    BRGCON2bits.PRSEG1 = 0;
    BRGCON2bits.PRSEG2 = 0;
    
    BRGCON2bits.SEG1PH0 = 0; //1 TQ
    BRGCON2bits.SEG1PH1 = 0;
    BRGCON2bits.SEG1PH2 = 0;
    
    BRGCON3bits.SEG2PH0 = 1; //2 TQ
    BRGCON3bits.SEG2PH1 = 0;
    BRGCON3bits.SEG2PH2 = 0;
    
    BRGCON1bits.SJW0 = 0; //1 TQ
    
	// 5. Set up the Filter and Mask registers.
    //Set up Filter to receive everything for now by making mask all 0's
    //RXM0SIDH and L??? p. 309
    
    
    RXB0CONbits.RXB0DBEN = 0; //No Receive Buffer 0 overflow to Receive Buffer 1 
    
    #ifdef RX_NODE
        RXB0CONbits.RXM0 = 1; //Receive all messages (including those with errors); filter criteria is ignored 
        RXB0CONbits.RXM1 = 1;
        //RXF0SIDH = 0x00;
        //RXF0SIDL = 0b00100000; //only SID0 set
        RXF0SIDH = 0x10101010;
        RXF0SIDL = 0b10100000;
        RXM0SIDH = 0x00; //set mask as 0 to accept everything for now
        RXM0SIDL = 0b00000000; //accept all  
    #endif

    #ifdef TX_NODE
        RXF0SIDH = 0x00;
        RXF0SIDL = 0b01000000; //only SID1 set
        RXM0SIDH = 0x00; //set mask as 0 to accept everything for now
        RXM0SIDL = 0b01100000; //only check SID0 and SID1   
    #endif
    
    // 6. Set the ECAN module to normal mode or any
	// other mode required by the application logic.
    ECANCON = 0x00; // Set in MODE 0 (should be default already)
	CANCON = 0b00010000; //Return to normal request mode
    while (CANSTATbits.OPMODE2 != 0); // wait to return to normal mode
    
    // Enable Interrupts
    RXB0IE = 1; //enable interrupt
    ERRIE = 1; // Can module error
    IRXIE = 1; // CAN Bus error
    
    
	// Clear TXREQ to get buffer ready for transmission
    RXB0IF = 0;
    ERRIF = 0;
    IRXIF = 0;
    #ifdef TX_NODE
        TXB0IE = 1; //enable interrupt
        TXB0IF = 0; //clear flag
        TXB0CONbits.TXREQ = 0;
    #endif
    RXB0CONbits.RXFUL = 0; //make sure buffer is cleared
}

static void InitPins(void) 
{
 // 1. Initial LAT and TRIS bits for RX (RB3)and TX (RB2) CAN.
  PORTB = 0x00; // Clear portB
  LATB = 0x00; // Clear Data Latches
  PORTA = 0x00; // Clear portA
  LATA = 0x00; // Clear Data Latches
  ADCON1 = 0x0F; //Set as digital
  TRISAbits.TRISA0 = 0; // Set as output (0 is output))
  TRISAbits.TRISA1 = 0;
  TRISAbits.TRISA2 = 0;
  TRISAbits.TRISA3 = 0;
  TRISBbits.TRISB2 = 0; // Set RB2 as output
  TRISBbits.TRISB3 = 1; // Set RB3 as input
  LATA1 = 0; //Set low initially
  LATA0 = 0; // Set low initially
  LATA2 = 0;
  LATA3 = 1;
  LATB2 = 0;
}

static void ToggleDebugLED(void)
{
    if (LATA1 == 1) {
        LATA1 = 0;
    } else if (LATA1 == 0) {
        LATA1 = 1;
    } 
}

