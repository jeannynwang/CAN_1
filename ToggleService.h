/* 
 * File:   ToggleService.h
 * Author: jordanm1
 *
 * Created on May 4, 2016, 8:55 PM
 */

#ifndef TOGGLESERVICE_H
#define	TOGGLESERVICE_H

#include "ES_Types.h"

// Public Function Prototypes

bool InitToggleService ( uint8_t Priority );
bool PostToggleService( ES_Event ThisEvent );
ES_Event RunToggleService( ES_Event ThisEvent );

#endif	/* TOGGLESERVICE_H */

