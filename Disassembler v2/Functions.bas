Attribute VB_Name = "Functions"
Option Explicit

Public Function StringOut(TextIn As Variant, LengthOut As Integer, Digits As Integer, DollarSign As Boolean)
    Dim StringTemp As String, DigitsTemp As Integer
    
    If HexMode And Digits > 0 Then
        DigitsTemp = Digits: If Digits Mod 2 = 1 Then DigitsTemp = Digits - 1
        StringTemp = "": If DollarSign Then StringTemp = "$"
        
        StringTemp = StringTemp & Right$("00000000" & Hex(TextIn), DigitsTemp)
    Else
        'If Digits > 0 Then
        '    StringTemp = Right$("0000000000" & Trim$(TextIn), Digits)
        'Else
            StringTemp = Trim$(TextIn)
        'End If
    End If
    
    StringOut = Left$(StringTemp & "                                        ", LengthOut)
End Function

Public Sub Calc_Branch_Addr(addr As Long)
    Dim bBranch_Addr As Long
    
    bBranch_Addr = -1
    
    If PEEK(addr) = 76 Or PEEK(addr) = 32 Then
        bBranch_Addr = PEEK(addr + 1) + 256 * CLng(PEEK(addr + 2))
    Else
        If (PEEK(addr) - 16) Mod 32 = 0 Then
            If (PEEK(addr) - 16) / 32 >= 0 _
            And (PEEK(addr) - 16) / 32 <= 7 Then
                If PEEK(addr + 1) > 128 Then
                    bBranch_Addr = addr + PEEK(addr + 1) - 254
                Else
                    bBranch_Addr = addr + PEEK(addr + 1) + 2
                End If
            End If
        End If
    End If
    
    'If bBranch_Addr = -1 Then MsgBox "BA = -1" & vbCrLf & "Addr = " & addr & vbCrLf & "Opcode = " & Memory(addr) & vbCrLf & "MNE = " & MNE(Memory(addr))
    
    Branch_Addr = bBranch_Addr
End Sub

Public Function PEEK(addr As Long) As Byte
    'SUB_5000
    
    If addr > 65535 Then PEEK = 0: Exit Function
    
    If PeekROM Then
        PEEK = Memory(addr)
    Else
        PEEK = Memory(addr)
        
        If addr > 40959 And addr < 49152 _
        Or addr > 53247 Then
            'Memory(252) = Int(Addr / 256)
            'Memory(251) = Addr - 256 * Memory(252)
            'SYS49152:PEEK = Memory(253)
            PEEK = Memory(addr)
        Else
            PEEK = Memory(addr)
        End If
    End If
End Function

Public Function Get_Char(opcode As Byte) As String
    Dim Temp As Byte
    
    Temp = opcode And 127
    
    Select Case Temp
    Case 0
        Get_Char = Chr$(32)
    Case 1 To 26
        Get_Char = Chr$(Temp + 96)
    Case 27
        Get_Char = Chr$(91)
    Case 28
        Get_Char = Chr$(163)
    Case 29 To 31
        Get_Char = Chr$(Temp + 64)
    Case 32 To 63
        Get_Char = Chr$(Temp)
    Case 64
        Get_Char = "GFX"
    Case 65 To 90
        Get_Char = Chr$(Temp)
    Case 91 To 95
        Get_Char = "GFX"
    Case 96
        Get_Char = "SPACE"
    Case 97 To 127
        Get_Char = "GFX"
    End Select

    If opcode = 34 Or opcode = 162 Then Get_Char = "''"
End Function
