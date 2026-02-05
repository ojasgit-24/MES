ORG 0000H

; Initial RAM setup
MOV 30H, #40H     ; RAM[30H] = 40H (pointer)
MOV 40H, #55H     ; RAM[40H] = 55H (actual data)

; -------- Direct Addressing --------
MOV A, 30H        ; A = RAM[30H] = 40H
MOV 50H, A        ; Store direct result at RAM[50H]

; -------- Indirect Addressing --------
MOV R0, 30H       ; R0 = RAM[30H] = 40H
MOV A, @R0        ; A = RAM[RAM[30H]] = RAM[40H] = 55H
MOV 51H, A        ; Store indirect result at RAM[51H]

END
