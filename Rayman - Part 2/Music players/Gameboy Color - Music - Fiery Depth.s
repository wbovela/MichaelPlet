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
LDL     JMP LDL

SETUP_IRQ
	      SEI
	      LDA #<NMI
	      STA $318
	      LDA #>NMI
	      STA $319
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

NMI
        RTI

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
ATTDEC  .BYTE $24, $24, $24, $00, $00, $00
SUSREL  .BYTE $80, $80, $80, $00, $00, $00
PULSELO .BYTE $00, $00, $00, $00, $00, $00
PULSEHI .BYTE $08, $08, $04, $00, $00, $00

SONG00
        .BYTE $00, $00, $C0, $01, $00
        .BYTE $00, $00, $B0, $0F, $00
        .BYTE $00, $00, $90, $68, $09
        .BYTE $00, $00, $C1, $02, $00
        .BYTE $00, $00, $B0, $0F, $00
        .BYTE $00, $11, $90, $D1, $12
        .BYTE $00, $19, $80, $00, $00
        .BYTE $00, $22, $90, $8F, $0A
        .BYTE $00, $33, $90, $1E, $15
        .BYTE $00, $3B, $80, $00, $00
        .BYTE $00, $44, $90, $30, $0B
        .BYTE $00, $55, $90, $60, $16
        .BYTE $00, $5D, $80, $00, $00
        .BYTE $00, $66, $90, $8F, $0A
        .BYTE $00, $77, $90, $1E, $15
        .BYTE $00, $7F, $80, $00, $00
        .BYTE $00, $88, $90, $68, $09
        .BYTE $00, $99, $90, $D1, $12
        .BYTE $00, $A1, $80, $00, $00
        .BYTE $00, $A9, $90, $E1, $08
        .BYTE $00, $BA, $90, $C2, $11
        .BYTE $00, $C3, $80, $00, $00
        .BYTE $00, $CB, $90, $68, $09
        .BYTE $00, $DC, $90, $D1, $12
        .BYTE $00, $E5, $80, $00, $00
        .BYTE $00, $ED, $90, $8F, $0A
        .BYTE $00, $FE, $90, $1E, $15
        .BYTE $01, $07, $80, $00, $00
        .BYTE $01, $0F, $90, $68, $09
        .BYTE $01, $18, $91, $42, $4B
        .BYTE $01, $20, $90, $D1, $12
        .BYTE $01, $20, $81, $00, $00
        .BYTE $01, $20, $91, $7F, $59
        .BYTE $01, $29, $80, $00, $00
        .BYTE $01, $29, $81, $00, $00
        .BYTE $01, $29, $91, $C3, $70
        .BYTE $01, $31, $90, $8F, $0A
        .BYTE $01, $31, $81, $00, $00
        .BYTE $01, $31, $91, $75, $64
        .BYTE $01, $42, $90, $1E, $15
        .BYTE $01, $4B, $80, $00, $00
        .BYTE $01, $4B, $81, $00, $00
        .BYTE $01, $53, $90, $30, $0B
        .BYTE $01, $5B, $91, $42, $4B
        .BYTE $01, $64, $90, $60, $16
        .BYTE $01, $64, $81, $00, $00
        .BYTE $01, $64, $91, $7F, $59
        .BYTE $01, $6C, $80, $00, $00
        .BYTE $01, $6C, $81, $00, $00
        .BYTE $01, $6C, $91, $C3, $70
        .BYTE $01, $75, $90, $8F, $0A
        .BYTE $01, $75, $81, $00, $00
        .BYTE $01, $75, $91, $75, $64
        .BYTE $01, $7D, $81, $00, $00
        .BYTE $01, $7D, $91, $7A, $54
        .BYTE $01, $86, $90, $1E, $15
        .BYTE $01, $86, $81, $00, $00
        .BYTE $01, $86, $91, $09, $47
        .BYTE $01, $8E, $80, $00, $00
        .BYTE $01, $97, $90, $68, $09
        .BYTE $01, $97, $81, $00, $00
        .BYTE $01, $9F, $91, $42, $4B
        .BYTE $01, $A8, $90, $D1, $12
        .BYTE $01, $A8, $81, $00, $00
        .BYTE $01, $A8, $91, $7F, $59
        .BYTE $01, $B0, $80, $00, $00
        .BYTE $01, $B0, $81, $00, $00
        .BYTE $01, $B0, $91, $C3, $70
        .BYTE $01, $B9, $90, $E1, $08
        .BYTE $01, $B9, $81, $00, $00
        .BYTE $01, $B9, $91, $09, $47
        .BYTE $01, $CA, $90, $C2, $11
        .BYTE $01, $CA, $81, $00, $00
        .BYTE $01, $D2, $80, $00, $00
        .BYTE $01, $D2, $91, $77, $77
        .BYTE $01, $DB, $90, $68, $09
        .BYTE $01, $DB, $81, $00, $00
        .BYTE $01, $DB, $91, $7F, $59
        .BYTE $01, $E3, $81, $00, $00
        .BYTE $01, $E3, $91, $D2, $5E
        .BYTE $01, $EC, $90, $D1, $12
        .BYTE $01, $EC, $81, $00, $00
        .BYTE $01, $EC, $91, $75, $64
        .BYTE $01, $F4, $80, $00, $00
        .BYTE $01, $F4, $81, $00, $00
        .BYTE $01, $F4, $91, $6E, $6A
        .BYTE $01, $FC, $90, $8F, $0A
        .BYTE $01, $FC, $81, $00, $00
        .BYTE $01, $FC, $91, $C3, $70
        .BYTE $02, $05, $81, $00, $00
        .BYTE $02, $05, $91, $6E, $6A
        .BYTE $02, $0D, $90, $1E, $15
        .BYTE $02, $0D, $81, $00, $00
        .BYTE $02, $0D, $91, $75, $64
        .BYTE $02, $16, $80, $00, $00
        .BYTE $02, $16, $81, $00, $00
        .BYTE $02, $16, $91, $D2, $5E
        .BYTE $02, $1E, $90, $68, $09
        .BYTE $02, $1E, $81, $00, $00
        .BYTE $02, $1E, $91, $7F, $59
        .BYTE $02, $27, $81, $00, $00
        .BYTE $02, $27, $91, $42, $4B
        .BYTE $02, $2F, $90, $D1, $12
        .BYTE $02, $2F, $81, $00, $00
        .BYTE $02, $2F, $91, $7F, $59
        .BYTE $02, $38, $80, $00, $00
        .BYTE $02, $38, $81, $00, $00
        .BYTE $02, $38, $91, $C3, $70
        .BYTE $02, $40, $90, $8F, $0A
        .BYTE $02, $40, $81, $00, $00
        .BYTE $02, $40, $91, $75, $64
        .BYTE $02, $49, $81, $00, $00
        .BYTE $02, $49, $91, $7A, $54
        .BYTE $02, $51, $90, $1E, $15
        .BYTE $02, $51, $81, $00, $00
        .BYTE $02, $51, $91, $09, $47
        .BYTE $02, $5A, $80, $00, $00
        .BYTE $02, $62, $90, $30, $0B
        .BYTE $02, $62, $81, $00, $00
        .BYTE $02, $62, $91, $09, $47
        .BYTE $02, $6B, $81, $00, $00
        .BYTE $02, $6B, $91, $42, $4B
        .BYTE $02, $73, $90, $60, $16
        .BYTE $02, $73, $81, $00, $00
        .BYTE $02, $73, $91, $7F, $59
        .BYTE $02, $7C, $80, $00, $00
        .BYTE $02, $7C, $81, $00, $00
        .BYTE $02, $7C, $91, $C3, $70
        .BYTE $02, $84, $90, $8F, $0A
        .BYTE $02, $84, $81, $00, $00
        .BYTE $02, $84, $91, $75, $64
        .BYTE $02, $8D, $81, $00, $00
        .BYTE $02, $8D, $91, $7A, $54
        .BYTE $02, $95, $90, $1E, $15
        .BYTE $02, $95, $81, $00, $00
        .BYTE $02, $95, $91, $09, $47
        .BYTE $02, $9D, $80, $00, $00
        .BYTE $02, $A6, $90, $68, $09
        .BYTE $02, $A6, $81, $00, $00
        .BYTE $02, $A6, $91, $09, $47
        .BYTE $02, $AE, $81, $00, $00
        .BYTE $02, $AE, $91, $42, $4B
        .BYTE $02, $B7, $90, $D1, $12
        .BYTE $02, $B7, $81, $00, $00
        .BYTE $02, $B7, $91, $7F, $59
        .BYTE $02, $BF, $80, $00, $00
        .BYTE $02, $BF, $81, $00, $00
        .BYTE $02, $BF, $91, $C3, $70
        .BYTE $02, $C8, $90, $E1, $08
        .BYTE $02, $C8, $81, $00, $00
        .BYTE $02, $C8, $91, $77, $77
        .BYTE $02, $D9, $90, $C2, $11
        .BYTE $02, $D9, $81, $00, $00
        .BYTE $02, $E1, $80, $00, $00
        .BYTE $02, $EA, $90, $68, $09
        .BYTE $02, $EA, $91, $C3, $70
        .BYTE $02, $FB, $90, $D1, $12
        .BYTE $02, $FB, $81, $00, $00
        .BYTE $03, $03, $80, $00, $00
        .BYTE $03, $0C, $90, $8F, $0A
        .BYTE $03, $0C, $91, $84, $96
        .BYTE $03, $1D, $90, $1E, $15
        .BYTE $03, $25, $80, $00, $00
        .BYTE $03, $2E, $90, $8F, $0C
        .BYTE $03, $2E, $81, $00, $00
        .BYTE $03, $36, $80, $00, $00
        .BYTE $03, $3F, $90, $EF, $0E
        .BYTE $03, $3F, $91, $75, $64
        .BYTE $03, $47, $90, $8F, $0C
        .BYTE $03, $47, $81, $00, $00
        .BYTE $03, $4F, $90, $DA, $0B
        .BYTE $03, $58, $80, $00, $00
        .BYTE $03, $60, $90, $EF, $0E
        .BYTE $03, $60, $91, $3B, $32
        .BYTE $03, $69, $90, $DA, $0B
        .BYTE $03, $69, $81, $00, $00
        .BYTE $03, $71, $90, $8F, $0C
        .BYTE $03, $7A, $80, $00, $00
        .BYTE $03, $82, $90, $EF, $0E
        .BYTE $03, $82, $91, $75, $64
        .BYTE $03, $8B, $90, $DA, $0B
        .BYTE $03, $8B, $81, $00, $00
        .BYTE $03, $93, $90, $4E, $0D
        .BYTE $03, $93, $91, $6E, $6A
        .BYTE $03, $9C, $90, $4E, $0D
        .BYTE $03, $9C, $81, $00, $00
        .BYTE $03, $A4, $90, $C3, $10
        .BYTE $03, $A4, $91, $6E, $6A
        .BYTE $03, $AD, $90, $4E, $0D
        .BYTE $03, $B5, $90, $8F, $0C
        .BYTE $03, $B5, $81, $00, $00
        .BYTE $03, $B5, $91, $75, $64
        .BYTE $03, $BE, $80, $00, $00
        .BYTE $03, $BE, $81, $00, $00
        .BYTE $03, $C6, $90, $EF, $0E
        .BYTE $03, $C6, $91, $75, $64
        .BYTE $03, $CF, $90, $8F, $0C
        .BYTE $03, $D7, $90, $DA, $0B
        .BYTE $03, $D7, $81, $00, $00
        .BYTE $03, $E0, $80, $00, $00
        .BYTE $03, $E8, $90, $EF, $0E
        .BYTE $03, $E8, $91, $3B, $32
        .BYTE $03, $F0, $90, $DA, $0B
        .BYTE $03, $F9, $90, $30, $0B
        .BYTE $03, $F9, $81, $00, $00
        .BYTE $04, $01, $80, $00, $00
        .BYTE $04, $0A, $90, $EF, $0E
        .BYTE $04, $12, $90, $30, $0B
        .BYTE $04, $1B, $90, $8F, $0A
        .BYTE $04, $23, $90, $30, $0B
        .BYTE $04, $2C, $90, $DA, $0B
        .BYTE $04, $3D, $90, $8F, $0C
        .BYTE $04, $45, $90, $8F, $0C
        .BYTE $04, $4E, $91, $8F, $0C
        .BYTE $04, $56, $81, $00, $00
        .BYTE $04, $56, $91, $8F, $0C
        .BYTE $04, $5F, $90, $DA, $0B
        .BYTE $04, $67, $90, $DA, $0B
        .BYTE $04, $70, $81, $00, $00
        .BYTE $04, $70, $91, $DA, $0B
        .BYTE $04, $78, $81, $00, $00
        .BYTE $04, $78, $91, $DA, $0B
        .BYTE $04, $81, $90, $30, $0B
        .BYTE $04, $89, $90, $30, $0B
        .BYTE $04, $91, $81, $00, $00
        .BYTE $04, $91, $91, $30, $0B
        .BYTE $04, $9A, $81, $00, $00
        .BYTE $04, $9A, $91, $30, $0B
        .BYTE $04, $A2, $90, $DA, $0B
        .BYTE $04, $AB, $90, $DA, $0B
        .BYTE $04, $B3, $81, $00, $00
        .BYTE $04, $B3, $91, $DA, $0B
        .BYTE $04, $BC, $81, $00, $00
        .BYTE $04, $BC, $91, $DA, $0B
        .BYTE $04, $C4, $90, $8F, $0C
        .BYTE $04, $CD, $90, $8F, $0C
        .BYTE $04, $D5, $81, $00, $00
        .BYTE $04, $D5, $91, $8F, $0C
        .BYTE $04, $DE, $81, $00, $00
        .BYTE $04, $DE, $91, $8F, $0C
        .BYTE $04, $E6, $90, $4E, $0D
        .BYTE $04, $EF, $90, $4E, $0D
        .BYTE $04, $F7, $81, $00, $00
        .BYTE $04, $F7, $91, $4E, $0D
        .BYTE $05, $00, $81, $00, $00
        .BYTE $05, $00, $91, $4E, $0D
        .BYTE $05, $08, $90, $8F, $0C
        .BYTE $05, $11, $90, $8F, $0C
        .BYTE $05, $19, $81, $00, $00
        .BYTE $05, $19, $91, $8F, $0C
        .BYTE $05, $22, $81, $00, $00
        .BYTE $05, $22, $91, $8F, $0C
        .BYTE $05, $2A, $90, $DA, $0B
        .BYTE $05, $33, $90, $DA, $0B
        .BYTE $05, $3B, $81, $00, $00
        .BYTE $05, $3B, $91, $DA, $0B
        .BYTE $05, $43, $81, $00, $00
        .BYTE $05, $43, $91, $DA, $0B
        .BYTE $05, $4C, $90, $48, $05
        .BYTE $05, $4C, $81, $00, $00
        .BYTE $05, $4C, $91, $7A, $54
        .BYTE $05, $5D, $81, $00, $00
        .BYTE $05, $6E, $91, $D2, $5E
        .BYTE $05, $7F, $81, $00, $00
        .BYTE $05, $90, $91, $77, $77
        .BYTE $05, $A1, $81, $00, $00
        .BYTE $05, $B2, $91, $D2, $5E
        .BYTE $05, $C3, $80, $00, $00
        .BYTE $05, $C3, $81, $00, $00
        .BYTE $05, $D4, $90, $48, $05
        .BYTE $05, $D4, $91, $7A, $54
        .BYTE $05, $E4, $81, $00, $00
        .BYTE $05, $F5, $91, $D2, $5E
        .BYTE $06, $06, $81, $00, $00
        .BYTE $06, $17, $91, $18, $86
        .BYTE $06, $28, $81, $00, $00
        .BYTE $06, $39, $91, $D2, $5E
        .BYTE $06, $4A, $80, $00, $00
        .BYTE $06, $4A, $81, $00, $00
        .BYTE $06, $5B, $90, $48, $05
        .BYTE $06, $5B, $91, $7A, $54
        .BYTE $06, $64, $81, $00, $00
        .BYTE $06, $64, $91, $BC, $3B
        .BYTE $06, $6C, $81, $00, $00
        .BYTE $06, $6C, $91, $0C, $43
        .BYTE $06, $75, $81, $00, $00
        .BYTE $06, $75, $91, $18, $86
        .BYTE $06, $7D, $81, $00, $00
        .BYTE $06, $7D, $91, $D2, $5E
        .BYTE $06, $85, $81, $00, $00
        .BYTE $06, $85, $91, $7A, $54
        .BYTE $06, $8E, $81, $00, $00
        .BYTE $06, $8E, $91, $0C, $43
        .BYTE $06, $96, $81, $00, $00
        .BYTE $06, $9F, $91, $77, $77
        .BYTE $06, $A7, $81, $00, $00
        .BYTE $06, $A7, $91, $BC, $3B
        .BYTE $06, $B0, $81, $00, $00
        .BYTE $06, $B0, $91, $0C, $43
        .BYTE $06, $B8, $81, $00, $00
        .BYTE $06, $B8, $91, $18, $86
        .BYTE $06, $C1, $81, $00, $00
        .BYTE $06, $C1, $91, $D2, $5E
        .BYTE $06, $C9, $81, $00, $00
        .BYTE $06, $C9, $91, $7A, $54
        .BYTE $06, $D2, $80, $00, $00
        .BYTE $06, $D2, $81, $00, $00
        .BYTE $06, $D2, $91, $0C, $43
        .BYTE $06, $DA, $81, $00, $00
        .BYTE $06, $E3, $90, $48, $05
        .BYTE $06, $E3, $91, $7A, $54
        .BYTE $06, $EB, $81, $00, $00
        .BYTE $06, $EB, $91, $BC, $3B
        .BYTE $06, $F4, $81, $00, $00
        .BYTE $06, $F4, $91, $0C, $43
        .BYTE $06, $FC, $81, $00, $00
        .BYTE $06, $FC, $91, $18, $86
        .BYTE $07, $05, $81, $00, $00
        .BYTE $07, $05, $91, $D2, $5E
        .BYTE $07, $0D, $81, $00, $00
        .BYTE $07, $0D, $91, $7A, $54
        .BYTE $07, $16, $81, $00, $00
        .BYTE $07, $16, $91, $0C, $43
        .BYTE $07, $1E, $81, $00, $00
        .BYTE $07, $27, $91, $18, $86
        .BYTE $07, $2F, $81, $00, $00
        .BYTE $07, $2F, $91, $BC, $3B
        .BYTE $07, $37, $81, $00, $00
        .BYTE $07, $37, $91, $0C, $43
        .BYTE $07, $40, $81, $00, $00
        .BYTE $07, $40, $91, $18, $86
        .BYTE $07, $48, $81, $00, $00
        .BYTE $07, $48, $91, $D2, $5E
        .BYTE $07, $51, $81, $00, $00
        .BYTE $07, $51, $91, $7A, $54
        .BYTE $07, $59, $81, $00, $00
        .BYTE $07, $59, $91, $0C, $43
        .BYTE $07, $6A, $80, $00, $00
        .BYTE $07, $6A, $81, $00, $00
        .BYTE $08, $40, $FF, $00, $00
