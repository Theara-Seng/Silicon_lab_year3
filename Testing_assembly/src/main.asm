/*
 * main.asm
 *
 *  Created on: Mar 2, 2021
 *      Author: tadashi
 */


/*
 * main.asm
 *
 *  Created on: Mar 1, 2021
 *      Author: sovichea
 */
$INCLUDE(SI_EFM8LB1_DEFS.INC)
; equates
MY_LED		EQU		P1.3

; reset and interrupt vectors
CSEG	AT	0
LJMP	MAIN

; IRAM address 0x00 - 0x07 is reserved for R0 - R7
; 			   0x07 - 0x2F is reserved for bit address (if used)
;    		   0x30 - 0x7F is direct addressing
;			   0x80 - 0xFF is indirect addressing

?BI?main		SEGMENT		BIT
				RSEG		?BI?main
myBit:			DBIT		1

?DT?main		SEGMENT		DATA
				RSEG		?DT?main
				ORG			30h
myByte:			DS			1

?PR?main		SEGMENT 	CODE
				RSEG		?PR?main
MAIN:
	; initialize stack pointer 20 bytes from the top of internal RAM address
	; to prevent overlapping with DATA segment
	MOV SP, #-20

	; disable watchdog timer
	MOV WDTCN, #0DEh
	MOV WDTCN, #0ADh

	; enable crossbar
	MOV XBR2, #40h

	; configure push-pull P1.3
	MOV P1MDOUT, #(1 << 3)

	; set LED to high to disable it
	SETB MY_LED

LOOP:
	MOV R3, #0Eh
	MOV R4, #0E6h

LOOP1:
	; the loops takes 13 instruction to complete
	; we want LED to toggle every 250 ms or 4Hz
	; SYSCLK = 3062500Hz
	; => counter = SYSCLK/13/4 = 58894 = 0xE60E

	; 2-byte subtraction
	CLR C			; 1
	MOV A, R3		; 1
	SUBB A, #1		; 2
	MOV R3, A		; 1

	MOV A, R4		; 1
	SUBB A, #0		; 2
	MOV R4, A		; 1

	; compare if R3 = R4 = 0
	ORL A, R3		; 1
	JNZ LOOP1		; 3

	CPL MY_LED		; toggle LED
	JMP LOOP

END
