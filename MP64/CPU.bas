Attribute VB_Name = "CPU"
Option Explicit

Global IRQno As Long

Public Function Do_Instruction(Opcode As Byte) As Long
    Dim Cycles As Long, TempByte As Byte, TempLong As Long, xxxx As Long

    'To run "Great Gurianos - DG.PRG"
    'If PC = 4023 Then POKE 57088, 6

    'Print #21, Right("0000" & Hex(PC - 1), 4) & vbTab & Right("00" & Hex(Opcode), 2) & vbTab & Right("00" & Hex(SP), 2) & vbTab & Right("0000" & Hex(PEEKADDR(65534)), 4) & vbTab & IIf(I, "I", ".")

    Select Case Opcode
    '
    '==========================================='
    '  L O A D   A N D   S T O R E   G R O U P  '
    '                                           '
    '  LDA,LDX,LDY,STA,STX,STY                  '
    '-------------------------------------------'
    '
    '  L D A
    '
    Case 169 'A9 LDA Immediate 2,2
        A = PEEK(PC): PC = PC + 1: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False) ': Z = (A = 0): N = ((A And 128) <> 0)
    Case 165 'A5 LDA Zero Page 2,3
        A = PEEK(PEEK(PC)): PC = PC + 1: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)  ': Z = (A = 0): N = ((A And 128) <> 0)
    Case 181 'B5 LDA Zero Page,X 2,4
        A = PEEK((PEEK(PC) + X) And 255): PC = PC + 1: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)  ': Z = (A = 0): N = ((A And 128) <> 0)
    Case 173 'AD LDA Absolute 3,4
        A = PEEK(PEEKADDR(PC)): PC = PC + 2: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)  ': Z = (A = 0): N = ((A And 128) <> 0)
    Case 189 'BD LDA Absolute,X 3,4 (+1 if page crossed)
        A = PEEK(PEEKADDR(PC) + X): PC = PC + 2: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)  ': Z = (A = 0): N = ((A And 128) <> 0)
    Case 185 'B9 LDA Absolute,Y 3,4 (+1 if page crossed)
        A = PEEK(PEEKADDR(PC) + Y): PC = PC + 2: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)  ': Z = (A = 0): N = ((A And 128) <> 0)
    Case 161 'A1 LDA (Indirect,X) 2,6
        A = PEEK(PEEKADDR((PEEK(PC) + X) Mod 256)): PC = PC + 1: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)  ': Z = (A = 0): N = ((A And 128) <> 0)
    Case 177 'B1 LDA (Indirect),Y 2,5 (+1 if page crossed)
        'A = PEEK(IndirectY): setZNflags (A)  ': Z = (A = 0): N = ((A And 128) <> 0)
'        xxxx = IndirectY
'        If PC = 21405 Then
'            Open App.Path & "\xxxx.txt" For Append As #8
'            Print #8, xxxx
'            Close #8
'        End If
        A = PEEK(PEEKADDR(PEEK(PC)) + Y): PC = PC + 1: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)  ': Z = (A = 0): N = ((A And 128) <> 0)
    '
    '  L D X
    '
    Case 162 'A2 LDX Immediate 2,2
        X = PEEK(PC): PC = PC + 1: Z = IIf(X = 0, True, False): N = IIf(X >= 128, True, False) ': Z = (X = 0): N = ((X And 128) <> 0)
    Case 166 'A6 LDX Zero Page 2,3
        X = PEEK(PEEK(PC)): PC = PC + 1: Z = IIf(X = 0, True, False): N = IIf(X >= 128, True, False)  ': Z = (X = 0): N = ((X And 128) <> 0)
    Case 182 'B6 LDX Zero Page,Y 2,4
        X = PEEK((PEEK(PC) + Y) And 255): PC = PC + 1: Z = IIf(X = 0, True, False): N = IIf(X >= 128, True, False)  ': Z = (X = 0): N = ((X And 128) <> 0)
    Case 174 'AE LDX Absolute 3,4
        X = PEEK(PEEKADDR(PC)): PC = PC + 2: Z = IIf(X = 0, True, False): N = IIf(X >= 128, True, False)  ': Z = (X = 0): N = ((X And 128) <> 0)
    Case 190 'BE LDX Absolute,Y 3,4 (+1 if page crossed)
        X = PEEK(PEEKADDR(PC) + Y): PC = PC + 2: Z = IIf(X = 0, True, False): N = IIf(X >= 128, True, False)  ': Z = (X = 0): N = ((X And 128) <> 0)
    '
    '  L A X
    '
    Case 167 'A7 LAX Zero Page 2,3
        A = PEEK(PEEK(PC)): PC = PC + 1: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)  ': Z = (A = 0): N = ((A And 128) <> 0)
        X = A
    Case 183 'B7 LAX Zero Page,Y 2,4
        A = PEEK((PEEK(PC) + Y) And 255): PC = PC + 1: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False) ': Z = (A = 0): N = ((A And 128) <> 0)
        X = A
    Case 175 'AF LAX Absolute 3,4
        A = PEEK(PEEKADDR(PC)): PC = PC + 2: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)  ': Z = (A = 0): N = ((A And 128) <> 0)
        X = A
    Case 191 'BF LAX Absolute,Y 3,4 (+1 if page crossed)
        A = PEEK(PEEKADDR(PC) + Y): PC = PC + 2: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)  ': Z = (A = 0): N = ((A And 128) <> 0)
        X = A
    Case 163 'A3 LAX (Indirect,X) 2,6
        A = PEEK(PEEKADDR((PEEK(PC) + X) Mod 256)): PC = PC + 1: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)  ': Z = (A = 0): N = ((A And 128) <> 0)
        X = A
    Case 179 'B3 LAX (Indirect),Y 2,5 (+1 if page crossed)
        A = PEEK(PEEKADDR(PEEK(PC)) + Y): PC = PC + 1: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)  ': Z = (A = 0): N = ((A And 128) <> 0)
        X = A
    '
    '  L D Y
    '
    Case 160 'A0 LDY Immediate 2,2
        Y = PEEK(PC): PC = PC + 1: Z = IIf(Y = 0, True, False): N = IIf(Y >= 128, True, False) ': Z = (Y = 0): N = ((Y And 128) <> 0)
    Case 164 'A4 LDY Zero Page 2,3
        Y = PEEK(PEEK(PC)): PC = PC + 1: Z = IIf(Y = 0, True, False): N = IIf(Y >= 128, True, False)  ': Z = (Y = 0): N = ((Y And 128) <> 0)
    Case 180 'B4 LDY Zero Page,X 2,4
        Y = PEEK((PEEK(PC) + X) And 255): PC = PC + 1: Z = IIf(Y = 0, True, False): N = IIf(Y >= 128, True, False)  ': Z = (Y = 0): N = ((Y And 128) <> 0)
    Case 172 'AC LDY Absolute 3,4
        Y = PEEK(PEEKADDR(PC)): PC = PC + 2: Z = IIf(Y = 0, True, False): N = IIf(Y >= 128, True, False)  ': Z = (Y = 0): N = ((Y And 128) <> 0)
    Case 188 'BC LDY Absolute,X 3,4 (+1 if page crossed)
        Y = PEEK(PEEKADDR(PC) + X): PC = PC + 2: Z = IIf(Y = 0, True, False): N = IIf(Y >= 128, True, False)  ': Z = (Y = 0): N = ((Y And 128) <> 0)
    '
    '  S T A
    '
    Case 133 '85 STA Zero Page 2,3
        POKE PEEK(PC), A: PC = PC + 1
    Case 149 '95 STA Zero Page,X 2,4
        POKE (PEEK(PC) + X) And 255, A: PC = PC + 1
    Case 141 '8D STA Absolute 3,4
        POKE PEEKADDR(PC), A: PC = PC + 2
    Case 157 '9D STA Absolute,X 3,5
        POKE PEEKADDR(PC) + X, A: PC = PC + 2
    Case 153 '99 STA Absolute,Y 3,5
        POKE PEEKADDR(PC) + Y, A: PC = PC + 2
    Case 129 '81 STA (Indirect,X) 2,6
        POKE PEEKADDR((PEEK(PC) + X) Mod 256), A: PC = PC + 1
    Case 145 '91 STA (Indirect),Y 2,6
        POKE PEEKADDR(PEEK(PC)) + Y, A: PC = PC + 1
    '
    '  S T X
    '
    Case 134 '86 STX Zero Page 2,3
        POKE PEEK(PC), X: PC = PC + 1
    Case 150 '96 STX Zero Page,Y 2,4
        POKE (PEEK(PC) + Y) And 255, X: PC = PC + 1
    Case 142 '8E STX Absolute 3,4
        POKE PEEKADDR(PC), X: PC = PC + 2
    '
    '  S T Y
    '
    Case 132 '84 STY Zero Page 2,3
        POKE PEEK(PC), Y: PC = PC + 1
    Case 148 '94 STY Zero Page,X 2,4
        POKE (PEEK(PC) + X) And 255, Y: PC = PC + 1
    Case 140 '8C STY Absolute 3,4
        POKE PEEKADDR(PC), Y: PC = PC + 2
    '
    '==================================='
    '  A R I T H M E T I C   G R O U P  '
    '                                   '
    '  ADC,SBC,CLC,CLD,CLV,SEC,SED      '
    '-----------------------------------'
    '
    '  A D C
    '
    Case 105 '69 ADC Immediate 2,2
        PC = PC + 1: DoADC (PC - 1)
    Case 101 '65 ADC Zero Page 2 3
        PC = PC + 1: DoADC (PEEK(PC - 1))
    Case 117 '75 ADC Zero Page,X 2,4
        PC = PC + 1: DoADC ((PEEK(PC - 1) + X) And 255)
    Case 109 '6D ADC Absolute 3,4
        PC = PC + 2: DoADC (PEEKADDR(PC - 2))
    Case 125 '7D ADC Absolute,X 3,4 (+1 if page crossed)
        PC = PC + 2: DoADC (PEEKADDR(PC - 2) + X)
    Case 121 '79 ADC Absolute,Y 3,4 (+1 if page crossed)
        PC = PC + 2: DoADC (PEEKADDR(PC - 2) + Y)
    Case 97  '61 ADC (Indirect,X) 2,6
        PC = PC + 1: DoADC (PEEKADDR((PEEK(PC - 1) + X) Mod 256))
    Case 113 '71 ADC (Indirect),Y 2,5 (+1 if page crossed)
        PC = PC + 1: DoADC (PEEKADDR(PEEK(PC - 1)) + Y)
    '
    '  S B C
    '
    Case 233 'E9 SBC Immediate 2,2
        PC = PC + 1: DoSBC (PC - 1)
    Case 229 'E5 SBC Zero Page 2 3
        PC = PC + 1: DoSBC (PEEK(PC - 1))
    Case 245 'F5 SBC Zero Page,X 2,4
        PC = PC + 1: DoSBC ((PEEK(PC - 1) + X) And 255)
    Case 237 'ED SBC Absolute 3,4
        PC = PC + 2: DoSBC (PEEKADDR(PC - 2))
    Case 253 'FD SBC Absolute,X 3,4 (+1 if page crossed)
        PC = PC + 2: DoSBC (PEEKADDR(PC - 2) + X)
    Case 249 'F9 SBC Absolute,Y 3,4 (+1 if page crossed)
        PC = PC + 2: DoSBC (PEEKADDR(PC - 2) + Y)
    Case 225 'E1 SBC (Indirect,X) 2,6
        PC = PC + 1: DoSBC (PEEKADDR((PEEK(PC - 1) + X) Mod 256))
    Case 241 'F1 SBC (Indirect),Y 2,5 (+1 if page crossed)
        PC = PC + 1: DoSBC (PEEKADDR(PEEK(PC - 1)) + Y)
    '
    '  C L C
    '
    Case 24  '18 CLC Implied 1,2
        C = False
    '
    '  C L D
    '
    Case 216 'D8 CLD Implied 1,2
        D = False
    '
    '  C L V
    '
    Case 184 'B8 CLV Implied 1,2
        V = False
    '
    '  S E C
    '
    Case 56  '38 SEC Implied 1,2
        C = True
    '
    '  S E D
    '
    Case 248 'F8 SED Implied 1,2
        D = True
    '
    '====================================================='
    '  I N C R E M E N T / D E C R E M E N T   G R O U P  '
    '                                                     '
    '  DEC,DEX,DEY,INC,INX,INY                            '
    '-----------------------------------------------------'
    '
    '  D E C
    '
    Case 198 'C6 DEC Zero Page 2,5
        PC = PC + 1: DoDEC (PEEK(PC - 1))
    Case 214 'D6 DEC Zero Page,X 2,6
        PC = PC + 1: DoDEC ((PEEK(PC - 1) + X) And 255)
    Case 206 'CE DEC Absolute 3,6
        PC = PC + 2: DoDEC (PEEKADDR(PC - 2))
    Case 222 'DE DEC Absolute,X 3,7
        PC = PC + 2: DoDEC (PEEKADDR(PC - 2) + X)
    '
    '  D E X
    '
    Case 202 'CA DEX Implied 1,2
        X = IIf(X = 0, 255, X - 1): Z = IIf(X = 0, True, False): N = IIf(X >= 128, True, False)
    '
    '  D E Y
    '
    Case 136 '88 DEY Implied 1,2
        Y = IIf(Y = 0, 255, Y - 1): Z = IIf(Y = 0, True, False): N = IIf(Y >= 128, True, False)
    '
    '  I N C
    '
    Case 230 'E6 INC Zero Page 2,5
        PC = PC + 1: DoINC (PEEK(PC - 1))
    Case 246 'F6 INC Zero Page,X 2,6
        PC = PC + 1: DoINC ((PEEK(PC - 1) + X) And 255)
    Case 238 'EE INC Absolute 3,6
        PC = PC + 2: DoINC (PEEKADDR(PC - 2))
    Case 254 'FE INC Absolute,X 3,7
        PC = PC + 2: DoINC (PEEKADDR(PC - 2) + X)
    '
    '  I N X
    '
    Case 232 'E8 INX Implied 1,2
        X = IIf(X = 255, 0, X + 1): Z = IIf(X = 0, True, False): N = IIf(X >= 128, True, False)
    '
    '  I N Y
    '
    Case 200 'C8 INY Implied 1,2
        Y = IIf(Y = 255, 0, Y + 1): Z = IIf(Y = 0, True, False): N = IIf(Y >= 128, True, False)
    '
    '============================='
    '  L O G I C A L   G R O U P  '
    '                             '
    '  AND,EOR,ORA                '
    '-----------------------------'
    '
    '  A N D
    '
    Case 41  '29 AND Immediate 2,2
        A = A And PEEK(PC): PC = PC + 1: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    Case 37  '25 AND Zero Page 2,3
        A = A And PEEK(PEEK(PC)): PC = PC + 1: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    Case 53  '35 AND Zero Page,X 2,4
        A = A And PEEK((PEEK(PC) + X) And 255): PC = PC + 1: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    Case 45  '2D AND Absolute 3,4
        A = A And PEEK(PEEKADDR(PC)): PC = PC + 2: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    Case 61  '3D AND Absolute,X 3,4 (+1 if page crossed)
        A = A And PEEK(PEEKADDR(PC) + X): PC = PC + 2: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    Case 57  '39 AND Absolute,Y 3,4 (+1 if page crossed)
        A = A And PEEK(PEEKADDR(PC) + Y): PC = PC + 2: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    Case 33  '21 AND (Indirect,X) 2,6
        A = A And PEEK(PEEKADDR((PEEK(PC) + X) Mod 256)): PC = PC + 1: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    Case 49  '31 AND (Indirect),Y 2,5 (+1 if page crossed)
        A = A And PEEK(PEEKADDR(PEEK(PC)) + Y): PC = PC + 1: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    '
    '  E O R
    '
    Case 73  '49 EOR Immediate 2,2
        A = A Xor PEEK(PC): PC = PC + 1: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    Case 69  '45 EOR Zero Page 2,3
        A = A Xor PEEK(PEEK(PC)): PC = PC + 1: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    Case 85  '55 EOR Zero Page,X 2,4
        A = A Xor PEEK((PEEK(PC) + X) And 255): PC = PC + 1: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    Case 77  '4D EOR Absolute 3,4
        A = A Xor PEEK(PEEKADDR(PC)): PC = PC + 2: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    Case 93  '5D EOR Absolute,X 3,4 (+1 if page crossed)
        A = A Xor PEEK(PEEKADDR(PC) + X): PC = PC + 2: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    Case 89  '59 EOR Absolute,Y 3,4 (+1 if page crossed)
        A = A Xor PEEK(PEEKADDR(PC) + Y): PC = PC + 2: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    Case 65  '41 EOR (Indirect,X) 2,6
        A = A Xor PEEK(PEEKADDR((PEEK(PC) + X) Mod 256)): PC = PC + 1: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    Case 81  '51 EOR (Indirect),Y 2,5 (+1 if page crossed)
        A = A Xor PEEK(PEEKADDR(PEEK(PC)) + Y): PC = PC + 1: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    '
    '  O R A
    '
    Case 9   '09 ORA Immediate 2,2
        A = A Or PEEK(PC): PC = PC + 1: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    Case 5   '05 ORA Zero Page 2,3
        A = A Or PEEK(PEEK(PC)): PC = PC + 1: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    Case 21  '15 ORA Zero Page,X 2,4
        A = A Or PEEK((PEEK(PC) + X) And 255): PC = PC + 1: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    Case 13  '0D ORA Absolute 2,4
        A = A Or PEEK(PEEKADDR(PC)): PC = PC + 2: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    Case 29  '1D ORA Absolute,X 3,4 (+1 if page crossed)
        A = A Or PEEK(PEEKADDR(PC) + X): PC = PC + 2: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    Case 25  '19 ORA Absolute,Y 3,4 (+1 if page crossed)
        A = A Or PEEK(PEEKADDR(PC) + Y): PC = PC + 2: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    Case 1   '01 ORA (Indirect,X) 2,6
        A = A Or PEEK(PEEKADDR((PEEK(PC) + X) Mod 256)): PC = PC + 1: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    Case 17  '11 ORA (Indirect),Y) 2,5 (+1 if page crossed)
        A = A Or PEEK(PEEKADDR(PEEK(PC)) + Y): PC = PC + 1: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    '
    '============================================='
    '  J U M P   A N D   B R A N C H   G R O U P  '
    '                                             '
    '  JMP,BCC,BCS,BEQ,BNE,BMI,BPL,BVC,BVS        '
    '---------------------------------------------'
    '
    '  J M P
    '
    Case 76  '4C JMP Absolute 3,3
        PC = PEEKADDR(PC)
    Case 108 '6C JMP (Indirect) 3,5
    'An original 6502 has does not correctly fetch the target address
    'if the indirect vector falls on a page boundary (e.g. $xxFF
    'where xx is and value from $00 to $FF).
    'In this case fetches the LSB from $xxFF as expected but takes
    'the MSB from $xx00.
        PC = PEEKADDR(PEEKADDR(PC))
    '
    '  B ? ?
    '
    Case 144 '90 BCC Relative 2,2 (+1 if branch succeeds)(+2 if to a new page)
        DoBranch (Not C)
    Case 176 'B0 BCS Relative 2,2 (+1 if branch succeeds)(+2 if to a new page)
        DoBranch (C)
    Case 240 'F0 BEQ Relative 2,2 (+1 if branch succeeds)(+2 if to a new page)
        DoBranch (Z)
    Case 208 'D0 BNE Relative 2,2 (+1 if branch succeeds)(+2 if to a new page)
        DoBranch (Not Z)
    Case 48  '30 BMI Relative 2,2 (+1 if branch succeeds)(+2 if to a new page)
        DoBranch (N)
    Case 16  '10 BPL Relative 2,2 (+1 if branch succeeds)(+2 if to a new page)
        DoBranch (Not N)
    Case 80  '50 BVC Relative 2,2 (+1 if branch succeeds)(+2 if to a new page)
        DoBranch (Not V)
    Case 112 '70 BVS Relative 2,2 (+1 if branch succeeds)(+2 if to a new page)
        DoBranch (V)
    '
    '======================================================='
    '  C O M P A R E   A N D   B I T   T E S T   G R O U P  '
    '                                                       '
    '  CMP,CPX,CPY,BIT                                      '
    '-------------------------------------------------------'
    '
    '  C M P
    '
    Case 201 'C9 CMP Immediate 2,2
        'ZN = PEEK(Immediate): C = (A >= ZN): ZN = A - ZN
        PC = PC + 1: Call DoCMP(A, PC - 1)
    Case 197 'C5 CMP Zero Page 2,3
        'ZN = PEEK(ZeroPage): C = (A >= ZN): ZN = A - ZN
        PC = PC + 1: Call DoCMP(A, PEEK(PC - 1))
    Case 213 'D5 CMP Zero Page,X 2,4
        'ZN = PEEK(ZeroPageX): C = (A >= ZN): ZN = A - ZN
        PC = PC + 1: Call DoCMP(A, (PEEK(PC - 1) + X) And 255)
    Case 205 'CD CMP Absolute 3,4
        'ZN = PEEK(Absolute): C = (A >= ZN): ZN = A - ZN
        PC = PC + 2: Call DoCMP(A, PEEKADDR(PC - 2))
    Case 221 'DD CMP Absolute,X 3,4 (+1 if page crossed)
        'ZN = PEEK(AbsoluteX): C = (A >= ZN): ZN = A - ZN
        PC = PC + 2: Call DoCMP(A, PEEKADDR(PC - 2) + X)
    Case 217 'D9 CMP Absolute,Y 3,4 (+1 if page crossed)
        'ZN = PEEK(AbsoluteY): C = (A >= ZN): ZN = A - ZN
        PC = PC + 2: Call DoCMP(A, PEEKADDR(PC - 2) + Y)
    Case 193 'C1 CMP (Indirect,X) 2,6
        'ZN = PEEK(IndirectX): C = (A >= ZN): ZN = A - ZN
        PC = PC + 1: Call DoCMP(A, PEEKADDR((PEEK(PC - 1) + X) Mod 256))
    Case 209 'D1 CMP (Indirect,Y) 2,5 (+1 if page crossed)
        'ZN = PEEK(IndirectY): C = (A >= ZN): ZN = A - ZN
        PC = PC + 1: Call DoCMP(A, PEEKADDR(PEEK(PC - 1)) + Y)
    '
    '  C P X
    '
    Case 224 'E0 CPX Immediate 2,2
        'ZN = PEEK(Immediate): C = (X >= ZN): ZN = X - ZN
        PC = PC + 1: Call DoCMP(X, PC - 1)
    Case 228 'E4 CPX Zero Page 2,3
        'ZN = PEEK(ZeroPage): C = (X >= ZN): ZN = X - ZN
        PC = PC + 1: Call DoCMP(X, PEEK(PC - 1))
    Case 236 'EC CPX Absolute 3,4
        'ZN = PEEK(Absolute): C = (X >= ZN): ZN = X - ZN
        PC = PC + 2: Call DoCMP(X, PEEKADDR(PC - 2))
    '
    '  C P Y
    '
    Case 192 'C0 CPY Immediate 2,2
        'ZN = PEEK(Immediate): C = (Y >= ZN): ZN = Y - ZN
        PC = PC + 1: Call DoCMP(Y, PC - 1)
    Case 196 'C4 CPY Zero Page 2,3
        'ZN = PEEK(ZeroPage): C = (Y >= ZN): ZN = Y - ZN
        PC = PC + 1: Call DoCMP(Y, PEEK(PC - 1))
    Case 204 'CC CPY Absolute 3,4
        'ZN = PEEK(Absolute): C = (Y >= ZN): ZN = Y - ZN
        PC = PC + 2: Call DoCMP(Y, PEEKADDR(PC - 2))
    '
    '  B I T
    '
    Case 36  '24 BIT Zero Page 2,3
        'A & M, N = M7, V = M6
        'ZN = PEEK(ZeroPage): V = (ZN And 64): ZN = Not (ZN And A) + (ZN And 128)
        TempByte = PEEK(PEEK(PC)): PC = PC + 1
        V = TempByte And 64: N = TempByte And 128: Z = ((TempByte And A) = 0)
    Case 44  '2C BIT Absolute 3,4
        TempByte = PEEK(PEEKADDR(PC)): PC = PC + 2
        V = TempByte And 64: N = TempByte And 128: Z = ((TempByte And A) = 0)
    '
    '==============================================='
    '  S H I F T   A N D   R O T A T E   G R O U P  '
    '                                               '
    '  ASL,LSR,ROL,ROR                              '
    '-----------------------------------------------'
    '
    '  A S L
    '
    Case 10  '0A ASL A 1,2
        C = (A And 128): A = (CLng(A) + CLng(A)) Mod 256: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    Case 6   '06 ASL Zero Page 2,5
        PC = PC + 1: DoASL (PEEK(PC - 1))
    Case 22  '16 ASL Zero Page,X 2,6
        PC = PC + 1: DoASL ((PEEK(PC - 1) + X) And 255)
    Case 14  '0E ASL Absolute 3,6
        PC = PC + 2: DoASL (PEEKADDR(PC - 2))
    Case 30  '1E ASL Absolute,X 3,7
        PC = PC + 2: DoASL (PEEKADDR(PC - 2) + X)
    '
    '  L S R
    '
    Case 74  '4A LSR A 1,2
        C = (A And 1): A = A \ 2: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    Case 70  '46 LSR Zero Page 2,5
        PC = PC + 1: DoLSR (PEEK(PC - 1))
    Case 86  '56 LSR Zero Page,X 2,6
        PC = PC + 1: DoLSR ((PEEK(PC - 1) + X) And 255)
    Case 78  '4E LSR Absolute 3,6
        PC = PC + 2: DoLSR (PEEKADDR(PC - 2))
    Case 94  '5E LSR Absolute,X 3,7
        PC = PC + 2: DoLSR (PEEKADDR(PC - 2) + X)
    '
    '  R O L
    '
    Case 42  '2A ROL A 1,2
        TempLong = A: A = (TempLong + TempLong + IIf(C, 1, 0)) Mod 256
        C = ((TempLong And 128) > 0): Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    Case 38  '26 ROL Zero Page 2,5
        PC = PC + 1: DoROL (PEEK(PC - 1))
    Case 54  '36 ROL Zero Page,X 2,6
        PC = PC + 1: DoROL ((PEEK(PC - 1) + X) And 255)
    Case 46  '2E ROL Absolute 3,6
        PC = PC + 2: DoROL (PEEKADDR(PC - 2))
    Case 62  '3E ROL Absolute,X 3,7
        PC = PC + 2: DoROL (PEEKADDR(PC - 2) + X)
    '
    '  R O R
    '
    Case 106 '6A ROR A 1,2
        TempByte = A: A = A \ 2 + IIf(C, 128, 0)
        C = ((TempByte And 1) > 0): Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    Case 102 '66 ROR Zero Page 2,5
        PC = PC + 1: DoROR (PEEK(PC - 1))
    Case 118 '76 ROR Zero Page,X 2,6
        PC = PC + 1: DoROR ((PEEK(PC - 1) + X) And 255)
    Case 110 '6E ROR Absolute 3,6
        PC = PC + 2: DoROR (PEEKADDR(PC - 2))
    Case 126 '7E ROR Absolute,X 3,7
        PC = PC + 2: DoROR (PEEKADDR(PC - 2) + X)
    '
    '==============================='
    '  T R A N S F E R   G R O U P  '
    '                               '
    '  TAX,TAY,TSX,TXA,TXS,TYA      '
    '-------------------------------'
    '
    '  T A X
    '
    Case 170 'AA TAX Implied 1,2
        X = A: Z = IIf(X = 0, True, False): N = IIf(X >= 128, True, False)
    '
    '  T A Y
    '
    Case 168 'A8 TAY Implied 1,2
        Y = A: Z = IIf(Y = 0, True, False): N = IIf(Y >= 128, True, False)
    '
    '  T S X
    '
    Case 186 'BA TSX Implied 1,2
        X = SP: Z = IIf(X = 0, True, False): N = IIf(X >= 128, True, False)
    '
    '  T X A
    '
    Case 138 '8A TXA Implied 1,2
        A = X: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    '
    '  T X S
    '
    Case 154 '9A TXS Implied 1,2
        SP = X
    '
    '  T Y A
    '
    Case 152 '98 TYA Implied 1,2
        A = Y: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)
    '
    '========================='
    '  S T A C K   G R O U P  '
    '                         '
    '  PHA,PHP,PLA,PLP        '
    '-------------------------'
    '
    '  P H A
    '
    Case 72  '48 PHA Implied 1,3
        POKE 256 + SP, A: SP = SP - 1
    '
    '  P H P
    '
    Case 8   '08 PHP Implied 1,3
        POKE 256 + SP, ST(): SP = SP - 1
    '
    '  P L A
    '
    Case 104 '68 PLA Implied 1,4
        A = PEEK(256 + SP + 1): Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False) ': Z = (A = 0): N = ((A And 128) <> 0)
        SP = SP + 1
    '
    '  P L P
    '
    Case 40  '28 PLP Implied 1,4
        TempByte = PEEK(256 + SP + 1) ': Z = ST And 2: N = ST And 128
        '| N | V |   | B | D | I | Z | C |
        N = TempByte And 128: V = TempByte And 64: B = TempByte And 16
        D = TempByte And 8: I = TempByte And 4: Z = TempByte And 2
        C = TempByte And 1
        SP = SP + 1
    '
    '==================================================================================='
    '  I N T E R R U P T S ,   S U B - R O U T I N E S   A N D   R E S E T   G R O U P  '
    '                                                                                   '
    '  CLI,SEI,RTI,BRK,JSR,RTS                                                          '
    '-----------------------------------------------------------------------------------'
    '
    '  C L I
    '
    Case 88  '58 CLI Implied 1,2
        I = False
    '
    '  S E I
    '
    Case 120 '78 SEI Implied 1,2
        I = True
    '
    '  R T I
    '
    Case 64  '40 RTI Implied 1,6
        TempByte = PEEK(256 + SP + 1) ':N = ST And 128: Z = ST And 2
        '| N | V |   | B | D | I | Z | C |
        N = TempByte And 128: V = TempByte And 64: B = TempByte And 16
        D = TempByte And 8: I = TempByte And 4: Z = TempByte And 2
        C = TempByte And 1
        PC = PEEKADDR(256 + SP + 2)
        SP = SP + 3
    '
    '  B R K
    '
    Case 0   '00 BRK Implied 1,7
        POKE 256 + SP, PC Mod 256: POKE 256 + SP - 1, PC \ 256
        POKE 256 + SP - 2, ST(): SP = SP - 3
        PC = PEEKADDR(65534)
    '
    '  J S R
    '
    Case 32  '20 JSR Absolute 3,6
        POKE 256 + SP, (PC + 1) \ 256: POKE 256 + SP - 1, (PC + 1) Mod 256
        SP = SP - 2
        PC = PEEKADDR(PC)
    '
    '  R T S
    '
    Case 96  '60 RTS Implied 1,6
        PC = CLng(PEEK(256 + SP + 1)) + 256 * CLng(PEEK(256 + SP + 2)) + 1
        SP = SP + 2
    '
    '==============================================='
    '  T H E   N O   O P E R A T I O N   G R O U P  '
    '                                               '
    '  NOP                                          '
    '-----------------------------------------------'
    '
    '  N O P
    '
    Case 234 'EA NOP Implied 1,2
        'Do nothing
    End Select


    'If PC = 12392 Or PC = 12432 Or PC = 15258 Then
    'Open App.Path & "\Info.txt" For Append As #21
    'Print #21, Hex(PC) & vbTab & RASTER & vbTab & PEEK(53265) & vbTab & PEEK(53270)
    'Close #21
    'End If
'If PC = 12432 Then Stop

    Do_Instruction = Cycles
End Function

'Private Sub setZNflags(Value As Byte)
'    Z = IIf(Value = 0, True, False)
'    N = IIf(Value >= 128, True, False)
'End Sub

'Private Function Immediate() As Long
'    Immediate = PC: PC = PC + 1
'End Function

'Private Function ZeroPage() As Byte
'    ZeroPage = PEEK(PC): PC = PC + 1
'End Function

'Private Function ZeroPageX() As Byte
'    ZeroPageX = (PEEK(PC) + X) And 255: PC = PC + 1
'End Function

'Private Function ZeroPageY() As Byte
'    ZeroPageY = CByte((CLng(PEEK(PC)) + CLng(Y)) And 255): PC = PC + 1
'End Function

'Private Function Absolute() As Long
'    Absolute = PEEKADDR(PC): PC = PC + 2
'End Function

'Private Function AbsoluteX() As Long
'    AbsoluteX = PEEKADDR(PC) + X: PC = PC + 2
'End Function

'Private Function AbsoluteY() As Long
'    AbsoluteY = PEEKADDR(PC) + Y: PC = PC + 2
'End Function

'Private Function Indirect() As Long
'    Indirect = PEEKADDR(PEEKADDR(PC)): PC = PC + 2
'End Function

'Private Function IndirectX() As Long
'    IndirectX = PEEKADDR((CLng(PEEK(PC)) + CLng(X)) Mod 256): PC = PC + 1
'End Function

'Private Function IndirectY() As Long
'    IndirectY = PEEKADDR(PEEK(PC)) + Y: PC = PC + 1
'End Function

Private Sub DoADC(Address As Long)
    Dim Value As Long, Temp As Long, temp2 As Long
    Dim LoA As Byte, HiA As Byte, LoM As Byte, HiM As Byte

    Value = PEEK(Address)

    If D Then
' OLD
'        LoA = A And 15: HiA = A And 240
'        LoM = Value And 15: HiM = Value And 240
'
'        LoA = LoA + LoM + IIf(C, 1, 0)
'
'        If LoA > 9 Then
'            HiA = HiA + HiM + 16: LoA = LoA - 10
'        Else
'            HiA = HiA + HiM
'        End If
'
'        If HiA > 144 Then
'            C = True: HiA = HiA - 160
'        Else
'            C = False
'        End If
'
'        Temp = LoA + HiA

' NEW
        Temp = 10 * (A \ 16 + Value \ 16) + (A And 15) + (Value And 15) + IIf(C, 1, 0)

        C = IIf(Temp > 99, True, False)

        'Do While Temp >= 100
        '    Temp = Temp - 100
        'Loop
            
        Temp = Temp Mod 100
            
        Temp = 16 * (Temp \ 10) + (Temp Mod 10)
    Else
        Temp = CLng(A) + Value + IIf(C, 1, 0): temp2 = Temp

        If Temp > 255 Then
            C = True: Temp = Temp - 256
        Else
            C = False
        End If
    End If

    If (A < 128 And Value < 128 And Temp > 127) Or _
       (A > 127 And Value > 127 And Temp < 128) Then
        V = True
    Else
        V = False
    End If

    A = Temp: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)


    ''Wrong
    'Temp2 = Temp2 + 128: V = CBool((Temp2 > 255) Or (Temp2 < 0))
End Sub

Private Sub DoSBC(Address As Long)
    Dim Value As Long, Temp As Long, temp2 As Long
    'Dim LoA As Byte, HiA As Byte, LoM As Byte, HiM As Byte
    Dim LoA As Long, HiA As Long, LoM As Long, HiM As Long

    Value = PEEK(Address)

    If D Then
' OLD
'        LoA = A And 15: HiA = A And 240
'        LoM = Value And 15: HiM = Value And 240
'
'        LoA = LoA - LoM - IIf(C, 0, 1)
'
'        If LoA < 0 Then
'            LoA = LoA + 10
'            HiA = HiA - HiM + 16
'        Else
'            HiA = HiA - HiM
'        End If
'
'        If HiA < 0 Then
'            C = False: HiA = HiA + 160
'        Else
'            C = True
'        End If
'
'        Temp = LoA + HiA

' NEW
        Temp = 10 * (A \ 16 - Value \ 16) + (A And 15) - (Value And 15) - IIf(C, 0, 1)

        C = IIf(Temp < 0, True, False)

        Do While Temp < 0
            Temp = Temp + 100
        Loop
            
        Temp = Temp Mod 100
            
        Temp = 16 * (Temp \ 10) + (Temp Mod 10)
    Else
        Temp = A - Value - IIf(C, 0, 1): temp2 = Temp

        If Temp < 0 Then
            C = False: Temp = Temp + 256
        Else
            C = True
        End If
    End If

    If (A < 128 And Value > 127 And Temp > 127) Or _
       (A > 127 And Value < 128 And Temp < 128) Then
        V = True
    Else
        V = False
    End If

    A = Temp: Z = IIf(A = 0, True, False): N = IIf(A >= 128, True, False)


    ''Wrong
    'Temp2 = Temp2 + 128: V = CBool((Temp2 > 255) Or (Temp2 < 0))
End Sub

Private Sub DoDEC(Address As Long)
    Dim Value As Byte

    Value = PEEK(Address)
    Value = IIf(Value = 0, 255, Value - 1)
    POKE Address, Value: Z = IIf(Value = 0, True, False): N = IIf(Value >= 128, True, False)
End Sub

Private Sub DoINC(Address As Long)
    Dim Value As Byte

    Value = PEEK(Address)
    Value = IIf(Value = 255, 0, Value + 1)
    POKE Address, Value: Z = IIf(Value = 0, True, False): N = IIf(Value >= 128, True, False)
End Sub

Private Sub DoBranch(Flag As Boolean)
    If Flag Then
        If PEEK(PC) > 128 Then
            PC = PC + PEEK(PC) - 255
        Else
            PC = PC + PEEK(PC) + 1
        End If
    Else
        PC = PC + 1
    End If
End Sub

Private Sub DoCMP(Reg As Byte, Address As Long)
    Dim TempLong As Long

    TempLong = CLng(Reg) - CLng(PEEK(Address))
    
    C = (TempLong >= 0 And TempLong <= 255)
    Z = ((TempLong And 255) = 0)
    N = ((TempLong And 128) > 0)
End Sub

Private Sub DoASL(Address As Long)
    Dim Value As Long

    Value = PEEK(Address)
    C = (Value And 128): Value = (Value + Value) Mod 256
    POKE Address, CByte(Value): Z = IIf(Value = 0, True, False): N = IIf(Value >= 128, True, False)
End Sub

Private Sub DoLSR(Address As Long)
    Dim Value As Byte

    Value = PEEK(Address)
    C = (Value And 1): Value = Value \ 2
    POKE Address, Value: Z = IIf(Value = 0, True, False): N = IIf(Value >= 128, True, False)
End Sub

Private Sub DoROL(Address As Long)
    Dim Value1 As Long, Value2 As Long
    'ZN = A
    'A = A + A + IIf(C, 1, 0)
    'C = (ZN And 128): ZN = A
    Value1 = PEEK(Address)
    Value2 = (Value1 + Value1 + IIf(C, 1, 0)) Mod 256
    POKE Address, CByte(Value2)
    C = (Value1 And 128): Z = IIf(Value2 = 0, True, False): N = IIf(Value2 >= 128, True, False)
End Sub

Private Sub DoROR(Address As Long)
    Dim Value1 As Long, Value2 As Long
    'ZN = A
    'A = A \ 2 + IIf(C, 128, 0)
    'C = (ZN And 1)
    'ZN = A
    Value1 = PEEK(Address)
    Value2 = Value1 \ 2 + IIf(C, 128, 0)
    POKE Address, CByte(Value2)
    C = (Value1 And 1): Z = IIf(Value2 = 0, True, False): N = IIf(Value2 >= 128, True, False)
End Sub
