                            ;________________________________________
                            ;
                            ;  MUSIC PLAYER AND MUSIC FROM
                            ;  FORBIDDEN FOREST BY PAUL NORMAN.
                            ;
                            ;  SYS4102 TO START
                            ;________________________________________

				.ORG $1000

				JMP INIT
				JMP PLAY
				JMP PLAYSONG

PLAYSONG
        JSR INIT
        JSR SETUP_IRQ
        RTS

SETUP_IRQ
	      SEI
	      LDA #<IRQ
	      STA $0314
	      LDA #>IRQ
	      STA $0315
	      LDA #248
	      STA $D012           ; Stop at the lower border
	      LDA $D011
	      AND #%01111111
	      STA $D011
	      LDA #%10000001
	      STA $D01A
	      CLI
	      RTS

IRQ                         ; We are at lower border (line 248)
	      LDA $D019
	      STA $D019
	      BMI RASIRQ
       	LDA $DC0D
	      CLI
	      JMP $EA31
RASIRQ
	      INC $D020
	      JSR PLAY
	      DEC $D020
	      JMP $FEBC

INIT
        LDX #$18                                              
        LDA #$00                                              
L00491  STA $D400,X         ; RESET SID REGISTERS             
        DEX                                                   
        BPL L00491                                            
        STA TICKLO
        STA TICKHI
        LDA #<SONG00
        STA $32
        LDA #>SONG00
        STA $33
        RTS                                                   

PLAY
L0001   LDY #0
        LDA ($32),Y
        CMP TICKHI
        BEQ L0004       ; TICKHI = ($32),Y
        BCC L0005       ; TICKHI > ($32),Y

L0002   INC TICKLO      ; (Ptr) > Tick
        BNE L0003
        INC TICKHI
L0003   RTS

L0004   LDY #1
        LDA ($32),Y
        CMP TICKLO
        BEQ L0007       ; TICKLO = ($32),Y
        BCC L0005       ; TICKLO > ($32),Y
        JMP L0002

L0005   LDA $32         ; (Ptr) < Tick
        CLC
        ADC #5
        STA $32
        BCC L0006
        INC $33
L0006   JMP L0001

L0007   LDY #2          ; (Ptr) = Tick
        LDA ($32),Y     ; A = OPCODE
        PHA
        AND #$F0
        CMP #$90        ; NOTEON?
        BNE L0008
        PLA             ; NOTEON
        AND #$0F
        TAY
        LDX CHANNEL,Y   ; X = 7 * CHANNEL
        LDY #3
        LDA ($32),Y
        STA $D400,X
        LDY #4
        LDA ($32),Y
        STA $D401,X
        LDA CURVOICE,X
        ORA #$01        ; GATE ON
        STA $D404,X
        JMP L0005

L0008   CMP #$80        ; NOTEOFF?
        BNE L0009
        PLA             ; NOTEOFF
        AND #$0F
        TAY
        LDX CHANNEL,Y   ; X = 7 * CHANNEL
        LDA CURVOICE,X
        AND #$FE        ; GATE OFF
        STA $D404,X
        JMP L0005

L0009   CMP #$E0        ; FREQ?
        BNE L0010
        PLA             ; FREQ
        AND #$0F
        TAY
        LDX CHANNEL,Y   ; X = 7 * CHANNEL
        LDY #3
        LDA ($32),Y
        STA $D400,X
        LDY #4
        LDA ($32),Y
        STA $D401,X
        JMP L0005

L0010   CMP #$C0        ; INSTR?
        BNE L0011
        PLA             ; INSTR
        AND #$0F
        TAY
        LDX CHANNEL,Y   ; X = 7 * CHANNEL
        LDA CURVOICE,X
        AND #$FE        ; GATE OFF
        STA $D404,X
        LDY #3
        LDA ($32),Y     ; A = INSTR NO.
        TAY
        LDA WAVEFRM,Y
        STA CURVOICE,X
        STA $D404,X
        LDA ATTDEC,Y
        STA $D405,X
        LDA SUSREL,Y
        STA $D406,X
        LDA PULSELO,Y
        STA $D402,X
        LDA PULSEHI,Y
        STA $D403,X
        JMP L0005

L0011   CMP #$B0        ; VOLUME?
        BNE L0012
        PLA             ; VOLUME
        LDY #3
        LDA ($32),Y
        STA $D418
        JMP L0005

L0012   PLA             ; MUST BE '$FF'
        LDA #$00
        STA TICKLO
        STA TICKHI
        LDA #<SONG00
        STA $32
        LDA #>SONG00
        STA $33
        JMP L0001

TiCKLO  .BYTE $00
TiCKHI  .BYTE $00

CHANNEL .BYTE $00, $07, $0E

CURVOICE
        .BYTE $00, $00, $00, $00, $00, $00, $00
        .BYTE $00, $00, $00, $00, $00, $00, $00
        .BYTE $00

;       6 INSTRUMENTS
WAVEFRM .BYTE $10, $20, $40, $10, $20, $40
ATTDEC  .BYTE $42, $42, $42, $00, $00, $00
SUSREL  .BYTE $E2, $7A, $20, $00, $00, $00
PULSELO .BYTE $00, $00, $00, $00, $00, $00
PULSEHI .BYTE $08, $08, $04, $00, $00, $00

SONG00
        .BYTE $00, $00, $C0, $01, $00
        .BYTE $00, $00, $B0, $0F, $00
        .BYTE $00, $00, $90, $1D, $19
        .BYTE $00, $00, $C1, $00, $00
        .BYTE $00, $00, $B0, $0F, $00
        .BYTE $00, $00, $91, $D2, $0F
        .BYTE $00, $00, $C2, $02, $00
        .BYTE $00, $00, $B0, $0F, $00
        .BYTE $00, $00, $92, $24, $03
        .BYTE $00, $0B, $81, $00, $00
        .BYTE $00, $0B, $82, $00, $00
        .BYTE $00, $0D, $90, $1D, $19
        .BYTE $00, $0D, $91, $D2, $0F
        .BYTE $00, $0D, $92, $F5, $03
        .BYTE $00, $13, $90, $A4, $1F
        .BYTE $00, $18, $81, $00, $00
        .BYTE $00, $18, $82, $00, $00
        .BYTE $00, $1A, $90, $A1, $25
        .BYTE $00, $1A, $91, $D2, $0F
        .BYTE $00, $1A, $92, $B4, $04
        .BYTE $00, $25, $81, $00, $00
        .BYTE $00, $25, $82, $00, $00
        .BYTE $00, $27, $90, $A4, $1F
        .BYTE $00, $27, $91, $D2, $0F
        .BYTE $00, $27, $92, $F5, $03
        .BYTE $00, $32, $81, $00, $00
        .BYTE $00, $32, $82, $00, $00
        .BYTE $00, $34, $90, $86, $21
        .BYTE $00, $34, $91, $C3, $10
        .BYTE $00, $34, $92, $31, $04
        .BYTE $00, $3F, $81, $00, $00
        .BYTE $00, $3F, $82, $00, $00
        .BYTE $00, $41, $90, $3B, $32
        .BYTE $00, $41, $91, $C3, $10
        .BYTE $00, $41, $92, $48, $05
        .BYTE $00, $4C, $81, $00, $00
        .BYTE $00, $4C, $82, $00, $00
        .BYTE $00, $4E, $90, $3B, $32
        .BYTE $00, $4E, $91, $C3, $10
        .BYTE $00, $4E, $92, $47, $06
        .BYTE $00, $59, $81, $00, $00
        .BYTE $00, $59, $82, $00, $00
        .BYTE $00, $5B, $90, $3B, $32
        .BYTE $00, $5B, $91, $C3, $10
        .BYTE $00, $5B, $92, $48, $05
        .BYTE $00, $66, $81, $00, $00
        .BYTE $00, $66, $82, $00, $00
        .BYTE $00, $67, $90, $69, $2F
        .BYTE $00, $67, $91, $18, $0E
        .BYTE $00, $67, $92, $0C, $07
        .BYTE $00, $6E, $90, $3B, $32
        .BYTE $00, $73, $81, $00, $00
        .BYTE $00, $73, $82, $00, $00
        .BYTE $00, $74, $90, $69, $2F
        .BYTE $00, $74, $91, $18, $0E
        .BYTE $00, $74, $92, $47, $06
        .BYTE $00, $7B, $90, $A1, $25
        .BYTE $00, $80, $81, $00, $00
        .BYTE $00, $80, $82, $00, $00
        .BYTE $00, $81, $90, $31, $1C
        .BYTE $00, $81, $91, $18, $0E
        .BYTE $00, $81, $92, $ED, $05
        .BYTE $00, $88, $90, $1D, $19
        .BYTE $00, $8D, $81, $00, $00
        .BYTE $00, $8D, $82, $00, $00
        .BYTE $00, $8E, $90, $B4, $17
        .BYTE $00, $8E, $91, $18, $0E
        .BYTE $00, $8E, $92, $47, $06
        .BYTE $00, $9A, $81, $00, $00
        .BYTE $00, $9A, $82, $00, $00
        .BYTE $00, $9B, $90, $60, $16
        .BYTE $00, $9B, $91, $EF, $0E
        .BYTE $00, $9B, $92, $77, $07
        .BYTE $00, $A6, $81, $00, $00
        .BYTE $00, $A6, $82, $00, $00
        .BYTE $00, $A8, $90, $A1, $25
        .BYTE $00, $A8, $91, $EF, $0E
        .BYTE $00, $A8, $92, $0C, $07
        .BYTE $00, $B3, $81, $00, $00
        .BYTE $00, $B3, $82, $00, $00
        .BYTE $00, $B5, $90, $A1, $25
        .BYTE $00, $B5, $91, $EF, $0E
        .BYTE $00, $B5, $92, $47, $06
        .BYTE $00, $C0, $81, $00, $00
        .BYTE $00, $C0, $82, $00, $00
        .BYTE $00, $C2, $90, $DE, $1D
        .BYTE $00, $C2, $91, $EF, $0E
        .BYTE $00, $C2, $92, $B4, $04
        .BYTE $00, $C8, $90, $86, $21
        .BYTE $00, $CD, $81, $00, $00
        .BYTE $00, $CD, $82, $00, $00
        .BYTE $00, $CF, $90, $1D, $19
        .BYTE $00, $CF, $91, $D2, $0F
        .BYTE $00, $CF, $92, $47, $06
        .BYTE $00, $DA, $81, $00, $00
        .BYTE $00, $DA, $82, $00, $00
        .BYTE $00, $DC, $90, $1D, $19
        .BYTE $00, $DC, $91, $D2, $0F
        .BYTE $00, $DC, $92, $B4, $04
        .BYTE $00, $E2, $90, $A4, $1F
        .BYTE $00, $E7, $81, $00, $00
        .BYTE $00, $E7, $82, $00, $00
        .BYTE $00, $E9, $90, $A1, $25
        .BYTE $00, $E9, $91, $D2, $0F
        .BYTE $00, $E9, $92, $47, $06
        .BYTE $00, $F4, $81, $00, $00
        .BYTE $00, $F4, $82, $00, $00
        .BYTE $00, $F6, $90, $A4, $1F
        .BYTE $00, $F6, $91, $D2, $0F
        .BYTE $00, $F6, $92, $B4, $04
        .BYTE $01, $01, $81, $00, $00
        .BYTE $01, $01, $82, $00, $00
        .BYTE $01, $03, $90, $86, $21
        .BYTE $01, $03, $91, $C3, $10
        .BYTE $01, $03, $92, $31, $04
        .BYTE $01, $0E, $81, $00, $00
        .BYTE $01, $0E, $82, $00, $00
        .BYTE $01, $10, $90, $3B, $32
        .BYTE $01, $10, $91, $C3, $10
        .BYTE $01, $10, $92, $47, $06
        .BYTE $01, $1B, $81, $00, $00
        .BYTE $01, $1B, $82, $00, $00
        .BYTE $01, $1C, $90, $3B, $32
        .BYTE $01, $1C, $91, $C3, $10
        .BYTE $01, $1C, $92, $31, $04
        .BYTE $01, $28, $81, $00, $00
        .BYTE $01, $28, $82, $00, $00
        .BYTE $01, $29, $90, $69, $2F
        .BYTE $01, $29, $91, $C3, $10
        .BYTE $01, $29, $92, $47, $06
        .BYTE $01, $30, $90, $3B, $32
        .BYTE $01, $35, $81, $00, $00
        .BYTE $01, $35, $82, $00, $00
        .BYTE $01, $36, $90, $A1, $25
        .BYTE $01, $36, $91, $18, $0E
        .BYTE $01, $36, $92, $86, $03
        .BYTE $01, $42, $81, $00, $00
        .BYTE $01, $42, $82, $00, $00
        .BYTE $01, $43, $90, $BC, $3B
        .BYTE $01, $43, $91, $18, $0E
        .BYTE $01, $43, $92, $B4, $04
        .BYTE $01, $4F, $81, $00, $00
        .BYTE $01, $4F, $82, $00, $00
        .BYTE $01, $50, $90, $BC, $3B
        .BYTE $01, $50, $91, $18, $0E
        .BYTE $01, $50, $92, $48, $05
        .BYTE $01, $5C, $81, $00, $00
        .BYTE $01, $5C, $82, $00, $00
        .BYTE $01, $5D, $90, $61, $38
        .BYTE $01, $5D, $91, $18, $0E
        .BYTE $01, $5D, $92, $98, $05
        .BYTE $01, $64, $90, $BC, $3B
        .BYTE $01, $68, $81, $00, $00
        .BYTE $01, $68, $82, $00, $00
        .BYTE $01, $6A, $90, $3B, $32
        .BYTE $01, $6A, $91, $EF, $0E
        .BYTE $01, $6A, $92, $98, $05
        .BYTE $01, $75, $81, $00, $00
        .BYTE $01, $75, $82, $00, $00
        .BYTE $01, $77, $90, $BC, $3B
        .BYTE $01, $77, $91, $EF, $0E
        .BYTE $01, $77, $92, $77, $07
        .BYTE $01, $82, $81, $00, $00
        .BYTE $01, $82, $82, $00, $00
        .BYTE $01, $84, $90, $61, $38
        .BYTE $01, $84, $91, $EF, $0E
        .BYTE $01, $84, $92, $68, $09
        .BYTE $01, $8F, $81, $00, $00
        .BYTE $01, $8F, $82, $00, $00
        .BYTE $01, $91, $90, $3B, $32
        .BYTE $01, $91, $91, $EF, $0E
        .BYTE $01, $91, $92, $77, $07
        .BYTE $01, $9C, $81, $00, $00
        .BYTE $01, $9C, $82, $00, $00
        .BYTE $01, $9E, $90, $A4, $1F
        .BYTE $01, $9E, $91, $24, $03
        .BYTE $01, $9E, $C2, $01, $00
        .BYTE $01, $9E, $92, $47, $06
        .BYTE $01, $A9, $81, $00, $00
        .BYTE $01, $AB, $91, $8F, $0C
        .BYTE $01, $B4, $81, $00, $00
        .BYTE $01, $B8, $91, $D1, $12
        .BYTE $01, $C1, $81, $00, $00
        .BYTE $01, $C5, $91, $F5, $03
        .BYTE $01, $D0, $81, $00, $00
        .BYTE $01, $D0, $82, $00, $00
        .BYTE $01, $D2, $91, $31, $04
        .BYTE $01, $D2, $92, $62, $08
        .BYTE $01, $DD, $81, $00, $00
        .BYTE $01, $DE, $91, $8F, $0C
        .BYTE $01, $E8, $81, $00, $00
        .BYTE $01, $EB, $91, $1E, $15
        .BYTE $01, $F5, $81, $00, $00
        .BYTE $01, $F8, $91, $48, $05
        .BYTE $02, $04, $80, $00, $00
        .BYTE $02, $04, $81, $00, $00
        .BYTE $02, $04, $82, $00, $00
        .BYTE $02, $05, $90, $86, $21
        .BYTE $02, $05, $91, $77, $07
        .BYTE $02, $05, $92, $77, $07
        .BYTE $02, $11, $81, $00, $00
        .BYTE $02, $12, $91, $8F, $0C
        .BYTE $02, $1C, $81, $00, $00
        .BYTE $02, $1F, $91, $60, $16
        .BYTE $02, $29, $81, $00, $00
        .BYTE $02, $2C, $91, $98, $05
        .BYTE $02, $37, $81, $00, $00
        .BYTE $02, $37, $82, $00, $00
        .BYTE $02, $39, $91, $0C, $07
        .BYTE $02, $39, $92, $0C, $07
        .BYTE $02, $44, $81, $00, $00
        .BYTE $02, $46, $91, $8F, $0C
        .BYTE $02, $50, $81, $00, $00
        .BYTE $02, $53, $91, $60, $16
        .BYTE $02, $5D, $81, $00, $00
        .BYTE $02, $60, $91, $48, $05
        .BYTE $02, $6B, $80, $00, $00
        .BYTE $02, $6B, $81, $00, $00
        .BYTE $02, $6B, $82, $00, $00
        .BYTE $02, $6D, $90, $A1, $25
        .BYTE $02, $6D, $91, $B4, $04
        .BYTE $02, $6D, $92, $B4, $04
        .BYTE $02, $78, $81, $00, $00
        .BYTE $02, $7A, $91, $68, $09
        .BYTE $02, $83, $81, $00, $00
        .BYTE $02, $87, $91, $18, $0E
        .BYTE $02, $90, $81, $00, $00
        .BYTE $02, $93, $91, $0C, $07
        .BYTE $02, $9F, $81, $00, $00
        .BYTE $02, $9F, $82, $00, $00
        .BYTE $02, $A0, $91, $77, $07
        .BYTE $02, $A0, $92, $77, $07
        .BYTE $02, $AC, $81, $00, $00
        .BYTE $02, $AD, $91, $68, $09
        .BYTE $02, $B7, $81, $00, $00
        .BYTE $02, $BA, $91, $EF, $0E
        .BYTE $02, $C4, $81, $00, $00
        .BYTE $02, $C7, $91, $68, $09
        .BYTE $02, $D3, $80, $00, $00
        .BYTE $02, $D3, $81, $00, $00
        .BYTE $02, $D3, $82, $00, $00
        .BYTE $02, $D4, $90, $3D, $2A
        .BYTE $02, $D4, $91, $62, $08
        .BYTE $02, $D4, $92, $62, $08
        .BYTE $02, $DF, $81, $00, $00
        .BYTE $02, $E1, $91, $8F, $0C
        .BYTE $02, $EB, $81, $00, $00
        .BYTE $02, $EE, $91, $C3, $10
        .BYTE $02, $F8, $81, $00, $00
        .BYTE $02, $FB, $91, $8F, $0A
        .BYTE $03, $06, $81, $00, $00
        .BYTE $03, $06, $82, $00, $00
        .BYTE $03, $08, $91, $DA, $0B
        .BYTE $03, $08, $92, $ED, $05
        .BYTE $03, $13, $81, $00, $00
        .BYTE $03, $15, $91, $18, $0E
        .BYTE $03, $1E, $81, $00, $00
        .BYTE $03, $22, $91, $D1, $12
        .BYTE $03, $2B, $81, $00, $00
        .BYTE $03, $2F, $91, $0C, $07
        .BYTE $03, $3A, $80, $00, $00
        .BYTE $03, $3A, $81, $00, $00
        .BYTE $03, $3A, $82, $00, $00
        .BYTE $03, $3C, $90, $1D, $19
        .BYTE $03, $3C, $91, $D2, $0F
        .BYTE $03, $3C, $92, $24, $03
        .BYTE $03, $47, $81, $00, $00
        .BYTE $03, $47, $82, $00, $00
        .BYTE $03, $49, $90, $1D, $19
        .BYTE $03, $49, $91, $D2, $0F
        .BYTE $03, $49, $92, $F5, $03
        .BYTE $03, $4F, $90, $A4, $1F
        .BYTE $03, $54, $81, $00, $00
        .BYTE $03, $54, $82, $00, $00
        .BYTE $03, $55, $90, $A1, $25
        .BYTE $03, $55, $91, $D2, $0F
        .BYTE $03, $55, $92, $B4, $04
        .BYTE $03, $61, $81, $00, $00
        .BYTE $03, $61, $82, $00, $00
        .BYTE $03, $62, $90, $A4, $1F
        .BYTE $03, $62, $91, $D2, $0F
        .BYTE $03, $62, $92, $F5, $03
        .BYTE $03, $6E, $81, $00, $00
        .BYTE $03, $6E, $82, $00, $00
        .BYTE $03, $6F, $90, $86, $21
        .BYTE $03, $6F, $91, $C3, $10
        .BYTE $03, $6F, $92, $31, $04
        .BYTE $03, $7B, $81, $00, $00
        .BYTE $03, $7B, $82, $00, $00
        .BYTE $03, $7C, $90, $3B, $32
        .BYTE $03, $7C, $91, $C3, $10
        .BYTE $03, $7C, $92, $48, $05
        .BYTE $03, $88, $81, $00, $00
        .BYTE $03, $88, $82, $00, $00
        .BYTE $03, $89, $90, $3B, $32
        .BYTE $03, $89, $91, $C3, $10
        .BYTE $03, $89, $92, $47, $06
        .BYTE $03, $94, $81, $00, $00
        .BYTE $03, $94, $82, $00, $00
        .BYTE $03, $96, $90, $3B, $32
        .BYTE $03, $96, $91, $C3, $10
        .BYTE $03, $96, $92, $48, $05
        .BYTE $03, $A1, $81, $00, $00
        .BYTE $03, $A1, $82, $00, $00
        .BYTE $03, $A3, $90, $69, $2F
        .BYTE $03, $A3, $91, $18, $0E
        .BYTE $03, $A3, $92, $0C, $07
        .BYTE $03, $AA, $90, $3B, $32
        .BYTE $03, $AE, $81, $00, $00
        .BYTE $03, $AE, $82, $00, $00
        .BYTE $03, $B0, $90, $69, $2F
        .BYTE $03, $B0, $91, $18, $0E
        .BYTE $03, $B0, $92, $47, $06
        .BYTE $03, $B6, $90, $A1, $25
        .BYTE $03, $BB, $81, $00, $00
        .BYTE $03, $BB, $82, $00, $00
        .BYTE $03, $BD, $90, $31, $1C
        .BYTE $03, $BD, $91, $18, $0E
        .BYTE $03, $BD, $92, $ED, $05
        .BYTE $03, $C3, $90, $1D, $19
        .BYTE $03, $C8, $81, $00, $00
        .BYTE $03, $C8, $82, $00, $00
        .BYTE $03, $CA, $90, $B4, $17
        .BYTE $03, $CA, $91, $18, $0E
        .BYTE $03, $CA, $92, $47, $06
        .BYTE $03, $D5, $81, $00, $00
        .BYTE $03, $D5, $82, $00, $00
        .BYTE $03, $D7, $90, $60, $16
        .BYTE $03, $D7, $91, $EF, $0E
        .BYTE $03, $D7, $92, $77, $07
        .BYTE $03, $E2, $81, $00, $00
        .BYTE $03, $E2, $82, $00, $00
        .BYTE $03, $E4, $90, $A1, $25
        .BYTE $03, $E4, $91, $EF, $0E
        .BYTE $03, $E4, $92, $0C, $07
        .BYTE $03, $EF, $81, $00, $00
        .BYTE $03, $EF, $82, $00, $00
        .BYTE $03, $F1, $90, $A1, $25
        .BYTE $03, $F1, $91, $EF, $0E
        .BYTE $03, $F1, $92, $47, $06
        .BYTE $03, $FC, $81, $00, $00
        .BYTE $03, $FC, $82, $00, $00
        .BYTE $03, $FE, $90, $DE, $1D
        .BYTE $03, $FE, $91, $EF, $0E
        .BYTE $03, $FE, $92, $B4, $04
        .BYTE $04, $04, $90, $86, $21
        .BYTE $04, $09, $81, $00, $00
        .BYTE $04, $09, $82, $00, $00
        .BYTE $04, $0A, $90, $1D, $19
        .BYTE $04, $0A, $91, $D2, $0F
        .BYTE $04, $0A, $92, $47, $06
        .BYTE $04, $16, $81, $00, $00
        .BYTE $04, $16, $82, $00, $00
        .BYTE $04, $17, $90, $1D, $19
        .BYTE $04, $17, $91, $D2, $0F
        .BYTE $04, $17, $92, $B4, $04
        .BYTE $04, $1E, $90, $A4, $1F
        .BYTE $04, $23, $81, $00, $00
        .BYTE $04, $23, $82, $00, $00
        .BYTE $04, $24, $90, $A1, $25
        .BYTE $04, $24, $91, $D2, $0F
        .BYTE $04, $24, $92, $47, $06
        .BYTE $04, $30, $81, $00, $00
        .BYTE $04, $30, $82, $00, $00
        .BYTE $04, $31, $90, $A4, $1F
        .BYTE $04, $31, $91, $D2, $0F
        .BYTE $04, $31, $92, $B4, $04
        .BYTE $04, $3D, $81, $00, $00
        .BYTE $04, $3D, $82, $00, $00
        .BYTE $04, $3E, $90, $86, $21
        .BYTE $04, $3E, $91, $C3, $10
        .BYTE $04, $3E, $92, $31, $04
        .BYTE $04, $4A, $81, $00, $00
        .BYTE $04, $4A, $82, $00, $00
        .BYTE $04, $4B, $90, $3B, $32
        .BYTE $04, $4B, $91, $C3, $10
        .BYTE $04, $4B, $92, $47, $06
        .BYTE $04, $56, $81, $00, $00
        .BYTE $04, $56, $82, $00, $00
        .BYTE $04, $58, $90, $3B, $32
        .BYTE $04, $58, $91, $C3, $10
        .BYTE $04, $58, $92, $31, $04
        .BYTE $04, $63, $81, $00, $00
        .BYTE $04, $63, $82, $00, $00
        .BYTE $04, $65, $90, $69, $2F
        .BYTE $04, $65, $91, $C3, $10
        .BYTE $04, $65, $92, $47, $06
        .BYTE $04, $6B, $90, $3B, $32
        .BYTE $04, $70, $81, $00, $00
        .BYTE $04, $70, $82, $00, $00
        .BYTE $04, $72, $90, $A1, $25
        .BYTE $04, $72, $91, $18, $0E
        .BYTE $04, $72, $92, $86, $03
        .BYTE $04, $7D, $81, $00, $00
        .BYTE $04, $7D, $82, $00, $00
        .BYTE $04, $7F, $90, $BC, $3B
        .BYTE $04, $7F, $91, $18, $0E
        .BYTE $04, $7F, $92, $B4, $04
        .BYTE $04, $8A, $81, $00, $00
        .BYTE $04, $8A, $82, $00, $00
        .BYTE $04, $8C, $90, $BC, $3B
        .BYTE $04, $8C, $91, $18, $0E
        .BYTE $04, $8C, $92, $48, $05
        .BYTE $04, $97, $81, $00, $00
        .BYTE $04, $97, $82, $00, $00
        .BYTE $04, $99, $90, $61, $38
        .BYTE $04, $99, $91, $18, $0E
        .BYTE $04, $99, $92, $98, $05
        .BYTE $04, $9F, $90, $BC, $3B
        .BYTE $04, $A4, $81, $00, $00
        .BYTE $04, $A4, $82, $00, $00
        .BYTE $04, $A6, $90, $3B, $32
        .BYTE $04, $A6, $91, $EF, $0E
        .BYTE $04, $A6, $92, $98, $05
        .BYTE $04, $B1, $81, $00, $00
        .BYTE $04, $B1, $82, $00, $00
        .BYTE $04, $B3, $90, $BC, $3B
        .BYTE $04, $B3, $91, $EF, $0E
        .BYTE $04, $B3, $92, $77, $07
        .BYTE $04, $BE, $81, $00, $00
        .BYTE $04, $BE, $82, $00, $00
        .BYTE $04, $C0, $90, $61, $38
        .BYTE $04, $C0, $91, $EF, $0E
        .BYTE $04, $C0, $92, $68, $09
        .BYTE $04, $CB, $81, $00, $00
        .BYTE $04, $CB, $82, $00, $00
        .BYTE $04, $CC, $90, $3B, $32
        .BYTE $04, $CC, $91, $EF, $0E
        .BYTE $04, $CC, $92, $77, $07
        .BYTE $04, $D8, $81, $00, $00
        .BYTE $04, $D8, $82, $00, $00
        .BYTE $04, $D9, $90, $A4, $1F
        .BYTE $04, $D9, $91, $24, $03
        .BYTE $04, $D9, $92, $47, $06
        .BYTE $04, $E5, $81, $00, $00
        .BYTE $04, $E6, $91, $8F, $0C
        .BYTE $04, $F0, $81, $00, $00
        .BYTE $04, $F3, $91, $D1, $12
        .BYTE $04, $FD, $81, $00, $00
        .BYTE $05, $00, $91, $F5, $03
        .BYTE $05, $0B, $81, $00, $00
        .BYTE $05, $0B, $82, $00, $00
        .BYTE $05, $0D, $91, $31, $04
        .BYTE $05, $0D, $92, $62, $08
        .BYTE $05, $18, $81, $00, $00
        .BYTE $05, $1A, $91, $8F, $0C
        .BYTE $05, $24, $81, $00, $00
        .BYTE $05, $27, $91, $1E, $15
        .BYTE $05, $31, $81, $00, $00
        .BYTE $05, $34, $91, $48, $05
        .BYTE $05, $3F, $80, $00, $00
        .BYTE $05, $3F, $81, $00, $00
        .BYTE $05, $3F, $82, $00, $00
        .BYTE $05, $41, $90, $86, $21
        .BYTE $05, $41, $91, $77, $07
        .BYTE $05, $41, $92, $77, $07
        .BYTE $05, $4C, $81, $00, $00
        .BYTE $05, $4E, $91, $8F, $0C
        .BYTE $05, $57, $81, $00, $00
        .BYTE $05, $5B, $91, $60, $16
        .BYTE $05, $64, $81, $00, $00
        .BYTE $05, $68, $91, $98, $05
        .BYTE $05, $73, $81, $00, $00
        .BYTE $05, $73, $82, $00, $00
        .BYTE $05, $75, $91, $0C, $07
        .BYTE $05, $75, $92, $0C, $07
        .BYTE $05, $80, $81, $00, $00
        .BYTE $05, $81, $91, $8F, $0C
        .BYTE $05, $8B, $81, $00, $00
        .BYTE $05, $8E, $91, $60, $16
        .BYTE $05, $98, $81, $00, $00
        .BYTE $05, $9B, $91, $48, $05
        .BYTE $05, $A7, $80, $00, $00
        .BYTE $05, $A7, $81, $00, $00
        .BYTE $05, $A7, $82, $00, $00
        .BYTE $05, $A8, $90, $A1, $25
        .BYTE $05, $A8, $91, $B4, $04
        .BYTE $05, $A8, $92, $B4, $04
        .BYTE $05, $B4, $81, $00, $00
        .BYTE $05, $B5, $91, $68, $09
        .BYTE $05, $BF, $81, $00, $00
        .BYTE $05, $C2, $91, $18, $0E
        .BYTE $05, $CC, $81, $00, $00
        .BYTE $05, $CF, $91, $0C, $07
        .BYTE $05, $DA, $81, $00, $00
        .BYTE $05, $DA, $82, $00, $00
        .BYTE $05, $DC, $91, $77, $07
        .BYTE $05, $DC, $92, $77, $07
        .BYTE $05, $E7, $81, $00, $00
        .BYTE $05, $E9, $91, $68, $09
        .BYTE $05, $F3, $81, $00, $00
        .BYTE $05, $F6, $91, $EF, $0E
        .BYTE $06, $00, $81, $00, $00
        .BYTE $06, $03, $91, $68, $09
        .BYTE $06, $0E, $80, $00, $00
        .BYTE $06, $0E, $81, $00, $00
        .BYTE $06, $0E, $82, $00, $00
        .BYTE $06, $10, $90, $3D, $2A
        .BYTE $06, $10, $91, $62, $08
        .BYTE $06, $10, $92, $62, $08
        .BYTE $06, $1B, $81, $00, $00
        .BYTE $06, $1D, $91, $8F, $0C
        .BYTE $06, $26, $81, $00, $00
        .BYTE $06, $2A, $91, $C3, $10
        .BYTE $06, $33, $81, $00, $00
        .BYTE $06, $37, $91, $8F, $0A
        .BYTE $06, $42, $81, $00, $00
        .BYTE $06, $42, $82, $00, $00
        .BYTE $06, $43, $91, $DA, $0B
        .BYTE $06, $43, $92, $ED, $05
        .BYTE $06, $4F, $81, $00, $00
        .BYTE $06, $50, $91, $18, $0E
        .BYTE $06, $5A, $81, $00, $00
        .BYTE $06, $5D, $91, $D1, $12
        .BYTE $06, $67, $81, $00, $00
        .BYTE $06, $6A, $91, $0C, $07
        .BYTE $06, $76, $80, $00, $00
        .BYTE $06, $76, $81, $00, $00
        .BYTE $06, $76, $82, $00, $00
        .BYTE $06, $77, $90, $A1, $25
        .BYTE $06, $77, $91, $1D, $19
        .BYTE $06, $77, $92, $47, $06
        .BYTE $06, $84, $80, $00, $00
        .BYTE $06, $84, $82, $00, $00
        .BYTE $06, $8B, $90, $A1, $25
        .BYTE $06, $8B, $92, $47, $06
        .BYTE $06, $98, $80, $00, $00
        .BYTE $06, $98, $82, $00, $00
        .BYTE $06, $9E, $90, $A4, $1F
        .BYTE $06, $9E, $92, $B4, $04
        .BYTE $06, $AB, $80, $00, $00
        .BYTE $06, $AB, $81, $00, $00
        .BYTE $06, $AB, $82, $00, $00
        .BYTE $06, $B8, $90, $A1, $25
        .BYTE $06, $B8, $92, $B4, $04
        .BYTE $06, $C5, $90, $A4, $1F
        .BYTE $06, $C5, $82, $00, $00
        .BYTE $06, $C5, $92, $24, $03
        .BYTE $06, $D2, $90, $A1, $25
        .BYTE $06, $D2, $82, $00, $00
        .BYTE $06, $D2, $92, $B4, $04
        .BYTE $06, $DF, $90, $3D, $2A
        .BYTE $06, $DF, $91, $1D, $19
        .BYTE $06, $DF, $82, $00, $00
        .BYTE $06, $DF, $92, $31, $04
        .BYTE $06, $EC, $80, $00, $00
        .BYTE $06, $EC, $82, $00, $00
        .BYTE $06, $F2, $90, $3D, $2A
        .BYTE $06, $F2, $92, $31, $04
        .BYTE $06, $FF, $80, $00, $00
        .BYTE $06, $FF, $82, $00, $00
        .BYTE $07, $05, $90, $86, $21
        .BYTE $07, $05, $92, $CC, $02
        .BYTE $07, $12, $80, $00, $00
        .BYTE $07, $12, $81, $00, $00
        .BYTE $07, $12, $82, $00, $00
        .BYTE $07, $1F, $90, $3D, $2A
        .BYTE $07, $1F, $92, $CC, $02
        .BYTE $07, $2C, $90, $3D, $2A
        .BYTE $07, $2C, $82, $00, $00
        .BYTE $07, $2C, $92, $B4, $04
        .BYTE $07, $39, $90, $86, $21
        .BYTE $07, $39, $82, $00, $00
        .BYTE $07, $39, $92, $CC, $02
        .BYTE $07, $46, $90, $A1, $25
        .BYTE $07, $46, $91, $60, $16
        .BYTE $07, $46, $82, $00, $00
        .BYTE $07, $46, $92, $77, $07
        .BYTE $07, $53, $80, $00, $00
        .BYTE $07, $53, $82, $00, $00
        .BYTE $07, $59, $90, $A1, $25
        .BYTE $07, $59, $92, $77, $07
        .BYTE $07, $66, $80, $00, $00
        .BYTE $07, $66, $82, $00, $00
        .BYTE $07, $6D, $90, $DE, $1D
        .BYTE $07, $6D, $92, $98, $05
        .BYTE $07, $7A, $80, $00, $00
        .BYTE $07, $7A, $81, $00, $00
        .BYTE $07, $7A, $82, $00, $00
        .BYTE $07, $87, $90, $C0, $2C
        .BYTE $07, $87, $92, $98, $05
        .BYTE $07, $94, $90, $A1, $25
        .BYTE $07, $94, $82, $00, $00
        .BYTE $07, $94, $92, $77, $07
        .BYTE $07, $A1, $90, $DE, $1D
        .BYTE $07, $A1, $82, $00, $00
        .BYTE $07, $A1, $92, $68, $09
        .BYTE $07, $AE, $90, $A1, $25
        .BYTE $07, $AE, $91, $31, $1C
        .BYTE $07, $AE, $82, $00, $00
        .BYTE $07, $AE, $92, $0C, $07
        .BYTE $07, $BA, $80, $00, $00
        .BYTE $07, $BA, $82, $00, $00
        .BYTE $07, $C1, $90, $A1, $25
        .BYTE $07, $C1, $92, $ED, $05
        .BYTE $07, $CE, $80, $00, $00
        .BYTE $07, $CE, $82, $00, $00
        .BYTE $07, $D4, $90, $A1, $25
        .BYTE $07, $D4, $92, $B4, $04
        .BYTE $07, $E1, $80, $00, $00
        .BYTE $07, $E1, $81, $00, $00
        .BYTE $07, $E1, $82, $00, $00
        .BYTE $07, $EE, $92, $B4, $04
        .BYTE $07, $FB, $82, $00, $00
        .BYTE $07, $FB, $92, $0C, $07
        .BYTE $08, $08, $82, $00, $00
        .BYTE $08, $08, $92, $B4, $04
        .BYTE $08, $15, $90, $A4, $1F
        .BYTE $08, $15, $91, $1D, $19
        .BYTE $08, $15, $82, $00, $00
        .BYTE $08, $15, $92, $47, $06
        .BYTE $08, $22, $90, $1D, $19
        .BYTE $08, $22, $82, $00, $00
        .BYTE $08, $28, $90, $A4, $1F
        .BYTE $08, $28, $92, $B4, $04
        .BYTE $08, $2F, $90, $A1, $25
        .BYTE $08, $35, $90, $1D, $19
        .BYTE $08, $35, $82, $00, $00
        .BYTE $08, $3C, $90, $A4, $1F
        .BYTE $08, $3C, $92, $24, $03
        .BYTE $08, $42, $90, $A1, $25
        .BYTE $08, $49, $90, $A4, $1F
        .BYTE $08, $49, $81, $00, $00
        .BYTE $08, $49, $82, $00, $00
        .BYTE $08, $4F, $90, $3B, $32
        .BYTE $08, $56, $90, $A1, $25
        .BYTE $08, $56, $92, $B4, $04
        .BYTE $08, $5C, $90, $A4, $1F
        .BYTE $08, $63, $90, $49, $3F
        .BYTE $08, $63, $82, $00, $00
        .BYTE $08, $63, $92, $47, $06
        .BYTE $08, $6F, $90, $3B, $32
        .BYTE $08, $6F, $82, $00, $00
        .BYTE $08, $6F, $92, $B4, $04
        .BYTE $08, $76, $90, $49, $3F
        .BYTE $08, $7C, $90, $3B, $32
        .BYTE $08, $7C, $91, $1D, $19
        .BYTE $08, $7C, $82, $00, $00
        .BYTE $08, $7C, $92, $31, $04
        .BYTE $08, $83, $90, $3D, $2A
        .BYTE $08, $89, $90, $86, $21
        .BYTE $08, $89, $82, $00, $00
        .BYTE $08, $90, $90, $1D, $19
        .BYTE $08, $90, $92, $31, $04
        .BYTE $08, $96, $90, $3D, $2A
        .BYTE $08, $9D, $90, $86, $21
        .BYTE $08, $9D, $82, $00, $00
        .BYTE $08, $A3, $90, $1D, $19
        .BYTE $08, $A3, $92, $24, $03
        .BYTE $08, $AA, $90, $1E, $15
        .BYTE $08, $B0, $90, $1D, $19
        .BYTE $08, $B0, $81, $00, $00
        .BYTE $08, $B0, $82, $00, $00
        .BYTE $08, $B7, $90, $C3, $10
        .BYTE $08, $BD, $90, $1E, $15
        .BYTE $08, $BD, $92, $24, $03
        .BYTE $08, $C4, $90, $8F, $0C
        .BYTE $08, $CA, $90, $C3, $10
        .BYTE $08, $CA, $82, $00, $00
        .BYTE $08, $CA, $92, $B4, $04
        .BYTE $08, $D0, $90, $1D, $19
        .BYTE $08, $D7, $90, $86, $21
        .BYTE $08, $D7, $82, $00, $00
        .BYTE $08, $D7, $92, $24, $03
        .BYTE $08, $DD, $80, $00, $00
        .BYTE $08, $E4, $91, $60, $16
        .BYTE $08, $E4, $82, $00, $00
        .BYTE $08, $E4, $92, $77, $07
        .BYTE $08, $F1, $82, $00, $00
        .BYTE $08, $F7, $92, $98, $05
        .BYTE $09, $04, $82, $00, $00
        .BYTE $09, $0B, $92, $BC, $03
        .BYTE $09, $18, $81, $00, $00
        .BYTE $09, $18, $82, $00, $00
        .BYTE $09, $25, $92, $98, $05
        .BYTE $09, $31, $82, $00, $00
        .BYTE $09, $31, $92, $77, $07
        .BYTE $09, $3E, $82, $00, $00
        .BYTE $09, $3E, $92, $68, $09
        .BYTE $09, $4B, $91, $31, $1C
        .BYTE $09, $4B, $82, $00, $00
        .BYTE $09, $4B, $92, $0C, $07
        .BYTE $09, $58, $82, $00, $00
        .BYTE $09, $5F, $92, $ED, $05
        .BYTE $09, $6C, $82, $00, $00
        .BYTE $09, $72, $92, $B4, $04
        .BYTE $09, $7F, $81, $00, $00
        .BYTE $09, $7F, $82, $00, $00
        .BYTE $09, $8C, $92, $B4, $04
        .BYTE $09, $99, $82, $00, $00
        .BYTE $09, $99, $92, $48, $05
        .BYTE $09, $A6, $82, $00, $00
        .BYTE $09, $A6, $92, $B4, $04
        .BYTE $09, $B3, $82, $00, $00
        .BYTE $0A, $40, $FF, $00, $00
