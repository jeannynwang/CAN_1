/****************************************************************************
 Module
   Pattern_DotStarLED.c

 Revision
   1.0.1 

 Description
   Hardware and pattern control for DotStar LED strip.

 Notes
   
   
 History
 When            Who     What/Why
 --------------- ---     --------
 10/028/16 01:30 lxw     first pass
****************************************************************************/

#include "ES_Types.h"
#include "string.h"

#include "ES_Configure.h"
#include "ES_Framework.h"

#include "Pattern_DotStarLED.h"
#include "Pattern_Defs.h"
#include "SPI32_ControlService.h"

#define FIRST_PIXEL 1
#define HEAD        0
#define HEAD_FRAME  0x0
#define TAIL        Length+1
#define TAIL_FRAME  0xffffffff
#define OFF_FRAME   0xe0000000

static uint8_t Length;
static uint32_t PixelFrames[MAX_STRIP_LENGTH+2];
static uint32_t OffFrames[MAX_STRIP_LENGTH+2];

void DotStar_Init(uint8_t numPixels){
    /*
     insert error checking for numPixels = 0 || numPixels >= MAX_STRIP_LENGTH
      and pre-established SPI communication ********************* TODO
    */
    
	 //initialize SPI hardware registers
	//SPI32_Init(); //****already done by SPI service... there might be a better way to do this
     //set number of pixels
    Length = numPixels;
     //setup PatternFrames
    PixelFrames[HEAD] = HEAD_FRAME;
    PixelFrames[TAIL] = TAIL_FRAME;
     //setup OffFrames
    OffFrames[HEAD] = HEAD_FRAME;
    OffFrames[TAIL] = TAIL_FRAME;
    for(uint8_t i=1;i<=Length;i++){
        OffFrames[i] = OFF_FRAME;
    }
}

uint8_t DotStar_GetLength(void){
    return Length;
}

void DotStar_Show(uint32_t *pixelPointer){
     //add pixelPointer's values to PixelFrames
    memcpy(PixelFrames+1, pixelPointer, sizeof(uint32_t)*Length); //***** check this.... TODO
     //start SPI transmission of PixelFrames
    SPI32_TransmitFrames(PixelFrames,Length+2);
}

void DotStar_Off(void){
     //start SPI transmission of OffFrames (RGB value of 0x000000)
    SPI32_TransmitFrames(OffFrames,Length+2);
}
