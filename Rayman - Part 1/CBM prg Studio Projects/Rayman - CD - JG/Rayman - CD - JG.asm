;
;       L O G
;
;       29.10.2019      Set correct initial position of Window and Rayman
;                       Corrected calculations of sprite 0-1 positions
;                       Added SID constants
;       27.10.2019      Added and renamed position variables
;       26.10.2019      Added VIC constants and Color name constants
;       26.10.2019      Log started
;


;Entries of jump table
JUMP_TABLE_SIZE                 = 34 ; 17 ; 19 ; 11

;Entries of fall table
FALL_TABLE_SIZE                 = 34 ; 17 ; 20 ; 10


VIC_SPRITE_X_POS                = $D000
VIC_SPRITE_0_X_POS              = $D000
VIC_SPRITE_1_X_POS              = $D002
VIC_SPRITE_2_X_POS              = $D004
VIC_SPRITE_3_X_POS              = $D006
VIC_SPRITE_4_X_POS              = $D008
VIC_SPRITE_5_X_POS              = $D00A
VIC_SPRITE_6_X_POS              = $D00C
VIC_SPRITE_7_X_POS              = $D00E

VIC_SPRITE_Y_POS                = $D001
VIC_SPRITE_0_Y_POS              = $D001
VIC_SPRITE_1_Y_POS              = $D003
VIC_SPRITE_2_Y_POS              = $D005
VIC_SPRITE_3_Y_POS              = $D007
VIC_SPRITE_4_Y_POS              = $D009
VIC_SPRITE_5_Y_POS              = $D00B
VIC_SPRITE_6_Y_POS              = $D00D
VIC_SPRITE_7_Y_POS              = $D00F
VIC_SPRITE_X_POS_MSB            = $D010

VIC_YSCROLL_CONTROL             = $D011
VIC_RASTER_SCAN_LINE            = $D012
VIC_LIGHT_PEN_X_POS             = $D013
VIC_LIGHT_PEN_Y_POS             = $D014
VIC_SPRITE_ENABLE               = $D015
VIC_XSCROLL_CONTROL             = $D016
VIC_SPRITE_Y_EXPAND             = $D017
VIC_MEMORY_CONTROL              = $D018
VIC_IRQ_STATUS_FLAG             = $D019
VIC_IRQ_ENABLE                  = $D01A
VIC_SPRITE_CHAR_PRIORITY        = $D01B
VIC_SPRITE_MULTICOLOR_SELECT    = $D01C
VIC_SPRITE_X_EXPAND             = $D01D
VIC_SPRITE_SPRITE_COLLISION     = $D01E
VIC_SPRITE_CHAR_COLLISION       = $D01F

VIC_BORDER_COLOR                = $D020
VIC_BACKGROUND_COLOR            = $D021
VIC_CHARSET_MULTICOLOR_1        = $D022
VIC_CHARSET_MULTICOLOR_2        = $D023
VIC_EXT_BACKGROUND_COLOR_3      = $D024
VIC_SPRITE_MULTICOLOR_1         = $D025
VIC_SPRITE_MULTICOLOR_2         = $D026

VIC_SPRITE_COLOR                = $D027
VIC_SPRITE_0_COLOR              = $D027
VIC_SPRITE_1_COLOR              = $D028
VIC_SPRITE_2_COLOR              = $D029
VIC_SPRITE_3_COLOR              = $D02A
VIC_SPRITE_4_COLOR              = $D02B
VIC_SPRITE_5_COLOR              = $D02C
VIC_SPRITE_6_COLOR              = $D02D
VIC_SPRITE_7_COLOR              = $D02E

BLACK                           = 0
WHITE                           = 1
RED                             = 2
CYAN                            = 3
PURPLE                          = 4
GREEN                           = 5
BLUE                            = 6
YELLOW                          = 7
ORANGE                          = 8
BROWN                           = 9
LIGHT_RED                       = 10
DARK_GREY                       = 11
MED_GREY                        = 12
LIGHT_GREEN                     = 13
LIGHT_BLUE                      = 14
LIGHT_GREY                      = 15

SID_BASE_ADDRESS                = $D400
SID_VOICE_FREQ_LO               = $D400
SID_VOICE_1_FREQ_LO             = $D400
SID_VOICE_FREQ_HI               = $D401
SID_VOICE_1_FREQ_HI             = $D401
SID_VOICE_PULSE_WIDTH_LO        = $D402
SID_VOICE_1_PULSE_WIDTH_LO      = $D402
SID_VOICE_PULSE_WIDTH_HI        = $D403
SID_VOICE_1_PULSE_WIDTH_HI      = $D403
SID_VOICE_WAVEFORM_CONTROL      = $D404
SID_VOICE_1_WAVEFORM_CONTROL    = $D404
SID_VOICE_ATTACK_DECAY          = $D405
SID_VOICE_1_ATTACK_DECAY        = $D405
SID_VOICE_SUSTAIN_RELEASE       = $D406
SID_VOICE_1_SUSTAIN_RELEASE     = $D406

SID_VOICE_2_FREQ_LO             = $D407
SID_VOICE_2_FREQ_HI             = $D408
SID_VOICE_2_PULSE_WIDTH_LO      = $D409
SID_VOICE_2_PULSE_WIDTH_HI      = $D40A
SID_VOICE_2_WAVEFORM_CONTROL    = $D40B
SID_VOICE_2_ATTACK_DECAY        = $D40C
SID_VOICE_2_SUSTAIN_RELEASE     = $D40D

SID_VOICE_3_FREQ_LO             = $D40E
SID_VOICE_3_FREQ_HI             = $D40F
SID_VOICE_3_PULSE_WIDTH_LO      = $D410
SID_VOICE_3_PULSE_WIDTH_HI      = $D411
SID_VOICE_3_WAVEFORM_CONTROL    = $D412
SID_VOICE_3_ATTACK_DECAY        = $D413
SID_VOICE_3_SUSTAIN_RELEASE     = $D414

SID_FILTER_CUTOFF_FREQ_LO       = $D415
SID_FILTER_CUTOFF_FREQ_HI       = $D416
SID_FILTER_RESONANCE_CONTROL    = $D417
SID_VOLUME_AND_FILTER_SELECT    = $D418

SET = 53248
DEST = $C800
SCREEN1 = 49111
SCREEN2 = 50135
IRQLINE1 = 100 ; 104 ;108; CHER ; <100 and the scrolling hasn't completed
IRQLINE2 = 195 ; 208 ; 190 ; 248

WinMapX = 20
WinMapY = 21
WinBlkX = 22
WinBlkY = 23
WinChrX = 24
WinChrY = 25
WinPixX_LO = 26
WinPixX_HI = 27
WinPixY_LO = 28
WinPixY_HI = 29

RayMapChrX_LO = 30
RayMapChrX_HI = 31
RayDeltaX     = 32
RayMapChrY_LO = 33
RayMapChrY_HI = 34
RayDeltaY     = 35

RayPixX_LO = 36
RayPixX_HI = 37
RayPixY_LO = 38
RayPixY_HI = 39

TmpMapChrX_LO = 40
TmpMapChrX_HI = 41
TmpMapChrY_LO = 42
TmpMapChrY_HI = 43

TmpMapX = 44
TmpBlkX = 45
TmpMapY = 46
TmpBlkY = 47

TEMPLO = 208
TEMPHI = 209

XDISP = 210
YDISP = 211

FACING = 212

ROLLCHR11 = 213 ; 85
ROLLCHR12 = 201 ; 73
ROLLCHR21 = 202 ; 74
ROLLCHR22 = 203 ; 75
ROLLADDR11 = 52904 ; 51880              ; DEST + 8 * ROLLCHR11
ROLLADDR12 = 52808 ; 51784              ; DEST + 8 * ROLLCHR12
ROLLADDR21 = 52816 ; 51792              ; DEST + 8 * ROLLCHR21
ROLLADDR22 = 52824 ; 51800              ; DEST + 8 * ROLLCHR22

PARAM5 = 48



        * = $0800
        BYTE $00,$0C,$08,$0A,$00,$9E,$20,$32 ; Encode SYS 2064
        BYTE $30,$36,$34,$00,$00,$00,$00,$00
        JMP START

        * = $C800

incbin  "RAYCHAR.ROM"

        * = $C850

incbin  "CloudChars.bin"

        * = $D000               ; Rayman facing right - Hires overlay

        BYTE %00000000,%00010000,%00000000
        BYTE %00000000,%00000000,%00000000
        BYTE %00000000,%00010111,%00000000
        BYTE %00000000,%01000010,%01000000
        BYTE %00000000,%10011010,%00110000
        BYTE %00000000,%10010000,%00000000
        BYTE %00000000,%01100010,%10000000
        BYTE %00000000,%00100010,%00000000
        BYTE %00000000,%00000000,%00000000
        BYTE %00000000,%00010000,%00000000
        BYTE %00000000,%00010000,%00000000
        BYTE %00000000,%00000100,%00000000
        BYTE %00000000,%00001000,%00000000
        BYTE %00000000,%11000000,%00000000
        BYTE %00000000,%00100000,%00000000
        BYTE %00000000,%00110000,%00000000
        BYTE %00000001,%00111000,%00000000
        BYTE %00000001,%00100000,%00000000
        BYTE %00000000,%11100000,%00000000
        BYTE %00000001,%10000000,%00000000
        BYTE %00000000,%10000000,%00000000

        * = $D040               ; Rayman facing right - Multicolor background

        BYTE %00000000,%00000000,%00000000
        BYTE %00000000,%00000000,%00000000
        BYTE %00000000,%00000000,%00000000
        BYTE %00000000,%00001010,%10000000
        BYTE %00000000,%00101000,%10100000
        BYTE %00000000,%10100101,%00000000
        BYTE %00000000,%00010101,%10100000
        BYTE %00000000,%00001010,%10100000
        BYTE %00000000,%00001010,%10000000
        BYTE %00000000,%11110000,%00000000
        BYTE %00000011,%11111100,%00000000
        BYTE %00000000,%11111101,%00000000
        BYTE %00000000,%11110111,%00000000
        BYTE %00000001,%11111101,%00000000
        BYTE %00000101,%01000101,%00000000
        BYTE %00000101,%01000000,%00000000
        BYTE %00000010,%10101010,%01000000
        BYTE %00000010,%10100110,%01000000
        BYTE %00000000,%10100000,%00000000
        BYTE %00000000,%00000000,%00000000
        BYTE %00000000,%00000000,%00000000

        * = $D080                      ; Rayman facing left - Hires overlay

        BYTE %00000000,%00001000,%00000000
        BYTE %00000000,%00000000,%00000000
        BYTE %00000000,%11101000,%00000000
        BYTE %00000010,%01000010,%00000000
        BYTE %00001100,%01011001,%00000000
        BYTE %00000000,%00001001,%00000000
        BYTE %00000001,%01000110,%00000000
        BYTE %00000000,%01000100,%00000000
        BYTE %00000000,%00000000,%00000000
        BYTE %00000000,%00001000,%00000000
        BYTE %00000000,%00001000,%00000000
        BYTE %00000000,%00100000,%00000000
        BYTE %00000000,%00010000,%00000000
        BYTE %00000000,%00000011,%00000000
        BYTE %00000000,%00000100,%00000000
        BYTE %00000000,%00001100,%00000000
        BYTE %00000000,%00011100,%10000000
        BYTE %00000000,%00000100,%10000000
        BYTE %00000000,%00000111,%00000000
        BYTE %00000000,%00000001,%10000000
        BYTE %00000000,%00000001,%00000000

        * = $D0C0                      ; Rayman facing left - Multicolor background

        BYTE %00000000,%00000000,%00000000
        BYTE %00000000,%00000000,%00000000
        BYTE %00000000,%00000000,%00000000
        BYTE %00000010,%10100000,%00000000
        BYTE %00001010,%00101000,%00000000
        BYTE %00000000,%01011010,%00000000
        BYTE %00001010,%01010100,%00000000
        BYTE %00001010,%10100000,%00000000
        BYTE %00000010,%10100000,%00000000
        BYTE %00000000,%00001111,%00000000
        BYTE %00000000,%00111111,%11000000
        BYTE %00000000,%01111111,%00000000
        BYTE %00000000,%11011111,%00000000
        BYTE %00000000,%01111111,%01000000
        BYTE %00000000,%01010001,%01010000
        BYTE %00000000,%00000001,%01010000
        BYTE %00000001,%10101010,%10000000
        BYTE %00000001,%10011010,%10000000
        BYTE %00000000,%00001010,%00000000
        BYTE %00000000,%00000000,%00000000
        BYTE %00000000,%00000000,%00000000


        * = $4000

BLOCKSTART
incbin  "BlockDefs.bin"

        * = $5000

COLORTAB
        BYTE 6, 7, 0, 9, 9, 9, 9, 9, 10, 0, 9, 9, 9, 9, 4, 4
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 6, 6, 6, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

MAPWIDTH
        BYTE 75
MAPHEIGHT
        BYTE 21
MAPSTART
incbin  "MapInBlocks.bin"


#region "Init"

        * = $6100

START

        LDA #9
        STA $FFFF
        

        JSR COPY_CHARS

        LDA $DD00
        AND #%11111100
        STA $DD00

        ;JSR COPY_SPRITES

        LDA #<MAPSTART
        STA 2
        LDA #>MAPSTART
        STA 3
        LDX #0
NEXTML
        STA MAPTABHI,X
        LDA 2
        STA MAPTABLO,X
        CLC
        ADC MAPWIDTH
        STA 2
        LDA 3
        ADC #0
        STA 3
        INX
        BNE NEXTML

        LDA #<BLOCKSTART
        STA 2
        LDA #>BLOCKSTART
        STA 3
        LDX #0
NEXTBLK
        STA BLKTABHI,X
        LDA 2
        STA BLKTABLO,X
        CLC
        ADC #16
        STA 2
        LDA 3
        ADC #0
        STA 3
        INX
        BNE NEXTBLK

        ;JSR COPY_CHARS
        JSR INIT_SCREEN
        JSR SIDINIT
        JSR SETUP_IRQ
CONT
        JMP CONT ;RTS

COPY_CHARS
        JMP CHARADDR

        SEI
        LDA $01
        PHA
        AND #%11111011
        STA $01
        LDA #>SET
        STA $03
        LDA #>DEST
        STA $05
        LDY #$00
        STY $02
        STY $04
        LDX #$08
COPY    LDA ($02),Y
        STA ($04),Y
        INY
        BNE COPY
        INC $03
        INC $05
        DEX
        BNE COPY
        PLA
        STA $01
CHARADDR
        LDA VIC_MEMORY_CONTROL
        AND #%11110000
        ORA #%00000010
        STA VIC_MEMORY_CONTROL
        CLI

        ;JSR COPY_SPRITES

        RTS


COPY_SPRITES

        SEI
        LDA $01
        PHA
        AND #%11111000
        ORA #%00000010
        STA $01
        LDX #0
COPY2   LDA $9000,X
        STA $D000,X
        INX
        CPX #63
        BNE COPY2
        PLA
        STA $01
        CLI
        RTS


INIT_SCREEN

        LDA #%01110011 ; #$7B
        ;LDA #%00011011 ; To see the start screen being scrolled into place
        STA VIC_YSCROLL_CONTROL

        LDA #BLACK
        STA VIC_BORDER_COLOR
        LDA #MED_GREY
        STA VIC_BACKGROUND_COLOR
        LDA #GREEN
        STA VIC_CHARSET_MULTICOLOR_1
        LDA #PURPLE
        STA VIC_CHARSET_MULTICOLOR_2

        LDX #0
L01
        LDA #160
        STA $C000,X             ; 1024-1279 = #160
        STA $C400,X             ; 2048-2303 = #160
        LDA #0
        STA $D800,X             ; 55296-55551 = #0
        INX
        BNE L01
L02
        LDA #160
        STA $C100,X             ; 1280-1303 = #160
        STA $C500,X             ; 2304-2327 = #160
        LDA #0
        STA $D900,X             ; 55552-55575 = #0
        INX
        CPX #23
        BNE L02


;        ; For testing scroller seam
;        LDA #$01
;        STA $C103 ; $C12B
;        STA $C503 ; $C52B
;        LDA #7
;        STA $D903 ; $D92B


        LDA #48                 ; '0'
        STA 49194
        STA 49194+1024
        LDA #7
        STA 54272+1066
        LDA #49                 ; '1'
        STA 49195
        STA 49195+1024
        LDA #7
        STA 54272+1067
        LDA #50                 ; '2'
        STA 49196
        STA 49196+1024
        LDA #7
        STA 54272+1068
        LDA #51                 ; '3'
        STA 49197
        STA 49197+1024
        LDA #7
        STA 54272+1069

        ; Set initial window position on the map
        LDA #12 ; Should be #2, but because we want to scroll we start at #12
        STA WinMapX
        LDA #0
        STA WinBlkX
        LDA #4
        STA WinChrX

        LDA #15
        STA WinMapY
        LDA #2
        STA WinBlkY
        LDA #4
        STA WinChrY

        ; Use scroll routines to build initial screen
        LDA #5
        STA SCROLLIX
INIT2   JSR COPYSCREEN
        JSR SCROLLCOLOR
        JSR ADDNEWDATA
        JSR ADDNEWCOLOR
        LDA SCREEN
        EOR #1
        STA SCREEN
        LDA WinMapX
        CMP #$02
        BNE INIT2
        LDA WinBlkX
        CMP #$00
        BNE INIT2
        LDA #4                  ; Set SCROLLIX back to normal (Idle)
        STA SCROLLIX
        STA OLDXSCROLL+1
        STA OLDYSCROLL+1

        ; Calculate the 16-bit horizontal window position on the map
        LDA WinMapX
        LSR
        LSR
        LSR
        STA WinPixX_HI
        LDA WinMapX
        ASL
        ASL
        ORA WinBlkX
        ASL
        ASL
        ASL
        ORA WinChrX
        STA WinPixX_LO

        ; Calculate the 16-bit vertical window position on the map
        LDA WinMapY
        LSR
        LSR
        LSR
        STA WinPixY_HI
        LDA WinMapY
        ASL
        ASL
        ORA WinBlkY
        ASL
        ASL
        ASL
        ORA WinChrY
        STA WinPixY_LO

        ; Set Rayman's initial horizontal position on the map
        LDA #22
        STA RayMapChrX_LO
        LDA #0
        STA RayMapChrX_HI
        LDA #0
        STA RayDeltaX

        ; Calculate Rayman's 16-bit horizontal position on the map
        LDA RayMapChrX_LO
        STA RayPixX_LO
        LDA RayMapChrX_HI
        STA RayPixX_HI
        ASL RayPixX_LO
        ROL RayPixX_HI
        ASL RayPixX_LO
        ROL RayPixX_HI
        ASL RayPixX_LO
        ROL RayPixX_HI

        ; Set Rayman's initial vertical position on the map
        LDA #72
        STA RayMapChrY_LO
        LDA #0
        STA RayMapChrY_HI
        LDA #0
        STA RayDeltaY

        ; Calculate Rayman's 16-bit vertical position on the map
        LDA RayMapChrY_LO
        STA RayPixY_LO
        LDA RayMapChrY_HI
        STA RayPixY_HI
        ASL RayPixY_LO
        ROL RayPixY_HI
        ASL RayPixY_LO
        ROL RayPixY_HI
        ASL RayPixY_LO
        ROL RayPixY_HI

        ; Set the direction Rayman is facing
        LDA #0
        STA FACING

        LDA #64                 ; $D000
        STA $C3F8               ; SPRITE 0 PTR SCREEN 0
        STA $C7F8               ; SPRITE 0 PTR SCREEN 1
        LDA #132 ; #135 ; #132
        STA VIC_SPRITE_0_X_POS  ; SPRITE 0 X POS
        LDA #171 ; #175 ; #171
        STA VIC_SPRITE_0_Y_POS  ; SPRITE 0 Y POS
        LDA #BROWN
        STA VIC_SPRITE_0_COLOR  ; SPRITE 0 COLOR

        LDA #65                 ; $D040
        STA $C3F9               ; SPRITE 1 PTR SCREEN 0
        STA $C7F9               ; SPRITE 1 PTR SCREEN 1
        LDA #132 ; #135 ; #132
        STA VIC_SPRITE_1_X_POS  ; SPRITE 1 X POS
        LDA #165
        STA VIC_SPRITE_1_Y_POS  ; SPRITE 1 Y POS ; CHER???
        LDA #ORANGE ; #WHITE
        STA VIC_SPRITE_1_COLOR  ; SPRITE 1 COLOR

        LDA #66                 ; $D080
        STA $C3FA               ; SPRITE 2 PTR SCREEN 0
        STA $C7FA               ; SPRITE 2 PTR SCREEN 1
        LDA #200
        STA VIC_SPRITE_2_X_POS  ; SPRITE 2 X POS
        LDA #160
        STA VIC_SPRITE_2_Y_POS  ; SPRITE 2 Y POS ; CHER
        LDA #RED
        STA VIC_SPRITE_2_COLOR  ; SPRITE 2 COLOR

        LDA #67                 ; $D0C0
        STA $C3FF               ; SPRITE 7 PTR SCREEN 0
        STA $C7FF               ; SPRITE 7 PTR SCREEN 1
        LDA #140
        STA VIC_SPRITE_7_X_POS  ; SPRITE 7 X POS
        LDA #130
        STA VIC_SPRITE_7_Y_POS  ; SPRITE 7 Y POS
        LDA #WHITE
        STA VIC_SPRITE_7_COLOR  ; SPRITE 7 COLOR

        LDA #%10000100 ; #%10000011
        STA VIC_SPRITE_X_EXPAND ; SPRITE 0-7 X Stretch
        LDA #%00000110
        STA VIC_SPRITE_Y_EXPAND ; SPRITE 0-7 Y Stretch
        LDA #%00000000
        STA VIC_SPRITE_X_POS_MSB ; SPRITE 0-7 X POS MSB
        STA VIC_SPRITE_CHAR_PRIORITY ; SPRITE 0-7 SPRITE-CHAR PRIORITY
        LDA #%00000010
        STA VIC_SPRITE_MULTICOLOR_SELECT ; SPRITE 0-7 MULTICOLOR
        LDA VIC_SPRITE_SPRITE_COLLISION ; Clear SPRITE-SPRITE COLLISIONS
        LDA VIC_SPRITE_CHAR_COLLISION ; Clear SPRITE-BACKGROUND COLLISIONS
        LDA #WHITE ; #ORANGE
        STA VIC_SPRITE_MULTICOLOR_1 ; SPRITE MULTICOLOR 1
        LDA #RED ; #LIGHT_BLUE
        STA VIC_SPRITE_MULTICOLOR_2 ; SPRITE MULTICOLOR 2
        ;LDA #%10000111
        LDA #%00000011
        STA VIC_SPRITE_ENABLE   ; SPRITE 0-7 ENABLE

        LDA VIC_XSCROLL_CONTROL
        AND #%11110000
        ;AND #%11111000         ; To see left/right scroller seam
        ORA #%00010100          ; Set X-Scroll and Multicolor mode
        STA VIC_XSCROLL_CONTROL
        LDA VIC_YSCROLL_CONTROL
;        AND #%01111000 ; #%11110000
        ORA #%00000100
        STA VIC_YSCROLL_CONTROL
        RTS

SETUP_IRQ

;        SEI
        LDA #$7F
        STA $DC0D               ; Disable normal Timer interrupts
        LDA #<IRQ
        STA $0314
        LDA #>IRQ
        STA $0315
        LDA #IRQLINE2
        STA VIC_RASTER_SCAN_LINE ; Stop at the lower border
        LDA VIC_YSCROLL_CONTROL
        AND #%01111111
        STA VIC_YSCROLL_CONTROL
        LDA #%10000001
        STA VIC_IRQ_ENABLE
;        CLI
        RTS

#endregion "Init"


IRQ                       ; We are at lower border (line 248)
        LDA VIC_IRQ_STATUS_FLAG
        STA VIC_IRQ_STATUS_FLAG
RASIRQ
        ;INC VIC_BORDER_COLOR  CHANGED FOR DEMO
        ;DEC VIC_BORDER_COLOR
        ;INC VIC_BORDER_COLOR
        ;DEC VIC_BORDER_COLOR

        LDA PHASE
        STA PHASECOPY+1

        LDA SCROLLIX
        STA SCROLLIXCOPY+1
        STA SCROLLIXCOPYX+1
        STA SCROLLIXCOPYY+1
        CMP #4
        BNE DOSCR

        LDA #4
        STA XSCROLL
        STA YSCROLL

        JMP NOSCR
DOSCR
        LDA SCROLLIX
        ASL
        ASL
        ASL
        CLC
        ADC PHASE
        TAX                     ; X = 8 * SCROLLIX + PHASE
        LDA SCROLLSPEED
        CMP #1
        BNE NOT1
        LDA ACTION1,X
        JMP TSTACT
NOT1    CMP #2
        BNE NOT2
        LDA ACTION2,X
        JMP TSTACT
NOT2    LDA ACTION4,X
TSTACT  BEQ IRQ1
IRQ3
        CMP #1
        BNE IRQ0

        JSR COPYSCREEN

        JSR ADDNEWDATA

        JMP IRQ1
IRQ0
        JSR SCROLLCOLOR

        JSR ADDNEWCOLOR

        LDA SCREEN
        EOR #1
        STA SCREEN
IRQ1
        LDA SCROLLIX
        ASL
        ASL
        ASL
        CLC
        ADC PHASE
        ASL
        STA OFFSET+1
        LDA SCROLLSPEED
        AND #%00000110
        CLC
        ADC OFFSET+1
        STA OFFSET+1 ; X = 16 * SCROLLIX + 2 * PHASE + (SCROLLSPEED AND 6)
OFFSET  LDX #0
        LDA SCROLLS,X
        STA XSCROLL
        LDA SCROLLS+1,X
        STA YSCROLL
        LDA PHASE
        CLC
        ADC SCROLLSPEED
        STA PHASE
        CMP #8
        BNE NOT8

CONT1
        LDA #0
        STA PHASE

        LDA #4
        STA SCROLLIX
NOT8
NOSCR

WAITNEWFRAME
        LDA VIC_RASTER_SCAN_LINE
        CMP #190
        BCS WAITNEWFRAME

SCROLLIXCOPY
        LDA #4
        CMP #4
        BEQ NOUPD
PHASECOPY
        LDA #0 ; PHASE
        AND #%00000001
        BNE NOROLL
        LDA SCROLLSPEED
        AND #%00000100
        BEQ ROLLS12
        JSR ROLLCHARS4
        JMP NOROLL
ROLLS12 JSR ROLLCHARS
NOROLL
        JSR COPY_ROLLED_CHARS
NOUPD

        LDA VIC_XSCROLL_CONTROL
        AND #%11111000
        ORA #%00000100
        STA VIC_XSCROLL_CONTROL ; Set fixed X-Scroll
        LDA VIC_YSCROLL_CONTROL
        AND #%01111000 ; #%01110000   ; Not AND #%11110000
        ORA #%00000100
        STA VIC_YSCROLL_CONTROL ; Set fixed Y-Scroll

        LDA #BLACK ; LDA #RED  CHANGED FOR DEMO
        STA VIC_BORDER_COLOR

        SEI
        LDA #<IRQNO2
        STA $0314
        LDA #>IRQNO2
        STA $0315
        LDA #IRQLINE1
        STA VIC_RASTER_SCAN_LINE               ; Stop at split-screen
        CLI

        LDA WinMapX
        JSR HEX2DEC
        STY 49222
        STY 49222+1024
        STX 49223
        STX 49223+1024
        STA 49224
        STA 49224+1024
        LDA WinMapY
        JSR HEX2DEC
        STY 49227
        STY 49227+1024
        STX 49228
        STX 49228+1024
        STA 49229
        STA 49229+1024
        LDA WinBlkX
        JSR HEX2DEC
        STY 49302
        STY 49302+1024
        STX 49303
        STX 49303+1024
        STA 49304
        STA 49304+1024
        LDA RayPixX_LO
        JSR HEX2DEC
        STY 49307
        STY 49307+1024
        STX 49308
        STX 49308+1024
        STA 49309
        STA 49309+1024


        ; Calculate horizontal displacement due to scroll
OLDXSCROLL
        LDA #4
        SEC
        SBC XSCROLL
        STA XEXPECTZER+1
        STA XEXPECTPOS+1
        STA XEXPECTNEG+1
SCROLLIXCOPYX
        LDY #4
        LDA XEXPECT,Y
        BEQ XEXPECTZER
        BMI XEXPECTNEG
XEXPECTPOS
        LDA #1
        BPL SAVEX
        CLC
        ADC #8
        BCS SAVEX
XEXPECTNEG
        LDA #255
        BMI SAVEX
        BEQ SAVEX         ; For SCROLLIX=2 the first difference is 0
        SEC
        SBC #8
        BCC SAVEX
XEXPECTZER
        LDA #0
        BMI XEXPECTNEG
SAVEX
        STA XDISP
        LDA XSCROLL
        STA OLDXSCROLL+1

        ; Calculate vertical displacement due to scroll
OLDYSCROLL
        LDA #4
        SEC
        SBC YSCROLL
        STA YEXPECTZER+1
        STA YEXPECTPOS+1
        STA YEXPECTNEG+1
SCROLLIXCOPYY
        LDY #4
        LDA YEXPECT,Y
        BEQ YEXPECTZER
        BMI YEXPECTNEG
YEXPECTPOS
        LDA #1
        BPL SAVEY
        CLC
        ADC #8
        BCS SAVEY
YEXPECTNEG
        LDA #255
        BMI SAVEY
        BEQ SAVEY         ; For SCROLLIX=6 the first difference is 0
        SEC
        SBC #8
        BCC SAVEY
YEXPECTZER
        LDA #0
        BMI YEXPECTNEG
SAVEY
        STA YDISP
        LDA YSCROLL
        STA OLDYSCROLL+1

        ; Update WINXPOS due to scroll
        LDA XDISP
        BMI XDISPNEG
        CLC
        ADC WinPixX_LO
        STA WinPixX_LO
        BCC WINXDONE
        INC WinPixX_HI
        BCS WINXDONE
XDISPNEG
        EOR #$FF
        STA XSBC+1
        INC XSBC+1
        LDA WinPixX_LO
        SEC
XSBC    SBC #$00
        STA WinPixX_LO
        BCS WINXDONE
        DEC WinPixX_HI
WINXDONE

        ; Update WINYPOS due to scroll
        LDA YDISP
        BMI YDISPNEG
        CLC
        ADC WinPixY_LO
        STA WinPixY_LO
        BCC WINYDONE
        INC WinPixY_HI
        BCS WINYDONE
YDISPNEG
        EOR #$FF
        STA YSBC+1
        INC YSBC+1
        LDA WinPixY_LO
        SEC
YSBC    SBC #$00
        STA WinPixY_LO
        BCS WINYDONE
        DEC WinPixY_HI
WINYDONE

        ; Update SPRITE 0-1 XPOS
        SEC
        LDA RayPixX_LO
        SBC WinPixX_LO
        STA TEMPLO
        LDA RayPixX_HI
        SBC WinPixX_HI
        STA TEMPHI
        CLC
        LDA TEMPLO
        ADC #24
        STA TEMPLO
        STA VIC_SPRITE_0_X_POS
        STA VIC_SPRITE_1_X_POS
        BCC NOHIX
        INC TEMPHI
NOHIX   LDA TEMPHI
        BEQ ISZERO0
        CMP #2
        BCC ISOK
        LDA VIC_SPRITE_ENABLE
        AND #%11111100
        STA VIC_SPRITE_ENABLE
        JMP NEXTSPR1
ISOK    LDA VIC_SPRITE_X_POS_MSB
        ORA #%00000011
        STA VIC_SPRITE_X_POS_MSB
        BNE SETENAB             ; BRANCH ALWAYS TAKEN
ISZERO0 LDA VIC_SPRITE_X_POS_MSB
        AND #%11111100
        STA VIC_SPRITE_X_POS_MSB
SETENAB LDA VIC_SPRITE_ENABLE
        ORA #%00000011
        STA VIC_SPRITE_ENABLE
NEXTSPR1


        ; Update SPRITE 0-1 YPOS
        SEC
        LDA RayPixY_LO
        SBC WinPixY_LO
        STA TEMPLO                      ; TEMPLO = RayPixY_LO - WinPixY_LO
        LDA RayPixY_HI
        SBC WinPixY_HI
        STA TEMPHI                      ; TEMPHI = RayPixY_HI - WinPixY_HI
        CLC
        LDA TEMPLO
        ADC #89
        STA TEMPLO                      ; TEMPLO = TEMPLO + 89
        STA VIC_SPRITE_1_Y_POS          ; VIC_SPRITE_1_Y_POS = TEMPLO
        BCC NOHIY
        INC TEMPHI
NOHIY   LDA TEMPHI
        BNE DISABLE
        LDA VIC_SPRITE_1_Y_POS
        CMP #78
        BCC DISABLE
        CMP #239
        BCS DISABLE
        CLC
        ADC #6
        STA VIC_SPRITE_0_Y_POS          ; STA VIC_SPRITE_0_Y_POS = LDA VIC_SPRITE_1_Y_POS + 6
NEXTSPR2

        LDA #BLACK
        STA VIC_BORDER_COLOR

        JMP $FEBC

DISABLE LDA VIC_SPRITE_ENABLE
        AND #%11111100
        STA VIC_SPRITE_ENABLE
        JMP NEXTSPR2


IRQNO2                    ; We are at split-screen position (line 100)
        LDA VIC_IRQ_STATUS_FLAG
        STA VIC_IRQ_STATUS_FLAG
RASIRQ2
        LDY YSCROLL
        LDA VIC_YSCROLL_CONTROL
        AND #%01111000          ; Not AND #%11110000
        ORA SCROLLCONV,Y
        ORA #%01100000          ; Illegal mode
        ;ORA #%00010000          ; Use this to see scroller seam
        STA VIC_YSCROLL_CONTROL ; Set Y-Scroll

        LDA VIC_XSCROLL_CONTROL
        AND #%11111000
        ORA XSCROLL
        STA VIC_XSCROLL_CONTROL ; Set X-Scroll

        LDA #BLACK ; LDA #YELLOW  CHANGED FOR DEMO
        STA VIC_BORDER_COLOR    ; By changing background colour, show IRQ start

        LDX SCREEN
        LDA VIC_MEMORY_CONTROL
        AND #%00001111
        ORA SCREENLOC,X
        STA VIC_MEMORY_CONTROL  ; Set screen

WW1
        LDA #114
WAIT    CMP VIC_RASTER_SCAN_LINE
        BNE WAIT

        LDA VIC_YSCROLL_CONTROL
        EOR VIC_RASTER_SCAN_LINE
        AND #%00000111
        BEQ WW2
        DCB 21,$EA

WW2
        LDA VIC_YSCROLL_CONTROL
        AND #%00011111          ; Not AND #%11001111
        STA VIC_YSCROLL_CONTROL ; Set legal mode

        ;SEI    ???
        LDA #<IRQ
        STA $0314
        LDA #>IRQ
        STA $0315
        LDA #IRQLINE2
        STA VIC_RASTER_SCAN_LINE ; Stop at lower border
        ;CLI    ???


        LDA #BLACK ; WHITE
        STA VIC_BORDER_COLOR


        LDA $DC00
        EOR #%11111111
        AND #%00001111
        STA JOYDIR


        JSR PlayerControl


        LDA #BLACK
        STA VIC_BORDER_COLOR


        LDA SCROLLIX
        CMP #4
        BNE ABC
        JMP CHKNEED2SCROLL ; BEQ CHKNEED2SCROLL couldn't reach
ABC     JMP DOSCR1


;--------

PlayerControl

        LDA PLAYER_JUMP_POS     ; Check our index into jump table
        BNE PlayerIsJumping    ; to see if we're in a jump

        JSR PlayerMoveDown      ; Player always moves down regardless
        BNE NotFalling         ; of joystick input (gravity)

        ; Player fell one pixel
        JMP PlayerFell         ; PlayerMoveDown checked that we fell

NotFalling          
        LDA #0                  ; Not falling? then reset fall pos
        STA PLAYER_FALL_POS
          
NotDownPressed                 ; and continue normally
        LDA JOYDIR
        AND #%00000001
        BEQ NotUpPressed

        JMP PlayerIsJumping    ; Up pressed means jumping!
          
PlayerFell                     ; We fell! Load our fall index
        LDX PLAYER_FALL_POS
        LDA FALL_SPEED_TABLE,x  ; What's our fall speed?
        BEQ FallComplete       ; Never happens. FALL_SPEED_TABLE no 0
        STA PARAM5              ; Store the fall speed

FallLoop                       ; we fall several pixels in 1 loop
        DEC PARAM5
        BEQ FallComplete

        JSR PlayerMoveDown      ; Not done falling? Move down
        JMP FallLoop           ; and again

FallComplete                   ; Fall complete in this loop?
        LDA PLAYER_FALL_POS     ; What's our fall index?
        ;CMP #(FALL_TABLE_SIZE-1)          ; at table's end?
        CMP #33                  ; at table's end?
        BEQ FallSpeedAtMax     ; Yes? Then continue as normal

        INC PLAYER_FALL_POS     ; No? Increase index for next loop
                                ; Means we can move left during fall

FallSpeedAtMax
NotUpPressed
JumpStopped
JumpComplete
        LDA JOYDIR
        AND #%00000100
        BEQ NotLeftPressed
        JSR PlayerMoveLeft

NotLeftPressed
        LDA JOYDIR
        AND #%00001000
        BEQ NotRightPressed
        JSR PlayerMoveRight

NotRightPressed
        RTS

PlayerIsJumping
        INC PLAYER_JUMP_POS
        LDA PLAYER_JUMP_POS
        CMP #JUMP_TABLE_SIZE
        BNE JumpOn

        LDA #0
        STA PLAYER_JUMP_POS
        JMP JumpComplete

JumpOn
        LDX PLAYER_JUMP_POS

        LDA PLAYER_JUMP_TABLE,x
        BEQ JumpComplete
        STA PARAM5

JumpContinue          
        JSR PlayerMoveUp
        BNE JumpBlocked

        DEC PARAM5
        BNE JumpContinue
        JMP JumpComplete

JumpBlocked
        LDA #0
        STA PLAYER_JUMP_POS
        JMP JumpStopped

;--------


;------------------------------------------------------------
; PlayerMoveLeft
;------------------------------------------------------------
PlayerMoveLeft

        LDA #1
        STA FACING

        LDA #66                 ; $D080
        STA $C3F8               ; SPRITE 0 PTR SCREEN 0
        STA $C7F8               ; SPRITE 0 PTR SCREEN 1
        LDA #67                 ; $D0C0
        STA $C3F9               ; SPRITE 1 PTR SCREEN 0
        STA $C7F9               ; SPRITE 1 PTR SCREEN 1

        LDA RayDeltaX
        BEQ DeltaXIs0L
        JMP DecXL
DeltaXIs0L
        LDA RayMapChrX_LO
        STA TmpMapChrX_LO
        LDA RayMapChrX_HI
        STA TmpMapChrX_HI
        LDA RayMapChrY_LO
        STA TmpMapChrY_LO
        LDA RayMapChrY_HI
        STA TmpMapChrY_HI

        ; 16-bit decrement Word
        LDA TmpMapChrX_LO
        BNE NoDecXL
        DEC TmpMapChrX_HI
NoDecXL DEC TmpMapChrX_LO

        JSR Calc_Map_and_Blk_X_Coordinates

        JSR Calc_Map_and_Blk_Y_Coordinates
        JSR Get_Char_at_Map_position
        JSR Check_If_Blocked
        BNE BlockedLeft

        ; 16-bit decrement Word
        LDA TmpMapChrY_LO
        BNE NoDecYL1
        DEC TmpMapChrY_HI
NoDecYL1
        DEC TmpMapChrY_LO

        JSR Calc_Map_and_Blk_Y_Coordinates
        JSR Get_Char_at_Map_position
        JSR Check_If_Blocked
        BNE BlockedLeft

        ; 16-bit decrement Word
        LDA TmpMapChrY_LO
        BNE NoDecYL2
        DEC TmpMapChrY_HI
NoDecYL2
        DEC TmpMapChrY_LO

        JSR Calc_Map_and_Blk_Y_Coordinates
        JSR Get_Char_at_Map_position
        JSR Check_If_Blocked
        BNE BlockedLeft

        LDA RayDeltaY
        BEQ No_Fourth_Character_CheckL

        LDA RayMapChrY_LO
        STA TmpMapChrY_LO
        LDA RayMapChrY_HI
        STA TmpMapChrY_HI        

        ; 16-bit increment Word
        INC TmpMapChrY_LO
        BNE NoIncYL
        INC TmpMapChrY_HI
NoIncYL
        JSR Calc_Map_and_Blk_Y_Coordinates
        JSR Get_Char_at_Map_position
        JSR Check_If_Blocked
        BNE BlockedLeft

No_Fourth_Character_CheckL
        LDA #8
        STA RayDeltaX

        ; 16-bit decrement Word
        LDA RayMapChrX_LO
        BNE NoDecML
        DEC RayMapChrX_HI
NoDecML DEC RayMapChrX_LO

DecXL   DEC RayDeltaX

        ; 16-bit decrement Word
        LDA RayPixX_LO
        BNE NoDecPL
        DEC RayPixX_HI
NoDecPL DEC RayPixX_LO

BlockedLeft
        RTS


;------------------------------------------------------------
; PlayerMoveRight
;------------------------------------------------------------
PlayerMoveRight

        LDA #0
        STA FACING

        LDA #64                 ; $D000
        STA $C3F8               ; SPRITE 0 PTR SCREEN 0
        STA $C7F8               ; SPRITE 0 PTR SCREEN 1
        LDA #65                 ; $D040
        STA $C3F9               ; SPRITE 1 PTR SCREEN 0
        STA $C7F9               ; SPRITE 1 PTR SCREEN 1

        LDA RayDeltaX
        BEQ DeltaXIs0R
        JMP IncXR
DeltaXIs0R
        LDA RayMapChrX_LO
        STA TmpMapChrX_LO
        LDA RayMapChrX_HI
        STA TmpMapChrX_HI
        LDA RayMapChrY_LO
        STA TmpMapChrY_LO
        LDA RayMapChrY_HI
        STA TmpMapChrY_HI

        ; 16-bit increment Word
        INC TmpMapChrX_LO
        BNE NoIncXR
        INC TmpMapChrX_HI
NoIncXR
        JSR Calc_Map_and_Blk_X_Coordinates

        JSR Calc_Map_and_Blk_Y_Coordinates
        JSR Get_Char_at_Map_position
        JSR Check_If_Blocked
        BNE BlockedRight

        ; 16-bit decrement Word
        LDA TmpMapChrY_LO
        BNE NoDecYR1
        DEC TmpMapChrY_HI
NoDecYR1
        DEC TmpMapChrY_LO

        JSR Calc_Map_and_Blk_Y_Coordinates
        JSR Get_Char_at_Map_position
        JSR Check_If_Blocked
        BNE BlockedRight

        ; 16-bit decrement Word
        LDA TmpMapChrY_LO
        BNE NoDecYR2
        DEC TmpMapChrY_HI
NoDecYR2
        DEC TmpMapChrY_LO

        JSR Calc_Map_and_Blk_Y_Coordinates
        JSR Get_Char_at_Map_position
        JSR Check_If_Blocked
        BNE BlockedRight

        LDA RayDeltaY
        BEQ No_Fourth_Character_CheckR

        LDA RayMapChrY_LO
        STA TmpMapChrY_LO
        LDA RayMapChrY_HI
        STA TmpMapChrY_HI        

        ; 16-bit increment Word
        INC TmpMapChrY_LO
        BNE NoIncYR
        INC TmpMapChrY_HI
NoIncYR
        JSR Calc_Map_and_Blk_Y_Coordinates
        JSR Get_Char_at_Map_position
        JSR Check_If_Blocked
        BNE BlockedRight

No_Fourth_Character_CheckR
IncXR
        LDA RayDeltaX
        CMP #7
        BNE SameCharXR

        LDA #255
        STA RayDeltaX

        ; 16-bit increment Word
        INC RayMapChrX_LO
        BNE NoIncMR
        INC RayMapChrX_HI
NoIncMR

SameCharXR
        INC RayDeltaX

        ; 16-bit Increment Word
        INC RayPixX_LO
        BNE NoIncPR
        INC RayPixX_HI
NoIncPR

BlockedRight
        RTS


;------------------------------------------------------------
; PlayerMoveUp
;------------------------------------------------------------
PlayerMoveUp

        LDA RayDeltaY
        BEQ DeltaYIs0U
        JMP DecYU
DeltaYIs0U
        LDA RayMapChrX_LO
        STA TmpMapChrX_LO
        LDA RayMapChrX_HI
        STA TmpMapChrX_HI
        LDA RayMapChrY_LO
        STA TmpMapChrY_LO
        LDA RayMapChrY_HI
        STA TmpMapChrY_HI

        ; 16-bit subtraction
        SEC
        LDA TmpMapChrY_LO
        SBC #3
        STA TmpMapChrY_LO
        BCS NoDecYU
        DEC TmpMapChrY_HI
NoDecYU

        JSR Calc_Map_and_Blk_Y_Coordinates

        JSR Calc_Map_and_Blk_X_Coordinates
        JSR Get_Char_at_Map_position
        JSR Check_If_Blocked
        BNE BlockedUp

        LDA RayDeltaX
        BEQ No_Second_Character_CheckU

        ; 16-bit increment Word
        INC TmpMapChrX_LO
        BNE NoIncXU
        INC TmpMapChrX_HI
NoIncXU
        JSR Calc_Map_and_Blk_X_Coordinates
        JSR Get_Char_at_Map_position
        JSR Check_If_Blocked
        BNE BlockedUp

No_Second_Character_CheckU
        LDA #8
        STA RayDeltaY

        ; 16-bit decrement Word
        LDA RayMapChrY_LO
        BNE NoDecMU
        DEC RayMapChrY_HI
NoDecMU DEC RayMapChrY_LO

DecYU   DEC RayDeltaY

        ; 16-bit decrement Word
        LDA RayPixY_LO
        BNE NoDecPU
        DEC RayPixY_HI
NoDecPU DEC RayPixY_LO

        LDA #0
        RTS

BlockedUp
        LDA #1
        RTS


;------------------------------------------------------------
; PlayerMoveDown
;------------------------------------------------------------
PlayerMoveDown

        LDA RayDeltaY
        BEQ DeltaYIs0D
        JMP IncYD
DeltaYIs0D
        LDA RayMapChrX_LO
        STA TmpMapChrX_LO
        LDA RayMapChrX_HI
        STA TmpMapChrX_HI
        LDA RayMapChrY_LO
        STA TmpMapChrY_LO
        LDA RayMapChrY_HI
        STA TmpMapChrY_HI

        ; 16-bit increment Word
        INC TmpMapChrY_LO
        BNE NoIncYD
        INC TmpMapChrY_HI
NoIncYD
        JSR Calc_Map_and_Blk_Y_Coordinates

        JSR Calc_Map_and_Blk_X_Coordinates
        JSR Get_Char_at_Map_position
        JSR Check_If_Blocked_Down
        BNE BlockedDown

        LDA RayDeltaX
        BEQ No_Second_Character_CheckD

        ; 16-bit increment Word
        INC TmpMapChrX_LO
        BNE NoIncXD
        INC TmpMapChrX_HI
NoIncXD
        JSR Calc_Map_and_Blk_X_Coordinates
        JSR Get_Char_at_Map_position
        JSR Check_If_Blocked_Down
        BNE BlockedDown

No_Second_Character_CheckD
IncYD
        LDA RayDeltaY
        CMP #7
        BNE SameCharYD

        LDA #255
        STA RayDeltaY

        ; 16-bit inrement Word
        INC RayMapChrY_LO
        BNE NoIncMD
        INC RayMapChrY_HI
NoIncMD

SameCharYD
        INC RayDeltaY

        ; 16-bit Increment Word
        INC RayPixY_LO
        BNE NoIncPD
        INC RayPixY_HI
NoIncPD
        LDA #0
        RTS

BlockedDown
        LDA #1
        RTS


;------------------------------------------------------------
; Get_Char_at_Map_position (TmpMapChrX_, TmpMapChrY_)
;------------------------------------------------------------
Get_Char_at_Map_position
        LDY TmpMapY
        LDA MAPTABLO,Y          ; Y points to the row on the map where the chars should be taken from
        CLC
        ADC TmpMapX
        STA MAPADDR+1
        LDA MAPTABHI,Y
        ADC #0
        STA MAPADDR+2
MAPADDR
        LDA $5100               ; A = BLOCKNO
        TAY
        LDA TmpBlkY
        ASL
        ASL
        CLC
        ADC TmpBlkX
        ADC BLKTABLO,Y
        STA BLKADDR+1
        LDA BLKTABHI,Y
        ADC #0
        STA BLKADDR+2           ; BLKADDR = <BLKTAB + BLOCKNO> + BLOCKX
BLKADDR
        LDA $4000               ; A = CHARCODE
        RTS

;------------------------------------------------------------
; Calc_Map_and_Blk_X_Coordinates
;------------------------------------------------------------
Calc_Map_and_Blk_X_Coordinates
        LDA TmpMapChrX_LO
        STA TmpMapX
        AND #3
        STA TmpBlkX
        LDA TmpMapChrX_HI
        LSR
        ROR TmpMapX
        LSR
        ROR TmpMapX
        RTS


;------------------------------------------------------------
; Calc_Map_and_Blk_Y_Coordinates
;------------------------------------------------------------
Calc_Map_and_Blk_Y_Coordinates
        LDA TmpMapChrY_LO
        STA TmpMapY
        AND #3
        STA TmpBlkY
        LDA TmpMapChrY_HI
        LSR
        ROR TmpMapY
        LSR
        ROR TmpMapY
        RTS


;------------------------------------------------------------
; Check_If_Blocked
;
; Returns 1 for blocked, 0 for not blocked
;------------------------------------------------------------
Check_If_Blocked
        ;CMP #128
        ;BPL Blocked
        CMP #$0F
        BEQ Blocked

        CMP #$0E
        BEQ Blocked

        LDA #0
        RTS

Blocked
        LDA #1
        RTS

;------------------------------------------------------------
; Check_If_Blocked_Down
;
; Returns 1 for blocked, 0 for not blocked
;------------------------------------------------------------
Check_If_Blocked_Down
        ;CMP #128
        ;BPL Blocked
        CMP #$0F
        BEQ Blocked_Down

        CMP #$0E
        BEQ Blocked_Down

        CMP #$0A
        BEQ Blocked_Down
        CMP #$0B
        BEQ Blocked_Down
        CMP #$0C
        BEQ Blocked_Down
        CMP #$0D
        BEQ Blocked_Down

        LDA #0
        RTS

Blocked_Down
        LDA #1
        RTS



;JOYDIR=0
;If facing right and X<A then JOYDIR=JOYDIR OR 0100
;If facing right and X>A then JOYDIR=JOYDIR OR 1000
;If facing left  and X<B then JOYDIR=JOYDIR OR 0100
;If facing left  and X>B then JOYDIR=JOYDIR OR 1000
;If Y<C                  then JOYDIR=JOYDIR OR 0001
;If Y>C                  then JOYDIR=JOYDIR OR 0010

CHKNEED2SCROLL
        LDA #1
        STA SCROLLSPEED

        LDA #0                  ; No direction
        STA JOYDIR
        LDA FACING
        BNE FACELEFT ; MIPL ; BYTE $EA,$EA ; BNE FACELEFT  CHANGED FOR DEMO
   ;     jmp FACEY
FACERIGHT
        LDA VIC_SPRITE_X_POS_MSB
        AND #%00000001
        BNE BIGX1
        LDA VIC_SPRITE_0_X_POS
        CMP #140
        BCC NOBIGX1
        CMP #148
        BCC MEDX1
BIGX1   LDA #1 ; LDA #2  CHANGED FOR DEMO
        STA SCROLLSPEED
MEDX1   LDA JOYDIR              ; X>=136
        ORA #%00001000          ; Simulate RIGHT pressed
        STA JOYDIR
        JMP FACEY
NOBIGX1 LDA VIC_SPRITE_0_X_POS
        CMP #132
        BCS FACEY
        LDA JOYDIR
        ORA #%00000100          ; Simulate LEFT pressed
        STA JOYDIR
        JMP FACEY
FACELEFT
        LDA VIC_SPRITE_X_POS_MSB
        AND #%00000001
        BNE BIGX2
        LDA VIC_SPRITE_0_X_POS
        CMP #236
        BCC NOBIGX2
BIGX2   LDA JOYDIR              ; X>=236
        ORA #%00001000          ; Simulate RIGHT pressed
        STA JOYDIR
        JMP FACEY
NOBIGX2 LDA VIC_SPRITE_0_X_POS
        CMP #228
        BCS FACEY
        CMP #220
        BCS MEDX2
        LDA #1 ; LDA #2  CHANGED FOR DEMO
        STA SCROLLSPEED
MEDX2   LDA JOYDIR
        ORA #%00000100          ; Simulate LEFT pressed
        STA JOYDIR
        JMP FACEY

FACEY
;        LDA VIC_SPRITE_0_Y_POS  ; VIC_SPRITE_0_Y_POS = RayPixY_LO - WinPixY_LO + 89 + 6
;        CMP #176
;        BCC NOBIGY
;BIGY    LDA JOYDIR              ; Y>=168
;        ORA #%00000010          ; Simulate DOWN pressed
;        STA JOYDIR
;        JMP JOYSET
;NOBIGY  CMP #168
;        BCS JOYSET
;        LDA JOYDIR
;        ORA #%00000001          ; Simulate UP pressed
;        STA JOYDIR

        LDA RayPixY_HI
        CMP WinPixY_HI
        BCC SIMUP
        BNE NOLIM
        LDA RayPixY_LO
        CMP WinPixY_LO
        BCC SIMUP

NOLIM
        SEC
        LDA RayPixY_LO
        SBC WinPixY_LO
        STA TEMPLO
        LDA RayPixY_HI
        SBC WinPixY_HI
        STA TEMPHI
        BNE SIMDOWN
        LDA TEMPLO
        CMP #81
        BCS SIMDOWN
        CMP #73
        BCS JOYSET

SIMUP   LDA JOYDIR
        ORA #%00000001          ; Simulate UP pressed
        STA JOYDIR
        JMP JOYSET
        
SIMDOWN LDA JOYDIR
        ORA #%00000010          ; Simulate DOWN pressed
        STA JOYDIR

JOYSET
        LDA JOYDIR
        JSR JOYWEDGE


DOSCR1

NOSCR1

        LDY #MED_GREY
        LDA VIC_SPRITE_SPRITE_COLLISION
        AND #%10000001
        CMP #%10000001
        BNE NOCOLL
        LDY #RED
NOCOLL  STY VIC_BACKGROUND_COLOR

        JSR SIDPLAY

        LDA #BLACK
        STA VIC_BORDER_COLOR

        JMP $FEBC


#region "COPYSCREEN"
        ;--------------------------
        ; COPY SCREEN
COPYSCREEN
        LDA SCREEN
        BNE CS0
        JSR COPY1T2
        RTS
CS0
        JSR COPY2T1
        RTS


        ;--------------------------
        ; COPY SCREEN1 to SCREEN2
COPY1T2
        LDY SCROLLIX
        LDA SCROLLTABLE,Y
        TAX
        STX COPY1T2X+1
        LDY #41
LOOP11
        LDA SCREEN1+280,X
        STA SCREEN2+280,Y
        LDA SCREEN1+320,X
        STA SCREEN2+320,Y
        LDA SCREEN1+360,X
        STA SCREEN2+360,Y
        LDA SCREEN1+400,X
        STA SCREEN2+400,Y
        LDA SCREEN1+440,X
        STA SCREEN2+440,Y
        LDA SCREEN1+480,X
        STA SCREEN2+480,Y
        LDA SCREEN1+520,X
        STA SCREEN2+520,Y
        INX
        INY
        CPY #81
        BNE LOOP11

        LDA #BLACK ; LDA #CYAN  CHANGED FOR DEMO
        STA VIC_BORDER_COLOR

        LDA VIC_YSCROLL_CONTROL
        AND #%01111000
        ORA #%00000100 ; Set fixed Y-Scroll
        STA VIC_YSCROLL_CONTROL
        LDA VIC_XSCROLL_CONTROL
        AND #%11111000
        ORA #%00000100 ; Set fixed X-Scroll
        STA VIC_XSCROLL_CONTROL

        LDA #BLACK ; LDA #RED  CHANGED FOR DEMO
        STA VIC_BORDER_COLOR

COPY1T2X
        LDX #0
        LDY #41
LOOP12  LDA SCREEN1+560,X
        STA SCREEN2+560,Y
        LDA SCREEN1+600,X
        STA SCREEN2+600,Y
        LDA SCREEN1+640,X
        STA SCREEN2+640,Y
        LDA SCREEN1+680,X
        STA SCREEN2+680,Y
        LDA SCREEN1+720,X
        STA SCREEN2+720,Y
        LDA SCREEN1+760,X
        STA SCREEN2+760,Y
        LDA SCREEN1+800,X
        STA SCREEN2+800,Y
        LDA SCREEN1+840,X
        STA SCREEN2+840,Y
        LDA SCREEN1+880,X
        STA SCREEN2+880,Y
        LDA SCREEN1+920,X
        STA SCREEN2+920,Y
        LDA SCREEN1+960,X
        STA SCREEN2+960,Y
        INX
        INY
        CPY #81
        BNE LOOP12
DONE1
        RTS


        ;--------------------------
        ; COPY SCREEN2 to SCREEN1
COPY2T1
        LDY SCROLLIX
        LDA SCROLLTABLE,Y
        TAX
        STX COPY2T1X+1
        LDY #41
LOOP21
        LDA SCREEN2+280,X
        STA SCREEN1+280,Y
        LDA SCREEN2+320,X
        STA SCREEN1+320,Y
        LDA SCREEN2+360,X
        STA SCREEN1+360,Y
        LDA SCREEN2+400,X
        STA SCREEN1+400,Y
        LDA SCREEN2+440,X
        STA SCREEN1+440,Y
        LDA SCREEN2+480,X
        STA SCREEN1+480,Y
        LDA SCREEN2+520,X
        STA SCREEN1+520,Y
        INX
        INY
        CPY #81
        BNE LOOP21

        LDA #BLACK ; LDA #CYAN  CHANGED FOR DEMO
        STA VIC_BORDER_COLOR

        LDA VIC_YSCROLL_CONTROL
        AND #%01111000
        ORA #%00000100 ; Set fixed Y-Scroll
        STA VIC_YSCROLL_CONTROL
        LDA VIC_XSCROLL_CONTROL
        AND #%11111000
        ORA #%00000100 ; Set fixed X-Scroll
        STA VIC_XSCROLL_CONTROL

        LDA #BLACK ; LDA #PURPLE  CHANGED FOR DEMO
        STA VIC_BORDER_COLOR

COPY2T1X
        LDX #0
        LDY #41
LOOP22  LDA SCREEN2+560,X
        STA SCREEN1+560,Y
        LDA SCREEN2+600,X
        STA SCREEN1+600,Y
        LDA SCREEN2+640,X
        STA SCREEN1+640,Y
        LDA SCREEN2+680,X
        STA SCREEN1+680,Y
        LDA SCREEN2+720,X
        STA SCREEN1+720,Y
        LDA SCREEN2+760,X
        STA SCREEN1+760,Y
        LDA SCREEN2+800,X
        STA SCREEN1+800,Y
        LDA SCREEN2+840,X
        STA SCREEN1+840,Y
        LDA SCREEN2+880,X
        STA SCREEN1+880,Y
        LDA SCREEN2+920,X
        STA SCREEN1+920,Y
        LDA SCREEN2+960,X
        STA SCREEN1+960,Y
        INX
        INY
        CPY #81
        BNE LOOP22
DONE2
        RTS

#endregion "COPYSCREEN"


#region "SCROLLCOLOR"
        ;--------------------------
        ; SCROLL COLOR
SCROLLCOLOR
        LDA SCROLLIX
        ASL
        TAX
        LDA JMPTABCOL,X
        STA SCJSR+1
        LDA JMPTABCOL+1,X
        STA SCJSR+2
SCJSR
        JSR $FFFF
        RTS

COLORBUFFER
        DCB 40,$00

        ;--------------------------
        ; MOVE COLOR UP (SCROLLIX = 1) + 0
MCU
        LDY SCROLLIX
        LDA SCROLLTABLE,Y ; 81/82
        TAX
        STX MCULX+1
        LDY #41
MCUL0
        LDA 55255+280,X
        STA 55255+280,Y
        LDA 55255+320,X
        STA 55255+320,Y
        LDA 55255+360,X
        STA 55255+360,Y
        LDA 55255+400,X
        STA 55255+400,Y
        LDA 55255+440,X
        STA 55255+440,Y
        LDA 55255+480,X
        STA 55255+480,Y
        LDA 55255+520,X
        STA 55255+520,Y
        INX
        INY
        CPY #81
        BNE MCUL0

        LDA #BLACK ; LDA #CYAN  CHANGED FOR DEMO
        STA VIC_BORDER_COLOR

        LDA VIC_YSCROLL_CONTROL
        AND #%01111000
        ORA #%00000100 ; Set fixed Y-Scroll
        STA VIC_YSCROLL_CONTROL
        LDA VIC_XSCROLL_CONTROL
        AND #%11111000
        ORA #%00000100 ; Set fixed X-Scroll
        STA VIC_XSCROLL_CONTROL

        LDA #BLACK ; LDA #GREEN  CHANGED FOR DEMO
        STA VIC_BORDER_COLOR

MCULX   LDX #0
        LDY #41
MCUL1   LDA 55255+560,X
        STA 55255+560,Y
        LDA 55255+600,X
        STA 55255+600,Y
        LDA 55255+640,X
        STA 55255+640,Y
        LDA 55255+680,X
        STA 55255+680,Y
        LDA 55255+720,X
        STA 55255+720,Y
        LDA 55255+760,X
        STA 55255+760,Y
        LDA 55255+800,X
        STA 55255+800,Y
        LDA 55255+840,X
        STA 55255+840,Y
        LDA 55255+880,X
        STA 55255+880,Y
        LDA 55255+920,X
        STA 55255+920,Y
        INX
        INY
        CPY #81
        BNE MCUL1
        RTS

        ;--------------------------
        ; MOVE COLOR LEFT (SCROLLIX = 3) + 6
MCL
        LDY SCROLLIX
        LDA SCROLLTABLE,Y ; 2/42
        TAX
        STX MCLLX+1
        LDY #41
MCLL0
        LDA 55255+520,X
        STA COLORBUFFER-41,Y
        LDA 55255+480,X
        STA 55255+480,Y
        LDA 55255+440,X
        STA 55255+440,Y
        LDA 55255+400,X
        STA 55255+400,Y
        LDA 55255+360,X
        STA 55255+360,Y
        LDA 55255+320,X
        STA 55255+320,Y
        LDA 55255+280,X
        STA 55255+280,Y
        INX
        INY
        CPY #80
        BNE MCLL0

        LDA #BLACK ; LDA #CYAN  CHANGED FOR DEMO
        STA VIC_BORDER_COLOR

        LDA VIC_YSCROLL_CONTROL
        AND #%01111000
        ORA #%00000100 ; Set fixed Y-Scroll
        STA VIC_YSCROLL_CONTROL
        LDA VIC_XSCROLL_CONTROL
        AND #%11111000
        ORA #%00000100 ; Set fixed X-Scroll
        STA VIC_XSCROLL_CONTROL

        LDA #BLACK ; LDA #BLUE  CHANGED FOR DEMO
        STA VIC_BORDER_COLOR

MCLLX   LDX #0
        LDY #41
MCLL1   LDA 55255+960,X
        STA 55255+960,Y
        LDA 55255+920,X
        STA 55255+920,Y
        LDA 55255+880,X
        STA 55255+880,Y
        LDA 55255+840,X
        STA 55255+840,Y
        LDA 55255+800,X
        STA 55255+800,Y
        LDA 55255+760,X
        STA 55255+760,Y
        LDA 55255+720,X
        STA 55255+720,Y
        LDA 55255+680,X
        STA 55255+680,Y
        LDA 55255+640,X
        STA 55255+640,Y
        LDA 55255+600,X
        STA 55255+600,Y
        LDA 55255+560,X
        STA 55255+560,Y
        LDA COLORBUFFER-41,Y
        STA 55255+520,Y
        INX
        INY
        CPY #80
        BNE MCLL1
        RTS

        ;--------------------------
        ; NO COLOR MOVE (SCROLLIX = 4)
MCN
        RTS

        ;--------------------------
        ; MOVE COLOR RIGHT (SCROLLIX = 5) + 2
MCR
        LDY SCROLLIX
        LDA SCROLLTABLE,Y ; 40/80
        CLC
        ADC #39
        TAX
        STX MCRLX+1
        LDY #80
MCRL0
        LDA 55255+280,X
        STA 55255+280,Y
        LDA 55255+320,X
        STA 55255+320,Y
        LDA 55255+360,X
        STA 55255+360,Y
        LDA 55255+400,X
        STA 55255+400,Y
        LDA 55255+440,X
        STA 55255+440,Y
        LDA 55255+480,X
        STA 55255+480,Y
        LDA 55255+520,X
        STA 55255+520,Y
        DEX
        DEY
        CPY #41
        BNE MCRL0

        LDA #BLACK ; LDA #CYAN  CHANGED FOR DEMO
        STA VIC_BORDER_COLOR

        LDA VIC_YSCROLL_CONTROL
        AND #%01111000
        ORA #%00000100 ; Set fixed Y-Scroll
        STA VIC_YSCROLL_CONTROL
        LDA VIC_XSCROLL_CONTROL
        AND #%11111000
        ORA #%00000100 ; Set fixed X-Scroll
        STA VIC_XSCROLL_CONTROL

        LDA #BLACK ; LDA #YELLOW  CHANGED FOR DEMO
        STA VIC_BORDER_COLOR

MCRLX   LDX #0
        LDY #80
MCRL1   LDA 55255+560,X
        STA 55255+560,Y
        LDA 55255+600,X
        STA 55255+600,Y
        LDA 55255+640,X
        STA 55255+640,Y
        LDA 55255+680,X
        STA 55255+680,Y
        LDA 55255+720,X
        STA 55255+720,Y
        LDA 55255+760,X
        STA 55255+760,Y
        LDA 55255+800,X
        STA 55255+800,Y
        LDA 55255+840,X
        STA 55255+840,Y
        LDA 55255+880,X
        STA 55255+880,Y
        LDA 55255+920,X
        STA 55255+920,Y
        LDA 55255+960,X
        STA 55255+960,Y
        DEX
        DEY
        CPY #41
        BNE MCRL1
        RTS

        ;--------------------------
        ; MOVE COLOR DOWN (SCROLLIX = 7) + 8
MCD
        LDY SCROLLIX
        LDA SCROLLTABLE,Y ; 0/1
        CLC
        ADC #39
        TAX
        STX MCDLX+1
        LDY #80
MCDL0
        LDA 55255+560,X
        STA COLORBUFFER-41,Y
        LDA 55255+520,X
        STA 55255+520,Y
        LDA 55255+480,X
        STA 55255+480,Y
        LDA 55255+440,X
        STA 55255+440,Y
        LDA 55255+400,X
        STA 55255+400,Y
        LDA 55255+360,X
        STA 55255+360,Y
        LDA 55255+320,X
        STA 55255+320,Y
        DEX
        DEY
        CPY #40
        BNE MCDL0

        LDA #BLACK ; LDA #CYAN  CHANGED FOR DEMO
        STA VIC_BORDER_COLOR

        LDA VIC_YSCROLL_CONTROL
        AND #%01111000
        ORA #%00000100 ; Set fixed Y-Scroll
        STA VIC_YSCROLL_CONTROL
        LDA VIC_XSCROLL_CONTROL
        AND #%11111000
        ORA #%00000100 ; Set fixed X-Scroll
        STA VIC_XSCROLL_CONTROL

        LDA #BLACK ; LDA #ORANGE  CHANGED FOR DEMO
        STA VIC_BORDER_COLOR

MCDLX   LDX #0
        LDY #80
MCDL1   LDA 55255+960,X
        STA 55255+960,Y
        LDA 55255+920,X
        STA 55255+920,Y
        LDA 55255+880,X
        STA 55255+880,Y
        LDA 55255+840,X
        STA 55255+840,Y
        LDA 55255+800,X
        STA 55255+800,Y
        LDA 55255+760,X
        STA 55255+760,Y
        LDA 55255+720,X
        STA 55255+720,Y
        LDA 55255+680,X
        STA 55255+680,Y
        LDA 55255+640,X
        STA 55255+640,Y
        LDA 55255+600,X
        STA 55255+600,Y
        LDA COLORBUFFER-41,Y
        STA 55255+560,Y
        DEX
        DEY
        CPY #40
        BNE MCDL1
        RTS

#endregion "SCROLLCOLOR"


#region "ADDNEWDATA"
        ;--------------------------
        ; ADD NEW DATA
ADDNEWDATA
        LDX SCROLLIX
        CPX #3
        BNE NOTTHR
        LDY WinBlkX
        INY
        TYA
        AND #3
        STA WinBlkX
        BNE NOTEQ3
        INC WinMapX
NOTEQ3
        JMP DOADD

NOTTHR
        CPX #5
        BNE NOTFIV
        LDA WinBlkX
        CLC
        ADC #3
        AND #3
        STA WinBlkX
        CMP #3
        BNE NOTEQ5
        DEC WinMapX
NOTEQ5
        JMP DOADD

NOTFIV
        CPX #7
        BNE NOTSEV
        LDA WinBlkY
        CLC
        ADC #3
        AND #3
        STA WinBlkY
        CMP #3
        BNE NOTEQ7
        DEC WinMapY
NOTEQ7
        JMP DOADD

NOTSEV
        CPX #1
        BNE NOTONE
        LDY WinBlkY
        INY
        TYA
        AND #3
        STA WinBlkY
        BNE NOTEQ1
        INC WinMapY
NOTEQ1
        JMP DOADD

NOTONE
        CPX #2
        BNE NOTTWO
        LDA WinBlkX
        CLC
        ADC #3
        AND #3
        STA WinBlkX
        CMP #3
        BNE NOTEQ2
        DEC WinMapX
NOTEQ2
        LDY WinBlkY
        INY
        TYA
        AND #3
        STA WinBlkY
        BNE NOTEQ22
        INC WinMapY
NOTEQ22
        JMP DOADD

NOTTWO
        CPX #6
        BNE NOTSIX
        LDY WinBlkX
        INY
        TYA
        AND #3
        STA WinBlkX
        BNE NOTEQ6
        INC WinMapX
NOTEQ6
        LDA WinBlkY
        CLC
        ADC #3
        AND #3
        STA WinBlkY
        CMP #3
        BNE NOTEQ62
        DEC WinMapY
NOTEQ62
        JMP DOADD

NOTSIX
        CPX #0
        BNE NOTZRO
        LDY WinBlkX
        INY
        TYA
        AND #3
        STA WinBlkX
        BNE NOTEQ0
        INC WinMapX
NOTEQ0
        LDY WinBlkY
        INY
        TYA
        AND #3
        STA WinBlkY
        BNE NOTEQ02
        INC WinMapY
NOTEQ02
        JMP DOADD

NOTZRO
        CPX #8
        BNE NOTEIG
        LDA WinBlkX
        CLC
        ADC #3
        AND #3
        STA WinBlkX
        CMP #3
        BNE NOTEQ8
        DEC WinMapX
NOTEQ8
        LDA WinBlkY
        CLC
        ADC #3
        AND #3
        STA WinBlkY
        CMP #3
        BNE NOTEQ82
        DEC WinMapY
NOTEQ82
        JMP DOADD

NOTEIG
        RTS

DOADD
        LDA SCREEN
        ASL
        ASL
        ASL
        CLC
        ADC SCREEN
        ADC SCROLLIX
        ASL
        ASL
        TAX
        LDA JMPTAB,X
        STA ADDLR+1
        LDA JMPTAB+1,X
        STA ADDLR+2
        LDA JMPTAB+2,X
        STA ADDTB+1
        LDA JMPTAB+3,X
        STA ADDTB+2
ADDLR
        JSR $FFFF
ADDTB
        JSR $FFFF
        RTS


NOJMP
        RTS


#region "NEWLEFT"
        ;--------------------------
        ; NEW DATA TO THE LEFT
NEWLEFT
CRL12
CRL21
        LDX SCREEN
        LDA SCRTLLO,X
        STA SCRPOS+1                 ; 1304/2328
        LDA SCRTLHI,X
        STA SCRPOS+2

        LDA WinBlkY
        ASL
        ASL
        TAX
        LDY WinMapY
        LDA MAPTABLO,Y
        CLC
        ADC WinMapX
        STA MAPAD+1
        LDA MAPTABHI,Y
        ADC #0
        STA MAPAD+2
        LDY #18
MAPAD
        LDA $5100
        STY SAVY1+1
        TAY
        LDA BLKTABLO,Y
        STA BLOCKAD+1
        LDA BLKTABHI,Y
        STA BLOCKAD+2
SAVY1
        LDY #0
        LDA WinBlkX
        CLC
        ADC BLOCKAD+1
        STA BLOCKAD+1
        BCC BLOCKAD
        INC BLOCKAD+2
BLOCKAD
        LDA $4000,X
SCRPOS
        STA 49432

COLPOS

SAVY2
        DEY
        BEQ DONE
        LDA SCRPOS+1
        CLC
        ADC #40
        STA SCRPOS+1
        BCC NOC2
        INC SCRPOS+2
NOC2
        CPX #12
        BEQ NEWBL
        INX
        INX
        INX
        INX
        BNE BLOCKAD
NEWBL
        LDX #0
        LDA MAPAD+1
        CLC
        ADC MAPWIDTH
        STA MAPAD+1
        BCC NOC3
        INC MAPAD+2
NOC3
        JMP MAPAD
DONE
        RTS

#endregion "NEWLEFT"


#region "NEWRIGHT"
        ;--------------------------
        ; NEW DATA TO THE RIGHT
NEWRIGHT
CLR12
CLR21

        LDX SCREEN
        LDA SCRTRLO,X
        STA SCRPOSR+1                 ; 1304/2328
        LDA SCRTRHI,X
        STA SCRPOSR+2

        LDY #9
        LDA WinBlkX
        BEQ EQZERO
        INY
EQZERO  TYA
        CLC
        ADC WinMapX
        STA NRL0+1

        LDA WinBlkY
        ASL
        ASL
        TAX
        LDY WinMapY
        LDA MAPTABLO,Y
        CLC
NRL0    ADC #10
        STA MAPADR+1
        LDA MAPTABHI,Y
        ADC #0
        STA MAPADR+2
        LDY #18
MAPADR
        LDA $5100
        STY SAVY1R+1
        TAY
        LDA BLKTABLO,Y
        STA BLOCKADR+1
        LDA BLKTABHI,Y
        STA BLOCKADR+2
SAVY1R
        LDY #0
        LDA WinBlkX
        CLC
        ADC #3
        AND #%00000011
        ADC BLOCKADR+1
        STA BLOCKADR+1
        BCC BLOCKADR
        INC BLOCKADR+2
BLOCKADR
        LDA $4000,X
SCRPOSR
        STA 49432

COLPOSR

SAVY2R
        DEY
        BEQ DONER
        LDA SCRPOSR+1
        CLC
        ADC #40
        STA SCRPOSR+1
        BCC NOC2R
        INC SCRPOSR+2
NOC2R
        CPX #12
        BEQ NEWBLR
        INX
        INX
        INX
        INX
        BNE BLOCKADR
NEWBLR
        LDX #0
        LDA MAPADR+1
        CLC
        ADC MAPWIDTH
        STA MAPADR+1
        BCC NOC3R
        INC MAPADR+2
NOC3R
        JMP MAPADR
DONER
        RTS

#endregion "NEWRIGHT"


#region "NEWTOP"
;---------
;
;       (<1718 cycles)
;
NEWTOP
CBT12
CBT21

        LDA WinBlkY
        ASL
        ASL
        STA LBBBY+1

        LDX SCREEN
        LDA SCRTLLO,X
        STA SCADDR3+1
        LDA SCRTLHI,X
        STA SCADDR3+2

        LDX #0
        STX LBB01+1
        LDA WinBlkX
        STA LBB03+1
        LDY WinMapY
        LDA MAPTABLO,Y
        CLC
        ADC WinMapX
        STA LBB02+1
        LDA MAPTABHI,Y
        ADC #0
        STA LBB02+2

LBB01   LDY #0
LBB02   LDA $FFFF,Y

        TAY
LBBBY   LDA #0  ;LDA WinBlkY
        ;ASL
        ;ASL
        CLC
        ADC BLKTABLO,Y
        STA LBB04+1
        LDA #0
        ADC BLKTABHI,Y
        STA LBB04+2

LBB03   LDY #0
LBB04   LDA $FFFF,Y
SCADDR3 STA $FFFF,X
        INX
        CPX #40
        BEQ LBB05

        INY
        CPY #4
        BNE LBB04
        LDA #0
        STA LBB03+1

        INC LBB01+1
        JMP LBB01
LBB05   RTS
;---------



        ;--------------------------
        ; NEW DATA AT THE TOP
        ;
        ;       (1806 cycles)
;NEWTOP
;CBT12
;CBT21
        LDX SCREEN
        LDA SCRTLLO,X
        SEC
        SBC WinBlkX
        STA SCADDR1+1
        LDA SCRTLHI,X
        STA SCADDR1+2

        LDX #40
        LDY WinMapY
        LDA MAPTABLO,Y
        STA LB02+1
        LDA MAPTABHI,Y
        STA LB02+2
        LDA WinMapX
        STA LB01+1
        LDA WinBlkX
        STA LB03+1

LB01    LDY #0
LB02    LDA $FFFF,Y                             ; Block No.
        TAY
        LDA WinBlkY
        ASL
        ASL
        CLC
        ADC BLKTABLO,Y
        STA LB04+1
        LDA #0
        ADC BLKTABHI,Y
        STA LB04+2
LB03    LDY #0
LB04    LDA $FFFF,Y
SCADDR1  STA 49152,Y

CLADDR1
LB05
        DEX
        BEQ LB06
        INY        
        CPY #4
        BNE LB04
        LDA #0
        STA LB03+1

        LDA #4
        CLC
        ADC SCADDR1+1
        STA SCADDR1+1
        BCC LC01
        INC SCADDR1+2
LC01

LC02    INC LB01+1
        BNE LB01
LB06    RTS

#endregion "NEWTOP"


#region "NEWBOTTOM"
;---------
;
;       (? cycles)
;
NEWBOTTOM
CTB12
CTB21

        LDX SCREEN
        LDA SCRBLLO,X
        STA SCADDR4+1
        LDA SCRBLHI,X
        STA SCADDR4+2

        LDA WinMapY
        CLC
        ADC #4
        TAY
        LDX WinBlkY
        INX
        TXA
        AND #%00000011
        BNE LDD00
        INY

LDD00   ASL
        ASL
        STA LDDBY+1

        LDX #0
        STX LDD01+1
        LDA WinBlkX
        STA LDD03+1

        LDA MAPTABLO,Y
        CLC
        ADC WinMapX
        STA LDD02+1
        LDA MAPTABHI,Y
        ADC #0
        STA LDD02+2

LDD01   LDY #0
LDD02   LDA $FFFF,Y             ; Load BlockNo from map

        TAY
LDDBY   LDA #0                  ; 4*WinBlkY
        CLC
        ADC BLKTABLO,Y          ; Y = BlockNo
        STA LDD04+1
        LDA #0
        ADC BLKTABHI,Y          ; Y = BlockNo
        STA LDD04+2

LDD03   LDY #0                  ; Initial Y = WinBlkX
LDD04   LDA $FFFF,Y             ; Load char
SCADDR4 STA $FFFF,X             ; Store on screen
        INX
        CPX #40                 ; Repeat for 40 chars
        BEQ LDD05

        INY                     ; Go to next block column
        CPY #4                  ; Check for last column in block
        BNE LDD04
        LDA #0
        STA LDD03+1             ; Start from first column in new block

        INC LDD01+1             ; Point to next column in map
        JMP LDD01
LDD05   RTS
;---------


        ;--------------------------
        ; NEW DATA AT THE BOTTOM
;NEWBOTTOM
;CTB12
;CTB21
        LDX SCREEN
        LDA SCRBLLO,X
        SEC
        SBC WinBlkX
        STA SCADDR2+1
        LDA SCRBLHI,X
        STA SCADDR2+2

        LDX #40
        LDA WinMapY
        CLC
        ADC #4
        TAY
        LDA WinBlkY
        CLC
        ADC #1
        AND #%00000011
        ASL
        ASL
        STA BLKY+1
        BNE LD00
        INY
LD00    LDA MAPTABLO,Y
        STA LD02+1
        LDA MAPTABHI,Y
        STA LD02+2
        LDA WinMapX
        STA LD01+1
        LDA WinBlkX
        STA LD03+1

LD01    LDY #0
LD02    LDA $FFFF,Y                             ; Block No.
        TAY
BLKY    LDA #0
        CLC
        ADC BLKTABLO,Y
        STA LD04+1
        LDA #0
        ADC BLKTABHI,Y
        STA LD04+2
LD03    LDY #0
LD04    LDA $FFFF,Y
SCADDR2  STA 49152,Y

CLADDR2
LD05
        DEX
        BEQ LD06
        INY        
        CPY #4
        BNE LD04
        LDA #0
        STA LD03+1

        LDA #4
        CLC
        ADC SCADDR2+1
        STA SCADDR2+1
        BCC LE01
        INC SCADDR2+2
LE01

LE02    INC LD01+1
        BNE LD01
LD06    RTS

#endregion "NEWBOTTOM"

#endregion "ADDNEWDATA"


#region "ADDNEWCOLOR"
        ;--------------------------
        ; ADD NEW COLOR
ADDNEWCOLOR
        LDX SCREEN
        LDA SCRTLLO,X
        STA ANC001+1
        STA ANC007+1
        STA ANC013+1
        LDA SCRTLHI,X
        STA ANC001+2
        STA ANC008+1
        STA ANC014+1

        LDA COLTLLO
        STA ANC002+1
        STA ANC009+1
        STA ANC015+1
        LDA COLTLHI
        STA ANC002+2
        STA ANC010+1
        STA ANC016+1

        LDA SCRBLLO,X
        STA ANC004+1
        LDA SCRBLHI,X
        STA ANC004+2

        LDA COLBLLO
        STA ANC005+1
        LDA COLBLHI
        STA ANC005+2

        LDA SCROLLIX
        CMP #6
        BCC ANC003
        LDX #0
ANC001  LDY 49472,X
        LDA COLORTAB,Y
ANC002  STA 55616,X
        INX
        CPX #40
        BNE ANC001

ANC003  LDA SCROLLIX
        CMP #3
        BCS ANC006
        LDX #0
ANC004  LDY 50112,X
        LDA COLORTAB,Y
ANC005  STA 56256,X
        INX
        CPX #40
        BNE ANC004

ANC006  LDA SCROLLIX
        BEQ ANC012
        CMP #1
        BEQ ANC012
        CMP #3
        BEQ ANC012
        CMP #6
        BEQ ANC012
        CMP #7
        BEQ ANC012
        LDX #7
ANC007  LDA #0
        STA 2
ANC008  LDA #0
        STA 3
ANC009  LDA #0
        STA 4
ANC010  LDA #0
        STA 5
ANC011  LDY #0
        LDA (2),Y
        TAY
        LDA COLORTAB,Y
        LDY #0
        STA (4),Y
        LDA 2
        CLC
        ADC #40
        STA 2
        LDA 3
        ADC #0
        STA 3
        LDA 4
        CLC
        ADC #40
        STA 4
        LDA 5
        ADC #0
        STA 5
        INX
        CPX #25
        BNE ANC011

ANC012  LDA SCROLLIX
        CMP #1
        BEQ ANC018
        CMP #2
        BEQ ANC018
        CMP #5
        BEQ ANC018
        CMP #7
        BEQ ANC018
        CMP #8
        BEQ ANC018
        LDX #7
ANC013  LDA #0
        CLC
        ADC #39
        STA 2
ANC014  LDA #0
        ADC #0
        STA 3
ANC015  LDA #0
        CLC
        ADC #39
        STA 4
ANC016  LDA #0
        ADC #0
        STA 5
ANC017  LDY #0
        LDA (2),Y
        TAY
        LDA COLORTAB,Y
        LDY #0
        STA (4),Y
        LDA 2
        CLC
        ADC #40
        STA 2
        LDA 3
        ADC #0
        STA 3
        LDA 4
        CLC
        ADC #40
        STA 4
        LDA 5
        ADC #0
        STA 5
        INX
        CPX #25
        BNE ANC017
ANC018  RTS

#endregion "ADDNEWCOLOR"


        ;--------------------------
        ; READ JOYSTICK AND SET SCROLLIX
READ_JOYSTICK
                                ; JOYDIR
                                ; 0 = none pressed
                                ; 1 = up
                                ; 2 = down
                                ; 4 = left
                                ; 5 = up left
                                ; 6 = down left
                                ; 8 = right
                                ; 9 = up right
                                ;10 = down right

        LDA $DC00
        EOR #%11111111
        AND #%00001111
        STA JOYDIR
JOYWEDGE
        TAX
        LDA JOYDIR2SCROLLIX,X
        STA SCROLLIX
        LDA SCROLLIXCHKXLO,X
        STA CHKX+1
        LDA SCROLLIXCHKXHI,X
        STA CHKX+2
        LDA SCROLLIXCHKYLO,X
        STA CHKY+1
        LDA SCROLLIXCHKYHI,X
        STA CHKY+2
CHKX    JSR $FFFF
CHKY    JSR $FFFF
        RTS

NOCHK
        RTS
CHKMINX
        LDA WinMapX
        ORA WinBlkX
        BNE MINXOK
        DEC SCROLLIX
MINXOK
        RTS
CHKMAXX
        LDA WinMapX
        CLC
        ADC #10
        CMP MAPWIDTH
        BNE MAXXOK
        LDA WinBlkX
        BEQ MAXXOK
        INC SCROLLIX
MAXXOK
        RTS
CHKMINY
        LDA WinMapY
        ORA WinBlkY
        BNE MINYOK
        DEC SCROLLIX
        DEC SCROLLIX
        DEC SCROLLIX
MINYOK
        RTS
CHKMAXY
        LDA WinMapY
        CLC
        ADC #5
        CMP MAPHEIGHT
        BNE MAXYOK
        LDA WinBlkY
        CMP #3
        BNE MAXYOK
        INC SCROLLIX
        INC SCROLLIX
        INC SCROLLIX
MAXYOK
        RTS


SCROLLSPEED
        BYTE 1 ; 1 / 2 / 4

JOYDIR
        BYTE $FF

SCREEN
        BYTE 0

SCREENLOC
        BYTE 0, 16

SCRTLLO
        BYTE 24
        BYTE 24
SCRTLHI
        BYTE 197 ; $C518
        BYTE 193 ; $C118
COLTLLO
        BYTE 24
COLTLHI
        BYTE 217 ; $D918

SCRTRLO
        BYTE 63
        BYTE 63
SCRTRHI
        BYTE 197 ; $C53F
        BYTE 193 ; $C13F
COLTRLO
        BYTE 63
COLTRHI
        BYTE 217 ; $D93F

SCRBLLO
        BYTE 192
        BYTE 192
SCRBLHI
        BYTE 199 ; $C7C0
        BYTE 195 ; $C3C0
COLBLLO
        BYTE 192
COLBLHI
        BYTE 219 ; $DBC0

MAPPTRLO
        BYTE 0
MAPPTRHI
        BYTE 0

XSCROLL
        BYTE 4
YSCROLL
        BYTE 4

PHASE
        BYTE 0

SCROLLIX
        BYTE 4

JOYDIR2SCROLLIX                        ; JOYDIR can be %0000 to â‚¬FFFF
        BYTE 4                         ; -      NOCHK       NOCHK
        BYTE 7                         ; U      NOCHK       CHKMINY
        BYTE 1                         ; D      NOCHK       CHKMAXY
        BYTE 4                         ; -      NOCHK       NOCHK
        BYTE 5                         ; L      CHKMINX     NOCHK
        BYTE 8                         ; U+L    CHKMINX     CHKMINY
        BYTE 2                         ; D+L    CHKMINX     CHKMAXY
        BYTE 4                         ; -      NOCHK       NOCHK
        BYTE 3                         ; R      CHKMAXX     NOCHK
        BYTE 6                         ; U+R    CHKMAXX     CHKMINY
        BYTE 0                         ; D+R    CHKMAXX     CHKMAXY
        BYTE 4                         ; -      NOCHK       NOCHK
        BYTE 4                         ; -      NOCHK       NOCHK
        BYTE 4                         ; -      NOCHK       NOCHK
        BYTE 4                         ; -      NOCHK       NOCHK
        BYTE 4                         ; -      NOCHK       NOCHK

SCROLLIXCHKXLO
        BYTE <NOCHK
        BYTE <NOCHK
        BYTE <NOCHK
        BYTE <NOCHK
        BYTE <CHKMINX
        BYTE <CHKMINX
        BYTE <CHKMINX
        BYTE <NOCHK
        BYTE <CHKMAXX
        BYTE <CHKMAXX
        BYTE <CHKMAXX
        BYTE <NOCHK
        BYTE <NOCHK
        BYTE <NOCHK
        BYTE <NOCHK
        BYTE <NOCHK

SCROLLIXCHKXHI
        BYTE >NOCHK
        BYTE >NOCHK
        BYTE >NOCHK
        BYTE >NOCHK
        BYTE >CHKMINX
        BYTE >CHKMINX
        BYTE >CHKMINX
        BYTE >NOCHK
        BYTE >CHKMAXX
        BYTE >CHKMAXX
        BYTE >CHKMAXX
        BYTE >NOCHK
        BYTE >NOCHK
        BYTE >NOCHK
        BYTE >NOCHK
        BYTE >NOCHK

SCROLLIXCHKYLO
        BYTE <NOCHK
        BYTE <CHKMINY
        BYTE <CHKMAXY
        BYTE <NOCHK
        BYTE <NOCHK
        BYTE <CHKMINY
        BYTE <CHKMAXY
        BYTE <NOCHK
        BYTE <NOCHK
        BYTE <CHKMINY
        BYTE <CHKMAXY
        BYTE <NOCHK
        BYTE <NOCHK
        BYTE <NOCHK
        BYTE <NOCHK
        BYTE <NOCHK

SCROLLIXCHKYHI
        BYTE >NOCHK
        BYTE >CHKMINY
        BYTE >CHKMAXY
        BYTE >NOCHK
        BYTE >NOCHK
        BYTE >CHKMINY
        BYTE >CHKMAXY
        BYTE >NOCHK
        BYTE >NOCHK
        BYTE >CHKMINY
        BYTE >CHKMAXY
        BYTE >NOCHK
        BYTE >NOCHK
        BYTE >NOCHK
        BYTE >NOCHK
        BYTE >NOCHK

SCROLLTABLE
        BYTE 82, 81, 80
        BYTE 42, 41, 40
        BYTE  2,  1,  0

ACTION1
        BYTE 0, 0, 0, 1, 2, 0, 0, 0                ; SCROLLIX = 0
        BYTE 0, 0, 0, 1, 2, 0, 0, 0                ; SCROLLIX = 1
        BYTE 0, 0, 0, 1, 2, 0, 0, 0                ; SCROLLIX = 2
        BYTE 0, 0, 0, 1, 2, 0, 0, 0                ; SCROLLIX = 3
        BYTE 0, 0, 0, 0, 0, 0, 0, 0                ; SCROLLIX = 4
        BYTE 0, 0, 1, 2, 0, 0, 0, 0                ; SCROLLIX = 5
        BYTE 0, 0, 0, 1, 2, 0, 0, 0                ; SCROLLIX = 6
        BYTE 0, 0, 1, 2, 0, 0, 0, 0                ; SCROLLIX = 7
        BYTE 0, 0, 1, 2, 0, 0, 0, 0                ; SCROLLIX = 8

ACTION2
        BYTE 0, 0, 1, 0, 2, 0, 0, 0                ; SCROLLIX = 0
        BYTE 0, 0, 1, 0, 2, 0, 0, 0                ; SCROLLIX = 1
        BYTE 0, 0, 1, 0, 2, 0, 0, 0                ; SCROLLIX = 2
        BYTE 0, 0, 1, 0, 2, 0, 0, 0                ; SCROLLIX = 3
        BYTE 0, 0, 0, 0, 0, 0, 0, 0                ; SCROLLIX = 4
        BYTE 1, 0, 2, 0, 0, 0, 0, 0                ; SCROLLIX = 5
        BYTE 0, 0, 1, 0, 2, 0, 0, 0                ; SCROLLIX = 6
        BYTE 1, 0, 2, 0, 0, 0, 0, 0                ; SCROLLIX = 7
        BYTE 1, 0, 2, 0, 0, 0, 0, 0                ; SCROLLIX = 8

ACTION4
        BYTE 1, 0, 0, 0, 2, 0, 0, 0                ; SCROLLIX = 0
        BYTE 1, 0, 0, 0, 2, 0, 0, 0                ; SCROLLIX = 1
        BYTE 1, 0, 0, 0, 2, 0, 0, 0                ; SCROLLIX = 2
        BYTE 1, 0, 0, 0, 2, 0, 0, 0                ; SCROLLIX = 3
        BYTE 0, 0, 0, 0, 0, 0, 0, 0                ; SCROLLIX = 4
        BYTE 1, 0, 0, 0, 2, 0, 0, 0                ; SCROLLIX = 5
        BYTE 1, 0, 0, 0, 2, 0, 0, 0                ; SCROLLIX = 6
        BYTE 1, 0, 0, 0, 2, 0, 0, 0                ; SCROLLIX = 7
        BYTE 1, 0, 0, 0, 2, 0, 0, 0                ; SCROLLIX = 8

SCROLLS
        BYTE 3, 3,  2, 2,  1, 1,  0, 0,  7, 7,  6, 6,  5, 5,  4, 4    ; SCROLLIX = 0
        BYTE 4, 3,  4, 2,  4, 1,  4, 0,  4, 7,  4, 6,  4, 5,  4, 4    ; SCROLLIX = 1
        BYTE 4, 3,  5, 2,  6, 1,  7, 0,  0, 7,  1, 6,  2, 5,  3, 4    ; SCROLLIX = 2
        BYTE 3, 4,  2, 4,  1, 4,  0, 4,  7, 4,  6, 4,  5, 4,  4, 4    ; SCROLLIX = 3
        BYTE 4, 4,  4, 4,  4, 4,  4, 4,  4, 4,  4, 4,  4, 4,  4, 4    ; SCROLLIX = 4
        BYTE 5, 4,  6, 4,  7, 4,  0, 4,  1, 4,  2, 4,  3, 4,  4, 4    ; SCROLLIX = 5
        BYTE 3, 4,  2, 5,  1, 6,  0, 7,  7, 0,  6, 1,  5, 2,  4, 3    ; SCROLLIX = 6
        BYTE 4, 5,  4, 6,  4, 7,  4, 0,  4, 1,  4, 2,  4, 3,  4, 4    ; SCROLLIX = 7
        BYTE 5, 5,  6, 6,  7, 7,  0, 0,  1, 1,  2, 2,  3, 3,  4, 4    ; SCROLLIX = 8

SCROLLCONV
        BYTE 4, 5, 6, 7, 0, 1, 2, 3

JMPTAB
JMP00   BYTE <CLR12, >CLR12, <CTB12, >CTB12        ; SCREEN = 0, SCROLLIX = 0
JMP01   BYTE <CTB12, >CTB12, <NOJMP, >NOJMP        ; SCREEN = 0, SCROLLIX = 1
JMP02   BYTE <CRL12, >CRL12, <CTB12, >CTB12        ; SCREEN = 0, SCROLLIX = 2
JMP03   BYTE <CLR12, >CLR12, <NOJMP, >NOJMP        ; SCREEN = 0, SCROLLIX = 3
JMP04   BYTE <NOJMP, >NOJMP, <NOJMP, >NOJMP        ; SCREEN = 0, SCROLLIX = 4
JMP05   BYTE <CRL12, >CRL12, <NOJMP, >NOJMP        ; SCREEN = 0, SCROLLIX = 5
JMP06   BYTE <CLR12, >CLR12, <CBT12, >CBT12        ; SCREEN = 0, SCROLLIX = 6
JMP07   BYTE <CBT12, >CBT12, <NOJMP, >NOJMP        ; SCREEN = 0, SCROLLIX = 7
JMP08   BYTE <CRL12, >CRL12, <CBT12, >CBT12        ; SCREEN = 0, SCROLLIX = 8
JMP10   BYTE <CLR21, >CLR21, <CTB21, >CTB21        ; SCREEN = 1, SCROLLIX = 0
JMP11   BYTE <CTB21, >CTB21, <NOJMP, >NOJMP        ; SCREEN = 1, SCROLLIX = 1
JMP12   BYTE <CRL21, >CRL21, <CTB21, >CTB21        ; SCREEN = 1, SCROLLIX = 2
JMP13   BYTE <CLR21, >CLR21, <NOJMP, >NOJMP        ; SCREEN = 1, SCROLLIX = 3
JMP14   BYTE <NOJMP, >NOJMP, <NOJMP, >NOJMP        ; SCREEN = 1, SCROLLIX = 4
JMP15   BYTE <CRL21, >CRL21, <NOJMP, >NOJMP        ; SCREEN = 1, SCROLLIX = 5
JMP16   BYTE <CLR21, >CLR21, <CBT21, >CBT21        ; SCREEN = 1, SCROLLIX = 6
JMP17   BYTE <CBT21, >CBT21, <NOJMP, >NOJMP        ; SCREEN = 1, SCROLLIX = 7
JMP18   BYTE <CRL21, >CRL21, <CBT21, >CBT21        ; SCREEN = 1, SCROLLIX = 8

JMPTABCOL
JMPC0   BYTE <MCU, >MCU                ; SCROLLIX = 0    MCLU
JMPC1   BYTE <MCU, >MCU                ; SCROLLIX = 1
JMPC2   BYTE <MCR, >MCR                ; SCROLLIX = 2    MCRU
JMPC3   BYTE <MCL, >MCL                ; SCROLLIX = 3
JMPC4   BYTE <MCN, >MCN                ; SCROLLIX = 4
JMPC5   BYTE <MCR, >MCR                ; SCROLLIX = 5
JMPC6   BYTE <MCL, >MCL                ; SCROLLIX = 6    MCLD
JMPC7   BYTE <MCD, >MCD                ; SCROLLIX = 7
JMPC8   BYTE <MCD, >MCD                ; SCROLLIX = 8    MCRD

MAPTABLO
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
MAPTABHI
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

BLKTABLO
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
BLKTABHI
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
        BYTE 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0

XEXPECT
        BYTE 1, 0, 255, 1, 0, 255, 1, 0, 255
YEXPECT
        BYTE 1, 1, 1, 0, 0, 0, 255, 255, 255

BITTABLE
        BYTE 1, 2, 4, 8, 16, 32, 64, 128


PLAYER_JUMP_POS
        BYTE 0
PLAYER_JUMP_TABLE
        ;BYTE 8,8,7,5,3,2,1,1,1,0,0
        ;BYTE 8,8,8,8,3,3,2,2,1,1,1,1,0,1,0,1,0,0,0
        ;BYTE 0,10,9,8,8,7,7,6,5,5,4,3,3,2,2,1,0
        ;Height = 80, Width = 64:
        ;BYTE 0,5,5,5,4,4,4,4,4,4,3,4,3,3,3,3,2,3,2,2,2,2,1,2,1,1,1,1,1,1,0,0,0
        ;Height = 56, Width = 64:
        ;BYTE 0,3,3,3,3,3,3,3,3,3,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,0,0,0,0,0
        ;Height = 48, Width = 64:
        BYTE 0,3,3,3,3,3,2,2,2,2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1,1,1,1,0,0,0,0,0
          
PLAYER_FALL_POS
        BYTE 0
FALL_SPEED_TABLE
        ;BYTE 1,1,2,2,3,3,3,3,3,3
        ;BYTE 1,0,1,0,1,1,1,1,1,2,1,2,1,2,1,2,1,2,1,2
        ;Height = 80, Width = 64:
        ;BYTE 0,0,0,1,1,1,1,1,1,2,2,2,2,3,2,3,3,3,3,4,3,4,4,4,4,4,4,5,5,5,5,5,5,5
        ;Height = 56, Width = 64:
        ;BYTE 0,0,0,0,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,3,3,3,3
        ;Height = 48, Width = 64:
        BYTE 0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,1,1,1,1,3,3,3,3,3,3,3,3


HEX2DEC
        LDY #48
        LDX #48
H2DL1   CMP #100
        BCC H2DL2
        INY
        SBC #100
        JMP H2DL1
H2DL2   CMP #10
        BCC H2DL3
        INX
        SBC #10
        JMP H2DL2
H2DL3   ADC #48
        RTS


#region "ROLLCHARS"
ROLLCHARS
        LDX #7
CPYROLL LDA ROLLADDR11,X             ; 51880
        STA ROLLCOPY11,X
        LDA ROLLADDR12,X             ; 51784
        STA ROLLCOPY12,X
        LDA ROLLADDR21,X             ; 51792
        STA ROLLCOPY21,X
        LDA ROLLADDR22,X             ; 51800
        STA ROLLCOPY22,X
        DEX
        BPL CPYROLL

        LDA SCROLLIX
        CMP #5
        BNE SKIP1
        JSR RLEFTR
        JMP SKIPX
SKIP1   CMP #3
        BNE SKIP2
        JSR RRIGHTL
        JMP SKIPX
SKIP2   CMP #1
        BNE SKIP3
        JSR RDOWNU
        JMP SKIPX
SKIP3   CMP #7
        BNE SKIP4
        JSR RUPD
        JMP SKIPX
SKIP4   CMP #8
        BNE SKIP5
        JSR RLEFTR
        JSR RUPD
        JMP SKIPX
SKIP5   CMP #6
        BNE SKIP6
        JSR RRIGHTL
        JSR RUPD
        JMP SKIPX
SKIP6   CMP #2
        BNE SKIP7
        JSR RLEFTR
        JSR RDOWNU
        JMP SKIPX
SKIP7   CMP #0
        BNE SKIPX
        JSR RRIGHTL
        JSR RDOWNU
SKIPX   RTS


RLEFTR  LDX #7
RLOOPR  LDA ROLLCOPY11,X             ; 51880
        ASL
        ROL ROLLCOPY12,X             ; 51784
        ROL ROLLCOPY11,X             ; 51880
        LDA ROLLCOPY21,X             ; 51792
        ASL
        ROL ROLLCOPY22,X             ; 51800
        ROL ROLLCOPY21,X             ; 51792
        DEX
        BPL RLOOPR
        RTS


RRIGHTL LDX #7  
RLOOPL  LDA ROLLCOPY12,X             ; 51784
        LSR     
        ROR ROLLCOPY11,X             ; 51880
        ROR ROLLCOPY12,X             ; 51784
        LDA ROLLCOPY22,X             ; 51800
        LSR     
        ROR ROLLCOPY21,X             ; 51792
        ROR ROLLCOPY22,X             ; 51800
        DEX     
        BPL RLOOPL
        RTS


RUPD    LDA ROLLCOPY11               ; 51880
        STA SAVEAD+1
        LDA ROLLCOPY21               ; 51792
        STA SAVECD+1
        LDA ROLLCOPY12               ; 51784
        STA SAVEBD+1
        LDA ROLLCOPY22               ; 51800
        STA SAVEDD+1
        LDX #0
RLOOPD  LDA ROLLCOPY11+1,X           ; 51880
        STA ROLLCOPY11,X             ; 51880
        LDA ROLLCOPY21+1,X           ; 51792
        STA ROLLCOPY21,X             ; 51792
        LDA ROLLCOPY12+1,X           ; 51784
        STA ROLLCOPY12,X             ; 51784
        LDA ROLLCOPY22+1,X           ; 51800
        STA ROLLCOPY22,X             ; 51800
        INX
        CPX #7
        BNE RLOOPD
SAVEAD  LDA #0
        STA ROLLCOPY21+7             ; 51792
SAVECD  LDA #0
        STA ROLLCOPY11+7             ; 51880
SAVEBD  LDA #0
        STA ROLLCOPY22+7             ; 51800
SAVEDD  LDA #0
        STA ROLLCOPY12+7             ; 51784
        RTS


RDOWNU  LDA ROLLCOPY11+7             ; 51880
        STA SAVEAU+1
        LDA ROLLCOPY21+7             ; 51792
        STA SAVECU+1
        LDA ROLLCOPY12+7             ; 51784
        STA SAVEBU+1
        LDA ROLLCOPY22+7             ; 51800
        STA SAVEDU+1
        LDX #6
RLOOPU  LDA ROLLCOPY11,X             ; 51880
        STA ROLLCOPY11+1,X           ; 51880
        LDA ROLLCOPY21,X             ; 51792
        STA ROLLCOPY21+1,X           ; 51792
        LDA ROLLCOPY12,X             ; 51784
        STA ROLLCOPY12+1,X           ; 51784
        LDA ROLLCOPY22,X             ; 51800
        STA ROLLCOPY22+1,X           ; 51800
        DEX
        BPL RLOOPU
SAVEAU  LDA #0
        STA ROLLCOPY21               ; 51792
SAVECU  LDA #0
        STA ROLLCOPY11               ; 51880
SAVEBU  LDA #0
        STA ROLLCOPY22               ; 51800
SAVEDU  LDA #0
        STA ROLLCOPY12               ; 51784
        RTS




ROLLCHARS4
        LDX #7
CPYROL4 LDA ROLLADDR11,X             ; 51880
        STA ROLLCOPY11,X
        LDA ROLLADDR12,X             ; 51784
        STA ROLLCOPY12,X
        LDA ROLLADDR21,X             ; 51792
        STA ROLLCOPY21,X
        LDA ROLLADDR22,X             ; 51800
        STA ROLLCOPY22,X
        DEX
        BPL CPYROL4

        LDA SCROLLIX
        CMP #2
        BNE SKIP1S4
        JSR RLEFTR4
        JSR RDOWNU4
        JMP SKIPXS4
SKIP1S4 CMP #0
        BNE SKIP2S4
        JSR RRIGHTL4
        JSR RDOWNU4
        JMP SKIPXS4
SKIP2S4 CMP #5
        BNE SKIP3S4
        JSR RLEFTR4
        JMP SKIPXS4
SKIP3S4 CMP #3
        BNE SKIP4S4
        JSR RRIGHTL4
        JMP SKIPXS4
SKIP4S4 CMP #1
        BNE SKIP5S4
        JSR RDOWNU4
        JMP SKIPXS4
SKIP5S4 CMP #7
        BNE SKIP6S4
        JSR RUPD4
        JMP SKIPXS4
SKIP6S4 CMP #8
        BNE SKIP7S4
        JSR RLEFTR4
        JSR RUPD4
        JMP SKIPXS4
SKIP7S4 CMP #6
        BNE SKIPXS4
        JSR RRIGHTL4
        JSR RUPD4
        JMP SKIPXS4
SKIPXS4 RTS


RLEFTR4
        LDA ROLLCOPY11+7             ; 51880
        ASL
        ROL ROLLCOPY12+7             ; 51784
        ROL ROLLCOPY11+7             ; 51880
        LDA ROLLCOPY11+7             ; 51880
        ASL
        ROL ROLLCOPY12+7             ; 51784
        ROL ROLLCOPY11+7             ; 51880
        LDA ROLLCOPY21+7             ; 51792
        ASL
        ROL ROLLCOPY22+7             ; 51800
        ROL ROLLCOPY21+7             ; 51792
        LDA ROLLCOPY21+7             ; 51792
        ASL
        ROL ROLLCOPY22+7             ; 51800
        ROL ROLLCOPY21+7             ; 51792

        LDA ROLLCOPY11+6             ; 51880
        ASL
        ROL ROLLCOPY12+6             ; 51784
        ROL ROLLCOPY11+6             ; 51880
        LDA ROLLCOPY11+6             ; 51880
        ASL
        ROL ROLLCOPY12+6             ; 51784
        ROL ROLLCOPY11+6             ; 51880
        LDA ROLLCOPY21+6             ; 51792
        ASL
        ROL ROLLCOPY22+6             ; 51800
        ROL ROLLCOPY21+6             ; 51792
        LDA ROLLCOPY21+6             ; 51792
        ASL
        ROL ROLLCOPY22+6             ; 51800
        ROL ROLLCOPY21+6             ; 51792

        LDA ROLLCOPY11+5             ; 51880
        ASL
        ROL ROLLCOPY12+5             ; 51784
        ROL ROLLCOPY11+5             ; 51880
        LDA ROLLCOPY11+5             ; 51880
        ASL
        ROL ROLLCOPY12+5             ; 51784
        ROL ROLLCOPY11+5             ; 51880
        LDA ROLLCOPY21+5             ; 51792
        ASL
        ROL ROLLCOPY22+5             ; 51800
        ROL ROLLCOPY21+5             ; 51792
        LDA ROLLCOPY21+5             ; 51792
        ASL
        ROL ROLLCOPY22+5             ; 51800
        ROL ROLLCOPY21+5             ; 51792

        LDA ROLLCOPY11+4             ; 51880
        ASL
        ROL ROLLCOPY12+4             ; 51784
        ROL ROLLCOPY11+4             ; 51880
        LDA ROLLCOPY11+4             ; 51880
        ASL
        ROL ROLLCOPY12+4             ; 51784
        ROL ROLLCOPY11+4             ; 51880
        LDA ROLLCOPY21+4             ; 51792
        ASL
        ROL ROLLCOPY22+4             ; 51800
        ROL ROLLCOPY21+4             ; 51792
        LDA ROLLCOPY21+4             ; 51792
        ASL
        ROL ROLLCOPY22+4             ; 51800
        ROL ROLLCOPY21+4             ; 51792

        LDA ROLLCOPY11+3             ; 51880
        ASL
        ROL ROLLCOPY12+3             ; 51784
        ROL ROLLCOPY11+3             ; 51880
        LDA ROLLCOPY11+3             ; 51880
        ASL
        ROL ROLLCOPY12+3             ; 51784
        ROL ROLLCOPY11+3             ; 51880
        LDA ROLLCOPY21+3             ; 51792
        ASL
        ROL ROLLCOPY22+3             ; 51800
        ROL ROLLCOPY21+3             ; 51792
        LDA ROLLCOPY21+3             ; 51792
        ASL
        ROL ROLLCOPY22+3             ; 51800
        ROL ROLLCOPY21+3             ; 51792

        LDA ROLLCOPY11+2             ; 51880
        ASL
        ROL ROLLCOPY12+2             ; 51784
        ROL ROLLCOPY11+2             ; 51880
        LDA ROLLCOPY11+2             ; 51880
        ASL
        ROL ROLLCOPY12+2             ; 51784
        ROL ROLLCOPY11+2             ; 51880
        LDA ROLLCOPY21+2             ; 51792
        ASL
        ROL ROLLCOPY22+2             ; 51800
        ROL ROLLCOPY21+2             ; 51792
        LDA ROLLCOPY21+2             ; 51792
        ASL
        ROL ROLLCOPY22+2             ; 51800
        ROL ROLLCOPY21+2             ; 51792

        LDA ROLLCOPY11+1             ; 51880
        ASL
        ROL ROLLCOPY12+1             ; 51784
        ROL ROLLCOPY11+1             ; 51880
        LDA ROLLCOPY11+1             ; 51880
        ASL
        ROL ROLLCOPY12+1             ; 51784
        ROL ROLLCOPY11+1             ; 51880
        LDA ROLLCOPY21+1             ; 51792
        ASL
        ROL ROLLCOPY22+1             ; 51800
        ROL ROLLCOPY21+1             ; 51792
        LDA ROLLCOPY21+1             ; 51792
        ASL
        ROL ROLLCOPY22+1             ; 51800
        ROL ROLLCOPY21+1             ; 51792

        LDA ROLLCOPY11+0             ; 51880
        ASL
        ROL ROLLCOPY12+0             ; 51784
        ROL ROLLCOPY11+0             ; 51880
        LDA ROLLCOPY11+0             ; 51880
        ASL
        ROL ROLLCOPY12+0             ; 51784
        ROL ROLLCOPY11+0             ; 51880
        LDA ROLLCOPY21+0             ; 51792
        ASL
        ROL ROLLCOPY22+0             ; 51800
        ROL ROLLCOPY21+0             ; 51792
        LDA ROLLCOPY21+0             ; 51792
        ASL
        ROL ROLLCOPY22+0             ; 51800
        ROL ROLLCOPY21+0             ; 51792
        RTS


RRIGHTL4
        LDA ROLLCOPY12+7             ; 51784
        LSR     
        ROR ROLLCOPY11+7             ; 51880
        ROR ROLLCOPY12+7             ; 51784
        LDA ROLLCOPY12+7             ; 51784
        LSR     
        ROR ROLLCOPY11+7             ; 51880
        ROR ROLLCOPY12+7             ; 51784
        LDA ROLLCOPY22+7             ; 51800
        LSR     
        ROR ROLLCOPY21+7             ; 51792
        ROR ROLLCOPY22+7             ; 51800
        LDA ROLLCOPY22+7             ; 51800
        LSR     
        ROR ROLLCOPY21+7             ; 51792
        ROR ROLLCOPY22+7             ; 51800

        LDA ROLLCOPY12+6             ; 51784
        LSR     
        ROR ROLLCOPY11+6             ; 51880
        ROR ROLLCOPY12+6             ; 51784
        LDA ROLLCOPY12+6             ; 51784
        LSR     
        ROR ROLLCOPY11+6             ; 51880
        ROR ROLLCOPY12+6             ; 51784
        LDA ROLLCOPY22+6             ; 51800
        LSR     
        ROR ROLLCOPY21+6             ; 51792
        ROR ROLLCOPY22+6             ; 51800
        LDA ROLLCOPY22+6             ; 51800
        LSR     
        ROR ROLLCOPY21+6             ; 51792
        ROR ROLLCOPY22+6             ; 51800

        LDA ROLLCOPY12+5             ; 51784
        LSR     
        ROR ROLLCOPY11+5             ; 51880
        ROR ROLLCOPY12+5             ; 51784
        LDA ROLLCOPY12+5             ; 51784
        LSR     
        ROR ROLLCOPY11+5             ; 51880
        ROR ROLLCOPY12+5             ; 51784
        LDA ROLLCOPY22+5             ; 51800
        LSR     
        ROR ROLLCOPY21+5             ; 51792
        ROR ROLLCOPY22+5             ; 51800
        LDA ROLLCOPY22+5             ; 51800
        LSR     
        ROR ROLLCOPY21+5             ; 51792
        ROR ROLLCOPY22+5             ; 51800

        LDA ROLLCOPY12+4             ; 51784
        LSR     
        ROR ROLLCOPY11+4             ; 51880
        ROR ROLLCOPY12+4             ; 51784
        LDA ROLLCOPY12+4             ; 51784
        LSR     
        ROR ROLLCOPY11+4             ; 51880
        ROR ROLLCOPY12+4             ; 51784
        LDA ROLLCOPY22+4             ; 51800
        LSR     
        ROR ROLLCOPY21+4             ; 51792
        ROR ROLLCOPY22+4             ; 51800
        LDA ROLLCOPY22+4             ; 51800
        LSR     
        ROR ROLLCOPY21+4             ; 51792
        ROR ROLLCOPY22+4             ; 51800

        LDA ROLLCOPY12+3             ; 51784
        LSR     
        ROR ROLLCOPY11+3             ; 51880
        ROR ROLLCOPY12+3             ; 51784
        LDA ROLLCOPY12+3             ; 51784
        LSR     
        ROR ROLLCOPY11+3             ; 51880
        ROR ROLLCOPY12+3             ; 51784
        LDA ROLLCOPY22+3             ; 51800
        LSR     
        ROR ROLLCOPY21+3             ; 51792
        ROR ROLLCOPY22+3             ; 51800
        LDA ROLLCOPY22+3             ; 51800
        LSR     
        ROR ROLLCOPY21+3             ; 51792
        ROR ROLLCOPY22+3             ; 51800

        LDA ROLLCOPY12+2             ; 51784
        LSR     
        ROR ROLLCOPY11+2             ; 51880
        ROR ROLLCOPY12+2             ; 51784
        LDA ROLLCOPY12+2             ; 51784
        LSR     
        ROR ROLLCOPY11+2             ; 51880
        ROR ROLLCOPY12+2             ; 51784
        LDA ROLLCOPY22+2             ; 51800
        LSR     
        ROR ROLLCOPY21+2             ; 51792
        ROR ROLLCOPY22+2             ; 51800
        LDA ROLLCOPY22+2             ; 51800
        LSR     
        ROR ROLLCOPY21+2             ; 51792
        ROR ROLLCOPY22+2             ; 51800

        LDA ROLLCOPY12+1             ; 51784
        LSR     
        ROR ROLLCOPY11+1             ; 51880
        ROR ROLLCOPY12+1             ; 51784
        LDA ROLLCOPY12+1             ; 51784
        LSR     
        ROR ROLLCOPY11+1             ; 51880
        ROR ROLLCOPY12+1             ; 51784
        LDA ROLLCOPY22+1             ; 51800
        LSR     
        ROR ROLLCOPY21+1             ; 51792
        ROR ROLLCOPY22+1             ; 51800
        LDA ROLLCOPY22+1             ; 51800
        LSR     
        ROR ROLLCOPY21+1             ; 51792
        ROR ROLLCOPY22+1             ; 51800

        LDA ROLLCOPY12+0             ; 51784
        LSR     
        ROR ROLLCOPY11+0             ; 51880
        ROR ROLLCOPY12+0             ; 51784
        LDA ROLLCOPY12+0             ; 51784
        LSR     
        ROR ROLLCOPY11+0             ; 51880
        ROR ROLLCOPY12+0             ; 51784
        LDA ROLLCOPY22+0             ; 51800
        LSR     
        ROR ROLLCOPY21+0             ; 51792
        ROR ROLLCOPY22+0             ; 51800
        LDA ROLLCOPY22+0             ; 51800
        LSR     
        ROR ROLLCOPY21+0             ; 51792
        ROR ROLLCOPY22+0             ; 51800
        RTS


RUPD4
        LDA ROLLCOPY11
        STA A0+1
        LDA ROLLCOPY11+1
        STA A1+1

        LDA ROLLCOPY11+2
        STA ROLLCOPY11
        LDA ROLLCOPY11+3
        STA ROLLCOPY11+1
        LDA ROLLCOPY11+4
        STA ROLLCOPY11+2
        LDA ROLLCOPY11+5
        STA ROLLCOPY11+3
        LDA ROLLCOPY11+6
        STA ROLLCOPY11+4
        LDA ROLLCOPY11+7
        STA ROLLCOPY11+5

        LDA ROLLCOPY21
        STA ROLLCOPY11+6
        LDA ROLLCOPY21+1
        STA ROLLCOPY11+7

        LDA ROLLCOPY21+2
        STA ROLLCOPY21
        LDA ROLLCOPY21+3
        STA ROLLCOPY21+1
        LDA ROLLCOPY21+4
        STA ROLLCOPY21+2
        LDA ROLLCOPY21+5
        STA ROLLCOPY21+3
        LDA ROLLCOPY21+6
        STA ROLLCOPY21+4
        LDA ROLLCOPY21+7
        STA ROLLCOPY21+5

A0      LDA #0
        STA ROLLCOPY21+6
A1      LDA #0
        STA ROLLCOPY21+7

        LDA ROLLCOPY12
        STA B0+1
        LDA ROLLCOPY12+1
        STA B1+1

        LDA ROLLCOPY12+2
        STA ROLLCOPY12
        LDA ROLLCOPY12+3
        STA ROLLCOPY12+1
        LDA ROLLCOPY12+4
        STA ROLLCOPY12+2
        LDA ROLLCOPY12+5
        STA ROLLCOPY12+3
        LDA ROLLCOPY12+6
        STA ROLLCOPY12+4
        LDA ROLLCOPY12+7
        STA ROLLCOPY12+5

        LDA ROLLCOPY22
        STA ROLLCOPY12+6
        LDA ROLLCOPY22+1
        STA ROLLCOPY12+7

        LDA ROLLCOPY22+2
        STA ROLLCOPY22
        LDA ROLLCOPY22+3
        STA ROLLCOPY22+1
        LDA ROLLCOPY22+4
        STA ROLLCOPY22+2
        LDA ROLLCOPY22+5
        STA ROLLCOPY22+3
        LDA ROLLCOPY22+6
        STA ROLLCOPY22+4
        LDA ROLLCOPY22+7
        STA ROLLCOPY22+5

B0      LDA #0
        STA ROLLCOPY22+6
B1      LDA #0
        STA ROLLCOPY22+7

        RTS


RDOWNU4
        LDA ROLLCOPY21+7
        STA C7+1
        LDA ROLLCOPY21+6
        STA C6+1

        LDA ROLLCOPY21+5
        STA ROLLCOPY21+7
        LDA ROLLCOPY21+4
        STA ROLLCOPY21+6
        LDA ROLLCOPY21+3
        STA ROLLCOPY21+5
        LDA ROLLCOPY21+2
        STA ROLLCOPY21+4
        LDA ROLLCOPY21+1
        STA ROLLCOPY21+3
        LDA ROLLCOPY21
        STA ROLLCOPY21+2

        LDA ROLLCOPY11+7
        STA ROLLCOPY21+1
        LDA ROLLCOPY11+6
        STA ROLLCOPY21

        LDA ROLLCOPY11+5
        STA ROLLCOPY11+7
        LDA ROLLCOPY11+4
        STA ROLLCOPY11+6
        LDA ROLLCOPY11+3
        STA ROLLCOPY11+5
        LDA ROLLCOPY11+2
        STA ROLLCOPY11+4
        LDA ROLLCOPY11+1
        STA ROLLCOPY11+3
        LDA ROLLCOPY11
        STA ROLLCOPY11+2

C7      LDA #0
        STA ROLLCOPY11+1
C6      LDA #0
        STA ROLLCOPY11

        LDA ROLLCOPY22+7
        STA D7+1
        LDA ROLLCOPY22+6
        STA D6+1

        LDA ROLLCOPY22+5
        STA ROLLCOPY22+7
        LDA ROLLCOPY22+4
        STA ROLLCOPY22+6
        LDA ROLLCOPY22+3
        STA ROLLCOPY22+5
        LDA ROLLCOPY22+2
        STA ROLLCOPY22+4
        LDA ROLLCOPY22+1
        STA ROLLCOPY22+3
        LDA ROLLCOPY22
        STA ROLLCOPY22+2

        LDA ROLLCOPY12+7
        STA ROLLCOPY22+1
        LDA ROLLCOPY12+6
        STA ROLLCOPY22

        LDA ROLLCOPY12+5
        STA ROLLCOPY12+7
        LDA ROLLCOPY12+4
        STA ROLLCOPY12+6
        LDA ROLLCOPY12+3
        STA ROLLCOPY12+5
        LDA ROLLCOPY12+2
        STA ROLLCOPY12+4
        LDA ROLLCOPY12+1
        STA ROLLCOPY12+3
        LDA ROLLCOPY12
        STA ROLLCOPY12+2

D7      LDA #0
        STA ROLLCOPY12+1
D6      LDA #0
        STA ROLLCOPY12

        RTS


ROLLCOPY11
        BYTE 0, 0, 0, 0, 0, 0, 0, 0

ROLLCOPY12
        BYTE 0, 0, 0, 0, 0, 0, 0, 0

ROLLCOPY21
        BYTE 0, 0, 0, 0, 0, 0, 0, 0

ROLLCOPY22
        BYTE 0, 0, 0, 0, 0, 0, 0, 0


COPY_ROLLED_CHARS
        LDX #7
CPYROLC LDA ROLLCOPY11,X
        STA ROLLADDR11,X             ; 51880
        LDA ROLLCOPY12,X
        STA ROLLADDR12,X             ; 51784
        LDA ROLLCOPY21,X
        STA ROLLADDR21,X             ; 51792
        LDA ROLLCOPY22,X
        STA ROLLADDR22,X             ; 51800
        DEX
        BPL CPYROLC
        RTS

#endregion "ROLLCHARS"


SIDINIT
        LDX #$18                                              
        LDA #$00                                              
L00491  STA SID_BASE_ADDRESS,X  ; RESET SID REGISTERS             
        DEX                                                   
        BPL L00491                                            
        STA TICKLO
        STA TICKHI
        LDA #<SONG00
        STA $32
        LDA #>SONG00
        STA $33
        RTS                                                   

SIDPLAY
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
        STA SID_VOICE_FREQ_LO,X
        LDY #4
        LDA ($32),Y
        STA SID_VOICE_FREQ_HI,X
        LDA CURVOICE,X
        ORA #$01        ; GATE ON
        STA SID_VOICE_WAVEFORM_CONTROL,X
        JMP L0005

L0008   CMP #$80        ; NOTEOFF?
        BNE L0009
        PLA             ; NOTEOFF
        AND #$0F
        TAY
        LDX CHANNEL,Y   ; X = 7 * CHANNEL
        LDA CURVOICE,X
        AND #$FE        ; GATE OFF
        STA SID_VOICE_WAVEFORM_CONTROL,X
        JMP L0005

L0009   CMP #$E0        ; FREQ?
        BNE L0010
        PLA             ; FREQ
        AND #$0F
        TAY
        LDX CHANNEL,Y   ; X = 7 * CHANNEL
        LDY #3
        LDA ($32),Y
        STA SID_VOICE_FREQ_LO,X
        LDY #4
        LDA ($32),Y
        STA SID_VOICE_FREQ_HI,X
        JMP L0005

L0010   CMP #$C0        ; INSTR?
        BNE L0011
        PLA             ; INSTR
        AND #$0F
        TAY
        LDX CHANNEL,Y   ; X = 7 * CHANNEL
        LDA CURVOICE,X
        AND #$FE        ; GATE OFF
        STA SID_VOICE_WAVEFORM_CONTROL,X
        LDY #3
        LDA ($32),Y     ; A = INSTR NO.
        TAY
        LDA WAVEFRM,Y
        STA CURVOICE,X
        STA SID_VOICE_WAVEFORM_CONTROL,X
        LDA ATTDEC,Y
        STA SID_VOICE_ATTACK_DECAY,X
        LDA SUSREL,Y
        STA SID_VOICE_SUSTAIN_RELEASE,X
        LDA PULSELO,Y
        STA SID_VOICE_PULSE_WIDTH_LO,X
        LDA PULSEHI,Y
        STA SID_VOICE_PULSE_WIDTH_HI,X
        JMP L0005

L0011   CMP #$B0        ; VOLUME?
        BNE L0012
        PLA             ; VOLUME
        LDY #3
        LDA ($32),Y
        STA SID_VOLUME_AND_FILTER_SELECT
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

TICKLO  BYTE $00
TICKHI  BYTE $00

CHANNEL BYTE $00, $07, $0E

CURVOICE
        BYTE $00, $00, $00, $00, $00, $00, $00
        BYTE $00, $00, $00, $00, $00, $00, $00
        BYTE $00

;       6 INSTRUMENTS
WAVEFRM BYTE $10, $20, $40, $10, $20, $40
ATTDEC  BYTE $40, $40, $22, $00, $00, $00
SUSREL  BYTE $F0, $7C, $30, $00, $00, $00
PULSELO BYTE $00, $00, $00, $00, $00, $00
PULSEHI BYTE $08, $08, $08, $00, $00, $00

#region "SONG00"

SONG00
        BYTE $00, $00, $C0, $01, $00
        BYTE $00, $00, $B0, $0F, $00
        BYTE $00, $00, $B0, $0F, $00
        BYTE $00, $00, $90, $E2, $04
        BYTE $00, $00, $C1, $00, $00
        BYTE $00, $00, $B0, $0F, $00
        BYTE $00, $00, $91, $9C, $45
        BYTE $00, $00, $B0, $0F, $00
        BYTE $00, $00, $C2, $02, $00
        BYTE $00, $00, $B0, $0F, $00
        BYTE $00, $00, $92, $89, $13
        BYTE $00, $06, $82, $00, $00
        BYTE $00, $06, $81, $00, $00
        BYTE $00, $06, $91, $23, $4E
        BYTE $00, $0C, $92, $89, $13
        BYTE $00, $12, $82, $00, $00
        BYTE $00, $18, $92, $89, $13
        BYTE $00, $1E, $82, $00, $00
        BYTE $00, $1E, $92, $89, $13
        BYTE $00, $23, $82, $00, $00
        BYTE $00, $2A, $92, $89, $13
        BYTE $00, $2F, $82, $00, $00
        BYTE $00, $30, $92, $89, $13
        BYTE $00, $35, $82, $00, $00
        BYTE $00, $3C, $92, $89, $13
        BYTE $00, $41, $82, $00, $00
        BYTE $00, $41, $92, $89, $13
        BYTE $00, $47, $82, $00, $00
        BYTE $00, $47, $81, $00, $00
        BYTE $00, $47, $91, $9C, $45
        BYTE $00, $47, $92, $89, $13
        BYTE $00, $4D, $82, $00, $00
        BYTE $00, $4D, $92, $89, $13
        BYTE $00, $50, $80, $00, $00
        BYTE $00, $53, $82, $00, $00
        BYTE $00, $53, $90, $E2, $04
        BYTE $00, $53, $81, $00, $00
        BYTE $00, $53, $91, $23, $4E
        BYTE $00, $53, $92, $89, $13
        BYTE $00, $59, $82, $00, $00
        BYTE $00, $5C, $80, $00, $00
        BYTE $00, $5F, $90, $E2, $04
        BYTE $00, $5F, $81, $00, $00
        BYTE $00, $5F, $91, $B4, $57
        BYTE $00, $5F, $92, $89, $13
        BYTE $00, $65, $82, $00, $00
        BYTE $00, $6B, $92, $89, $13
        BYTE $00, $71, $82, $00, $00
        BYTE $00, $71, $92, $89, $13
        BYTE $00, $77, $82, $00, $00
        BYTE $00, $77, $92, $89, $13
        BYTE $00, $7D, $82, $00, $00
        BYTE $00, $83, $81, $00, $00
        BYTE $00, $83, $91, $9C, $45
        BYTE $00, $83, $92, $89, $13
        BYTE $00, $89, $82, $00, $00
        BYTE $00, $89, $92, $89, $13
        BYTE $00, $8F, $82, $00, $00
        BYTE $00, $95, $92, $89, $13
        BYTE $00, $9B, $82, $00, $00
        BYTE $00, $A1, $92, $89, $13
        BYTE $00, $A6, $82, $00, $00
        BYTE $00, $A7, $81, $00, $00
        BYTE $00, $A7, $91, $89, $3A
        BYTE $00, $A7, $92, $89, $13
        BYTE $00, $AC, $82, $00, $00
        BYTE $00, $AD, $92, $89, $13
        BYTE $00, $B2, $82, $00, $00
        BYTE $00, $B3, $80, $00, $00
        BYTE $00, $B3, $92, $89, $13
        BYTE $00, $B8, $82, $00, $00
        BYTE $00, $BE, $90, $E2, $04
        BYTE $00, $BE, $81, $00, $00
        BYTE $00, $BE, $91, $23, $4E
        BYTE $00, $BE, $92, $89, $13
        BYTE $00, $C4, $82, $00, $00
        BYTE $00, $CA, $92, $89, $13
        BYTE $00, $D0, $82, $00, $00
        BYTE $00, $D6, $92, $89, $13
        BYTE $00, $DC, $82, $00, $00
        BYTE $00, $DC, $92, $89, $13
        BYTE $00, $E2, $82, $00, $00
        BYTE $00, $E8, $92, $89, $13
        BYTE $00, $EE, $82, $00, $00
        BYTE $00, $EE, $92, $89, $13
        BYTE $00, $F4, $82, $00, $00
        BYTE $00, $FA, $92, $89, $13
        BYTE $01, $00, $82, $00, $00
        BYTE $01, $00, $92, $89, $13
        BYTE $01, $06, $82, $00, $00
        BYTE $01, $06, $81, $00, $00
        BYTE $01, $06, $91, $9C, $45
        BYTE $01, $06, $92, $89, $13
        BYTE $01, $0C, $82, $00, $00
        BYTE $01, $0C, $92, $89, $13
        BYTE $01, $0F, $80, $00, $00
        BYTE $01, $12, $82, $00, $00
        BYTE $01, $12, $90, $E2, $04
        BYTE $01, $12, $81, $00, $00
        BYTE $01, $12, $91, $23, $4E
        BYTE $01, $12, $92, $89, $13
        BYTE $01, $18, $82, $00, $00
        BYTE $01, $1B, $80, $00, $00
        BYTE $01, $1E, $90, $E2, $04
        BYTE $01, $1E, $81, $00, $00
        BYTE $01, $1E, $91, $4C, $68
        BYTE $01, $1E, $92, $89, $13
        BYTE $01, $23, $82, $00, $00
        BYTE $01, $2A, $92, $89, $13
        BYTE $01, $2F, $82, $00, $00
        BYTE $01, $30, $92, $89, $13
        BYTE $01, $35, $82, $00, $00
        BYTE $01, $36, $92, $89, $13
        BYTE $01, $3B, $82, $00, $00
        BYTE $01, $41, $81, $00, $00
        BYTE $01, $41, $91, $B4, $57
        BYTE $01, $41, $92, $89, $13
        BYTE $01, $47, $82, $00, $00
        BYTE $01, $47, $92, $89, $13
        BYTE $01, $4D, $82, $00, $00
        BYTE $01, $53, $92, $89, $13
        BYTE $01, $59, $82, $00, $00
        BYTE $01, $5F, $92, $89, $13
        BYTE $01, $65, $82, $00, $00
        BYTE $01, $65, $81, $00, $00
        BYTE $01, $65, $91, $9C, $45
        BYTE $01, $65, $92, $89, $13
        BYTE $01, $6B, $82, $00, $00
        BYTE $01, $6B, $92, $89, $13
        BYTE $01, $71, $82, $00, $00
        BYTE $01, $71, $80, $00, $00
        BYTE $01, $71, $92, $89, $13
        BYTE $01, $77, $82, $00, $00
        BYTE $01, $7A, $81, $00, $00
        BYTE $01, $7D, $90, $E2, $04
        BYTE $01, $7D, $91, $9C, $45
        BYTE $01, $7D, $92, $89, $13
        BYTE $01, $83, $82, $00, $00
        BYTE $01, $89, $92, $89, $13
        BYTE $01, $8F, $82, $00, $00
        BYTE $01, $95, $92, $89, $13
        BYTE $01, $9A, $82, $00, $00
        BYTE $01, $9B, $92, $89, $13
        BYTE $01, $A0, $82, $00, $00
        BYTE $01, $A7, $92, $89, $13
        BYTE $01, $AC, $82, $00, $00
        BYTE $01, $AD, $92, $89, $13
        BYTE $01, $B2, $82, $00, $00
        BYTE $01, $B8, $81, $00, $00
        BYTE $01, $B8, $91, $89, $3A
        BYTE $01, $B8, $92, $89, $13
        BYTE $01, $BE, $82, $00, $00
        BYTE $01, $BE, $92, $89, $13
        BYTE $01, $C4, $82, $00, $00
        BYTE $01, $C4, $81, $00, $00
        BYTE $01, $C4, $91, $9C, $45
        BYTE $01, $C4, $92, $89, $13
        BYTE $01, $CA, $82, $00, $00
        BYTE $01, $CA, $92, $89, $13
        BYTE $01, $CD, $80, $00, $00
        BYTE $01, $D0, $82, $00, $00
        BYTE $01, $D0, $90, $E2, $04
        BYTE $01, $D0, $81, $00, $00
        BYTE $01, $D0, $91, $23, $4E
        BYTE $01, $D0, $92, $89, $13
        BYTE $01, $D6, $82, $00, $00
        BYTE $01, $D9, $80, $00, $00
        BYTE $01, $DC, $90, $E2, $04
        BYTE $01, $DC, $81, $00, $00
        BYTE $01, $DC, $91, $26, $34
        BYTE $01, $DC, $92, $89, $13
        BYTE $01, $E2, $82, $00, $00
        BYTE $01, $E8, $92, $89, $13
        BYTE $01, $EE, $82, $00, $00
        BYTE $01, $EE, $92, $89, $13
        BYTE $01, $F4, $82, $00, $00
        BYTE $01, $F4, $92, $89, $13
        BYTE $01, $FA, $82, $00, $00
        BYTE $02, $00, $81, $00, $00
        BYTE $02, $00, $91, $89, $3A
        BYTE $02, $00, $92, $89, $13
        BYTE $02, $06, $82, $00, $00
        BYTE $02, $06, $92, $89, $13
        BYTE $02, $0C, $82, $00, $00
        BYTE $02, $12, $92, $89, $13
        BYTE $02, $17, $82, $00, $00
        BYTE $02, $1E, $92, $89, $13
        BYTE $02, $23, $82, $00, $00
        BYTE $02, $24, $81, $00, $00
        BYTE $02, $24, $91, $23, $4E
        BYTE $02, $24, $92, $89, $13
        BYTE $02, $29, $82, $00, $00
        BYTE $02, $2A, $92, $89, $13
        BYTE $02, $2F, $82, $00, $00
        BYTE $02, $30, $80, $00, $00
        BYTE $02, $30, $92, $89, $13
        BYTE $02, $35, $82, $00, $00
        BYTE $02, $3B, $90, $E2, $04
        BYTE $02, $3B, $81, $00, $00
        BYTE $02, $3B, $91, $9C, $45
        BYTE $02, $3B, $92, $89, $13
        BYTE $02, $41, $82, $00, $00
        BYTE $02, $47, $92, $89, $13
        BYTE $02, $4D, $82, $00, $00
        BYTE $02, $53, $92, $89, $13
        BYTE $02, $59, $82, $00, $00
        BYTE $02, $59, $92, $89, $13
        BYTE $02, $5F, $82, $00, $00
        BYTE $02, $65, $92, $89, $13
        BYTE $02, $6B, $82, $00, $00
        BYTE $02, $6B, $92, $89, $13
        BYTE $02, $71, $82, $00, $00
        BYTE $02, $77, $81, $00, $00
        BYTE $02, $77, $91, $89, $3A
        BYTE $02, $77, $92, $89, $13
        BYTE $02, $7D, $82, $00, $00
        BYTE $02, $7D, $92, $89, $13
        BYTE $02, $83, $82, $00, $00
        BYTE $02, $83, $81, $00, $00
        BYTE $02, $83, $91, $9C, $45
        BYTE $02, $83, $92, $89, $13
        BYTE $02, $89, $82, $00, $00
        BYTE $02, $89, $92, $89, $13
        BYTE $02, $8C, $80, $00, $00
        BYTE $02, $8F, $82, $00, $00
        BYTE $02, $8F, $90, $E2, $04
        BYTE $02, $8F, $81, $00, $00
        BYTE $02, $8F, $91, $23, $4E
        BYTE $02, $8F, $92, $89, $13
        BYTE $02, $94, $82, $00, $00
        BYTE $02, $98, $80, $00, $00
        BYTE $02, $98, $81, $00, $00
        BYTE $02, $9B, $90, $E2, $04
        BYTE $02, $9B, $91, $23, $4E
        BYTE $02, $9B, $92, $89, $13
        BYTE $02, $A0, $82, $00, $00
        BYTE $02, $A7, $92, $89, $13
        BYTE $02, $AC, $82, $00, $00
        BYTE $02, $AD, $92, $89, $13
        BYTE $02, $B2, $82, $00, $00
        BYTE $02, $B2, $92, $89, $13
        BYTE $02, $B8, $82, $00, $00
        BYTE $02, $BE, $92, $89, $13
        BYTE $02, $C4, $82, $00, $00
        BYTE $02, $C4, $92, $89, $13
        BYTE $02, $CA, $82, $00, $00
        BYTE $02, $D0, $92, $89, $13
        BYTE $02, $D6, $82, $00, $00
        BYTE $02, $DC, $92, $89, $13
        BYTE $02, $E2, $82, $00, $00
        BYTE $02, $E2, $92, $89, $13
        BYTE $02, $E8, $82, $00, $00
        BYTE $02, $E8, $92, $89, $13
        BYTE $02, $EB, $80, $00, $00
        BYTE $02, $EE, $82, $00, $00
        BYTE $02, $EE, $90, $E2, $04
        BYTE $02, $EE, $92, $89, $13
        BYTE $02, $F4, $82, $00, $00
        BYTE $02, $F7, $80, $00, $00
        BYTE $02, $FA, $90, $E2, $04
        BYTE $02, $FA, $81, $00, $00
        BYTE $02, $FA, $C1, $00, $00
        BYTE $02, $FA, $91, $45, $1D
        BYTE $02, $FA, $C2, $00, $00
        BYTE $02, $FA, $92, $3B, $17
        BYTE $03, $09, $81, $00, $00
        BYTE $03, $09, $82, $00, $00
        BYTE $03, $0C, $91, $45, $1D
        BYTE $03, $0C, $92, $3B, $17
        BYTE $03, $1B, $81, $00, $00
        BYTE $03, $1B, $82, $00, $00
        BYTE $03, $1E, $91, $45, $1D
        BYTE $03, $1E, $92, $3B, $17
        BYTE $03, $27, $81, $00, $00
        BYTE $03, $27, $82, $00, $00
        BYTE $03, $2A, $91, $45, $1D
        BYTE $03, $2A, $92, $3B, $17
        BYTE $03, $35, $81, $00, $00
        BYTE $03, $35, $C1, $01, $00
        BYTE $03, $35, $91, $CE, $22
        BYTE $03, $3B, $81, $00, $00
        BYTE $03, $3B, $91, $DA, $2B
        BYTE $03, $3B, $82, $00, $00
        BYTE $03, $41, $81, $00, $00
        BYTE $03, $47, $91, $CE, $22
        BYTE $03, $4A, $80, $00, $00
        BYTE $03, $4D, $81, $00, $00
        BYTE $03, $4D, $90, $E2, $04
        BYTE $03, $4D, $91, $DA, $2B
        BYTE $03, $53, $81, $00, $00
        BYTE $03, $53, $91, $CE, $22
        BYTE $03, $56, $80, $00, $00
        BYTE $03, $59, $81, $00, $00
        BYTE $03, $59, $90, $E2, $04
        BYTE $03, $65, $91, $DA, $2B
        BYTE $03, $6B, $81, $00, $00
        BYTE $03, $89, $C1, $00, $00
        BYTE $03, $89, $91, $DA, $20
        BYTE $03, $89, $92, $13, $1A
        BYTE $03, $98, $81, $00, $00
        BYTE $03, $98, $82, $00, $00
        BYTE $03, $9B, $91, $DA, $20
        BYTE $03, $9B, $92, $13, $1A
        BYTE $03, $AA, $80, $00, $00
        BYTE $03, $AA, $81, $00, $00
        BYTE $03, $AA, $82, $00, $00
        BYTE $03, $AC, $90, $E2, $04
        BYTE $03, $AC, $91, $DA, $20
        BYTE $03, $AC, $92, $13, $1A
        BYTE $03, $B5, $80, $00, $00
        BYTE $03, $B8, $81, $00, $00
        BYTE $03, $B8, $82, $00, $00
        BYTE $03, $B8, $90, $E2, $04
        BYTE $03, $B8, $91, $45, $1D
        BYTE $03, $B8, $92, $3B, $17
        BYTE $03, $C7, $81, $00, $00
        BYTE $03, $C7, $82, $00, $00
        BYTE $03, $CA, $91, $45, $1D
        BYTE $03, $CA, $92, $3B, $17
        BYTE $03, $D9, $81, $00, $00
        BYTE $03, $D9, $82, $00, $00
        BYTE $03, $DC, $91, $45, $1D
        BYTE $03, $DC, $92, $3B, $17
        BYTE $03, $E5, $81, $00, $00
        BYTE $03, $E5, $82, $00, $00
        BYTE $03, $E8, $91, $45, $1D
        BYTE $03, $E8, $92, $3B, $17
        BYTE $03, $F4, $81, $00, $00
        BYTE $03, $F4, $C1, $01, $00
        BYTE $03, $F4, $91, $CE, $22
        BYTE $03, $FA, $81, $00, $00
        BYTE $03, $FA, $91, $DA, $2B
        BYTE $03, $FA, $82, $00, $00
        BYTE $04, $00, $81, $00, $00
        BYTE $04, $06, $91, $CE, $22
        BYTE $04, $09, $80, $00, $00
        BYTE $04, $0B, $81, $00, $00
        BYTE $04, $0C, $90, $E2, $04
        BYTE $04, $0C, $91, $DA, $2B
        BYTE $04, $11, $81, $00, $00
        BYTE $04, $12, $91, $CE, $22
        BYTE $04, $15, $80, $00, $00
        BYTE $04, $17, $81, $00, $00
        BYTE $04, $18, $90, $E2, $04
        BYTE $04, $1E, $91, $DA, $2B
        BYTE $04, $23, $81, $00, $00
        BYTE $04, $24, $91, $CE, $22
        BYTE $04, $29, $81, $00, $00
        BYTE $04, $68, $80, $00, $00
        BYTE $04, $6B, $90, $E2, $04
        BYTE $04, $74, $80, $00, $00
        BYTE $04, $77, $90, $E2, $04
        BYTE $04, $77, $C1, $00, $00
        BYTE $04, $77, $91, $45, $1D
        BYTE $04, $77, $92, $3B, $17
        BYTE $04, $86, $81, $00, $00
        BYTE $04, $86, $82, $00, $00
        BYTE $04, $89, $91, $45, $1D
        BYTE $04, $89, $92, $3B, $17
        BYTE $04, $8F, $90, $CF, $05
        BYTE $04, $98, $81, $00, $00
        BYTE $04, $98, $82, $00, $00
        BYTE $04, $9B, $90, $E2, $04
        BYTE $04, $9B, $91, $45, $1D
        BYTE $04, $9B, $92, $3B, $17
        BYTE $04, $A1, $90, $85, $06
        BYTE $04, $A4, $81, $00, $00
        BYTE $04, $A4, $82, $00, $00
        BYTE $04, $A6, $91, $45, $1D
        BYTE $04, $A6, $92, $3B, $17
        BYTE $04, $AC, $90, $E2, $04
        BYTE $04, $B2, $90, $CF, $05
        BYTE $04, $B8, $81, $00, $00
        BYTE $04, $B8, $82, $00, $00
        BYTE $04, $BE, $90, $85, $06
        BYTE $04, $CA, $90, $51, $07
        BYTE $04, $D6, $90, $E2, $04
        BYTE $04, $EE, $90, $CF, $05
        BYTE $04, $FA, $90, $E2, $04
        BYTE $05, $00, $90, $85, $06
        BYTE $05, $06, $91, $DA, $20
        BYTE $05, $06, $92, $13, $1A
        BYTE $05, $0C, $90, $E2, $04
        BYTE $05, $12, $90, $CF, $05
        BYTE $05, $15, $81, $00, $00
        BYTE $05, $15, $82, $00, $00
        BYTE $05, $18, $91, $DA, $20
        BYTE $05, $18, $92, $13, $1A
        BYTE $05, $1E, $90, $85, $06
        BYTE $05, $26, $81, $00, $00
        BYTE $05, $26, $82, $00, $00
        BYTE $05, $29, $90, $51, $07
        BYTE $05, $29, $91, $DA, $20
        BYTE $05, $29, $92, $13, $1A
        BYTE $05, $35, $81, $00, $00
        BYTE $05, $35, $82, $00, $00
        BYTE $05, $35, $90, $E2, $04
        BYTE $05, $35, $91, $45, $1D
        BYTE $05, $35, $92, $3B, $17
        BYTE $05, $44, $81, $00, $00
        BYTE $05, $44, $82, $00, $00
        BYTE $05, $47, $91, $45, $1D
        BYTE $05, $47, $92, $3B, $17
        BYTE $05, $4D, $90, $CF, $05
        BYTE $05, $56, $81, $00, $00
        BYTE $05, $56, $82, $00, $00
        BYTE $05, $59, $90, $E2, $04
        BYTE $05, $59, $91, $45, $1D
        BYTE $05, $59, $92, $3B, $17
        BYTE $05, $5F, $90, $85, $06
        BYTE $05, $62, $81, $00, $00
        BYTE $05, $62, $82, $00, $00
        BYTE $05, $65, $91, $45, $1D
        BYTE $05, $65, $92, $3B, $17
        BYTE $05, $6B, $90, $E2, $04
        BYTE $05, $71, $90, $CF, $05
        BYTE $05, $77, $81, $00, $00
        BYTE $05, $77, $82, $00, $00
        BYTE $05, $7D, $90, $85, $06
        BYTE $05, $89, $90, $51, $07
        BYTE $05, $95, $90, $E2, $04
        BYTE $05, $95, $C1, $01, $00
        BYTE $05, $95, $91, $CE, $22
        BYTE $05, $95, $C2, $01, $00
        BYTE $05, $95, $92, $45, $1D
        BYTE $05, $9A, $81, $00, $00
        BYTE $05, $9A, $82, $00, $00
        BYTE $05, $9B, $91, $CE, $22
        BYTE $05, $9B, $92, $45, $1D
        BYTE $05, $A0, $81, $00, $00
        BYTE $05, $A0, $82, $00, $00
        BYTE $05, $A6, $91, $CE, $22
        BYTE $05, $A6, $92, $45, $1D
        BYTE $05, $AC, $81, $00, $00
        BYTE $05, $AC, $82, $00, $00
        BYTE $05, $AC, $90, $CF, $05
        BYTE $05, $B8, $90, $E2, $04
        BYTE $05, $B8, $91, $CE, $22
        BYTE $05, $B8, $92, $45, $1D
        BYTE $05, $BE, $81, $00, $00
        BYTE $05, $BE, $82, $00, $00
        BYTE $05, $BE, $90, $85, $06
        BYTE $05, $C4, $91, $DA, $20
        BYTE $05, $C4, $92, $13, $1A
        BYTE $05, $CA, $81, $00, $00
        BYTE $05, $CA, $82, $00, $00
        BYTE $05, $CA, $90, $E2, $04
        BYTE $05, $CA, $91, $DA, $20
        BYTE $05, $CA, $92, $13, $1A
        BYTE $05, $D0, $81, $00, $00
        BYTE $05, $D0, $82, $00, $00
        BYTE $05, $D0, $90, $CF, $05
        BYTE $05, $D6, $91, $CE, $22
        BYTE $05, $D6, $92, $45, $1D
        BYTE $05, $DC, $81, $00, $00
        BYTE $05, $DC, $82, $00, $00
        BYTE $05, $DC, $90, $85, $06
        BYTE $05, $E8, $90, $51, $07
        BYTE $05, $F4, $90, $E2, $04
        BYTE $05, $F4, $91, $11, $27
        BYTE $05, $F4, $92, $DA, $20
        BYTE $05, $FA, $81, $00, $00
        BYTE $05, $FA, $82, $00, $00
        BYTE $05, $FA, $91, $11, $27
        BYTE $05, $FA, $92, $DA, $20
        BYTE $05, $FF, $81, $00, $00
        BYTE $05, $FF, $82, $00, $00
        BYTE $06, $06, $91, $11, $27
        BYTE $06, $06, $92, $DA, $20
        BYTE $06, $0B, $81, $00, $00
        BYTE $06, $0B, $82, $00, $00
        BYTE $06, $0C, $90, $CF, $05
        BYTE $06, $18, $90, $E2, $04
        BYTE $06, $18, $91, $11, $27
        BYTE $06, $18, $92, $DA, $20
        BYTE $06, $1D, $81, $00, $00
        BYTE $06, $1D, $82, $00, $00
        BYTE $06, $1D, $90, $85, $06
        BYTE $06, $23, $91, $CE, $22
        BYTE $06, $23, $92, $45, $1D
        BYTE $06, $29, $81, $00, $00
        BYTE $06, $29, $82, $00, $00
        BYTE $06, $29, $90, $E2, $04
        BYTE $06, $29, $91, $CE, $22
        BYTE $06, $29, $92, $45, $1D
        BYTE $06, $2F, $81, $00, $00
        BYTE $06, $2F, $82, $00, $00
        BYTE $06, $2F, $90, $CF, $05
        BYTE $06, $35, $91, $CE, $22
        BYTE $06, $35, $92, $45, $1D
        BYTE $06, $3B, $81, $00, $00
        BYTE $06, $3B, $82, $00, $00
        BYTE $06, $3B, $90, $85, $06
        BYTE $06, $47, $90, $51, $07
        BYTE $06, $53, $90, $E2, $04
        BYTE $06, $53, $91, $CE, $22
        BYTE $06, $53, $92, $45, $1D
        BYTE $06, $59, $81, $00, $00
        BYTE $06, $59, $82, $00, $00
        BYTE $06, $59, $91, $CE, $22
        BYTE $06, $59, $92, $45, $1D
        BYTE $06, $5F, $81, $00, $00
        BYTE $06, $5F, $82, $00, $00
        BYTE $06, $65, $91, $CE, $22
        BYTE $06, $65, $92, $45, $1D
        BYTE $06, $6B, $81, $00, $00
        BYTE $06, $6B, $82, $00, $00
        BYTE $06, $6B, $90, $CF, $05
        BYTE $06, $77, $90, $E2, $04
        BYTE $06, $77, $91, $CE, $22
        BYTE $06, $77, $92, $45, $1D
        BYTE $06, $7C, $81, $00, $00
        BYTE $06, $7C, $82, $00, $00
        BYTE $06, $7D, $90, $85, $06
        BYTE $06, $83, $91, $DA, $20
        BYTE $06, $83, $92, $13, $1A
        BYTE $06, $88, $81, $00, $00
        BYTE $06, $88, $82, $00, $00
        BYTE $06, $89, $90, $E2, $04
        BYTE $06, $89, $91, $DA, $20
        BYTE $06, $89, $92, $13, $1A
        BYTE $06, $8E, $81, $00, $00
        BYTE $06, $8E, $82, $00, $00
        BYTE $06, $8F, $90, $CF, $05
        BYTE $06, $95, $91, $CE, $22
        BYTE $06, $95, $92, $45, $1D
        BYTE $06, $9A, $81, $00, $00
        BYTE $06, $9A, $82, $00, $00
        BYTE $06, $9A, $90, $85, $06
        BYTE $06, $A6, $90, $51, $07
        BYTE $06, $B2, $90, $E2, $04
        BYTE $06, $B2, $91, $11, $27
        BYTE $06, $B2, $92, $DA, $20
        BYTE $06, $B8, $81, $00, $00
        BYTE $06, $B8, $82, $00, $00
        BYTE $06, $B8, $91, $11, $27
        BYTE $06, $B8, $92, $DA, $20
        BYTE $06, $BE, $81, $00, $00
        BYTE $06, $BE, $82, $00, $00
        BYTE $06, $C4, $91, $11, $27
        BYTE $06, $C4, $92, $DA, $20
        BYTE $06, $CA, $81, $00, $00
        BYTE $06, $CA, $82, $00, $00
        BYTE $06, $CA, $90, $CF, $05
        BYTE $06, $D6, $90, $E2, $04
        BYTE $06, $D6, $91, $11, $27
        BYTE $06, $D6, $92, $DA, $20
        BYTE $06, $DC, $81, $00, $00
        BYTE $06, $DC, $82, $00, $00
        BYTE $06, $DC, $90, $85, $06
        BYTE $06, $E2, $91, $CE, $22
        BYTE $06, $E2, $92, $45, $1D
        BYTE $06, $E8, $81, $00, $00
        BYTE $06, $E8, $82, $00, $00
        BYTE $06, $E8, $90, $E2, $04
        BYTE $06, $E8, $91, $CE, $22
        BYTE $06, $E8, $92, $45, $1D
        BYTE $06, $EE, $81, $00, $00
        BYTE $06, $EE, $82, $00, $00
        BYTE $06, $EE, $90, $CF, $05
        BYTE $06, $F4, $91, $CE, $22
        BYTE $06, $F4, $92, $45, $1D
        BYTE $06, $F9, $81, $00, $00
        BYTE $06, $F9, $82, $00, $00
        BYTE $06, $FA, $90, $85, $06
        BYTE $07, $06, $90, $51, $07
        BYTE $07, $12, $90, $E2, $04
        BYTE $07, $12, $C1, $02, $00
        BYTE $07, $12, $91, $89, $13
        BYTE $07, $12, $C2, $02, $00
        BYTE $07, $17, $81, $00, $00
        BYTE $07, $1D, $91, $26, $34
        BYTE $07, $1D, $92, $89, $13
        BYTE $07, $23, $81, $00, $00
        BYTE $07, $23, $82, $00, $00
        BYTE $07, $29, $90, $CF, $05
        BYTE $07, $29, $91, $89, $13
        BYTE $07, $2F, $81, $00, $00
        BYTE $07, $2F, $91, $76, $2E
        BYTE $07, $2F, $92, $89, $13
        BYTE $07, $35, $81, $00, $00
        BYTE $07, $35, $82, $00, $00
        BYTE $07, $35, $90, $E2, $04
        BYTE $07, $3B, $90, $85, $06
        BYTE $07, $3B, $91, $89, $13
        BYTE $07, $41, $81, $00, $00
        BYTE $07, $41, $91, $CE, $22
        BYTE $07, $41, $92, $89, $13
        BYTE $07, $47, $81, $00, $00
        BYTE $07, $47, $82, $00, $00
        BYTE $07, $47, $90, $E2, $04
        BYTE $07, $4D, $90, $CF, $05
        BYTE $07, $4D, $C1, $01, $00
        BYTE $07, $4D, $91, $CE, $22
        BYTE $07, $4D, $92, $89, $13
        BYTE $07, $53, $81, $00, $00
        BYTE $07, $53, $82, $00, $00
        BYTE $07, $53, $91, $DA, $2B
        BYTE $07, $53, $92, $CE, $22
        BYTE $07, $59, $81, $00, $00
        BYTE $07, $59, $82, $00, $00
        BYTE $07, $59, $90, $85, $06
        BYTE $07, $59, $C1, $02, $00
        BYTE $07, $59, $91, $89, $13
        BYTE $07, $5F, $81, $00, $00
        BYTE $07, $5F, $C1, $01, $00
        BYTE $07, $5F, $91, $CE, $22
        BYTE $07, $5F, $92, $89, $13
        BYTE $07, $65, $81, $00, $00
        BYTE $07, $65, $82, $00, $00
        BYTE $07, $65, $90, $51, $07
        BYTE $07, $65, $91, $DA, $2B
        BYTE $07, $65, $92, $11, $27
        BYTE $07, $6B, $81, $00, $00
        BYTE $07, $6B, $82, $00, $00
        BYTE $07, $6B, $91, $CE, $22
        BYTE $07, $71, $81, $00, $00
        BYTE $07, $71, $90, $E2, $04
        BYTE $07, $71, $C1, $02, $00
        BYTE $07, $71, $91, $89, $13
        BYTE $07, $76, $81, $00, $00
        BYTE $07, $7D, $91, $26, $34
        BYTE $07, $7D, $92, $89, $13
        BYTE $07, $82, $81, $00, $00
        BYTE $07, $82, $82, $00, $00
        BYTE $07, $83, $91, $89, $13
        BYTE $07, $88, $81, $00, $00
        BYTE $07, $89, $90, $CF, $05
        BYTE $07, $89, $91, $89, $13
        BYTE $07, $8E, $81, $00, $00
        BYTE $07, $8F, $91, $76, $2E
        BYTE $07, $94, $81, $00, $00
        BYTE $07, $94, $90, $E2, $04
        BYTE $07, $94, $91, $89, $13
        BYTE $07, $9A, $81, $00, $00
        BYTE $07, $9A, $90, $85, $06
        BYTE $07, $9A, $91, $89, $13
        BYTE $07, $A0, $81, $00, $00
        BYTE $07, $A0, $91, $CE, $22
        BYTE $07, $A6, $81, $00, $00
        BYTE $07, $A6, $90, $E2, $04
        BYTE $07, $A6, $91, $89, $13
        BYTE $07, $AC, $81, $00, $00
        BYTE $07, $AC, $90, $CF, $05
        BYTE $07, $AC, $91, $CE, $22
        BYTE $07, $B2, $81, $00, $00
        BYTE $07, $B2, $91, $89, $13
        BYTE $07, $B8, $81, $00, $00
        BYTE $07, $B8, $90, $85, $06
        BYTE $07, $B8, $91, $CE, $22
        BYTE $07, $B8, $92, $89, $13
        BYTE $07, $BE, $81, $00, $00
        BYTE $07, $BE, $82, $00, $00
        BYTE $07, $BE, $91, $11, $27
        BYTE $07, $BE, $92, $89, $13
        BYTE $07, $C4, $81, $00, $00
        BYTE $07, $C4, $82, $00, $00
        BYTE $07, $C4, $90, $51, $07
        BYTE $07, $C4, $91, $89, $13
        BYTE $07, $CA, $81, $00, $00
        BYTE $07, $D0, $90, $E2, $04
        BYTE $07, $D0, $91, $89, $13
        BYTE $07, $D6, $81, $00, $00
        BYTE $07, $DC, $91, $26, $34
        BYTE $07, $DC, $92, $89, $13
        BYTE $07, $E2, $81, $00, $00
        BYTE $07, $E2, $82, $00, $00
        BYTE $07, $E8, $90, $CF, $05
        BYTE $07, $E8, $91, $89, $13
        BYTE $07, $EE, $81, $00, $00
        BYTE $07, $EE, $91, $76, $2E
        BYTE $07, $EE, $92, $89, $13
        BYTE $07, $F3, $81, $00, $00
        BYTE $07, $F3, $82, $00, $00
        BYTE $07, $F4, $90, $E2, $04
        BYTE $07, $FA, $90, $85, $06
        BYTE $07, $FA, $91, $89, $13
        BYTE $07, $FF, $81, $00, $00
        BYTE $08, $00, $91, $CE, $22
        BYTE $08, $00, $92, $89, $13
        BYTE $08, $05, $81, $00, $00
        BYTE $08, $05, $82, $00, $00
        BYTE $08, $06, $90, $E2, $04
        BYTE $08, $0C, $90, $CF, $05
        BYTE $08, $0C, $C1, $01, $00
        BYTE $08, $0C, $91, $CE, $22
        BYTE $08, $0C, $92, $89, $13
        BYTE $08, $11, $81, $00, $00
        BYTE $08, $11, $82, $00, $00
        BYTE $08, $11, $91, $DA, $2B
        BYTE $08, $11, $92, $CE, $22
        BYTE $08, $17, $81, $00, $00
        BYTE $08, $17, $82, $00, $00
        BYTE $08, $17, $90, $85, $06
        BYTE $08, $17, $C1, $02, $00
        BYTE $08, $17, $91, $89, $13
        BYTE $08, $1D, $81, $00, $00
        BYTE $08, $1D, $C1, $01, $00
        BYTE $08, $1D, $91, $CE, $22
        BYTE $08, $1D, $92, $89, $13
        BYTE $08, $23, $81, $00, $00
        BYTE $08, $23, $82, $00, $00
        BYTE $08, $23, $90, $51, $07
        BYTE $08, $23, $91, $DA, $2B
        BYTE $08, $23, $92, $11, $27
        BYTE $08, $29, $81, $00, $00
        BYTE $08, $29, $82, $00, $00
        BYTE $08, $29, $91, $CE, $22
        BYTE $08, $2F, $81, $00, $00
        BYTE $08, $2F, $90, $E2, $04
        BYTE $08, $2F, $C1, $02, $00
        BYTE $08, $2F, $91, $89, $13
        BYTE $08, $35, $81, $00, $00
        BYTE $08, $3B, $91, $26, $34
        BYTE $08, $3B, $92, $89, $13
        BYTE $08, $41, $81, $00, $00
        BYTE $08, $41, $82, $00, $00
        BYTE $08, $41, $91, $89, $13
        BYTE $08, $47, $81, $00, $00
        BYTE $08, $47, $90, $CF, $05
        BYTE $08, $47, $91, $89, $13
        BYTE $08, $4D, $81, $00, $00
        BYTE $08, $4D, $91, $76, $2E
        BYTE $08, $53, $81, $00, $00
        BYTE $08, $53, $90, $E2, $04
        BYTE $08, $53, $91, $89, $13
        BYTE $08, $59, $81, $00, $00
        BYTE $08, $59, $90, $85, $06
        BYTE $08, $59, $91, $89, $13
        BYTE $08, $5F, $81, $00, $00
        BYTE $08, $5F, $91, $CE, $22
        BYTE $08, $65, $81, $00, $00
        BYTE $08, $65, $90, $E2, $04
        BYTE $08, $65, $91, $89, $13
        BYTE $08, $6B, $81, $00, $00
        BYTE $08, $6B, $90, $CF, $05
        BYTE $08, $6B, $91, $CE, $22
        BYTE $08, $70, $81, $00, $00
        BYTE $08, $71, $91, $89, $13
        BYTE $08, $76, $81, $00, $00
        BYTE $08, $77, $90, $85, $06
        BYTE $08, $77, $91, $CE, $22
        BYTE $08, $77, $92, $89, $13
        BYTE $08, $7C, $81, $00, $00
        BYTE $08, $7C, $82, $00, $00
        BYTE $08, $7D, $91, $11, $27
        BYTE $08, $7D, $92, $89, $13
        BYTE $08, $82, $81, $00, $00
        BYTE $08, $82, $82, $00, $00
        BYTE $08, $83, $90, $51, $07
        BYTE $08, $83, $91, $89, $13
        BYTE $08, $88, $81, $00, $00
        BYTE $08, $8E, $90, $E2, $04
        BYTE $08, $8E, $91, $89, $13
        BYTE $08, $94, $81, $00, $00
        BYTE $08, $9A, $91, $26, $34
        BYTE $08, $9A, $92, $89, $13
        BYTE $08, $A0, $81, $00, $00
        BYTE $08, $A0, $82, $00, $00
        BYTE $08, $A6, $90, $CF, $05
        BYTE $08, $A6, $91, $89, $13
        BYTE $08, $AC, $81, $00, $00
        BYTE $08, $AC, $91, $76, $2E
        BYTE $08, $AC, $92, $89, $13
        BYTE $08, $B2, $81, $00, $00
        BYTE $08, $B2, $82, $00, $00
        BYTE $08, $B2, $90, $E2, $04
        BYTE $08, $B8, $90, $85, $06
        BYTE $08, $B8, $91, $89, $13
        BYTE $08, $BE, $81, $00, $00
        BYTE $08, $BE, $91, $CE, $22
        BYTE $08, $BE, $92, $89, $13
        BYTE $08, $C4, $81, $00, $00
        BYTE $08, $C4, $82, $00, $00
        BYTE $08, $C4, $90, $E2, $04
        BYTE $08, $CA, $90, $CF, $05
        BYTE $08, $CA, $91, $89, $13
        BYTE $08, $D0, $81, $00, $00
        BYTE $08, $D0, $91, $CE, $22
        BYTE $08, $D0, $92, $89, $13
        BYTE $08, $D6, $81, $00, $00
        BYTE $08, $D6, $82, $00, $00
        BYTE $08, $D6, $90, $85, $06
        BYTE $08, $D6, $91, $89, $13
        BYTE $08, $DC, $81, $00, $00
        BYTE $08, $DC, $91, $89, $13
        BYTE $08, $E2, $81, $00, $00
        BYTE $08, $E2, $90, $51, $07
        BYTE $08, $E2, $91, $11, $27
        BYTE $08, $E2, $92, $89, $13
        BYTE $08, $E8, $81, $00, $00
        BYTE $08, $E8, $82, $00, $00
        BYTE $08, $EE, $80, $00, $00
        BYTE $08, $EE, $91, $9C, $45
        BYTE $08, $EE, $C1, $00, $00
        BYTE $08, $EE, $92, $45, $1D
        BYTE $08, $F3, $82, $00, $00
        BYTE $08, $F4, $81, $00, $00
        BYTE $08, $F4, $91, $23, $4E
        BYTE $08, $FA, $92, $45, $1D
        BYTE $08, $FF, $82, $00, $00
        BYTE $09, $06, $90, $CF, $05
        BYTE $09, $06, $92, $45, $1D
        BYTE $09, $0B, $82, $00, $00
        BYTE $09, $0B, $92, $45, $1D
        BYTE $09, $11, $82, $00, $00
        BYTE $09, $11, $90, $E2, $04
        BYTE $09, $17, $90, $85, $06
        BYTE $09, $17, $92, $45, $1D
        BYTE $09, $1D, $82, $00, $00
        BYTE $09, $1D, $92, $45, $1D
        BYTE $09, $23, $82, $00, $00
        BYTE $09, $23, $90, $E2, $04
        BYTE $09, $29, $90, $CF, $05
        BYTE $09, $29, $92, $45, $1D
        BYTE $09, $2F, $82, $00, $00
        BYTE $09, $2F, $92, $45, $1D
        BYTE $09, $35, $82, $00, $00
        BYTE $09, $35, $90, $85, $06
        BYTE $09, $35, $81, $00, $00
        BYTE $09, $35, $91, $9C, $45
        BYTE $09, $35, $92, $45, $1D
        BYTE $09, $3B, $82, $00, $00
        BYTE $09, $3B, $92, $45, $1D
        BYTE $09, $41, $82, $00, $00
        BYTE $09, $41, $90, $51, $07
        BYTE $09, $41, $81, $00, $00
        BYTE $09, $41, $91, $23, $4E
        BYTE $09, $41, $92, $45, $1D
        BYTE $09, $47, $82, $00, $00
        BYTE $09, $4D, $90, $E2, $04
        BYTE $09, $4D, $81, $00, $00
        BYTE $09, $4D, $91, $B4, $57
        BYTE $09, $4D, $92, $45, $1D
        BYTE $09, $53, $82, $00, $00
        BYTE $09, $59, $92, $45, $1D
        BYTE $09, $5F, $82, $00, $00
        BYTE $09, $5F, $92, $45, $1D
        BYTE $09, $65, $82, $00, $00
        BYTE $09, $65, $80, $00, $00
        BYTE $09, $65, $92, $45, $1D
        BYTE $09, $6A, $82, $00, $00
        BYTE $09, $71, $81, $00, $00
        BYTE $09, $71, $91, $9C, $45
        BYTE $09, $71, $92, $45, $1D
        BYTE $09, $76, $82, $00, $00
        BYTE $09, $77, $92, $45, $1D
        BYTE $09, $7C, $82, $00, $00
        BYTE $09, $83, $92, $45, $1D
        BYTE $09, $88, $82, $00, $00
        BYTE $09, $8E, $92, $45, $1D
        BYTE $09, $94, $82, $00, $00
        BYTE $09, $94, $81, $00, $00
        BYTE $09, $94, $91, $89, $3A
        BYTE $09, $94, $92, $45, $1D
        BYTE $09, $9A, $82, $00, $00
        BYTE $09, $9A, $92, $45, $1D
        BYTE $09, $A0, $82, $00, $00
        BYTE $09, $A0, $92, $45, $1D
        BYTE $09, $A6, $82, $00, $00
        BYTE $09, $AC, $90, $E2, $04
        BYTE $09, $AC, $81, $00, $00
        BYTE $09, $AC, $91, $23, $4E
        BYTE $09, $AC, $92, $45, $1D
        BYTE $09, $B2, $82, $00, $00
        BYTE $09, $B8, $92, $45, $1D
        BYTE $09, $BE, $82, $00, $00
        BYTE $09, $C4, $90, $CF, $05
        BYTE $09, $C4, $92, $45, $1D
        BYTE $09, $CA, $82, $00, $00
        BYTE $09, $CA, $92, $45, $1D
        BYTE $09, $D0, $82, $00, $00
        BYTE $09, $D0, $90, $E2, $04
        BYTE $09, $D6, $90, $85, $06
        BYTE $09, $D6, $92, $45, $1D
        BYTE $09, $DC, $82, $00, $00
        BYTE $09, $DC, $92, $45, $1D
        BYTE $09, $E2, $82, $00, $00
        BYTE $09, $E2, $90, $E2, $04
        BYTE $09, $E8, $90, $CF, $05
        BYTE $09, $E8, $92, $45, $1D
        BYTE $09, $ED, $82, $00, $00
        BYTE $09, $EE, $92, $45, $1D
        BYTE $09, $F3, $82, $00, $00
        BYTE $09, $F4, $90, $85, $06
        BYTE $09, $F4, $81, $00, $00
        BYTE $09, $F4, $91, $9C, $45
        BYTE $09, $F4, $92, $45, $1D
        BYTE $09, $F9, $82, $00, $00
        BYTE $09, $FA, $92, $45, $1D
        BYTE $09, $FF, $82, $00, $00
        BYTE $0A, $00, $90, $51, $07
        BYTE $0A, $00, $81, $00, $00
        BYTE $0A, $00, $91, $23, $4E
        BYTE $0A, $00, $92, $45, $1D
        BYTE $0A, $05, $82, $00, $00
        BYTE $0A, $0B, $90, $E2, $04
        BYTE $0A, $0B, $81, $00, $00
        BYTE $0A, $0B, $91, $4C, $68
        BYTE $0A, $0B, $92, $45, $1D
        BYTE $0A, $11, $82, $00, $00
        BYTE $0A, $17, $92, $45, $1D
        BYTE $0A, $1D, $82, $00, $00
        BYTE $0A, $1D, $92, $45, $1D
        BYTE $0A, $23, $82, $00, $00
        BYTE $0A, $23, $80, $00, $00
        BYTE $0A, $23, $92, $45, $1D
        BYTE $0A, $29, $82, $00, $00
        BYTE $0A, $2F, $81, $00, $00
        BYTE $0A, $2F, $91, $B4, $57
        BYTE $0A, $2F, $92, $45, $1D
        BYTE $0A, $35, $82, $00, $00
        BYTE $0A, $35, $92, $45, $1D
        BYTE $0A, $3B, $82, $00, $00
        BYTE $0A, $41, $92, $45, $1D
        BYTE $0A, $47, $82, $00, $00
        BYTE $0A, $4D, $92, $45, $1D
        BYTE $0A, $53, $82, $00, $00
        BYTE $0A, $53, $81, $00, $00
        BYTE $0A, $53, $91, $9C, $45
        BYTE $0A, $53, $92, $45, $1D
        BYTE $0A, $59, $82, $00, $00
        BYTE $0A, $59, $92, $45, $1D
        BYTE $0A, $5F, $82, $00, $00
        BYTE $0A, $5F, $92, $45, $1D
        BYTE $0A, $64, $82, $00, $00
        BYTE $0A, $68, $81, $00, $00
        BYTE $0A, $6B, $90, $E2, $04
        BYTE $0A, $6B, $91, $9C, $45
        BYTE $0A, $6B, $92, $45, $1D
        BYTE $0A, $70, $82, $00, $00
        BYTE $0A, $77, $92, $45, $1D
        BYTE $0A, $7C, $82, $00, $00
        BYTE $0A, $82, $90, $CF, $05
        BYTE $0A, $82, $92, $45, $1D
        BYTE $0A, $88, $82, $00, $00
        BYTE $0A, $88, $92, $45, $1D
        BYTE $0A, $8E, $82, $00, $00
        BYTE $0A, $8E, $90, $E2, $04
        BYTE $0A, $94, $90, $85, $06
        BYTE $0A, $94, $92, $45, $1D
        BYTE $0A, $9A, $82, $00, $00
        BYTE $0A, $9A, $92, $45, $1D
        BYTE $0A, $A0, $82, $00, $00
        BYTE $0A, $A0, $90, $E2, $04
        BYTE $0A, $A6, $90, $CF, $05
        BYTE $0A, $A6, $81, $00, $00
        BYTE $0A, $A6, $91, $89, $3A
        BYTE $0A, $A6, $92, $45, $1D
        BYTE $0A, $AC, $82, $00, $00
        BYTE $0A, $AC, $92, $45, $1D
        BYTE $0A, $B2, $82, $00, $00
        BYTE $0A, $B2, $90, $85, $06
        BYTE $0A, $B2, $81, $00, $00
        BYTE $0A, $B2, $91, $9C, $45
        BYTE $0A, $B2, $92, $45, $1D
        BYTE $0A, $B8, $82, $00, $00
        BYTE $0A, $B8, $92, $45, $1D
        BYTE $0A, $BE, $82, $00, $00
        BYTE $0A, $BE, $90, $51, $07
        BYTE $0A, $BE, $81, $00, $00
        BYTE $0A, $BE, $91, $23, $4E
        BYTE $0A, $BE, $92, $45, $1D
        BYTE $0A, $C4, $82, $00, $00
        BYTE $0A, $CA, $90, $E2, $04
        BYTE $0A, $CA, $81, $00, $00
        BYTE $0A, $CA, $91, $26, $34
        BYTE $0A, $CA, $92, $45, $1D
        BYTE $0A, $D0, $82, $00, $00
        BYTE $0A, $D6, $92, $45, $1D
        BYTE $0A, $DC, $82, $00, $00
        BYTE $0A, $DC, $92, $45, $1D
        BYTE $0A, $E1, $82, $00, $00
        BYTE $0A, $E2, $80, $00, $00
        BYTE $0A, $E2, $92, $45, $1D
        BYTE $0A, $E7, $82, $00, $00
        BYTE $0A, $EE, $81, $00, $00
        BYTE $0A, $EE, $91, $89, $3A
        BYTE $0A, $EE, $92, $45, $1D
        BYTE $0A, $F3, $82, $00, $00
        BYTE $0A, $F4, $92, $45, $1D
        BYTE $0A, $F9, $82, $00, $00
        BYTE $0A, $FF, $92, $45, $1D
        BYTE $0B, $05, $82, $00, $00
        BYTE $0B, $0B, $92, $45, $1D
        BYTE $0B, $11, $82, $00, $00
        BYTE $0B, $11, $81, $00, $00
        BYTE $0B, $11, $91, $23, $4E
        BYTE $0B, $11, $92, $45, $1D
        BYTE $0B, $17, $82, $00, $00
        BYTE $0B, $17, $92, $45, $1D
        BYTE $0B, $1D, $82, $00, $00
        BYTE $0B, $1D, $92, $45, $1D
        BYTE $0B, $23, $82, $00, $00
        BYTE $0B, $29, $90, $E2, $04
        BYTE $0B, $29, $81, $00, $00
        BYTE $0B, $29, $91, $9C, $45
        BYTE $0B, $29, $92, $45, $1D
        BYTE $0B, $2F, $82, $00, $00
        BYTE $0B, $35, $92, $45, $1D
        BYTE $0B, $3B, $82, $00, $00
        BYTE $0B, $41, $90, $CF, $05
        BYTE $0B, $41, $92, $45, $1D
        BYTE $0B, $47, $82, $00, $00
        BYTE $0B, $47, $92, $45, $1D
        BYTE $0B, $4D, $82, $00, $00
        BYTE $0B, $4D, $90, $E2, $04
        BYTE $0B, $53, $90, $85, $06
        BYTE $0B, $53, $92, $45, $1D
        BYTE $0B, $59, $82, $00, $00
        BYTE $0B, $59, $92, $45, $1D
        BYTE $0B, $5E, $82, $00, $00
        BYTE $0B, $5F, $90, $E2, $04
        BYTE $0B, $65, $90, $CF, $05
        BYTE $0B, $65, $81, $00, $00
        BYTE $0B, $65, $91, $89, $3A
        BYTE $0B, $65, $92, $45, $1D
        BYTE $0B, $6A, $82, $00, $00
        BYTE $0B, $6B, $92, $45, $1D
        BYTE $0B, $70, $82, $00, $00
        BYTE $0B, $71, $90, $85, $06
        BYTE $0B, $71, $81, $00, $00
        BYTE $0B, $71, $91, $9C, $45
        BYTE $0B, $71, $92, $45, $1D
        BYTE $0B, $76, $82, $00, $00
        BYTE $0B, $77, $92, $45, $1D
        BYTE $0B, $7C, $82, $00, $00
        BYTE $0B, $7C, $90, $51, $07
        BYTE $0B, $7C, $81, $00, $00
        BYTE $0B, $7C, $91, $23, $4E
        BYTE $0B, $7C, $92, $45, $1D
        BYTE $0B, $82, $82, $00, $00
        BYTE $0B, $85, $81, $00, $00
        BYTE $0B, $88, $90, $E2, $04
        BYTE $0B, $88, $91, $23, $4E
        BYTE $0B, $88, $92, $45, $1D
        BYTE $0B, $8E, $82, $00, $00
        BYTE $0B, $94, $92, $45, $1D
        BYTE $0B, $9A, $82, $00, $00
        BYTE $0B, $9A, $92, $45, $1D
        BYTE $0B, $A0, $82, $00, $00
        BYTE $0B, $A0, $80, $00, $00
        BYTE $0B, $A0, $92, $45, $1D
        BYTE $0B, $A6, $82, $00, $00
        BYTE $0B, $AC, $92, $45, $1D
        BYTE $0B, $B2, $82, $00, $00
        BYTE $0B, $B2, $92, $45, $1D
        BYTE $0B, $B8, $82, $00, $00
        BYTE $0B, $BE, $92, $45, $1D
        BYTE $0B, $C4, $82, $00, $00
        BYTE $0B, $CA, $92, $45, $1D
        BYTE $0B, $D0, $82, $00, $00
        BYTE $0B, $D0, $92, $45, $1D
        BYTE $0B, $D6, $82, $00, $00
        BYTE $0B, $D6, $92, $45, $1D
        BYTE $0B, $DB, $82, $00, $00
        BYTE $0B, $DC, $92, $45, $1D
        BYTE $0B, $E1, $82, $00, $00
        BYTE $0B, $E8, $81, $00, $00
        BYTE $0C, $40, $FF, $00, $00

#endregion "SONG00"
