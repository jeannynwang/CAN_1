/****************************************************************************
 
  Header file for the DotStar Pattern Control Service
  based on the Gen2 Events and Services Framework

 ****************************************************************************/

#ifndef Pattern_ControlService_H
#define Pattern_ControlService_H

// Event Definitions
#include "ES_Configure.h" /* gets us event definitions */
#include "ES_Types.h"     /* gets bool type for returns */

// typedefs for the states
// State definitions for use with the query function
typedef enum { Pattern_Startup, Pattern_Off, Pattern_Running, Pattern_Paused } PatternState_t ;

// Public Function Prototypes
bool InitPatternControlService( uint8_t Priority );
bool PostPatternControlService( ES_Event ThisEvent );
ES_Event RunPatternControlService( ES_Event ThisEvent );

uint8_t * GetPatternConfigs(void);
//void SetNumPixels(uint8_t numPixels);  *************TODO
void SetPattern(uint8_t PatternID);
void SetBrightness(uint8_t brightness);
void SetProfile(uint8_t profileID);
void SetPatternSpeed(uint8_t speed);

#endif /* Pattern_ControlService_H */

