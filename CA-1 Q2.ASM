        MOV   R0, 50H      ; R0 = A
        MOV   R1, 51H      ; R1 = B

COMPARE:
        MOV   A, R0
        JZ    A_ZERO      ; If A == 0, check B

        MOV   A, R1
        JZ    B_ZERO      ; If B == 0, A > B

        DEC   R0          ; A--
        DEC   R1          ; B--
        SJMP  COMPARE

A_ZERO:
        MOV   A, R1
        JZ    EQUAL       ; A == 0 and B == 0 → equal
        SJMP  A_LESS_B    ; A == 0, B > 0 → A < B

B_ZERO:
        SJMP  A_GREATER_B ; B == 0, A > 0 → A > B

EQUAL:
        MOV   52H, #00H
        SJMP  DONE

A_GREATER_B:
        MOV   52H, #01H
        SJMP  DONE

A_LESS_B:
        MOV   52H, #0FFH

DONE:
        ; End of program
Case 1: A > B

Example:

50H = 05H
51H = 03H

Case 2: A = B

Example:

50H = 04H
51H = 04H

Case 3: A < B

Example:

50H = 02H
51H = 05H
