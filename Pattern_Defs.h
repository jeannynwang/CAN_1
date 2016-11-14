#ifndef Pattern_Defs_H
#define	Pattern_Defs_H

 //PATTERN_TEST define for debugging
#define PATTERN_TEST

 //Common color defines
#define WHITE	0xFFFFFF
#define SILVER	0xC0C0C0
#define GRAY	0x808080
#define BLACK	0x000000
#define RED     0xFF0000
#define ORANGE  0xFFA500
#define YELLOW	0xFFFF00
#define OLIVE	0x808000
#define LIME	0x00FF00
#define GREEN	0x008000
#define AQUA	0x00FFFF
#define TEAL	0x008080
#define BLUE	0x0000FF
#define NAVY	0x000080
#define FUSCHIA	0xFF00FF
#define PURPLE	0x800080
#define MAROON	0x800000

 //General LED strip defines
#define STRIP_LENGTH        10
#define MAX_STRIP_LENGTH    30

 //LED pattern configuration array defines
#define NUM_CONFIGS 5
#define	POWER_STATE	0
#define	CUR_PATTERN	1
#define	BRIGHTNESS	2
#define	CUR_PROFILE	3
#define	CYC_SPEED	4

 //LED status defines
#define ON	1
#define	OFF	0
 //Pattern ID defines
#define	NO_PATTERN          0
#define	IDLE_PATTERN        1
#define	THINKING_PATTERN    2
#define	SPEAKING_PATTERN    3
#define	LISTENING_PATTERN   4
#define	TEST_PATTERN        0xFF
 //LED brightness defines
#define FULL_BRIGHT		0x1F
#define	MID_BRIGHT		0x0F
 //Pattern profile defines
#define DEFAULT_PROFILE	0
 //Pattern cycle speed defines
#define	DEFAULT_SPEED	1
#define HZ60            15

#endif