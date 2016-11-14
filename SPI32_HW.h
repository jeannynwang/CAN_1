/****************************************************************************
 Module
     SPI32_HW.h
 Description
     header file for pattern control of a RGB LED strip
 Notes

 History
 When           Who     What/Why
 -------------- ---     --------
 10/28/16 02:00 lxw      first pass
*****************************************************************************/

#ifndef SPI32_HW_H
#define SPI32_HW_H

 //the common headers for C99 types 
#include "ES_Types.h"

 //function prototypes
void SPI32_Init(void);
void SPI32_SendByte(uint8_t newByte);
void SPI32_EOTResponse(void);

#endif /* SPI32_HW_H */
