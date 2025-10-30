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
// Eu deveria tentar fazer o pisca leds agora
    
SBI _SFR_IO_ADDR(DDRB), 0; // Configura PB0-D8 (porta 8) para ser a de saída

toggle_loop:
    // Liga
    SBI _SFR_IO_ADDR(PORTB), 0	// SET BIT IN I/O REGISTER = 0, LOW liga, acho que é isso NÃO SEI PORQUE
    RCALL delay_func	// Delay para ser visível as piscadas

    // Desliga
    CBI _SFR_IO_ADDR(PORTB), 0	// CLEAR BIT IN I/O REGISTER
    RCALL delay_func	// Delay

    RJMP toggle_loop	//Loop

# Nem vou mentir, o delay eu pedi para a IA fazer
delay_func:
    ; --- DELAY CORRIGIDO (Aprox 1.0 segundo em 16MHz) ---
    ; Usamos 3 registradores (R19, R18, R17) em um loop aninhado.
    
    LDI R19, 40 ; Loop Externo (R19)
loop_ext:
    LDI R18, 250 ; Loop Médio (R18)
loop_med:
    LDI R17, 250 ; Loop Interno (R17)
loop_int:
    ; Este loop interno (DEC R17) gasta tempo
    DEC R17
    BRNE loop_int
    
    ; Quando o loop interno (R17) termina, decrementamos o loop médio (R18)
    DEC R18
    BRNE loop_med
    
    ; Quando o loop médio (R18) termina, decrementamos o loop externo (R19)
    DEC R19
    BRNE loop_ext
    
    RET