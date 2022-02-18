; Variables
XScrollFine      = $06
XScrollDisp      = $07
ScrollDir        = $08
Screen           = $09
NextForeMapPtrLO = $0F
NextForeMapPtrHI = $10
ForeMapPtrLO     = $11
ForeMapPtrHI     = $12
JoyDir           = $14
JoyByte          = $1C

; Constants
STARTMAPPTR      = $00B6


        * = $0800
        BYTE $00,$0C,$08,$0A,$00,$9E,$20,$32 ; Encode '10 SYS 2064'
        BYTE $30,$36,$34,$00,$00,$00,$00,$00

        SEI

        ; Disable CIA interrupts
        LDA #$7F
        STA $DC0D
        STA $DD0D

        ; Enable Raster Interrupts
        LDA #$01
        STA $D01A

        ; Set IRQ
        LDA #<IRQ0
        LDX #>IRQ0
        STA $FFFE
        STX $FFFF

        ; Set line
        LDA $D011
        AND #$7F                ; Clear raster HI bit
        STA $D011
        LDA #0                  ; Next IRQ in raster line 0
        STA $D012

        ; Bank out KERNAL and BASIC
        LDA #$35
        STA $01


        JSR InitStatusArea

        LDX #<STARTMAPPTR
        LDY #>STARTMAPPTR
        STX ForeMapPtrLO        ; Foreground Map Pointer LO
        STY ForeMapPtrHI        ; Foreground Map Pointer HI
        STX NextForeMapPtrLO
        STY NextForeMapPtrHI

        LDA $DD00
        AND #$FC                ; Bank #3, $C000-$FFFF, 49152-65535
        ORA #$02
        STA $DD00

        LDY #$00
        STY XScrollFine
        INY
        STY Screen
        LDA #$86
        STA $0C                 ; Screen and charset
        LDA #$10
        STA $0B                 ; XSCROLL
        LDA #$60
        STA $0D
        EOR #$04
        STA $0E

        LDY #$FF
        STY ScrollDir           ; Left = #$01, Right = #$FF
        LDY #$00
        STY JoyDir
        STY Switch+1

        LDX $0C                 ; Screen and charset
        LDY $0B                 ; XSCROLL
        STY $D016               ; Write X-Scroll
        STX $D018               ; Select screen and charset

        LDA #$00
        STA $D020

        LDA #$0E                ; LIGHT BLUE
        LDX #$09                ; BROWN
        LDY #$0A                ; LIGHT RED
        STA $D021               ; BACKGROUND COLOR
        STX $D022               ; BACKGROUND COLOR 1
        STY $D023               ; BACKGROUND COLOR 2
        LDA #$00
        STA XScrollFine

        LDY $0D
        JSR DrawScreen

        JSR UpdateColorRAM

        JSR UpdateColorRAM2Rows


        ; Acknowledge interrupt
        ASL $D019
        CLI

        JMP DoDraw

                ;________________________________________
                ;
                ;    Game Loop
                ;
Draw    LDA #$00                ; This value is changed in 16AB (#$00), 18A7 (#$04) and 18B6 (#$02)
        BNE DoDraw
        JMP Draw
DoDraw  LDA #$00
        STA Draw+1              ; Flag: Draw from Map to Screen = False
        LDA NextForeMapPtrLO
        SEC
        LDY ScrollDir           ; Left = #$01, Right = #$FF
        BPL @Left
        ADC #$00
        STA ForeMapPtrLO
        LDA NextForeMapPtrHI
        ADC #$00
        STA ForeMapPtrHI
        JMP @Skip
@Left   SBC #$01
        STA ForeMapPtrLO
        LDA NextForeMapPtrHI
        SBC #$00
        STA ForeMapPtrHI
@Skip   LDY $0E
        JSR DrawScreen          ; Draw from map to screen. This is called when the screen needs to be updated (moving) (IRQ is 19D4, Raster = 51/52)
        JMP Draw


                ;________________________________________
                ;
                ;    IRQ handler for raster line 0
                ;
IRQ0
        ; Save state
        PHA
        TXA
        PHA
        TYA
        PHA


        LDX $0C                 ; Screen and charset
        LDY $0B                 ; XSCROLL
        LDA $DD00
        AND #$FC                ; Bank #3, $C000-$FFFF, 49152-65535
        ORA #$02
        STA $DD00
        LDA #$00
        STA JoyDir
        STY $D016               ; Write X-Scroll
        STX $D018               ; Select screen and charset
        LDA #$0E                ; LIGHT BLUE
        LDX #$09                ; BROWN
        LDY #$0A                ; LIGHT RED
        STA $D021               ; BACKGROUND COLOR
        STX $D022               ; BACKGROUND COLOR 1
        STY $D023               ; BACKGROUND COLOR 2

        JSR ShowVariables

        ; Read joystick
READJOY LDA #$00
        BEQ NoRead
        LDA $DC00               ; JOYSTICK PORT A
        STA JoyByte
NoRead  LDA READJOY+1           ; Read on next frame
        EOR #$01
        STA READJOY+1
        LDA JoyByte
        AND #$08                ; IF NOT BIT 3 OFF
        BNE NotRight
        LDA #$01                ; RIGHT
        STA JoyDir              ; Left = #$FF, Right = #$01
NotRight
        LDA JoyByte
        AND #$04                ; IF NOT BIT 2 OFF
        BNE NotLeft
        LDA #$FF                ; LEFT
        STA JoyDir              ; Left = #$FF, Right = #$01
NotLeft
        LDA #$00
        STA XScrollDisp
        LDA JoyDir              ; Left = #$FF, Right = #$01
        BMI L00170
        BNE L00166
        JMP L00176

        ; JoyDir = Right
L00166  LDA NextForeMapPtrLO    ; Check for reaching end of map (Highest Foreground Map Pointer = #$0168)
        CMP #$68
        BNE NotAtEndOfMap
        LDA NextForeMapPtrHI
        BEQ NotAtEndOfMap
        LDA #$00                ; Reached end of map and highest XPOS for Flimbo. Don't move!
        STA JoyDir
        BEQ L00176

NotAtEndOfMap
        LDA ScrollDir           ; Left = #$01, Right = #$FF
        BMI L00174
        LDA #$FF                ; Scroll direction = Right
        BMI L00175              ; Unconditional branch

        ; JoyDir = Left
L00170  LDA NextForeMapPtrLO
        BNE NotAtStartOfMap
        LDA NextForeMapPtrHI
        BNE NotAtStartOfMap
        LDY #$00                ; Reached beginning of map and FlimboXPos is #MINXPOS. Don't move!
        STY JoyDir
        BEQ L00176              ; Unconditional branch

NotAtStartOfMap
        LDA ScrollDir           ; Left = #$01, Right = #$FF
        BPL L00174
        LDA #$01                ; Scroll direction = Left
        BNE L00175              ; Unconditional branch

L00174  STA XScrollDisp
L00175  STA ScrollDir           ; Left = #$01, Right = #$FF

L00176  LDA XScrollDisp
        BEQ L00182
        BPL L00179
        LDA XScrollFine
        ASL
        AND #$06
        BNE L00177
        LDY #$04                ; Switch screen if XScrollFine = #$00 or #$04
        STY Switch+1            ; Switch screen (#$00 = Don't switch, #$XX = Switch)
        INC NextForeMapPtrLO
        BNE L00177
        INC NextForeMapPtrHI
L00177  CMP #$04
        BNE L00178              ; Branch if XScrollFine <> #$02 and XScrollFine <> #$06
        STA Draw+1              ; Flag: Draw from Map to Screen = True
L00178  JMP L00181
L00179  LDA XScrollFine
        ASL
        AND #$06
        CMP #$02
        BNE L00180              ; Branch if XScrollFine <> #$01 and XScrollFine <> #$05
        STA Draw+1              ; Flag: Draw from Map to Screen = True
L00180  CMP #$06
        BNE L00181              ; Branch if XScrollFine <> #$03 and XScrollFine <> #$07
        STA Switch+1            ; Switch screen (#$00 = Don't switch, #$XX = Switch)
        LDY NextForeMapPtrLO
        DEY
        STY NextForeMapPtrLO
        CPY #$FF
        BNE L00181
        DEC NextForeMapPtrHI
L00181  LDA XScrollFine
        CLC
        ADC XScrollDisp
        AND #$07
        STA XScrollFine
        ASL
        AND #$06
        ORA #$10
        STA $0B                 ; XSCROLL
L00182

        ; Acknowledge interrupt
        ASL $D019

        ; Point to next IRQ
        LDA #<IRQ130
        LDX #>IRQ130
        STA $FFFE
        STX $FFFF
        LDA #130                ; Next IRQ in raster line 130
        STA $D012

        ; Restore state
        PLA
        TAY
        PLA
        TAX
        PLA

        RTI


                ;________________________________________
                ;
                ;    IRQ handler for raster line 130
                ;
IRQ130
        ; Save state
        PHA
        TXA
        PHA
        TYA
        PHA

        LDA #178                ; Next IRQ in raster line 178 (16 rows * 8 pixels + 50)
        LDX #<IRQ178
        LDY #>IRQ178
        STA $D012
        STX $FFFE
        STY $FFFF
        LDA #$01                ; Acknowledge interrupt
        STA $D019
        CLI                     ; Allow interrupts - This routine may be interrupted


Switch  LDX #$00                ; This value is changed in 189A, 18BD and 1A3A
        BEQ NoSwitch
        LDA #$00
        STA Switch+1
        LDA Screen
        EOR #$01                ; Switch screen on next frame
        STA Screen
        ASL
        ASL
        ORA #$60
        STA $0E                 ; This is done when moving left (Raster = 132, D016 = D6, D018=0D/19) or right (Raster = 132, D016 = D0, D018=0F/1B)
        EOR #$04
        STA $0D
NoSwitch
        LDY XScrollFine
        LDA Screen
        BEQ @Skip
        LDA #$80
        BYTE $2C                ; BIT $18A9
@Skip   BYTE $A9                ; LDA #$18
        BYTE $90
        ORA XSCROLLVAL,Y        ; Table of XSCROLL values indexed by XScrollFine
        STA $0C                 ; Screen and charset
        CPX #$00
        BEQ NoColorUpdate
        JSR UpdateColorRAM      ; Update Color RAM (This is done when moving left or right)
NoColorUpdate


        ; Restore state
        PLA
        TAY
        PLA
        TAX
        PLA

        RTI


                ;________________________________________
                ;
                ;    IRQ handler for raster line 178
                ;
IRQ178
        ; Save state
        PHA
        TXA
        PHA
        TYA
        PHA


        LDA #$07                ; YELLOW
        LDX #$09                ; BROWN
        LDY #$05                ; GREEN
        STA $D021               ; BACKGROUND COLOR
        STX $D022               ; BACKGROUND COLOR 1
        STY $D023               ; BACKGROUND COLOR 2


        ; Acknowledge interrupt
        ASL $D019

        ; Point to next IRQ
        LDA #<IRQ194
        LDX #>IRQ194
        STA $FFFE
        STX $FFFF
        LDA #194                ; Next IRQ in raster line 194
        STA $D012

        ; Restore state
        PLA
        TAY
        PLA
        TAX
        PLA

        RTI


                ;________________________________________
                ;
                ;    IRQ handler for raster line 194
                ;
IRQ194
        ; Save state
        PHA
        TXA
        PHA
        TYA
        PHA

        ; Timing to make lower seam stable
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP
        NOP


        LDX #$13                ; Bank #0, $0000-$3FFF, 0-16383
        LDY #$14
        STX $DD00
        STY $D018               ; VIC MEMORY CONTROL REGISTER
        LDA #$18
        STA $D016               ; VIC CONTROL REGISTER 2
        LDA #$0F                ; LIGHT GRAY
        STA $D021               ; BACKGROUND COLOR


        ; Acknowledge interrupt
        ASL $D019

        ; Point to first IRQ in next frame
        LDA #<IRQ0
        LDX #>IRQ0
        STA $FFFE
        STX $FFFF
        LDA #0                  ; Next IRQ in raster line 0
        STA $D012

        ; Restore state
        PLA
        TAY
        PLA
        TAX
        PLA

        RTI


#region "DrawScreen"

DrawScreen
                 ;________________________________________
                 ;
                 ;    Draw from Map to Screen
                 ;
        STY ScreenRow1+2        ; Y = #$C0 or #$C4
        STY ScreenRow2+2
        STY ScreenRow3+2
        STY ScreenRow4+2
        STY ScreenRow5+2
        STY ScreenRow6+2
        STY ScreenRow7+2
        INY
        STY ScreenRow8+2
        INY
        STY ScreenRow17+2
        STY ScreenRow18+2
        LDA ForeMapPtrLO        ; Foreground Map Pointer LO
        CLC
        ADC #<ForeMap           ; Add Foreground Map address LO
        TAY
        STA ForeMap1+1
        LDA ForeMapPtrHI        ; Foreground Map Pointer HI
        ADC #>ForeMap           ; Add Foreground Map address HI
        STA ForeMap1+2
        TAX
        TYA
        ADC #$90
        STA ForeMap2+1
        TXA
        ADC #$01
        STA ForeMap2+2
        TYA
        ADC #$20
        STA ForeMap3+1
        TXA
        ADC #$03
        STA ForeMap3+2
        TYA
        ADC #$B0
        STA ForeMap4+1
        TXA
        ADC #$04
        STA ForeMap4+2
        TYA
        ADC #$40
        STA ForeMap5+1
        TXA
        ADC #$06
        STA ForeMap5+2
        TYA
        ADC #$D0
        STA ForeMap6+1
        TXA
        ADC #$07
        STA ForeMap6+2
        TYA
        ADC #$60
        STA ForeMap7+1
        TXA
        ADC #$09
        STA ForeMap7+2
        TYA
        ADC #$F0
        STA ForeMap8+1
        TXA
        ADC #$0A
        STA ForeMap8+2
        TYA
        ADC #$00
        STA ForeMap17+1
        TXA
        ADC #$19
        STA ForeMap17+2
        TYA
        ADC #$90
        STA ForeMap18+1
        TXA
        ADC #$1A
        STA ForeMap18+2

        LDX #$26                ; This section draws rows 1-6 and 17-18
ForeMap1
        LDA $A307,X             ; This address is changed in 1026/102D
ScreenRow1
        STA $C400,X             ; Screen row 1 - This address is changed in 1000
ForeMap2
        LDA $A497,X             ; This address is changed in 1034/103A
ScreenRow2
        STA $C428,X             ; Screen row 2 - This address is changed in 1003
ForeMap3
        LDA $A627,X             ; This address is changed in 1040/1046
ScreenRow3
        STA $C450,X             ; Screen row 3 - This address is changed in 1006
ForeMap4
        LDA $A7B7,X             ; This address is changed in 104C/1052
ScreenRow4
        STA $C478,X             ; Screen row 4 - This address is changed in 1009
ForeMap5
        LDA $A947,X             ; This address is changed in 1058/105E
ScreenRow5
        STA $C4A0,X             ; Screen row 5 - This address is changed in 100C
ForeMap6
        LDA $AAD7,X             ; This address is changed in 1064/106A
ScreenRow6
        STA $C4C8,X             ; Screen row 6 - This address is changed in 100F
ForeMap17
        LDA $BC07,X             ; This address is changed in 1088/108E
ScreenRow17
        STA $C680,X             ; Screen row 17 - This address is changed in 101A
ForeMap18
        LDA $BD97,X             ; This address is changed in 1094/109A
ScreenRow18
        STA $C6A8,X             ; Screen row 18 - This address is changed in 101D
        DEX
        BPL ForeMap1
        LDA #$F0
        STA ScreenRow7+1
        LDA #$18
        STA ScreenRow8+1
        LDA ForeMapPtrHI        ; Foreground Map Pointer HI
        LSR                     ; Divide Foreground Map Pointer by 2 to get Background Map Pointer
        LDA ForeMapPtrLO        ; Foreground Map Pointer LO
        ROR
        CLC
        ADC #<BackMap           ; Add Background Map address LO
        STA BackMap7+1
        LDA #>BackMap           ; Background Map address HI
        ADC #$00
        STA BackMap7+2
        LDA BackMap7+1
        ADC #$DC                ; Add Background Map Width
        STA BackMap8+1
        LDA BackMap7+2
        ADC #$00
        STA BackMap8+2

        LDY #$04                ; This section draws rows 7-16
DrawNextPairOfRows
        LDX #$26
ForeMap7
        LDA $B8E7,X             ; Get character from foreground map - This address is changed in 1070/1076 and 1142/114A
        BNE ScreenRow7          ; Branch if character is foreground
BackMap7
        LDA $A0CB,X             ; Otherwise get character from background map - This address is changed in 10E5/10EC and 1162/116A
ScreenRow7
        STA $C630,X             ; Write new data to screen - This address is changed in 10D4/1012 and 1126/112B
ForeMap8
        LDA $BA77,X             ; Get character from foreground map - This address is changed in 107C/1082 and 1152/115A
        BNE ScreenRow8          ; Branch if character is foreground
BackMap8
        LDA $A1A7,X             ; Otherwise get character from background map - This address is changed in 10F4/10FC and 1172/117A
ScreenRow8
        STA $C658,X             ; Write new data to screen - This address is changed in 10D9/1016 and 1134/1139
        DEX
        BPL ForeMap7
        DEY
        BPL MoreRowsToDraw
        RTS
MoreRowsToDraw
        LDA ScreenRow7+1        ; Move 2 rows down on screen
        CLC
        ADC #$50
        STA ScreenRow7+1
        BCC @Skip
        INC ScreenRow7+2
        CLC
@Skip   LDA ScreenRow8+1        ; Move 2 rows down on screen
        ADC #$50
        STA ScreenRow8+1
        BCC @Skip2
        INC ScreenRow8+2
        CLC
@Skip2  LDA ForeMap7+1          ; Move 2 rows down on foreground map
        ADC #$20
        STA ForeMap7+1
        LDA ForeMap7+2
        ADC #$03
        STA ForeMap7+2
        LDA ForeMap8+1          ; Move 2 rows down on foreground map
        ADC #$20
        STA ForeMap8+1
        LDA ForeMap8+2
        ADC #$03
        STA ForeMap8+2
        LDA BackMap7+1           ; Move 2 rows down on background map
        ADC #$B8
        STA BackMap7+1
        LDA BackMap7+2
        ADC #$01
        STA BackMap7+2
        LDA BackMap8+1          ; Move 2 rows down on background map
        ADC #$B8
        STA BackMap8+1
        LDA BackMap8+2
        ADC #$01
        STA BackMap8+2
        BNE DrawNextPairOfRows  ; Unconditional branch

        RTS                     ; Never reached

#endregion "DrawScreen"


#region "Update ColorRAM"

                 ;________________________________________
                 ;
                 ;    Update ColorRAM
                 ;
UpdateColorRAM

        LDY $0D
        STY CScreenRow1+2
        STY CScreenRow2+2
        STY CScreenRow3+2
        STY CScreenRow4+2
        STY CScreenRow5+2
        STY CScreenRow6+2
        STY CScreenRow7+2
        INY
        STY CScreenRow8+2
        STY CScreenRow9+2
        STY CScreenRow10+2
        STY CScreenRow11+2
        STY CScreenRow12+2
        STY CScreenRow13+2
        INY
        STY CScreenRow14+2
        STY CScreenRow15+2
        STY CScreenRow16+2

        ;STY CScreenRow17+2

        LDY #$26
CScreenRow1
        LDX $C000,Y
        LDA COLORTAB,X
        STA $D800,Y
CScreenRow2
        LDX $C028,Y
        LDA COLORTAB,X
        STA $D828,Y
CScreenRow3
        LDX $C050,Y
        LDA COLORTAB,X
        STA $D850,Y
CScreenRow4
        LDX $C078,Y
        LDA COLORTAB,X
        STA $D878,Y
CScreenRow5
        LDX $C0A0,Y
        LDA COLORTAB,X
        STA $D8A0,Y
CScreenRow6
        LDX $C0C8,Y
        LDA COLORTAB,X
        STA $D8C8,Y
CScreenRow7
        LDX $C0F0,Y
        LDA COLORTAB,X
        STA $D8F0,Y
        DEY
        BPL CScreenRow1
        LDY #$26
CScreenRow8
        LDX $C118,Y
        LDA COLORTAB,X
        STA $D918,Y
CScreenRow9
        LDX $C140,Y
        LDA COLORTAB,X
        STA $D940,Y
CScreenRow10
        LDX $C168,Y
        LDA COLORTAB,X
        STA $D968,Y
CScreenRow11
        LDX $C190,Y
        LDA COLORTAB,X
        STA $D990,Y
CScreenRow12
        LDX $C1B8,Y
        LDA COLORTAB,X
        STA $D9B8,Y
CScreenRow13
        LDX $C1E0,Y
        LDA COLORTAB,X
        STA $D9E0,Y
CScreenRow14
        LDX $C208,Y
        LDA COLORTAB,X
        STA $DA08,Y
CScreenRow15
        LDX $C230,Y
        LDA COLORTAB,X
        STA $DA30,Y
CScreenRow16
        LDX $C258,Y
        LDA COLORTAB,X
        STA $DA58,Y
        DEY
        BPL CScreenRow8
        RTS


                ;________________________________________
                ;
                ;    Update ColorRAM for rows 17 and 18
                ;
UpdateColorRAM2Rows

        LDY #$4F
CScreenRow17
        LDX $6280,Y
        LDA COLORTAB,X
        STA $DA80,Y
        DEY
        BPL CScreenRow17
        RTS

#endregion "Update ColorRAM"


#region "Show Variables"

                ;________________________________________
                ;
                ;    Show variables
                ;
ShowVariables
        LDX #$01
        LDA $D016
        AND #$07
        JSR ShowByte            ; X-Scroll
        LDX #$04
        LDA ForeMapPtrHI
        JSR ShowByte
        LDX #$06
        LDA ForeMapPtrLO
        JSR ShowByte            ; ForeMapPtr
        LDX #$09
        LDA $0C ; $D018
        AND #%00001110
        ASL
        ASL
        CLC
        ADC #$40
        JSR ShowByte
        LDX #$0B
        LDA #$00
        JSR ShowByte            ; Charset
        LDX #$0E
        LDA $0C ; $D018
        AND #%11110000
        LSR
        LSR
        CLC
        ADC #$40
        JSR ShowByte
        LDX #$10
        LDA #$00
        JSR ShowByte            ; Screen
        RTS


ShowByte
        TAY
        LSR
        LSR
        LSR
        LSR
        JSR ShowNybble
        INX
        TYA
        AND #$0F
        JSR ShowNybble
        RTS


ShowNybble
        CMP #$0A
        BCS Letter
        ADC #$30
        BCC NybbleToScreen
Letter  SBC #$09
NybbleToScreen
        STA $0798,X
        RTS


InitStatusArea
        LDX #$8C
@Loop   LDA #$20
        STA $06CF,X
        STA $075B,X
        LDA #$00
        STA $DACF,X
        STA $DB5B,X
        DEX
        BNE @Loop

ShowHeaders
        LDX #22
@Loop   LDA Title,X
        STA $0700,X
        DEX
        BPL @Loop
ShowColHeader
        LDX #16
@Loop   LDA ColHeader,X
        STA $0771,X
        DEX
        BPL @Loop
        RTS

Title
        TEXT 'FLIMBO'
        TEXT "'"
        TEXT 'S QUEST SCROLLER'

ColHeader
        TEXT 'XS MPTR CHAR SCRE'

#endregion "Show Variables"


                ;________________________________________
                ;
                ;    Table of XSCROLL values indexed by XScrollFine
                ;
XSCROLLVAL
        BYTE $06                ; XScrollFine = #$00
        BYTE $06                ; XScrollFine = #$01
        BYTE $04                ; XScrollFine = #$02
        BYTE $04                ; XScrollFine = #$03
        BYTE $02                ; XScrollFine = #$04
        BYTE $02                ; XScrollFine = #$05
        BYTE $00                ; XScrollFine = #$06
        BYTE $00                ; XScrollFine = #$07
                ;________________________________________


COLORTAB
incbin "COLORTAB.BIN"


BackMap
incbin "BACKMAP.BIN"

ForeMap
incbin "FOREMAP.BIN"


* = $4000
incbin "CHARSET0.BIN"

* = $4800
incbin "CHARSET2.BIN"

* = $5000
incbin "CHARSET4.BIN"

* = $5800
incbin "CHARSET6.BIN"
