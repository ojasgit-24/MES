ORG 0000H

; -------- Clear registers --------
CLR A
MOV B, #00H

; -------- Generate 59 logically --------
MOV A, #50
ORL A, #09        ; A = 59
ANL A, #3FH

; -------- Multiply 59 × 100 --------
MOV B, #100
MUL AB            ; B:A = 5900

; -------- Generate 98 logically --------
MOV A, #90
ORL A, #08        ; A = 98
ANL A, #7FH

; -------- Combine logically --------
ORL A, #6EH       ; Final lower byte

HERE: SJMP HERE

END
