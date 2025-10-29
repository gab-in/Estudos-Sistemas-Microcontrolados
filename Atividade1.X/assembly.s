;
; Arquivo de c�digo em Assembly
;
#define   SFR_OFFSET 0
; Esse include � necess�rio para carregar os nomes dos registradores
; do microcontrolador. Precisaremos de DDRB e PORTB
#include "avr/io.h"
; Declara��o da fun��o que poder� ser chamada a partir da linguagem
; C, que est� no outro arquivo (main.c)
.global progAssembly
;
; Fun��o em Assembly. Esse � o ponto de entrada da fun��o. A partir
; dele, faremos chamada a uma das rotinas que queremos executar.
progAssembly:
LDI R16, 0;	// Inicializa contador com 0
JMP loop;	// Pula para o loop
    
loop:		// Loop
    INC R16;	// ++
    CPI R16,9;	// Compara para ver se chegou em 9
    BRNE loop;	// Reseta loop se R16<9
    

