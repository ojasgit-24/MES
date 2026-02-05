ORG 0000H

; Step 1: Generate 12
MOV A, #10        ; Load 10
ADD A, #2         ; A = 12

; Step 2: Multiply 12 × 100
MOV B, #100       ; Load 100
MUL AB            ; B:A = 1200

; Step 3: Add 24 to the result
ADD A, #20        ; Add 20
ADD A, #4         ; Add 4 → total = 1224

; Final result:
; AX (B:A) = 1224
; B = 04H, A = C8H

HERE: SJMP HERE   ; Stop execution

END
