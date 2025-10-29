;
; Arquivo de código em Assembly
;
#define   SFR_OFFSET 0
; Esse include é necessário para carregar os nomes dos registradores
; do microcontrolador. Precisaremos de DDRB e PORTB
#include "avr/io.h"
; Declaração da função que poderá ser chamada a partir da linguagem
; C, que está no outro arquivo (main.c)
.global progAssembly
;
; Função em Assembly. Esse é o ponto de entrada da função. A partir
; dele, faremos chamada a uma das rotinas que queremos executar.
progAssembly:
LDI R16, 0;	// Inicializa contador com 0
JMP loop;	// Pula para o loop
    
loop:		// Loop
    INC R16;	// ++
    CPI R16,9;	// Compara para ver se chegou em 9
    BRNE loop;	// Reseta loop se R16<9
    

