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
				LDA #$01
				STA STOPPLAY        ; HOW MANY TIMES TO PLAY
LOOP1   LDA #150
LOOP2   CMP $D012
        BCS LOOP2           ; WAIT UNTIL $D012 > 150
        INC $D020
        JSR PLAY
        DEC $D020
        LDA #50
LOOP3   CMP $D012
        BCC LOOP3           ; WAIT UNTIL $D012 <= 50
        LDA STOPPLAY
        CMP #$FF
        BNE LOOP1
        JSR INIT
        RTS

STOPPLAY
        .BYTE $00

INIT
				LDA #$00
L00490  PHA                 ; SAVE SONG NO.                   
        LDX #$18                                              
L00491  LDA #$00                                              
        STA $D400,X         ; RESET SID REGISTERS             
        DEX                                                   
        BPL L00491                                            
        LDX #$18                                              
L00492  LDA SIDINIT,X                                           
        STA $D400,X         ; INIT SID REGISTERS              
        DEX                                                   
        BPL L00492                                            
        PLA                 ; GET SONG NO.                    
        ASL                                                   
        ASL                                                   
        ASL                                                   
        PHA                 ; SAVE 8 * SONG NO.               
        TAY                                                   
        LDX #$00                                              
L00493  LDA SONGPTR,Y       ; $5F00 + 8 * SONG NO. + (0 ... 6)
        STA $30,X           ; $30 + (0 ... 6)                 
        INY                                                   
        INX                                                   
        CPX #$07                                              
        BNE L00493                                            
        PLA                                                   
        TAX                                                   
        LDA WAVEFRM,X       ; $5FA0 + 8 * SONG NO.            
        STA $D404           ; VOICE 1                         
        LDA WAVEFRM+1,X     ; $5FA1 + 8 * SONG NO.            
        STA $D40B           ; VOICE 2                         
        LDA WAVEFRM+2,X     ; $5FA2 + 8 * SONG NO.            
        STA $D412           ; VOICE 3                         
        LDA #$0F                                              
        STA $D418           ; OUTPUT VOLUME = 15              
        RTS                                                   

PLAY
L00472  DEC $32                                     
        BEQ L00473                                  
        RTS                                         
        NOP                                         
        NOP                                         
L00473  LDA $36                                     
        STA $32                                     
        LDY $33                                     
        LDA ($34),Y                                 
        CMP #$FF                                    
        BNE L00474                                  
        JMP L00489                                  
L00474  STA $D401           ; FREQUENCY VOICE 1 - HI
        INC $33                                     
        INY                                         
        BNE L00475                                  
        INC $35                                     
L00475  LDA ($34),Y                                 
        CMP #$FF                                    
        BNE L00476                                  
        JMP L00489                                  
L00476  STA $D400           ; FREQUENCY VOICE 1 - LO
        INC $33                                     
        INY                                         
        BNE L00477                                  
        INC $35                                     
L00477  LDA ($34),Y                                 
        CMP #$FF                                    
        BNE L00478                                  
        JMP L00489                                  
L00478  STA $D408           ; FREQUENCY VOICE 2 - HI
L00479  INC $33                                     
        INY                                         
        BNE L00481                                  
        INC $35                                     
L00481  LDA ($34),Y                                 
        CMP #$FF                                    
        BNE L00482                                  
        JMP L00489                                  
L00482  STA $D407           ; FREQUENCY VOICE 2 - LO
        INC $33                                     
        INY                                         
        BNE L00483                                  
        INC $35                                     
L00483  LDA ($34),Y                                 
        CMP #$FF                                    
        BNE L00484                                  
        JMP L00489                                  
L00484  STA $D40F           ; FREQUENCY VOICE 3 - HI
        INC $33                                     
        INY                                         
        BNE L00485                                  
        INC $35                                     
L00485  LDA ($34),Y                                 
        CMP #$FF                                    
        BNE L00486                                  
        JMP L00489                                  
L00486  STA $D40E           ; FREQUENCY VOICE 3 - LO
        INC $33                                     
        INY                                         
        BNE L00488                                  
        INC $35                                     
L00488  RTS                                         
L00489  LDA #$00                                    
        STA $33                                     
        LDA $30                                     
        STA $34                                     
        LDA $31                                     
        STA $35                                     
        DEC STOPPLAY
        RTS                                         

SIDINIT
        .BYTE $00   
        .BYTE $00   
        .BYTE $00   
        .BYTE $00   
        .BYTE $21   
        .BYTE $2A   
        .BYTE $80   
        .BYTE $00   
        .BYTE $00   
        .BYTE $F0
        .BYTE $01
        .BYTE $21   
        .BYTE $22   
        .BYTE $80   
        .BYTE $00   
        .BYTE $00   
        .BYTE $FF   
        .BYTE $0D   
        .BYTE $41   
        .BYTE $24
        .BYTE $80
        .BYTE $00   
        .BYTE $00   
        .BYTE $00   
        .BYTE $0B   

SONGPTR
        .BYTE <SONG00                        ; $E0
        .BYTE >SONG00                        ; $50
        .BYTE $15
        .BYTE $00
        .BYTE <S00START                      ; $00
        .BYTE >S00START                      ; $56
        .BYTE $15
        .BYTE $00

WAVEFRM
        .BYTE $21
        .BYTE $21
        .BYTE $41
        .BYTE $00
        .BYTE $00
        .BYTE $00
        .BYTE $00
        .BYTE $00

SONG00                                       ; SONG NO. 0 (AND 2)
        .BYTE $25, $A2, $0B, $30, $04, $B4
        .BYTE $25, $A2, $09, $6A, $04, $B4
        .BYTE $25, $A2, $0B, $30, $04, $B4
        .BYTE $25, $A2, $0B, $30, $03, $BB
        .BYTE $25, $A2, $09, $6A, $03, $BB
        .BYTE $25, $A2, $0B, $30, $03, $BB
        .BYTE $25, $A2, $0B, $30, $04, $B4
        .BYTE $25, $A2, $09, $6A, $04, $B4
        .BYTE $00, $00, $0B, $30, $04, $B4
        .BYTE $00, $00, $0B, $30, $03, $BB
        .BYTE $00, $00, $08, $E1, $03, $BB
        .BYTE $00, $00, $0B, $30, $03, $BB
        .BYTE $00, $00, $0B, $30, $04, $B4
        .BYTE $00, $00, $09, $6A, $04, $B4
        .BYTE $00, $00, $0B, $30, $04, $B4
        .BYTE $00, $00, $0B, $30, $03, $BB
        .BYTE $00, $00, $08, $E1, $03, $BB
        .BYTE $00, $00, $0B, $30, $03, $BB
        .BYTE $00, $00, $0B, $30, $04, $B4
        .BYTE $00, $00, $09, $6A, $04, $B4
        .BYTE $00, $00, $0B, $30, $04, $B4
        .BYTE $00, $00, $0B, $30, $03, $BB
        .BYTE $00, $00, $08, $E1, $03, $BB
        .BYTE $00, $00, $0B, $30, $03, $BB
        .BYTE $1C, $31, $0B, $30, $04, $B4
        .BYTE $1C, $31, $09, $6A, $04, $B4
        .BYTE $1C, $31, $0B, $30, $04, $B4
        .BYTE $19, $1E, $0B, $30, $03, $BB
        .BYTE $16, $60, $08, $E1, $03, $BB
        .BYTE $19, $1E, $0B, $30, $03, $BB
        .BYTE $1C, $31, $0B, $30, $04, $B4
        .BYTE $1C, $31, $09, $6A, $04, $B4
        .BYTE $1C, $31, $0B, $30, $04, $B4
        .BYTE $21, $87, $0B, $30, $03, $BB
        .BYTE $21, $87, $08, $E1, $03, $BB
        .BYTE $21, $87, $0B, $30, $03, $BB
        .BYTE $1C, $31, $0B, $30, $04, $B4
        .BYTE $1C, $31, $09, $6A, $04, $B4
        .BYTE $1C, $31, $0B, $30, $04, $B4
        .BYTE $19, $1E, $0B, $30, $03, $BB
        .BYTE $16, $60, $08, $E1, $03, $BB
        .BYTE $19, $1E, $0B, $30, $03, $BB
        .BYTE $1C, $31, $0B, $30, $04, $B4
        .BYTE $1C, $31, $3B, $BE, $04, $B4
        .BYTE $1C, $31, $38, $63, $04, $B4
        .BYTE $1C, $31, $35, $39, $03, $BB
        .BYTE $1C, $31, $32, $3C, $03, $BB
        .BYTE $00, $00, $2F, $6B, $03, $BB
        .BYTE $1C, $31, $0B, $30, $04, $B4
        .BYTE $1C, $31, $09, $6A, $04, $B4
        .BYTE $1C, $31, $0B, $30, $04, $B4
        .BYTE $19, $1E, $0B, $30, $03, $BB
        .BYTE $16, $60, $08, $E1, $03, $BB
        .BYTE $19, $1E, $0B, $30, $03, $BB
        .BYTE $1C, $31, $0B, $30, $04, $B4
        .BYTE $1C, $31, $09, $6A, $04, $B4
        .BYTE $1C, $31, $0B, $30, $04, $B4
        .BYTE $21, $87, $0B, $30, $03, $BB
        .BYTE $21, $87, $08, $E1, $03, $BB
        .BYTE $21, $87, $0B, $30, $03, $BB
        .BYTE $25, $A2, $0B, $30, $04, $B4
        .BYTE $25, $A2, $09, $6A, $04, $B4
        .BYTE $25, $A2, $0B, $30, $04, $B4
        .BYTE $21, $87, $0B, $30, $03, $BB
        .BYTE $1C, $31, $08, $E1, $03, $BB
        .BYTE $21, $87, $0B, $30, $03, $BB
        .BYTE $25, $A2, $0B, $30, $04, $B4
        .BYTE $25, $A2, $0E, $18, $04, $B4
        .BYTE $25, $A2, $0B, $30, $04, $B4
        .BYTE $25, $A2, $0E, $18, $04, $B4
        .BYTE $25, $A2, $12, $D1, $04, $B4
        .BYTE $25, $A2, $16, $60, $04, $B4
        .BYTE $2A, $3E, $21, $87, $03, $86
        .BYTE $27, $E1, $1F, $A5, $03, $86
        .BYTE $25, $A2, $1D, $DF, $03, $86
        .BYTE $21, $87, $1C, $31, $04, $B4
        .BYTE $25, $A2, $1D, $DF, $04, $B4
        .BYTE $27, $E1, $1F, $A5, $04, $B4
        .BYTE $2A, $3E, $21, $87, $03, $86
        .BYTE $27, $E1, $1F, $A5, $03, $86
        .BYTE $25, $A2, $1D, $DF, $03, $86
        .BYTE $21, $87, $1C, $31, $04, $B4
        .BYTE $25, $A2, $1D, $DF, $04, $B4
        .BYTE $27, $E1, $1F, $A5, $04, $B4
        .BYTE $2A, $3E, $21, $87, $03, $86
        .BYTE $27, $E1, $1F, $A5, $03, $86
        .BYTE $25, $A2, $1D, $DF, $03, $86
        .BYTE $21, $87, $1C, $31, $04, $B4
        .BYTE $25, $A2, $1D, $DF, $04, $B4
        .BYTE $27, $E1, $1F, $A5, $04, $B4
        .BYTE $2A, $3E, $0A, $8F, $00, $00
        .BYTE $2A, $3E, $0A, $8F, $05, $47
        .BYTE $2A, $3E, $0A, $8F, $05, $47
        .BYTE $2C, $C1, $0D, $4E, $00, $00
        .BYTE $2C, $C1, $0D, $4E, $05, $47
        .BYTE $2C, $C1, $0D, $4E, $05, $47
        .BYTE $2A, $3E, $0F, $D2, $00, $00
        .BYTE $2A, $3E, $0F, $D2, $05, $47
        .BYTE $25, $A2, $0F, $D2, $05, $47
        .BYTE $2A, $3E, $0D, $4E, $00, $00
        .BYTE $2A, $3E, $0E, $18, $05, $47
        .BYTE $2A, $3E, $0D, $4E, $05, $47
        .BYTE $FF, $20, $20, $20, $4D, $55

S00START
        .BYTE $0E, $EF, $07, $77, $00, $00
        .BYTE $0E, $EF, $07, $77, $00, $00
        .BYTE $0F, $D2, $07, $E9, $00, $00
        .BYTE $0F, $D2, $07, $E9, $00, $00
        .BYTE $15, $1F, $0A, $8F, $00, $00
        .BYTE $15, $1F, $0A, $8F, $00, $00
        .BYTE $13, $EF, $0C, $8F, $04, $30
        .BYTE $13, $EF, $0C, $8F, $03, $23
        .BYTE $13, $EF, $0C, $8F, $04, $30
        .BYTE $13, $EF, $0C, $8F, $03, $23
        .BYTE $13, $EF, $0C, $8F, $04, $30
        .BYTE $13, $EF, $0C, $8F, $03, $23
        .BYTE $13, $EF, $0C, $8F, $04, $30
        .BYTE $13, $EF, $0B, $DA, $04, $FB
        .BYTE $13, $EF, $0B, $DA, $04, $FB
        .BYTE $13, $EF, $0B, $DA, $04, $FB
        .BYTE $1D, $DF, $0E, $EF, $04, $FB
        .BYTE $1D, $DF, $0E, $EF, $04, $FB
        .BYTE $1F, $A5, $0F, $D2, $04, $FB
        .BYTE $1F, $A5, $0F, $D2, $04, $FB
        .BYTE $2A, $3E, $15, $1F, $00, $00
        .BYTE $2A, $3E, $15, $1F, $00, $00
        .BYTE $27, $DF, $19, $1E, $04, $30
        .BYTE $27, $DF, $19, $1E, $03, $23
        .BYTE $27, $DF, $19, $1E, $04, $30
        .BYTE $27, $DF, $19, $1E, $03, $23
        .BYTE $27, $DF, $19, $1E, $04, $30
        .BYTE $27, $DF, $19, $1E, $03, $23
        .BYTE $27, $DF, $19, $1E, $04, $30
        .BYTE $27, $DF, $17, $B5, $04, $FB
        .BYTE $27, $DF, $17, $B5, $04, $FB
        .BYTE $27, $DF, $17, $B5, $04, $FB
        .BYTE $25, $A2, $12, $D1, $04, $FB
        .BYTE $25, $A2, $12, $D1, $04, $FB
        .BYTE $23, $86, $11, $C3, $04, $FB
        .BYTE $23, $86, $11, $C3, $04, $FB
        .BYTE $1F, $A5, $0F, $D2, $00, $00
        .BYTE $1F, $A5, $0F, $D2, $00, $00
        .BYTE $1D, $DF, $12, $D1, $06, $47
        .BYTE $1D, $DF, $12, $D1, $04, $B4
        .BYTE $1D, $DF, $12, $D1, $06, $47
        .BYTE $1D, $DF, $12, $D1, $04, $B4
        .BYTE $1D, $DF, $12, $D1, $06, $47
        .BYTE $1D, $DF, $12, $D1, $04, $B4
        .BYTE $1D, $DF, $12, $D1, $06, $47
        .BYTE $1D, $DF, $12, $D1, $0C, $8F
        .BYTE $1D, $DF, $12, $D1, $0C, $8F
        .BYTE $1D, $DF, $12, $D1, $0C, $8F
        .BYTE $2C, $C1, $16, $60, $0B, $30
        .BYTE $2C, $C1, $16, $60, $0B, $30
        .BYTE $2A, $3E, $15, $1F, $0A, $8F
        .BYTE $2A, $3E, $15, $1F, $0A, $8F
        .BYTE $27, $DF, $13, $EF, $09, $F7
        .BYTE $27, $DF, $13, $EF, $09, $FF
