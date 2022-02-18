Attribute VB_Name = "InitTables"
Option Explicit

Dim DataArray(1 To 10000) As Variant
Dim DataAnt As Long

Public Sub Initialize_Memory()
    Dim i As Long
    
    For i = 0 To 65537
        Memory(i) = 255
    Next
End Sub

Public Sub Initialize_Tables()
    Dim i As Long, x As Double

    For i = 0 To 255
        x = (i - 3) / 4
        
        If x = Int(x) Then
            MNE(i) = "DATA": AddrMode(i) = 0
        Else
            x = i - 32 * Int(i / 32)
            
            If (x = 2 And i <> 162) _
            Or (x = 18) _
            Or (x = 20 And i <> 148 And i <> 180) _
            Or (x = 26 And i <> 154 And i <> 186) _
            Or (x = 28 And i <> 188) Then
                MNE(i) = "DATA": AddrMode(i) = 0
            Else
                MNE(i) = Read_Data: AddrMode(i) = Read_Data
            End If
        End If
    Next

    ' Undocumented Opcodes
    MNE(191) = "LAX": AddrMode(191) = 10

    For i = 0 To AntalReg
        RegAddr(i) = Read_Data: RegName(i) = Read_Data
    Next
    
    For i = 0 To 15
        ColorName(i) = Read_Data
    Next
    
    For i = 0 To 64
        Key(i) = Read_Data
    Next
    
    For i = 49152 To 49166
        Memory(i) = Read_Data
    Next
End Sub

Private Function Read_Data() As Variant
    Static Ix As Long

    Ix = Ix + 1
    
    If Ix > DataAnt Then
        Ix = Ix - 1
        Read_Data = 0: MsgBox ("OUT OF DATA")
    Else
        Read_Data = DataArray(Ix)
    End If
End Function

Public Sub Make_Data()
    DataAnt = 0
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "BRK": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ORA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 5
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "DATA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ORA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ASL": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "PHP": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ORA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 1
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ASL": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "DATA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ORA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 8
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ASL": DataAnt = DataAnt + 1: DataArray(DataAnt) = 8
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "BPL": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ORA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 6
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ORA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 3
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ASL": DataAnt = DataAnt + 1: DataArray(DataAnt) = 3
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "CLC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ORA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 10
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ORA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 9
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ASL": DataAnt = DataAnt + 1: DataArray(DataAnt) = 9
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "JSR": DataAnt = DataAnt + 1: DataArray(DataAnt) = 8
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "AND": DataAnt = DataAnt + 1: DataArray(DataAnt) = 5
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "BIT": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "AND": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ROL": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "PLP": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "AND": DataAnt = DataAnt + 1: DataArray(DataAnt) = 1
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ROL": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "BIT": DataAnt = DataAnt + 1: DataArray(DataAnt) = 8
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "AND": DataAnt = DataAnt + 1: DataArray(DataAnt) = 8
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ROL": DataAnt = DataAnt + 1: DataArray(DataAnt) = 8
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "BMI": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "AND": DataAnt = DataAnt + 1: DataArray(DataAnt) = 6

    DataAnt = DataAnt + 1: DataArray(DataAnt) = "AND": DataAnt = DataAnt + 1: DataArray(DataAnt) = 3
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ROL": DataAnt = DataAnt + 1: DataArray(DataAnt) = 3
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "SEC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "AND": DataAnt = DataAnt + 1: DataArray(DataAnt) = 10
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "AND": DataAnt = DataAnt + 1: DataArray(DataAnt) = 9
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ROL": DataAnt = DataAnt + 1: DataArray(DataAnt) = 9
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "RTI": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "EOR": DataAnt = DataAnt + 1: DataArray(DataAnt) = 5
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "DATA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "EOR": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LSR": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "PHA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "EOR": DataAnt = DataAnt + 1: DataArray(DataAnt) = 1
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LSR": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "JMP": DataAnt = DataAnt + 1: DataArray(DataAnt) = 8
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "EOR": DataAnt = DataAnt + 1: DataArray(DataAnt) = 8
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LSR": DataAnt = DataAnt + 1: DataArray(DataAnt) = 8
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "BVC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "EOR": DataAnt = DataAnt + 1: DataArray(DataAnt) = 6
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "EOR": DataAnt = DataAnt + 1: DataArray(DataAnt) = 3
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LSR": DataAnt = DataAnt + 1: DataArray(DataAnt) = 3
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "CLI": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "EOR": DataAnt = DataAnt + 1: DataArray(DataAnt) = 10
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "EOR": DataAnt = DataAnt + 1: DataArray(DataAnt) = 9
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LSR": DataAnt = DataAnt + 1: DataArray(DataAnt) = 9
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "RTS": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ADC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 5
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "DATA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ADC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ROR": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "PLA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ADC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 1
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ROR": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "JMP": DataAnt = DataAnt + 1: DataArray(DataAnt) = 7
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ADC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 8
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ROR": DataAnt = DataAnt + 1: DataArray(DataAnt) = 8
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "BVS": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ADC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 6
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ADC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 3
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ROR": DataAnt = DataAnt + 1: DataArray(DataAnt) = 3
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "SEI": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ADC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 10
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ADC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 9
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ROR": DataAnt = DataAnt + 1: DataArray(DataAnt) = 9
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "DATA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "STA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 5
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "STY": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "STA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "STX": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "DEY": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "DATA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "TXA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "STY": DataAnt = DataAnt + 1: DataArray(DataAnt) = 8
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "STA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 8
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "STX": DataAnt = DataAnt + 1: DataArray(DataAnt) = 8
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "BCC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "STA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 6
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "STY": DataAnt = DataAnt + 1: DataArray(DataAnt) = 3
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "STA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 3
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "STX": DataAnt = DataAnt + 1: DataArray(DataAnt) = 4
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "TYA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "STA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 10
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "TXS": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "STA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 9
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "DATA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LDY": DataAnt = DataAnt + 1: DataArray(DataAnt) = 1
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LDA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 5
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LDX": DataAnt = DataAnt + 1: DataArray(DataAnt) = 1
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LDY": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LDA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LDX": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "TAY": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LDA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 1
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "TAX": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LDY": DataAnt = DataAnt + 1: DataArray(DataAnt) = 8
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LDA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 8
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LDX": DataAnt = DataAnt + 1: DataArray(DataAnt) = 8
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "BCS": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LDA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 6
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LDY": DataAnt = DataAnt + 1: DataArray(DataAnt) = 3
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LDA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 3
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LDX": DataAnt = DataAnt + 1: DataArray(DataAnt) = 4
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "CLV": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LDA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 10
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "TSX": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LDY": DataAnt = DataAnt + 1: DataArray(DataAnt) = 9
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LDA": DataAnt = DataAnt + 1: DataArray(DataAnt) = 9
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LDX": DataAnt = DataAnt + 1: DataArray(DataAnt) = 10
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "CPY": DataAnt = DataAnt + 1: DataArray(DataAnt) = 1
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "CMP": DataAnt = DataAnt + 1: DataArray(DataAnt) = 5
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "CPY": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "CMP": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "DEC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "INY": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "CMP": DataAnt = DataAnt + 1: DataArray(DataAnt) = 1
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "DEX": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "CPY": DataAnt = DataAnt + 1: DataArray(DataAnt) = 8
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "CMP": DataAnt = DataAnt + 1: DataArray(DataAnt) = 8
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "DEC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 8
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "BNE": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "CMP": DataAnt = DataAnt + 1: DataArray(DataAnt) = 6
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "CMP": DataAnt = DataAnt + 1: DataArray(DataAnt) = 3
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "DEC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 3
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "CLD": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "CMP": DataAnt = DataAnt + 1: DataArray(DataAnt) = 10
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "CMP": DataAnt = DataAnt + 1: DataArray(DataAnt) = 9
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "DEC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 9
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "CPX": DataAnt = DataAnt + 1: DataArray(DataAnt) = 1
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "SBC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 5
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "CPX": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "SBC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "INC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "INX": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "SBC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 1
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "NOP": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "CPX": DataAnt = DataAnt + 1: DataArray(DataAnt) = 8
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "SBC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 8
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "INC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 8
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "BEQ": DataAnt = DataAnt + 1: DataArray(DataAnt) = 2
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "SBC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 6
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "SBC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 3
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "INC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 3
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "SED": DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "SBC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 10
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "SBC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 9
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "INC": DataAnt = DataAnt + 1: DataArray(DataAnt) = 9


    DataAnt = DataAnt + 1: DataArray(DataAnt) = 1: DataAnt = DataAnt + 1: DataArray(DataAnt) = "INPUT/OUTPUT REGISTER"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 43: DataAnt = DataAnt + 1: DataArray(DataAnt) = "START OF BASIC - LO"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 44: DataAnt = DataAnt + 1: DataArray(DataAnt) = "START OF BASIC - HI"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 55: DataAnt = DataAnt + 1: DataArray(DataAnt) = "HIGHEST BASIC ADDRESS - LO"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 56: DataAnt = DataAnt + 1: DataArray(DataAnt) = "HIGHEST BASIC ADDRESS - HI"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 197: DataAnt = DataAnt + 1: DataArray(DataAnt) = "CURRENT KEY PRESSED"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 198: DataAnt = DataAnt + 1: DataArray(DataAnt) = "NUMBER OF CHAR. IN BUFFER"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 203: DataAnt = DataAnt + 1: DataArray(DataAnt) = "WHICH KEY. 64 IF NO KEY"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 243: DataAnt = DataAnt + 1: DataArray(DataAnt) = "CURRENT SCREEN COLOR RAM LOC."
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 646: DataAnt = DataAnt + 1: DataArray(DataAnt) = "CHARACTER COLOR CODE"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 648: DataAnt = DataAnt + 1: DataArray(DataAnt) = "TOP OF SCREEN MEMORY"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 649: DataAnt = DataAnt + 1: DataArray(DataAnt) = "SIZE OF KEYBOARD BUFFER"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 650: DataAnt = DataAnt + 1: DataArray(DataAnt) = "REPEAT KEY"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 788: DataAnt = DataAnt + 1: DataArray(DataAnt) = "HARDWARE IRQ VECTOR - LO"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 789: DataAnt = DataAnt + 1: DataArray(DataAnt) = "HARDWARE IRQ VECTOR - HI"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 790: DataAnt = DataAnt + 1: DataArray(DataAnt) = "BRK INSTR. IRQ VECTOR - LO"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 791: DataAnt = DataAnt + 1: DataArray(DataAnt) = "BRK INSTR. IRQ VECTOR - HI"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 792: DataAnt = DataAnt + 1: DataArray(DataAnt) = "NON-MASKABLE IRQ VECTOR - LO"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 793: DataAnt = DataAnt + 1: DataArray(DataAnt) = "NON-MASKABLE IRQ VECTOR - HI"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 53265: DataAnt = DataAnt + 1: DataArray(DataAnt) = "VIC CONTROL REGISTER 1"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 53266: DataAnt = DataAnt + 1: DataArray(DataAnt) = "VIC RASTER REGISTER"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 53267: DataAnt = DataAnt + 1: DataArray(DataAnt) = "LIGHT-PEN X POS"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 53268: DataAnt = DataAnt + 1: DataArray(DataAnt) = "LIGHT-PEN Y POS"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 53269: DataAnt = DataAnt + 1: DataArray(DataAnt) = "SPRITE DISPLAY"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 53270: DataAnt = DataAnt + 1: DataArray(DataAnt) = "VIC CONTROL REGISTER 2"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 53271: DataAnt = DataAnt + 1: DataArray(DataAnt) = "EXPAND SPRITE IN Y-DIR."
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 53272: DataAnt = DataAnt + 1: DataArray(DataAnt) = "VIC MEMORY CONTROL REGISTER"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 53273: DataAnt = DataAnt + 1: DataArray(DataAnt) = "VIC INTERRUPT FLAGS"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 53274: DataAnt = DataAnt + 1: DataArray(DataAnt) = "VIC IRQ ENABLE/DISABLE"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 53275: DataAnt = DataAnt + 1: DataArray(DataAnt) = "SPRITE-BACKGROUND PRIORITY"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 53276: DataAnt = DataAnt + 1: DataArray(DataAnt) = "SPRITE MULTICOLOR MODE"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 53277: DataAnt = DataAnt + 1: DataArray(DataAnt) = "EXPAND SPRITE IN X-DIR."
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 53278: DataAnt = DataAnt + 1: DataArray(DataAnt) = "SPRITE-SPRITE COLLISION"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 53279: DataAnt = DataAnt + 1: DataArray(DataAnt) = "SPRITE-BACKGROUND COLLISION"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 53280: DataAnt = DataAnt + 1: DataArray(DataAnt) = "BORDER COLOR"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 53281: DataAnt = DataAnt + 1: DataArray(DataAnt) = "BACKGROUND COLOR"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 53285: DataAnt = DataAnt + 1: DataArray(DataAnt) = "SPRITE MULTICOLOR REGISTER 0"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 53286: DataAnt = DataAnt + 1: DataArray(DataAnt) = "SPRITE MULTICOLOR REGISTER 1"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 54272: DataAnt = DataAnt + 1: DataArray(DataAnt) = "FREQUENCY VOICE 1 - LO"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 54273: DataAnt = DataAnt + 1: DataArray(DataAnt) = "FREQUENCY VOICE 1 - HI"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 54274: DataAnt = DataAnt + 1: DataArray(DataAnt) = "WAVEFORM WIDTH VOICE 1 - LO"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 54275: DataAnt = DataAnt + 1: DataArray(DataAnt) = "WAVEFORM WIDTH VOICE 1 - HI"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 54276: DataAnt = DataAnt + 1: DataArray(DataAnt) = "VOICE 1"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 54277: DataAnt = DataAnt + 1: DataArray(DataAnt) = "ATTACK/DECAY VOICE 1"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 54278: DataAnt = DataAnt + 1: DataArray(DataAnt) = "SUSTAIN/RELEASE VOICE 1"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 54279: DataAnt = DataAnt + 1: DataArray(DataAnt) = "FREQUENCY VOICE 2 - LO"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 54280: DataAnt = DataAnt + 1: DataArray(DataAnt) = "FREQUENCY VOICE 2 - HI"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 54281: DataAnt = DataAnt + 1: DataArray(DataAnt) = "WAVEFORM WIDTH VOICE 2 - LO"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 54282: DataAnt = DataAnt + 1: DataArray(DataAnt) = "WAVEFORM WIDTH VOICE 2 - HI"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 54283: DataAnt = DataAnt + 1: DataArray(DataAnt) = "VOICE 2"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 54284: DataAnt = DataAnt + 1: DataArray(DataAnt) = "ATTACK/DECAY VOICE 2"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 54285: DataAnt = DataAnt + 1: DataArray(DataAnt) = "SUSTAIN/RELEASE VOICE 2"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 54286: DataAnt = DataAnt + 1: DataArray(DataAnt) = "FREQUENCY VOICE 3 - LO"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 54287: DataAnt = DataAnt + 1: DataArray(DataAnt) = "FREQUENCY VOICE 3 - HI"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 54288: DataAnt = DataAnt + 1: DataArray(DataAnt) = "WAVEFORM WIDTH VOICE 3 - LO"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 54289: DataAnt = DataAnt + 1: DataArray(DataAnt) = "WAVEFORM WIDTH VOICE 3 - HI"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 54290: DataAnt = DataAnt + 1: DataArray(DataAnt) = "VOICE 3"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 54291: DataAnt = DataAnt + 1: DataArray(DataAnt) = "ATTACK/DECAY VOICE 3"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 54292: DataAnt = DataAnt + 1: DataArray(DataAnt) = "SUSTAIN/RELEASE VOICE 3"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 54293: DataAnt = DataAnt + 1: DataArray(DataAnt) = "FILTER CUTOFF FREQUENCY - LO"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 54294: DataAnt = DataAnt + 1: DataArray(DataAnt) = "FILTER CUTOFF FREQUENCY - HI"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 54295: DataAnt = DataAnt + 1: DataArray(DataAnt) = "FILTER RESSONANCE CONTROL"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 54296: DataAnt = DataAnt + 1: DataArray(DataAnt) = "SELECT OUTPUT VOLUME"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 56320: DataAnt = DataAnt + 1: DataArray(DataAnt) = "JOYSTICK PORT A"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 56321: DataAnt = DataAnt + 1: DataArray(DataAnt) = "JOYSTICK PORT B"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 56333: DataAnt = DataAnt + 1: DataArray(DataAnt) = "CIA INTERRUPT CONTROL"
    
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "BLACK"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "WHITE"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "RED"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "CYAN"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "PURPLE"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "GREEN"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "BLUE"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "YELLOW"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "ORANGE"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "BROWN"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LIGHT RED"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "GRAY 1"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "GRAY 2"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LIGHT GREEN"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "LIGHT BLUE"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "GRAY 3"
    
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "INST/DEL": DataAnt = DataAnt + 1: DataArray(DataAnt) = "RETURN"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "CRSR RIGHT": DataAnt = DataAnt + 1: DataArray(DataAnt) = "F7"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "F1": DataAnt = DataAnt + 1: DataArray(DataAnt) = "F3"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "F5": DataAnt = DataAnt + 1: DataArray(DataAnt) = "CRSR DOWN"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "3": DataAnt = DataAnt + 1: DataArray(DataAnt) = "W"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "A": DataAnt = DataAnt + 1: DataArray(DataAnt) = "4"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "Z": DataAnt = DataAnt + 1: DataArray(DataAnt) = "S"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "E": DataAnt = DataAnt + 1: DataArray(DataAnt) = " "
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "5": DataAnt = DataAnt + 1: DataArray(DataAnt) = "R"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "D": DataAnt = DataAnt + 1: DataArray(DataAnt) = "6"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "C": DataAnt = DataAnt + 1: DataArray(DataAnt) = "F"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "T": DataAnt = DataAnt + 1: DataArray(DataAnt) = "X"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "7": DataAnt = DataAnt + 1: DataArray(DataAnt) = "Y"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "G": DataAnt = DataAnt + 1: DataArray(DataAnt) = "8"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "B": DataAnt = DataAnt + 1: DataArray(DataAnt) = "H"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "U": DataAnt = DataAnt + 1: DataArray(DataAnt) = "V"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "9": DataAnt = DataAnt + 1: DataArray(DataAnt) = "I"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "J": DataAnt = DataAnt + 1: DataArray(DataAnt) = "0"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "M": DataAnt = DataAnt + 1: DataArray(DataAnt) = "K"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "O": DataAnt = DataAnt + 1: DataArray(DataAnt) = "N"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "+": DataAnt = DataAnt + 1: DataArray(DataAnt) = "P"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "L": DataAnt = DataAnt + 1: DataArray(DataAnt) = "-"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = ".": DataAnt = DataAnt + 1: DataArray(DataAnt) = ":"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "@": DataAnt = DataAnt + 1: DataArray(DataAnt) = ","
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "Ø": DataAnt = DataAnt + 1: DataArray(DataAnt) = "*"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = ";": DataAnt = DataAnt + 1: DataArray(DataAnt) = "CLR/HOME"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = " ": DataAnt = DataAnt + 1: DataArray(DataAnt) = "="
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "^": DataAnt = DataAnt + 1: DataArray(DataAnt) = "/"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "1": DataAnt = DataAnt + 1: DataArray(DataAnt) = "<-"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = " ": DataAnt = DataAnt + 1: DataArray(DataAnt) = "2"
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "SPACE": DataAnt = DataAnt + 1: DataArray(DataAnt) = " "
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "Q": DataAnt = DataAnt + 1: DataArray(DataAnt) = " "
    DataAnt = DataAnt + 1: DataArray(DataAnt) = "NO KEY"
    
    
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 160: DataAnt = DataAnt + 1: DataArray(DataAnt) = 0
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 169: DataAnt = DataAnt + 1: DataArray(DataAnt) = 54
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 133: DataAnt = DataAnt + 1: DataArray(DataAnt) = 1
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 177: DataAnt = DataAnt + 1: DataArray(DataAnt) = 251
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 133: DataAnt = DataAnt + 1: DataArray(DataAnt) = 253
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 169: DataAnt = DataAnt + 1: DataArray(DataAnt) = 55
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 133: DataAnt = DataAnt + 1: DataArray(DataAnt) = 1
    DataAnt = DataAnt + 1: DataArray(DataAnt) = 96
    
    'MsgBox "DataAnt = " & DataAnt
End Sub

