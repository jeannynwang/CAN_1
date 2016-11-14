/****************************************************************************
 Module
     Pattern_RGBPatterns.h
 Description
     header file for pattern control of a RGB LED strip
 Notes

 History
 When           Who     What/Why
 -------------- ---     --------
 10/28/16 02:00 lxw      first pass
*****************************************************************************/

#ifndef Pattern_RGBPatterns_H
#define Pattern_RGBPatterns_H

 //the common headers for C99 types 
#include "ES_Types.h"

 //function prototypes
void SetupPattern(uint8_t *configs, uint8_t numPixels);
uint32_t * UpdatePattern(void);
void ResetPattern(void);

#endif /* Pattern_RGBPatterns_H */
