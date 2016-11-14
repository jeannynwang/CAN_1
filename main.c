#include "ES_Types.h"
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <PIC18F2480.h>

//#include <xc.h>
#pragma config OSC = IRCIO67
#pragma config WDT = OFF
#pragma config PWRT = OFF
#pragma config MCLRE = ON
#pragma config BOREN = OFF
#pragma config PBADEN = OFF

#include "ES_Configure.h"
#include "ES_Framework.h"
#include "ES_Port.h"

//#define PATTERN_TEST

#define clrScrn() 	printf("\x1b[2J")
#define goHome()	printf("\x1b[1,1H")
#define clrLine()	printf("\x1b[K")

int main(void)
{  
	// Set the PIC clock to run at 8MhZ by setting IRCF in OSCCON to 1111 
    IRCF0 = 1;
    IRCF1 = 1;
    IRCF2 = 1;
    SCS1 = 1;
//    IRCF3 = 1;
    
    // Set up random generator module
    //time_t MyTime = time(NULL);
    //srand((unsigned) time(&t));
	//srand((unsigned int) time(NULL));
    
    ES_Return_t ErrorType;  
   
    
	// When doing testing, it is useful to announce just which program
	// is running.
/*	puts("\rStarting Test Harness for \r");
	printf("the 2nd Generation Events & Services Framework V2.2\r\n");
	printf("%s %s\n",__TIME__, __DATE__);
	printf("\n\r\n");
	printf("Press any key to post key-stroke events to Service 0\n\r");
	printf("Press 'd' to test event deferral \n\r");
	printf("Press 'r' to test event recall \n\r");
*/
	// Your hardware initialization function calls go here

	// now initialize the Events and Services Framework and start it running
	ErrorType = ES_Initialize(ES_Timer_RATE_1mS);
	if ( ErrorType == Success ) {

	  ErrorType = ES_Run();

	}
	//if we got to here, there was an error
	switch (ErrorType){
	  case FailedPost:
	    printf("Failed on attempt to Post\n");
	    break;
	  case FailedPointer:
	    printf("Failed on NULL pointer\n");
	    break;
	  case FailedInit:
	    printf("Failed Initialization\n");
	    break;
	 default:
	    printf("Other Failure\n");
	    break;
	}
	for(;;)
	  ;

}
