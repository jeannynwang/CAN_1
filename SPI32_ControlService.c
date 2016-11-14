/****************************************************************************
 Module
   SPI32_ControlService.c

 Revision
   1.0.1

 Description
   ES Framework service for control of SPI32s displayed on a DotStar LED
   strip.

 Notes

 History
 When           Who     What/Why
 -------------- ---     --------
 10/27/16 04:20 lxw      started implementation of SPI32 control service
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
#include "SPI32_ControlService.h"
#include "SPI32_HW.h"
#include "SPI32_Defs.h"

/*----------------------------- Module Defines ----------------------------*/
              
/*---------------------------- Module Functions ---------------------------*/
/* prototypes for private functions for this machine.They should be functions
   relevant to the behavior of this state machine
*/
static uint32_t GetNextFrame(void);

/*---------------------------- Module Variables ---------------------------*/
// everybody needs a state variable, you may need others as well.
// type of state variable should match that of enum in header file
static SPI32State_t CurrentState;

// with the introduction of Gen2, we need a module level Priority var as well
static uint8_t MyPriority;//module-level variables

static uint8_t  FrameIndex;
static uint8_t  NumFrames;
static uint32_t *FramePointer;
static uint32_t CurrentFrame;

/*------------------------------ Module Code ------------------------------*/

/****************************************************************************
 Function
     InitSPI32ControlService

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
bool InitSPI32ControlService( uint8_t Priority )
{
  ES_Event ThisEvent;

  MyPriority = Priority;
   //initialize SPI hardware
  SPI32_Init();
   //set initial state
  CurrentState = SPI32_Startup;
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
     PostSPI32ControlService

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
bool PostSPI32ControlService( ES_Event ThisEvent ){
  return ES_PostToService( MyPriority, ThisEvent);
}

/****************************************************************************
 Function
    RunSPI32ControlService

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
ES_Event RunSPI32ControlService( ES_Event ThisEvent )
{
    ES_Event ReturnEvent;
    ReturnEvent.EventType = ES_NO_EVENT; // assume no errors
 
    switch ( CurrentState ) {
	   
    	 //if current state is Startup
		case SPI32_Startup :
             //if receiving an initial event
            if(ThisEvent.EventType == ES_INIT){
                 //Add any debug functions or self-checks here
                /*												*/
                 //change state to waiting for send
                CurrentState = SPI32_Waiting4Send;
            }
		break;
    
	     //if current state is Waiting4Send
		case SPI32_Waiting4Send :
             //if receiving a new transmission request
            if(ThisEvent.EventType == SPI32_TRANSMIT){
                 //get the first frame to send
                CurrentFrame = GetNextFrame();
                 //send the first byte
                SPI32_SendByte(CurrentFrame>>24);
                 //change state to sending 1st byte
                CurrentState = SPI32_SendingByte1;
            }
		break;
		
		 //if current state is SendByte1
		case SPI32_SendingByte1 :
             //if receiving a timeout event (EOT)
            if(ThisEvent.EventType == ES_TIMEOUT){
                 //send the next byte
                SPI32_SendByte(CurrentFrame>>16);
                 //change state to sending 2nd byte
                CurrentState = SPI32_SendingByte2;
            }
            
		break;
		
		 //if current state is SendByte2
		case SPI32_SendingByte2 :
             //if receiving a timeout event (EOT)
            if(ThisEvent.EventType == ES_TIMEOUT){
                 //send the next byte
                SPI32_SendByte(CurrentFrame>>8);
                 //change state to sending 3rd byte
                CurrentState = SPI32_SendingByte3;
            }
            
		break;
		
		 //if current state is SendByte3
		case SPI32_SendingByte3 :
             //if receiving a timeout event (EOT)
            if(ThisEvent.EventType == ES_TIMEOUT){
                 //send the next byte
                SPI32_SendByte(CurrentFrame);
                 //change state to sending 4th byte
                CurrentState = SPI32_SendingByte4;
            }
		break;
		
		 //if current state is SendByte4
		case SPI32_SendingByte4 :
             //if receiving a timeout event (EOT)
            if(ThisEvent.EventType == ES_TIMEOUT){
                 //if this is not the last frame
                if(FrameIndex++ < NumFrames-1){
                     //get the next frame to send
                    FramePointer++;
                    CurrentFrame = GetNextFrame();
                     //send the first byte
                    SPI32_SendByte(CurrentFrame>>24);
                     //change state to sending 1st byte
                    CurrentState = SPI32_SendingByte1;
                }
                 //otherwise...
                else{
                     //end the transmission (return to waiting state)
                    CurrentState = SPI32_Waiting4Send;
                }
            }
		break;

    }                                  // end switch on Current State
    return ReturnEvent;
}

void SPI32_TransmitFrames(uint32_t *framePointer, uint8_t numFrames){
     //if SPI service is available
    if(CurrentState == SPI32_Waiting4Send){
         //reset frame index
        FrameIndex = 0;
         //store pointer to frames
        FramePointer = framePointer;
         //store number of frames to send
        NumFrames = numFrames;
        ES_Event transmitEvent;
        transmitEvent.EventType = SPI32_TRANSMIT;
        PostSPI32ControlService(transmitEvent);
    }
}

/***************************************************************************
 private functions
 ***************************************************************************/

static uint32_t GetNextFrame(void){
	return *(FramePointer);
}