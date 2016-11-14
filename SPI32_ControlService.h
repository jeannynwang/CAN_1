/****************************************************************************
 
  Header file for the DotStar SPI32 Control Service
  based on the Gen2 Events and Services Framework

 ****************************************************************************/

#ifndef SPI32_ControlService_H
#define SPI32_ControlService_H

// Event Definitions
#include "ES_Configure.h" /* gets us event definitions */
#include "ES_Types.h"     /* gets bool type for returns */

// typedefs for the states
// State definitions for use with the query function
typedef enum { SPI32_Startup,
               SPI32_Waiting4Send,
               SPI32_SendingByte1,
               SPI32_SendingByte2,
               SPI32_SendingByte3,
               SPI32_SendingByte4
              } SPI32State_t ;
              
// Public Function Prototypes
bool InitSPI32ControlService( uint8_t Priority );
bool PostSPI32ControlService( ES_Event ThisEvent );
ES_Event RunSPI32ControlService( ES_Event ThisEvent );

void SPI32_TransmitFrames(uint32_t *framePointer, uint8_t numFrames);

#endif /* SPI32_ControlService_H */
