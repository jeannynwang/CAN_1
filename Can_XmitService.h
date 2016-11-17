/****************************************************************************
 Module
     Can_XmitService.h
 Description
     header file for pattern control of a RGB LED strip
 Notes

 History
 When           Who     What/Why
 -------------- ---     --------
 10/28/16 02:00 lxw      first pass
*****************************************************************************/

#ifndef CAN_XMITSERVICE_H
#define CAN_XMITSERVICE_H

 //the common headers for C99 types 
#include "ES_Types.h"

 //function prototypes
bool InitCan_XmitService( uint8_t Priority );
bool PostCan_XmitService( ES_Event ThisEvent );
ES_Event RunCan_XmitService( ES_Event ThisEvent );
void CanXmitResponse(void); 
void CanRCVResponse(void);
void XmitData(uint8_t* DataBytes);
void CanErrorResponse(void);
void BusErrorResponse(void);

#endif /* CAN_XMITSERVICE_H */
