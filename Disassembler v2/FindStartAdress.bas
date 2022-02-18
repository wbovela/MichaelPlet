Attribute VB_Name = "FindStartAdress"
Option Explicit

Public Function Find_Start_Address(address As String) As Long
    Dim Cat(0 To 65537) As String
    Dim Branch(1 To 10000) As Long
    Dim AntalBranch As Long
    Dim JSR(1 To 10000) As Long
    Dim AntalJSR As Long
    Dim i As Long, j As Long, addr As Long
    Dim AntalOpcodes As Long
    Dim MaxAntal As Long, MaxAddr As Long
    Dim StartIx As Long, EndIx As Long

    Open App.Path & "\diss.log" For Output As #5

    MaxAntal = -1: MaxAddr = -1

    If Trim$(address) = "" Then
        StartIx = StartAddr
        EndIx = EndAddr
    Else
        StartIx = Val(address)
        EndIx = Val(address)
    End If
    
    For i = StartIx To EndIx
        For j = StartAddr To EndAddr: Cat(j) = "": Next
    
        AntalBranch = 0: AntalJSR = 0
        
        addr = i

Label1:
        If addr < StartAddr Or addr > EndAddr Then
            AntalOpcodes = 0: GoTo Slut
        
            If AntalBranch > 0 Then
                addr = Branch(AntalBranch)
                AntalBranch = AntalBranch - 1
                GoTo Label1
            End If
            If AntalJSR > 0 Then
                addr = JSR(AntalJSR)
                AntalJSR = AntalJSR - 1
                GoTo Label1
            End If
        ElseIf MNE(Memory(addr)) = "DATA" Or Cat(addr) <> "" Then
            If MNE(Memory(addr)) = "DATA" Then AntalOpcodes = 0: GoTo Slut
            
            If AntalBranch > 0 Then
                addr = Branch(AntalBranch)
                AntalBranch = AntalBranch - 1
                GoTo Label1
            End If
            If AntalJSR > 0 Then
                addr = JSR(AntalJSR)
                AntalJSR = AntalJSR - 1
                GoTo Label1
            End If
        Else
            If Memory(addr) Mod 32 = 16 Then 'BXX
                Calc_Branch_Addr (addr)
                AntalBranch = AntalBranch + 1
                Branch(AntalBranch) = Branch_Addr
                Cat(addr) = "O"
                Cat(addr + 1) = "P"
                addr = addr + 2
                GoTo Label1
            ElseIf Memory(addr) = 32 Then 'JSR
                AntalJSR = AntalJSR + 1
                JSR(AntalJSR) = Memory(addr + 1) + 256 * CLng(Memory(addr + 2))
                Cat(addr) = "O"
                Cat(addr + 1) = "P": Cat(addr + 2) = "P"
                addr = addr + 3
                GoTo Label1
            ElseIf Memory(addr) = 76 Then 'JMP
                Cat(addr) = "O"
                Cat(addr + 1) = "P": Cat(addr + 2) = "P"
                addr = Memory(addr + 1) + 256 * CLng(Memory(addr + 2))
                GoTo Label1
            ElseIf Memory(addr) = 108 Then 'JMP()
                Cat(addr) = "O"
                Cat(addr + 1) = "P": Cat(addr + 2) = "P"
                addr = Memory(addr + 1) + 256 * CLng(Memory(addr + 2))
                addr = Memory(addr) + 256 * CLng(Memory(addr + 1))
                GoTo Label1
            ElseIf Memory(addr) = 96 Or Memory(addr) = 64 Then 'Or Memory(addr) = 0 Then 'RTS or RTI or BRK
                Cat(addr) = "O"
                If AntalBranch > 0 Then
                    j = addr
                    addr = Branch(AntalBranch)
                    AntalBranch = AntalBranch - 1
                    GoTo Label1
                End If
                If AntalJSR > 0 Then
                    addr = JSR(AntalJSR)
                    AntalJSR = AntalJSR - 1
                    GoTo Label1
                End If
            Else
                If AddrMode(Memory(addr)) = 0 Then
                    Cat(addr) = "O"
                    addr = addr + 1
                    GoTo Label1
                Else
                    If AddrMode(Memory(addr)) > 6 Then
                        Cat(addr) = "O"
                        Cat(addr + 1) = "P"
                        Cat(addr + 2) = "P"
                        addr = addr + 3
                        GoTo Label1
                    Else
                        Cat(addr) = "O"
                        Cat(addr + 1) = "P"
                        addr = addr + 2
                        GoTo Label1
                    End If
                End If
            End If
        End If
        
        AntalOpcodes = 0
        
        For j = StartAddr To EndAddr
            If Cat(j) = "O" Then AntalOpcodes = AntalOpcodes + 1
        Next
        'MsgBox "Addr = " & i & vbTab & "AntalOpcodes = " & AntalOpcodes
        
        'If Val(txtAddress.Text) <> 0 _
        'And i = Val(txtAddress.Text) Then
        '    MsgBox "Address = " & i & ", score = " & AntalOpcodes
        'End If
        
Slut:

        If Form1.chkHexMode.Value = vbChecked Then
            Print #5, "$" & Right$("0000" & Hex(i), 4) & Right$("          " & AntalOpcodes, 10)
        Else
            Print #5, Left$(i & "     ", 5) & Right$("          " & AntalOpcodes, 10)
        End If

        If AntalOpcodes > MaxAntal Then
            MaxAntal = AntalOpcodes
            MaxAddr = i
        End If
        
        Form1.lblStatus.Caption = "Finding start address ... " & Int(100 * (i - StartAddr) / (EndAddr - StartAddr)) & " %"
        
        DoEvents
    Next
    
    Form1.lblStatus.Caption = ""

    If Form1.chkHexMode.Value = vbChecked Then
        MsgBox "Start address = $" & Right$("0000" & Hex(MaxAddr), 4) & ", score = " & MaxAntal
    Else
        MsgBox "Start address = " & MaxAddr & ", score = " & MaxAntal
    End If

    Find_Start_Address = MaxAddr

    Close #5
End Function

Public Function Find_Start_Address2(address As String) As Long
    Dim Cat(0 To 65537) As String
    Dim Branch(1 To 10000) As Long
    Dim AntalBranch As Long
    Dim i As Long, j As Long, addr As Long
    Dim AntalOpcodes As Long
    Dim MaxAntal As Long, MaxAddr As Long
    Dim StartIx As Long, EndIx As Long

    Open App.Path & "\diss2.log" For Output As #5

    MaxAntal = -1: MaxAddr = -1

    If Trim$(address) = "" Then
        StartIx = StartAddr
        EndIx = EndAddr
    Else
        StartIx = Val(address)
        EndIx = Val(address)
    End If
    
    For i = StartIx To EndIx
        For j = StartAddr To EndAddr: Cat(j) = "": Next
    
        AntalBranch = 0
        
        addr = i

Label12:
        If addr < StartAddr Or addr > EndAddr Then
            AntalOpcodes = 0: GoTo Slut2
        
            If AntalBranch > 0 Then
                addr = Branch(AntalBranch)
                AntalBranch = AntalBranch - 1
                GoTo Label12
            End If
        ElseIf MNE(Memory(addr)) = "DATA" Or Cat(addr) <> "" Then
            If MNE(Memory(addr)) = "DATA" Then AntalOpcodes = 0: GoTo Slut2
            
            If AntalBranch > 0 Then
                addr = Branch(AntalBranch)
                AntalBranch = AntalBranch - 1
                GoTo Label12
            End If
        Else
            If Memory(addr) Mod 32 = 16 Then 'BXX
                Calc_Branch_Addr (addr)
                AntalBranch = AntalBranch + 1
                Branch(AntalBranch) = Branch_Addr
                Cat(addr) = "O"
                Cat(addr + 1) = "P"
                addr = addr + 2
                GoTo Label12
            ElseIf Memory(addr) = 76 Then 'JMP
                Cat(addr) = "O"
                Cat(addr + 1) = "P": Cat(addr + 2) = "P"
                addr = Memory(addr + 1) + 256 * CLng(Memory(addr + 2))
                GoTo Label12
            ElseIf Memory(addr) = 108 Then 'JMP()
                Cat(addr) = "O"
                Cat(addr + 1) = "P": Cat(addr + 2) = "P"
                addr = Memory(addr + 1) + 256 * CLng(Memory(addr + 2))
                addr = Memory(addr) + 256 * CLng(Memory(addr + 1))
                GoTo Label12
            ElseIf Memory(addr) = 96 Or Memory(addr) = 64 Or Memory(addr) = 0 Then 'RTS or RTI or BRK
                AntalOpcodes = 0: GoTo Slut2
            Else
                If AddrMode(Memory(addr)) = 0 Then
                    Cat(addr) = "O"
                    addr = addr + 1
                    GoTo Label12
                Else
                    If AddrMode(Memory(addr)) > 6 Then
                        Cat(addr) = "O"
                        Cat(addr + 1) = "P"
                        Cat(addr + 2) = "P"
                        addr = addr + 3
                        GoTo Label12
                    Else
                        Cat(addr) = "O"
                        Cat(addr + 1) = "P"
                        addr = addr + 2
                        GoTo Label12
                    End If
                End If
            End If
        End If
        
        AntalOpcodes = 0
        
        For j = StartAddr To EndAddr
            If Cat(j) = "O" Then AntalOpcodes = AntalOpcodes + 1
        Next
        'MsgBox "Addr = " & i & vbTab & "AntalOpcodes = " & AntalOpcodes
        
        'If Val(txtAddress.Text) <> 0 _
        'And i = Val(txtAddress.Text) Then
        '    MsgBox "Address = " & i & ", score = " & AntalOpcodes
        'End If
        
Slut2:

        If Form1.chkHexMode.Value = vbChecked Then
            Print #5, "$" & Right$("0000" & Hex(i), 4) & Right$("          " & AntalOpcodes, 10)
        Else
            Print #5, Left$(i & "     ", 5) & Right$("          " & AntalOpcodes, 10)
        End If

        If AntalOpcodes > MaxAntal Then
            MaxAntal = AntalOpcodes
            MaxAddr = i
        End If
        
        Form1.lblStatus.Caption = "Finding start address ... " & Int(100 * (i - StartAddr) / (EndAddr - StartAddr)) & " %"
        
        DoEvents
    Next
    
    Form1.lblStatus.Caption = ""

    If Form1.chkHexMode.Value = vbChecked Then
        MsgBox "Start address = $" & Right$("0000" & Hex(MaxAddr), 4) & ", score = " & MaxAntal
    Else
        MsgBox "Start address = " & MaxAddr & ", score = " & MaxAntal
    End If
    
    Find_Start_Address2 = MaxAddr
    
    Close #5
End Function
