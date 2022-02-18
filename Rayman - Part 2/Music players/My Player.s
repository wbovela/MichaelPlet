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
ATTDEC  .BYTE $80, $80, $80, $00, $00, $00
SUSREL  .BYTE $F0, $F0, $F0, $00, $00, $00
PULSELO .BYTE $00, $00, $00, $00, $00, $00
PULSEHI .BYTE $08, $08, $08, $00, $00, $00

SONG00
        .BYTE $00, $00, $C0, $00, $00
        .BYTE $00, $00, $C1, $01, $00
        .BYTE $00, $00, $C2, $02, $00
        .BYTE $00, $00, $B0, $0F, $00
        .BYTE $00, $00, $90, 195, 16
        .BYTE $00, $10, $91, 31,  21
        .BYTE $00, $20, $92, 30,  25
        .BYTE $00, $80, $82, $00, $00
        .BYTE $00, $A0, $81, $00, $00
        .BYTE $00, $C0, $80, $00, $00
        .BYTE $02, $00, $FF, $00, $00
