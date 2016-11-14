#line 1 "ES_Framework.c"
#line 1 "ES_Framework.c"

#line 24 "ES_Framework.c"
 
 
#line 1 "./ES_Configure.h"

#line 19 "./ES_Configure.h"
 


#line 23 "./ES_Configure.h"

 



#line 29 "./ES_Configure.h"

 


#line 34 "./ES_Configure.h"

 





#line 42 "./ES_Configure.h"

#line 44 "./ES_Configure.h"

#line 46 "./ES_Configure.h"

#line 48 "./ES_Configure.h"

 



 

#line 56 "./ES_Configure.h"

#line 58 "./ES_Configure.h"

#line 60 "./ES_Configure.h"

#line 62 "./ES_Configure.h"

#line 64 "./ES_Configure.h"
#line 65 "./ES_Configure.h"

 

#line 69 "./ES_Configure.h"
#line 78 "./ES_Configure.h"

 

#line 82 "./ES_Configure.h"
#line 91 "./ES_Configure.h"

 

#line 95 "./ES_Configure.h"
#line 104 "./ES_Configure.h"

 

#line 108 "./ES_Configure.h"
#line 117 "./ES_Configure.h"

 

#line 121 "./ES_Configure.h"
#line 130 "./ES_Configure.h"

 

#line 134 "./ES_Configure.h"
#line 143 "./ES_Configure.h"

 

#line 147 "./ES_Configure.h"
#line 156 "./ES_Configure.h"

 

#line 160 "./ES_Configure.h"
#line 169 "./ES_Configure.h"

 

#line 173 "./ES_Configure.h"
#line 182 "./ES_Configure.h"

 

#line 186 "./ES_Configure.h"
#line 195 "./ES_Configure.h"

 

#line 199 "./ES_Configure.h"
#line 208 "./ES_Configure.h"

 

#line 212 "./ES_Configure.h"
#line 221 "./ES_Configure.h"

 

#line 225 "./ES_Configure.h"
#line 234 "./ES_Configure.h"

 

#line 238 "./ES_Configure.h"
#line 247 "./ES_Configure.h"


 


typedef enum {   
                ES_NO_EVENT = 0,
                ES_ERROR,   
                ES_INIT,    
                ES_TIMEOUT,  
                ES_SHORT_TIMEOUT,  
                 
                PATTERN_START,
                PATTERN_END,
                PATTERN_PAUSE,
                PATTERN_UNPAUSE,
                 
                SPI32_TRANSMIT
            } ES_EventTyp_t;

 



#line 272 "./ES_Configure.h"
#line 273 "./ES_Configure.h"
#line 275 "./ES_Configure.h"
#line 276 "./ES_Configure.h"
#line 278 "./ES_Configure.h"
#line 279 "./ES_Configure.h"
#line 281 "./ES_Configure.h"
#line 282 "./ES_Configure.h"
#line 284 "./ES_Configure.h"
#line 285 "./ES_Configure.h"
#line 287 "./ES_Configure.h"
#line 288 "./ES_Configure.h"
#line 290 "./ES_Configure.h"
#line 291 "./ES_Configure.h"
#line 293 "./ES_Configure.h"
#line 294 "./ES_Configure.h"
#line 296 "./ES_Configure.h"

 

#line 300 "./ES_Configure.h"

 

#line 304 "./ES_Configure.h"

 





#line 312 "./ES_Configure.h"
#line 313 "./ES_Configure.h"
#line 314 "./ES_Configure.h"
#line 315 "./ES_Configure.h"
#line 316 "./ES_Configure.h"
#line 317 "./ES_Configure.h"
#line 318 "./ES_Configure.h"
#line 319 "./ES_Configure.h"
#line 320 "./ES_Configure.h"
#line 321 "./ES_Configure.h"
#line 322 "./ES_Configure.h"
#line 323 "./ES_Configure.h"
#line 324 "./ES_Configure.h"
#line 325 "./ES_Configure.h"
#line 326 "./ES_Configure.h"
#line 327 "./ES_Configure.h"
#line 328 "./ES_Configure.h"

 






#line 337 "./ES_Configure.h"
#line 338 "./ES_Configure.h"
#line 339 "./ES_Configure.h"
#line 26 "ES_Framework.c"

#line 1 "./ES_Framework.h"

#line 14 "./ES_Framework.h"
 


#line 18 "./ES_Framework.h"

#line 1 "./ES_Port.h"

#line 20 "./ES_Port.h"
 

#line 23 "./ES_Port.h"



#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdio.h"

#line 3 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdio.h"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdarg.h"
 


#line 5 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdarg.h"

typedef void* va_list;
#line 8 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdarg.h"
#line 9 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdarg.h"
#line 10 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdarg.h"
#line 11 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdarg.h"
#line 12 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdarg.h"
#line 4 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdio.h"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"
 

#line 4 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"

typedef unsigned char wchar_t;


#line 10 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"
 
typedef signed short int ptrdiff_t;
typedef signed short int ptrdiffram_t;
typedef signed short long int ptrdiffrom_t;


#line 20 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"
 
typedef unsigned short int size_t;
typedef unsigned short int sizeram_t;
typedef unsigned short long int sizerom_t;


#line 34 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"
 
#line 36 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"


#line 41 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"
 
#line 43 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"

#line 45 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stddef.h"
#line 5 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdio.h"



#line 9 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdio.h"
 
#line 11 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdio.h"

#line 13 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdio.h"


typedef unsigned char FILE;

 
#line 19 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdio.h"
#line 20 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdio.h"

extern FILE *stderr;
extern FILE *stdout;


int putc (auto char c, auto FILE *f);
int vsprintf (auto char *buf, auto const far  rom char *fmt, auto va_list ap);
int vprintf (auto const far  rom char *fmt, auto va_list ap);
int sprintf (auto char *buf, auto const far  rom char *fmt, ...);
int printf (auto const far  rom char *fmt, ...);
int fprintf (auto FILE *f, auto const far  rom char *fmt, ...);
int vfprintf (auto FILE *f, auto const far  rom char *fmt, auto va_list ap);
int puts (auto const far  rom char *s);
int fputs (auto const far  rom char *s, auto FILE *f);

#line 36 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdio.h"
#line 26 "./ES_Port.h"



#line 1 "./BITDEFS.H"

#line 3 "./BITDEFS.H"
 

 

#line 8 "./BITDEFS.H"

#line 10 "./BITDEFS.H"
#line 11 "./BITDEFS.H"
#line 12 "./BITDEFS.H"
#line 13 "./BITDEFS.H"
#line 14 "./BITDEFS.H"
#line 15 "./BITDEFS.H"
#line 16 "./BITDEFS.H"
#line 17 "./BITDEFS.H"
#line 18 "./BITDEFS.H"
#line 19 "./BITDEFS.H"
#line 20 "./BITDEFS.H"
#line 21 "./BITDEFS.H"
#line 22 "./BITDEFS.H"
#line 23 "./BITDEFS.H"
#line 24 "./BITDEFS.H"
#line 25 "./BITDEFS.H"
#line 26 "./BITDEFS.H"
#line 27 "./BITDEFS.H"
#line 28 "./BITDEFS.H"
#line 29 "./BITDEFS.H"
#line 30 "./BITDEFS.H"
#line 31 "./BITDEFS.H"
#line 32 "./BITDEFS.H"
#line 33 "./BITDEFS.H"
#line 34 "./BITDEFS.H"
#line 35 "./BITDEFS.H"
#line 36 "./BITDEFS.H"
#line 37 "./BITDEFS.H"
#line 38 "./BITDEFS.H"
#line 39 "./BITDEFS.H"
#line 40 "./BITDEFS.H"
#line 41 "./BITDEFS.H"

#line 43 "./BITDEFS.H"
#line 44 "./BITDEFS.H"
#line 45 "./BITDEFS.H"
#line 46 "./BITDEFS.H"
#line 47 "./BITDEFS.H"
#line 48 "./BITDEFS.H"
#line 49 "./BITDEFS.H"
#line 50 "./BITDEFS.H"
#line 51 "./BITDEFS.H"
#line 52 "./BITDEFS.H"
#line 53 "./BITDEFS.H"
#line 54 "./BITDEFS.H"
#line 55 "./BITDEFS.H"
#line 56 "./BITDEFS.H"
#line 57 "./BITDEFS.H"
#line 58 "./BITDEFS.H"
#line 59 "./BITDEFS.H"
#line 60 "./BITDEFS.H"
#line 61 "./BITDEFS.H"
#line 62 "./BITDEFS.H"
#line 63 "./BITDEFS.H"
#line 64 "./BITDEFS.H"
#line 65 "./BITDEFS.H"
#line 66 "./BITDEFS.H"
#line 67 "./BITDEFS.H"
#line 68 "./BITDEFS.H"
#line 69 "./BITDEFS.H"
#line 70 "./BITDEFS.H"
#line 71 "./BITDEFS.H"
#line 72 "./BITDEFS.H"
#line 73 "./BITDEFS.H"
#line 74 "./BITDEFS.H"

#line 76 "./BITDEFS.H"

#line 29 "./ES_Port.h"
        
#line 1 "./Bin_Const.h"

#line 3 "./Bin_Const.h"


#line 6 "./Bin_Const.h"
 

 

 


#line 15 "./Bin_Const.h"
 

#line 18 "./Bin_Const.h"

 

#line 27 "./Bin_Const.h"
#line 28 "./Bin_Const.h"

 
 

#line 33 "./Bin_Const.h"

 


#line 37 "./Bin_Const.h"
#line 38 "./Bin_Const.h"

 


#line 44 "./Bin_Const.h"
#line 45 "./Bin_Const.h"

#line 47 "./Bin_Const.h"


#line 52 "./Bin_Const.h"
 
#line 30 "./ES_Port.h"
      
#line 1 "./ES_Types.h"

#line 17 "./ES_Types.h"
 

#line 20 "./ES_Types.h"

 
#line 25 "./ES_Types.h"

#line 27 "./ES_Types.h"


 
 
#line 34 "./ES_Types.h"

#line 36 "./ES_Types.h"


#line 39 "./ES_Types.h"
#line 31 "./ES_Port.h"

























 
#line 58 "./ES_Port.h"
 
#line 60 "./ES_Port.h"



#line 70 "./ES_Port.h"
 
typedef enum {	ES_Timer_RATE_OFF  	=   (0),
				ES_Timer_RATE_100uS = 4000-1,
				ES_Timer_RATE_500uS = 20000-1,
				ES_Timer_RATE_1mS	= 40000-1,
				ES_Timer_RATE_2mS	= 80000-1,
				ES_Timer_RATE_4mS	= 160000-1,
				ES_Timer_RATE_5mS	= 200000-1,
				ES_Timer_RATE_8mS	= 320000-1,
				ES_Timer_RATE_10mS	= 400000-1,
				ES_Timer_RATE_16mS	= 640000-1,
				ES_Timer_RATE_32mS	= 1280000-1
} TimerRate_t;




#line 88 "./ES_Port.h"
#line 89 "./ES_Port.h"

#line 91 "./ES_Port.h"
#line 92 "./ES_Port.h"


void _HW_Timer_Init(TimerRate_t Rate);
bool _HW_Process_Pending_Ints( void );
uint16_t _HW_GetTickCount(void);




#line 102 "./ES_Port.h"
#line 19 "./ES_Framework.h"

#line 1 "./ES_Types.h"

#line 17 "./ES_Types.h"
 
#line 25 "./ES_Types.h"
#line 27 "./ES_Types.h"
#line 34 "./ES_Types.h"
#line 36 "./ES_Types.h"
#line 39 "./ES_Types.h"
#line 20 "./ES_Framework.h"

#line 1 "./ES_General.h"

#line 3 "./ES_General.h"

#line 5 "./ES_General.h"

#line 7 "./ES_General.h"
#line 8 "./ES_General.h"

#line 10 "./ES_General.h"
#line 21 "./ES_Framework.h"

#line 1 "./ES_CheckEvents.h"

#line 15 "./ES_CheckEvents.h"
 


#line 19 "./ES_CheckEvents.h"

#line 1 "./ES_Types.h"

#line 17 "./ES_Types.h"
 
#line 25 "./ES_Types.h"
#line 27 "./ES_Types.h"
#line 34 "./ES_Types.h"
#line 36 "./ES_Types.h"
#line 39 "./ES_Types.h"
#line 20 "./ES_CheckEvents.h"


typedef bool CheckFunc( void );

typedef CheckFunc (*pCheckFunc);

bool ES_CheckUserEvents( void );


#line 30 "./ES_CheckEvents.h"
#line 22 "./ES_Framework.h"

#line 1 "./ES_PostList.h"

#line 15 "./ES_PostList.h"
 

#line 18 "./ES_PostList.h"

#line 1 "./ES_Types.h"

#line 17 "./ES_Types.h"
 
#line 25 "./ES_Types.h"
#line 27 "./ES_Types.h"
#line 34 "./ES_Types.h"
#line 36 "./ES_Types.h"
#line 39 "./ES_Types.h"
#line 19 "./ES_PostList.h"

#line 1 "./ES_Events.h"

#line 16 "./ES_Events.h"
 


#line 20 "./ES_Events.h"

#line 1 "./ES_Types.h"

#line 17 "./ES_Types.h"
 
#line 25 "./ES_Types.h"
#line 27 "./ES_Types.h"
#line 34 "./ES_Types.h"
#line 36 "./ES_Types.h"
#line 39 "./ES_Types.h"
#line 21 "./ES_Events.h"

#line 1 "./ES_Configure.h"

#line 19 "./ES_Configure.h"
 

#line 56 "./ES_Configure.h"
#line 65 "./ES_Configure.h"
#line 69 "./ES_Configure.h"
#line 78 "./ES_Configure.h"
#line 82 "./ES_Configure.h"
#line 91 "./ES_Configure.h"
#line 95 "./ES_Configure.h"
#line 104 "./ES_Configure.h"
#line 108 "./ES_Configure.h"
#line 117 "./ES_Configure.h"
#line 121 "./ES_Configure.h"
#line 130 "./ES_Configure.h"
#line 134 "./ES_Configure.h"
#line 143 "./ES_Configure.h"
#line 147 "./ES_Configure.h"
#line 156 "./ES_Configure.h"
#line 160 "./ES_Configure.h"
#line 169 "./ES_Configure.h"
#line 173 "./ES_Configure.h"
#line 182 "./ES_Configure.h"
#line 186 "./ES_Configure.h"
#line 195 "./ES_Configure.h"
#line 199 "./ES_Configure.h"
#line 208 "./ES_Configure.h"
#line 212 "./ES_Configure.h"
#line 221 "./ES_Configure.h"
#line 225 "./ES_Configure.h"
#line 234 "./ES_Configure.h"
#line 238 "./ES_Configure.h"
#line 247 "./ES_Configure.h"
#line 273 "./ES_Configure.h"
#line 275 "./ES_Configure.h"
#line 276 "./ES_Configure.h"
#line 278 "./ES_Configure.h"
#line 279 "./ES_Configure.h"
#line 281 "./ES_Configure.h"
#line 282 "./ES_Configure.h"
#line 284 "./ES_Configure.h"
#line 285 "./ES_Configure.h"
#line 287 "./ES_Configure.h"
#line 288 "./ES_Configure.h"
#line 290 "./ES_Configure.h"
#line 291 "./ES_Configure.h"
#line 293 "./ES_Configure.h"
#line 294 "./ES_Configure.h"
#line 296 "./ES_Configure.h"
#line 339 "./ES_Configure.h"
#line 22 "./ES_Events.h"


typedef struct ES_Event_t {
    ES_EventTyp_t EventType;    
    uint16_t   EventParam;      
}ES_Event;


#line 31 "./ES_Events.h"
#line 20 "./ES_PostList.h"


typedef bool PostFunc_t( ES_Event );

typedef PostFunc_t (*pPostFunc);

bool ES_PostList00( ES_Event);
bool ES_PostList01( ES_Event);
bool ES_PostList02( ES_Event);
bool ES_PostList03( ES_Event);
bool ES_PostList04( ES_Event);
bool ES_PostList05( ES_Event);
bool ES_PostList06( ES_Event);
bool ES_PostList07( ES_Event);

#line 36 "./ES_PostList.h"
#line 23 "./ES_Framework.h"

#line 1 "./ES_Events.h"

#line 16 "./ES_Events.h"
 

#line 31 "./ES_Events.h"
#line 24 "./ES_Framework.h"

#line 1 "./ES_Timers.h"

#line 29 "./ES_Timers.h"
 


#line 33 "./ES_Timers.h"

#line 1 "./ES_Port.h"

#line 20 "./ES_Port.h"
 

#line 70 "./ES_Port.h"
#line 102 "./ES_Port.h"
#line 34 "./ES_Timers.h"

#line 1 "./ES_Types.h"

#line 17 "./ES_Types.h"
 
#line 25 "./ES_Types.h"
#line 27 "./ES_Types.h"
#line 34 "./ES_Types.h"
#line 36 "./ES_Types.h"
#line 39 "./ES_Types.h"
#line 35 "./ES_Timers.h"



typedef enum { ES_Timer_ERR           = -1,
               ES_Timer_ACTIVE        =  1,
               ES_Timer_OK            =  0,
               ES_Timer_NOT_ACTIVE    =  0
} ES_TimerReturn_t;

void             ES_Timer_Init(TimerRate_t Rate);
void             ES_Timer_Tick_Resp(void);
ES_TimerReturn_t ES_Timer_InitTimer(uint8_t Num, uint16_t NewTime);
ES_TimerReturn_t ES_Timer_SetTimer(uint8_t Num, uint16_t NewTime);
ES_TimerReturn_t ES_Timer_StartTimer(uint8_t Num);
ES_TimerReturn_t ES_Timer_StopTimer(uint8_t Num);
uint16_t         ES_Timer_GetTime(void);

#line 53 "./ES_Timers.h"
 


#line 25 "./ES_Framework.h"


typedef enum {
              Success = 0,
              FailedPost = 1,
              FailedRun,
              FailedPointer,
              FailedIndex,
              FailedInit
} ES_Return_t;

ES_Return_t ES_Initialize( TimerRate_t NewRate  );
ES_Return_t ES_Run( void );
bool ES_PostAll( ES_Event ThisEvent );
bool ES_PostToService( uint8_t WhichService, ES_Event ThisEvent);
bool ES_PostToServiceLIFO( uint8_t WhichService, ES_Event TheEvent);

#line 43 "./ES_Framework.h"
#line 27 "ES_Framework.c"

#line 1 "./ES_Queue.h"

#line 16 "./ES_Queue.h"
 

#line 19 "./ES_Queue.h"

#line 1 "./ES_Types.h"

#line 17 "./ES_Types.h"
 
#line 25 "./ES_Types.h"
#line 27 "./ES_Types.h"
#line 34 "./ES_Types.h"
#line 36 "./ES_Types.h"
#line 39 "./ES_Types.h"
#line 20 "./ES_Queue.h"

#line 1 "./ES_Events.h"

#line 16 "./ES_Events.h"
 

#line 31 "./ES_Events.h"
#line 21 "./ES_Queue.h"


 

uint8_t ES_InitQueue( ES_Event * pBlock, uint8_t BlockSize );
bool ES_EnQueueFIFO( ES_Event * pBlock, ES_Event Event2Add );
bool ES_EnQueueLIFO( ES_Event * pBlock, ES_Event Event2Add );
uint8_t ES_DeQueue( ES_Event * pBlock, ES_Event * pReturnEvent );

bool ES_IsQueueEmpty( ES_Event * pBlock );

#line 33 "./ES_Queue.h"

#line 28 "ES_Framework.c"

#line 1 "./ES_LookupTables.h"

#line 25 "./ES_LookupTables.h"
 
#line 1 "./ES_Types.h"

#line 17 "./ES_Types.h"
 
#line 25 "./ES_Types.h"
#line 27 "./ES_Types.h"
#line 34 "./ES_Types.h"
#line 36 "./ES_Types.h"
#line 39 "./ES_Types.h"
#line 26 "./ES_LookupTables.h"


#line 31 "./ES_LookupTables.h"
 
#line 33 "./ES_LookupTables.h"


#line 37 "./ES_LookupTables.h"
 
extern uint16_t const BitNum2SetMask[];


#line 46 "./ES_LookupTables.h"
 
extern uint8_t const Nybble2MSBitNum[15];


#line 62 "./ES_LookupTables.h"
 
uint8_t ES_GetMSBitSet( uint16_t Val2Check);
#line 29 "ES_Framework.c"

#line 1 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdio.h"

#line 9 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdio.h"
#line 36 "C:/Program Files (x86)/Microchip/mplabc18/v3.47/bin/../h/stdio.h"
#line 30 "ES_Framework.c"





#line 1 "./ES_ServiceHeaders.h"

#line 11 "./ES_ServiceHeaders.h"
 

#line 1 "./ES_Configure.h"

#line 19 "./ES_Configure.h"
 

#line 56 "./ES_Configure.h"
#line 65 "./ES_Configure.h"
#line 69 "./ES_Configure.h"
#line 78 "./ES_Configure.h"
#line 82 "./ES_Configure.h"
#line 91 "./ES_Configure.h"
#line 95 "./ES_Configure.h"
#line 104 "./ES_Configure.h"
#line 108 "./ES_Configure.h"
#line 117 "./ES_Configure.h"
#line 121 "./ES_Configure.h"
#line 130 "./ES_Configure.h"
#line 134 "./ES_Configure.h"
#line 143 "./ES_Configure.h"
#line 147 "./ES_Configure.h"
#line 156 "./ES_Configure.h"
#line 160 "./ES_Configure.h"
#line 169 "./ES_Configure.h"
#line 173 "./ES_Configure.h"
#line 182 "./ES_Configure.h"
#line 186 "./ES_Configure.h"
#line 195 "./ES_Configure.h"
#line 199 "./ES_Configure.h"
#line 208 "./ES_Configure.h"
#line 212 "./ES_Configure.h"
#line 221 "./ES_Configure.h"
#line 225 "./ES_Configure.h"
#line 234 "./ES_Configure.h"
#line 238 "./ES_Configure.h"
#line 247 "./ES_Configure.h"
#line 273 "./ES_Configure.h"
#line 275 "./ES_Configure.h"
#line 276 "./ES_Configure.h"
#line 278 "./ES_Configure.h"
#line 279 "./ES_Configure.h"
#line 281 "./ES_Configure.h"
#line 282 "./ES_Configure.h"
#line 284 "./ES_Configure.h"
#line 285 "./ES_Configure.h"
#line 287 "./ES_Configure.h"
#line 288 "./ES_Configure.h"
#line 290 "./ES_Configure.h"
#line 291 "./ES_Configure.h"
#line 293 "./ES_Configure.h"
#line 294 "./ES_Configure.h"
#line 296 "./ES_Configure.h"
#line 339 "./ES_Configure.h"
#line 13 "./ES_ServiceHeaders.h"


Pattern_ControlService

#line 18 "./ES_ServiceHeaders.h"
#line 1 "./SPI32_ControlService.h"

#line 6 "./SPI32_ControlService.h"
 


#line 10 "./SPI32_ControlService.h"


#line 1 "./ES_Configure.h"

#line 19 "./ES_Configure.h"
 

#line 56 "./ES_Configure.h"
#line 65 "./ES_Configure.h"
#line 69 "./ES_Configure.h"
#line 78 "./ES_Configure.h"
#line 82 "./ES_Configure.h"
#line 91 "./ES_Configure.h"
#line 95 "./ES_Configure.h"
#line 104 "./ES_Configure.h"
#line 108 "./ES_Configure.h"
#line 117 "./ES_Configure.h"
#line 121 "./ES_Configure.h"
#line 130 "./ES_Configure.h"
#line 134 "./ES_Configure.h"
#line 143 "./ES_Configure.h"
#line 147 "./ES_Configure.h"
#line 156 "./ES_Configure.h"
#line 160 "./ES_Configure.h"
#line 169 "./ES_Configure.h"
#line 173 "./ES_Configure.h"
#line 182 "./ES_Configure.h"
#line 186 "./ES_Configure.h"
#line 195 "./ES_Configure.h"
#line 199 "./ES_Configure.h"
#line 208 "./ES_Configure.h"
#line 212 "./ES_Configure.h"
#line 221 "./ES_Configure.h"
#line 225 "./ES_Configure.h"
#line 234 "./ES_Configure.h"
#line 238 "./ES_Configure.h"
#line 247 "./ES_Configure.h"
#line 273 "./ES_Configure.h"
#line 275 "./ES_Configure.h"
#line 276 "./ES_Configure.h"
#line 278 "./ES_Configure.h"
#line 279 "./ES_Configure.h"
#line 281 "./ES_Configure.h"
#line 282 "./ES_Configure.h"
#line 284 "./ES_Configure.h"
#line 285 "./ES_Configure.h"
#line 287 "./ES_Configure.h"
#line 288 "./ES_Configure.h"
#line 290 "./ES_Configure.h"
#line 291 "./ES_Configure.h"
#line 293 "./ES_Configure.h"
#line 294 "./ES_Configure.h"
#line 296 "./ES_Configure.h"
#line 339 "./ES_Configure.h"
#line 12 "./SPI32_ControlService.h"
  
#line 1 "./ES_Types.h"

#line 17 "./ES_Types.h"
 
#line 25 "./ES_Types.h"
#line 27 "./ES_Types.h"
#line 34 "./ES_Types.h"
#line 36 "./ES_Types.h"
#line 39 "./ES_Types.h"
#line 13 "./SPI32_ControlService.h"
      



typedef enum { SPI32_Startup,
               SPI32_Waiting4Send,
               SPI32_SendingByte1,
               SPI32_SendingByte2,
               SPI32_SendingByte3,
               SPI32_SendingByte4
              } SPI32State_t;
              

bool InitSPI32ControlService( uint8_t Priority );
bool PostSPI32ControlService( ES_Event ThisEvent );
ES_Event RunSPI32ControlService( ES_Event ThisEvent );

void SPI32_TransmitFrames(uint32_t *framePointer, uint8_t numFrames);

#line 33 "./SPI32_ControlService.h"
#line 19 "./ES_ServiceHeaders.h"
 
#line 20 "./ES_ServiceHeaders.h"

#line 22 "./ES_ServiceHeaders.h"
#line 24 "./ES_ServiceHeaders.h"

#line 26 "./ES_ServiceHeaders.h"
#line 28 "./ES_ServiceHeaders.h"

#line 30 "./ES_ServiceHeaders.h"
#line 32 "./ES_ServiceHeaders.h"

#line 34 "./ES_ServiceHeaders.h"
#line 36 "./ES_ServiceHeaders.h"

#line 38 "./ES_ServiceHeaders.h"
#line 40 "./ES_ServiceHeaders.h"

#line 42 "./ES_ServiceHeaders.h"
#line 44 "./ES_ServiceHeaders.h"

#line 46 "./ES_ServiceHeaders.h"
#line 48 "./ES_ServiceHeaders.h"

#line 50 "./ES_ServiceHeaders.h"
#line 52 "./ES_ServiceHeaders.h"

#line 54 "./ES_ServiceHeaders.h"
#line 56 "./ES_ServiceHeaders.h"

#line 58 "./ES_ServiceHeaders.h"
#line 60 "./ES_ServiceHeaders.h"

#line 62 "./ES_ServiceHeaders.h"
#line 64 "./ES_ServiceHeaders.h"

#line 66 "./ES_ServiceHeaders.h"
#line 68 "./ES_ServiceHeaders.h"

#line 70 "./ES_ServiceHeaders.h"
#line 72 "./ES_ServiceHeaders.h"

#line 74 "./ES_ServiceHeaders.h"
#line 76 "./ES_ServiceHeaders.h"
#line 35 "ES_Framework.c"



 
typedef bool InitFunc_t( uint8_t Priority );
typedef ES_Event RunFunc_t( ES_Event ThisEvent );

typedef InitFunc_t * pInitFunc;
typedef RunFunc_t * pRunFunc;

#line 46 "ES_Framework.c"

typedef struct {
    InitFunc_t *InitFunc;    
    RunFunc_t *RunFunc;      
}ES_ServDesc_t;

typedef struct {
    ES_Event *pMem;       
    uint8_t Size;      
}ES_QueueDesc_t;

 


 
 






static ES_ServDesc_t const ServDescList[] =
{ {InitPatternControlService , RunPatternControlService  }  
#line 71 "ES_Framework.c"
  ,{InitSPI32ControlService , RunSPI32ControlService  }
#line 73 "ES_Framework.c"
#line 74 "ES_Framework.c"
#line 76 "ES_Framework.c"
#line 77 "ES_Framework.c"
#line 79 "ES_Framework.c"
#line 80 "ES_Framework.c"
#line 82 "ES_Framework.c"
#line 83 "ES_Framework.c"
#line 85 "ES_Framework.c"
#line 86 "ES_Framework.c"
#line 88 "ES_Framework.c"
#line 89 "ES_Framework.c"
#line 91 "ES_Framework.c"
#line 92 "ES_Framework.c"
#line 94 "ES_Framework.c"
#line 95 "ES_Framework.c"
#line 97 "ES_Framework.c"
#line 98 "ES_Framework.c"
#line 100 "ES_Framework.c"
#line 101 "ES_Framework.c"
#line 103 "ES_Framework.c"
#line 104 "ES_Framework.c"
#line 106 "ES_Framework.c"
#line 107 "ES_Framework.c"
#line 109 "ES_Framework.c"
#line 110 "ES_Framework.c"
#line 112 "ES_Framework.c"
#line 113 "ES_Framework.c"
#line 115 "ES_Framework.c"

};


 


static ES_Event Queue0[3 +1];
#line 124 "ES_Framework.c"
static ES_Event Queue1[3 +1];
#line 126 "ES_Framework.c"
#line 127 "ES_Framework.c"
#line 129 "ES_Framework.c"
#line 130 "ES_Framework.c"
#line 132 "ES_Framework.c"
#line 133 "ES_Framework.c"
#line 135 "ES_Framework.c"
#line 136 "ES_Framework.c"
#line 138 "ES_Framework.c"
#line 139 "ES_Framework.c"
#line 141 "ES_Framework.c"
#line 142 "ES_Framework.c"
#line 144 "ES_Framework.c"
#line 145 "ES_Framework.c"
#line 147 "ES_Framework.c"
#line 148 "ES_Framework.c"
#line 150 "ES_Framework.c"
#line 151 "ES_Framework.c"
#line 153 "ES_Framework.c"
#line 154 "ES_Framework.c"
#line 156 "ES_Framework.c"
#line 157 "ES_Framework.c"
#line 159 "ES_Framework.c"
#line 160 "ES_Framework.c"
#line 162 "ES_Framework.c"
#line 163 "ES_Framework.c"
#line 165 "ES_Framework.c"
#line 166 "ES_Framework.c"
#line 168 "ES_Framework.c"

 


static ES_QueueDesc_t const EventQueues[2 ] = { 
  { Queue0, (sizeof(Queue0)/sizeof(Queue0[0]))  } 
#line 175 "ES_Framework.c"
, { Queue1, (sizeof(Queue1)/sizeof(Queue1[0]))  }
#line 177 "ES_Framework.c"
#line 178 "ES_Framework.c"
#line 180 "ES_Framework.c"
#line 181 "ES_Framework.c"
#line 183 "ES_Framework.c"
#line 184 "ES_Framework.c"
#line 186 "ES_Framework.c"
#line 187 "ES_Framework.c"
#line 189 "ES_Framework.c"
#line 190 "ES_Framework.c"
#line 192 "ES_Framework.c"
#line 193 "ES_Framework.c"
#line 195 "ES_Framework.c"
#line 196 "ES_Framework.c"
#line 198 "ES_Framework.c"
#line 199 "ES_Framework.c"
#line 201 "ES_Framework.c"
#line 202 "ES_Framework.c"
#line 204 "ES_Framework.c"
#line 205 "ES_Framework.c"
#line 207 "ES_Framework.c"
#line 208 "ES_Framework.c"
#line 210 "ES_Framework.c"
#line 211 "ES_Framework.c"
#line 213 "ES_Framework.c"
#line 214 "ES_Framework.c"
#line 216 "ES_Framework.c"
#line 217 "ES_Framework.c"
#line 219 "ES_Framework.c"
};

 


uint16_t Ready;

 

#line 241 "ES_Framework.c"
 
ES_Return_t ES_Initialize( TimerRate_t NewRate ){
  uint8_t i;
  ES_Timer_Init( NewRate); 
  
  for ( i=0; i< (sizeof(ServDescList)/sizeof(ServDescList[0])) ; i++) {
    if ( (ServDescList[i].InitFunc == (pInitFunc)0) ||
         (ServDescList[i].RunFunc == (pRunFunc)0) )
      return FailedPointer; 
    
    ES_InitQueue( EventQueues[i].pMem, EventQueues[i].Size );
   
    if ( ServDescList[i].InitFunc(i) != true )
      return FailedInit; 
  }
  return Success;
}


#line 276 "ES_Framework.c"
 
ES_Return_t ES_Run( void ){
  
  uint8_t HighestPrior;
  static ES_Event ThisEvent;
  
  while(1){ 

    
    
    
    while( (_HW_Process_Pending_Ints()) && (Ready != 0)){
      HighestPrior =  ES_GetMSBitSet(Ready);
      if ( ES_DeQueue( EventQueues[HighestPrior].pMem, &ThisEvent ) == 0 ){
        Ready &= ~BitNum2SetMask [HighestPrior]; 
      }
      if( ServDescList[HighestPrior].RunFunc(ThisEvent).EventType != 
                                                              ES_NO_EVENT) {
              return FailedRun;
      }
    }

    
    ES_CheckUserEvents();
  }
  
  return Success;
}


#line 318 "ES_Framework.c"
 
bool ES_PostAll( ES_Event ThisEvent){

  uint8_t i;
  
  for ( i=0; i< (sizeof(EventQueues)/sizeof(EventQueues[0])) ; i++) {
    if ( ES_EnQueueFIFO( EventQueues[i].pMem, ThisEvent ) != true ){
      break; 
    }else{
      Ready |= BitNum2SetMask[i]; 
    }
  }
  if ( i == (sizeof(EventQueues)/sizeof(EventQueues[0]))  ){ 
    return (true);
  }else{
    return(false);
  }
}


#line 351 "ES_Framework.c"
 
bool ES_PostToService( uint8_t WhichService, ES_Event TheEvent){
  if ((WhichService < (sizeof(EventQueues)/sizeof(EventQueues[0])) ) &&
      (ES_EnQueueFIFO( EventQueues[WhichService].pMem, TheEvent) == 
                                                                true )){
    Ready |= BitNum2SetMask[WhichService]; 
    return true;
  } else
    return false;
}


#line 376 "ES_Framework.c"
 
bool ES_PostToServiceLIFO( uint8_t WhichService, ES_Event TheEvent){
  if ((WhichService < (sizeof(EventQueues)/sizeof(EventQueues[0])) ) &&
      (ES_EnQueueLIFO( EventQueues[WhichService].pMem, TheEvent) == 
                                                                true )){
    Ready |= BitNum2SetMask[WhichService]; 
    return true;
  } else
    return false;
}




#line 391 "ES_Framework.c"

#line 405 "ES_Framework.c"
#line 419 "ES_Framework.c"
 
 
