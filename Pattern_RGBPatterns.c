/****************************************************************************
 Module
   Pattern_RGBPatterns.c

 Revision
   1.0.1 

 Description
   Pattern control of a RGB LED strip

 Notes
   
   
 History
 When            Who     What/Why
 --------------- ---     --------
 10/028/16 02:00 lxw     first pass
****************************************************************************/

/*----------------------------- Include Files -----------------------------*/
/* include header files for this state machine as well as any machines at the
   next lower level in the hierarchy that are sub-machines to this machine
*/
//standard c libraries
#include "ES_Types.h"

//framework headers
#include "ES_Configure.h"
#include "ES_Framework.h"

//module includes
#include "Pattern_RGBPatterns.h"
#include "Pattern_Defs.h"

/*----------------------------- Module Defines ----------------------------*/

/*---------------------------- Module Functions ---------------------------*/
/* prototypes for private functions for this machine.They should be functions
   relevant to the behavior of this state machine
*/

/*---------------------------- Module Variables ---------------------------*/
static	uint32_t PixelPattern[MAX_STRIP_LENGTH];
static  uint8_t* PatternConfigs;
static  uint8_t  Length;
static  uint8_t  PatternStepCounter = 0;

#ifdef PATTERN_TEST
static  uint32_t TestColor = 0;
#define NUM_COLORS  13
static  uint32_t GenColors[NUM_COLORS]={
    RED,
    ORANGE,
    YELLOW,
    OLIVE,
    LIME,
    GREEN,
    AQUA,
    TEAL,
    BLUE,
    NAVY,
    FUSCHIA,
    PURPLE,
    MAROON
};
#endif
/*------------------------------ Module Code ------------------------------*/

void SetupPattern(uint8_t *configs, uint8_t numPixels){
     //store pattern configuration pointer
    PatternConfigs = configs;
     //store pixel strip length
    Length = numPixels;
}

uint32_t * UpdatePattern(void){
     //gather configurations
    uint8_t patternID = PatternConfigs[CUR_PATTERN];
    uint8_t brightness = PatternConfigs[BRIGHTNESS];
    
     //based on the current pattern ID...
    switch(patternID){
        
        case NO_PATTERN:
            
        break;
        
        case IDLE_PATTERN:
            
        break;
        
        
        case THINKING_PATTERN:
            
        break;
        
        case SPEAKING_PATTERN:
            
        break;
        
        case LISTENING_PATTERN:
            
        break;
        
        #ifdef PATTERN_TEST
        case TEST_PATTERN:
            for(uint8_t i=0;i<Length;i++){
                PixelPattern[i] = (0xFF000000 | (uint32_t)(i == PatternStepCounter ? GenColors[TestColor] : 0x0));
            }
            PatternStepCounter = (PatternStepCounter+1)%Length;
            if(PatternStepCounter == 0){
                TestColor = (TestColor+1)%NUM_COLORS;
            }
        break;
        #endif
    }
    
    return PixelPattern;
}

void ResetPattern(void){
     //reset pattern step counter
    PatternStepCounter=0;
}
