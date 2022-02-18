VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "Disassembler v2"
   ClientHeight    =   4275
   ClientLeft      =   135
   ClientTop       =   510
   ClientWidth     =   9315
   LinkTopic       =   "Form1"
   ScaleHeight     =   4275
   ScaleWidth      =   9315
   StartUpPosition =   2  'CenterScreen
   Begin VB.CheckBox chkUndocumentedOpcodes 
      Caption         =   "Undocumented Opcodes"
      Height          =   375
      Left            =   6480
      TabIndex        =   5
      Top             =   1200
      Width           =   2415
   End
   Begin VB.CheckBox chkAssembly 
      Caption         =   "Assembly"
      Height          =   372
      Left            =   480
      TabIndex        =   4
      Top             =   1200
      Value           =   1  'Checked
      Width           =   1092
   End
   Begin VB.CheckBox chkHexMode 
      Caption         =   "Hex mode"
      Height          =   372
      Left            =   1920
      TabIndex        =   3
      Top             =   1200
      Value           =   1  'Checked
      Width           =   1332
   End
   Begin VB.TextBox txtAddress 
      Height          =   285
      Left            =   3600
      TabIndex        =   2
      Top             =   1200
      Width           =   732
   End
   Begin VB.CheckBox chbFindStart 
      Caption         =   "Find start address"
      Height          =   375
      Left            =   4440
      TabIndex        =   1
      Top             =   1200
      Width           =   1815
   End
   Begin MSComDlg.CommonDialog cdcFile 
      Left            =   7560
      Top             =   2400
      _ExtentX        =   688
      _ExtentY        =   688
      _Version        =   393216
   End
   Begin VB.Label lblStatus2 
      Height          =   255
      Left            =   480
      TabIndex        =   9
      Top             =   3600
      Width           =   7935
   End
   Begin VB.Label Label2 
      Caption         =   "Status"
      Height          =   255
      Left            =   480
      TabIndex        =   8
      Top             =   2760
      Width           =   1335
   End
   Begin VB.Label lblStatus 
      Height          =   255
      Left            =   480
      TabIndex        =   7
      Top             =   3120
      Width           =   7935
   End
   Begin VB.Label lblFileName 
      Height          =   255
      Left            =   480
      TabIndex        =   6
      Top             =   480
      Width           =   7815
   End
   Begin VB.Label Label1 
      Height          =   255
      Left            =   480
      TabIndex        =   0
      Top             =   1920
      Width           =   975
   End
   Begin VB.Menu mnuFile 
      Caption         =   "File"
      Begin VB.Menu mnuImport 
         Caption         =   "Import .prg file ..."
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Const LineNumbers = True

Dim FileIn As String, FileOut As String

Dim BR(1 To 10000) As Long
Dim AntalBR As Long
Dim JM(1 To 10000) As Long
Dim AntalJM As Long

Dim OldComment As String

Dim CurrAddr As Long, Mode As Integer
Dim addr As Long, opcode As Byte, Disp As Integer, LabelIx As Long

Private Sub Form_Load()
    PeekROM = True
    
    Make_Data

    Initialize_Memory

    Initialize_Tables
End Sub

Private Sub mnuImport_Click()
    cdcFile.FileName = ""
    cdcFile.ShowOpen
    
    If cdcFile.FileName <> "" Then
        FileIn = cdcFile.FileName

        lblFileName.Caption = FileIn

        Indlaes_fil
        
        If chbFindStart.Value = vbChecked Then
            Find_Start_Address2 (txtAddress.Text)
        End If
        
        Disassemble
    End If
End Sub

Private Sub Indlaes_fil()
    Dim byt As Byte, address As Long

    Open FileIn For Binary As #1

    Get #1, , byt: address = byt
    Get #1, , byt: address = address + 256 * CLng(byt)

    StartAddr = address
    EndAddr = StartAddr + FileLen(FileIn) - 3

    For address = StartAddr To EndAddr
        Get #1, , byt
        
        If address <= 65535 Then
            Memory(address) = byt
        End If
    Next

    Close #1
End Sub

Private Sub Disassemble()
    Dim B As Integer, U As Integer
    Dim Text(0 To 63) As String, TextNo As Long
    Dim TextTemp As String
    Dim i As Long, OldCurrAddr As Long

    NoComments = False

    AntalBR = 0: AntalJM = 0
    
    AntLabels = 0: B = 1
    
    OldComment = "": HexMode = chkHexMode.Value
    
    For CurrAddr = StartAddr To EndAddr
        opcode = PEEK(CurrAddr)
        Mode = AddrMode(opcode)
        
        If Mode = 0 Then
            Disp = 0
        Else
            If Mode > 6 Then
                Disp = 2
            Else
                Disp = 1
            End If
        End If

        Calc_Branch_Addr (CurrAddr)
    
        If Branch_Addr >= StartAddr And Branch_Addr <= EndAddr Then

            Indsaet_Label (Branch_Addr)
        End If

        CurrAddr = CurrAddr + Disp
    Next

    Sort_Labels


    Open App.Path & "\Labels.txt" For Output As #5

    If AntLabels > 0 Then
        If chkHexMode.Value = vbChecked Then
            For i = 1 To AntLabels
                Print #5, "L" & Right$("00000" & i, 5) & "  " & _
                          "$" & Right$("0000" & Hex(Label(i)), 4)
            Next
        Else
            For i = 1 To AntLabels
                Print #5, "L" & Right$("00000" & i, 5) & "  " & _
                                Label(i)
            Next
        End If
    End If

    Close #5

    
    For TextNo = 0 To 63: Text(TextNo) = "": Next
    
    Linie = ""
    If chkAssembly Then Linie = StringOut("", IIf(HexMode, 17, 21), 0, False)
    Linie = Linie & "* = " & StringOut(StartAddr, 5, 4, True)
    Text(0) = Text(0) & Linie & vbCrLf & vbCrLf
    
    For CurrAddr = StartAddr To EndAddr
        OldCurrAddr = CurrAddr

        TextNo = CurrAddr \ 1024

        opcode = PEEK(CurrAddr)
        Mode = AddrMode(opcode)
        
        If Mode = 0 Then
            Disp = 0
        Else
            If Mode > 6 Then
                Disp = 2
            Else
                Disp = 1
            End If
        End If

        If MNE(opcode) = "DATA" Then
            Linie = ""

            Write_as_DATA (CurrAddr)
        Else
            Write_as_INSTRUCTION (CurrAddr)
        End If
        
        Text(TextNo) = Text(TextNo) & Linie

        If Make_Line(OldCurrAddr) Then
            Text(TextNo) = Text(TextNo) & _
                           IIf(chkAssembly, StringOut("", IIf(HexMode, 17, 21), 0, False), "") & _
                           ";________________________________________" & _
                           vbCrLf
        End If

        If CurrAddr Mod 100 = 0 Then
            TextTemp = ""

            lblStatus.Caption = "Disassembling ... " & Int(100 * (CurrAddr - StartAddr) / (EndAddr - StartAddr)) & " %"

            If chkHexMode.Value = vbChecked Then
                Label1.Caption = "$" & Right$("0000" & Hex(CurrAddr), 4)
            Else
                Label1.Caption = CurrAddr
            End If

            DoEvents
        End If
    Next
    
    TextTemp = ""

    For TextNo = 0 To 63
        TextTemp = TextTemp & Text(TextNo)
    Next

    Open App.Path & "\Disassembly.txt" For Output As #2

    Print #2, TextTemp

    Close #2

    lblStatus.Caption = "Disassembly completed and saved to"
    lblStatus2.Caption = App.Path & "\Disassembly.txt"

    'MsgBox "Done"
End Sub

Private Sub Write_as_DATA(DATAAddr As Long)
    Dim TempLinie As String

    TempLinie = ""

    opcode = PEEK(DATAAddr)

    If LineNumbers And chkAssembly Then
        TempLinie = TempLinie & StringOut(DATAAddr, IIf(HexMode, 6, 7), 4, False)
    End If

    If chkAssembly Then TempLinie = TempLinie & _
                                StringOut(opcode, IIf(HexMode, 11, 14), 2, False)

    LabelIx = Find_Label(DATAAddr)

    If LabelIx <> 0 Then
        TempLinie = TempLinie & "L" & Right$("00000" & LabelIx, 5) & "  "
    Else
        TempLinie = TempLinie & "        "
    End If

    TempLinie = TempLinie & _
            StringOut("BYTE", 5, 0, False) & _
            StringOut(opcode, 10, 3, True)

    TempLinie = TempLinie & _
            StringOut("", IIf(chkAssembly, 45, 24) - Len(TempLinie), 0, False) & _
            "; " & _
            StringOut(opcode, 3, 0, False) & _
            "      " & _
            Get_Char(opcode)

    Linie = Linie & TempLinie & vbCrLf
End Sub

Private Sub Write_as_INSTRUCTION(INSTAddr As Long)
    opcode = PEEK(INSTAddr)
    
    If MNE(opcode) = "BRK" Then
        Linie = ""

        Write_as_DATA (INSTAddr)

        CurrAddr = CurrAddr + Disp

        Exit Sub
    End If

    If (MNE(PEEK(INSTAddr + Disp + 1)) = "DATA" _
    Or MNE(PEEK(INSTAddr + Disp + 1)) = "BRK") _
    And opcode <> 96 And opcode <> 76 And opcode <> 108 Then
        Linie = ""

        Write_as_DATA (INSTAddr)

        If Disp = 1 Or Disp = 2 Then Write_as_DATA (INSTAddr + 1)

        If Disp = 2 Then Write_as_DATA (INSTAddr + 2)

        CurrAddr = CurrAddr + Disp

        Exit Sub
    End If

    If Disp = 1 And Find_Label(INSTAddr + 1) <> 0 Then
        Linie = ""

        Write_as_DATA (INSTAddr)
        Write_as_DATA (INSTAddr + 1)

        CurrAddr = CurrAddr + Disp

        Exit Sub
    End If

    If Disp = 2 And (Find_Label(INSTAddr + 1) <> 0 Or Find_Label(INSTAddr + 2) <> 0) Then
        Linie = ""
        Write_as_DATA (INSTAddr)
        Write_as_DATA (INSTAddr + 1)
        Write_as_DATA (INSTAddr + 2)

        CurrAddr = CurrAddr + Disp

        Exit Sub
    End If

    Linie = ""

    If LineNumbers And chkAssembly Then
        Linie = Linie & StringOut(INSTAddr, IIf(HexMode, 6, 7), 4, False)
    End If

    If chkAssembly Then
        If HexMode Then
            Select Case Disp
            Case 0
                Linie = Linie & StringOut(opcode, 11, 2, False)
            Case 1
                Linie = Linie & StringOut(opcode, 3, 2, False) & StringOut(Memory(INSTAddr + 1), 8, 2, False)
            Case 2
                Linie = Linie & StringOut(opcode, 3, 2, False) & StringOut(Memory(INSTAddr + 1), 3, 2, False) & StringOut(Memory(INSTAddr + 2), 5, 2, False)
            End Select
        Else
            Select Case Disp
            Case 0
                Linie = Linie & StringOut(opcode, 14, 3, False)
            Case 1
                Linie = Linie & StringOut(opcode, 4, 3, False) & StringOut(Memory(INSTAddr + 1), 10, 3, False)
            Case 2
                Linie = Linie & StringOut(opcode, 4, 3, False) & StringOut(Memory(INSTAddr + 1), 4, 3, False) & StringOut(Memory(INSTAddr + 2), 6, 3, False)
            End Select
        End If
    End If
    
    LabelIx = Find_Label(INSTAddr)

    If LabelIx <> 0 Then
        Linie = Linie & "L" & Right$("00000" & LabelIx, 5) & "  "
    Else
        Linie = Linie & "        "
    End If
    
    Linie = Linie & MNE(opcode)
    
    Calc_Branch_Addr (INSTAddr)
    
    If Branch_Addr >= 0 Then
        If Branch_Addr > INSTAddr + 129 And Left$(MNE(opcode), 1) = "B" Then
            Linie = ""

            Write_as_DATA (INSTAddr)
            Write_as_DATA (INSTAddr + 1)

            CurrAddr = CurrAddr + Disp

            Exit Sub
        End If

        LabelIx = Find_Label(Branch_Addr)
        
        If LabelIx <> 0 Then
            Linie = Linie & " L" & Right$("00000" & LabelIx, 5)
        Else
            If Left$(MNE(opcode), 1) = "B" Then
                Linie = ""

                Write_as_DATA (INSTAddr)
                Write_as_DATA (INSTAddr + 1)

                CurrAddr = CurrAddr + Disp

                Exit Sub
            Else
                Linie = Linie & " " & StringOut(Branch_Addr, 6, 4, True)
            End If
        End If
    Else
        If Disp > 0 Then
            If Disp = 1 Then
                addr = PEEK(INSTAddr + 1)
            Else
                addr = PEEK(INSTAddr + 1) + 256 * CLng(PEEK(INSTAddr + 2))
            End If
            
            Linie = Linie & " "
            
            If Mode = 1 Then Linie = Linie & "#"
            
            If Mode > 4 And Mode < 8 Then Linie = Linie & "("
            
            'Linie = Linie & Trim$(StringOut(addr, 2 * Disp + 1, 4, True))
            Linie = Linie & Trim$(StringOut(addr, 2 * Disp + 1, 2 * Disp, True))
            
            If Mode = 6 Or Mode = 7 Then Linie = Linie & ")"
            
            If Mode = 3 Or Mode = 5 Or Mode = 9 Then Linie = Linie & ",X"
            
            If Mode = 4 Or Mode = 6 Or Mode = 10 Then Linie = Linie & ",Y"
            
            If Mode = 5 Then Linie = Linie & ")"
            
            Linie = Linie & Comment(INSTAddr, opcode, Mode)
        End If
    End If

    Linie = Linie & vbCrLf

    CurrAddr = CurrAddr + Disp
End Sub

Private Function Make_Line(addrL As Long) As Boolean
    Dim j As Long, EndOfRoutine As Boolean

    EndOfRoutine = False

    If Memory(addrL) = 76 Or Memory(addrL) = 96 Or Memory(addrL) = 64 Then GoTo AA
    
    If (Memory(addrL) - 16) Mod 32 <> 0 Then GoTo CC
    
    Calc_Branch_Addr (addrL)
    
    If Branch_Addr > addrL Then
        AntalBR = AntalBR + 1
        BR(AntalBR) = Branch_Addr
    End If
    
    GoTo CC
    
AA:
    Calc_Branch_Addr (addrL)
    
    If Branch_Addr > addrL Then
        AntalJM = AntalJM + 1
        JM(AntalJM) = Branch_Addr
    End If
    
    EndOfRoutine = True
    
    If AntalBR > 0 Then
        For j = 1 To AntalBR
            If BR(j) > addrL Then EndOfRoutine = False: j = AntalBR
        Next
    End If
    
    If AntalJM > 0 Then
        For j = 1 To AntalJM
            If JM(j) = addrL + 3 And Memory(addrL) = 76 Then EndOfRoutine = False: j = AntalJM
            If JM(j) = addrL + 1 And Memory(addrL) <> 76 Then EndOfRoutine = False: j = AntalJM
        Next
    End If
    
    If EndOfRoutine Then AntalBR = 0: AntalJM = 0

CC:
    Make_Line = EndOfRoutine
End Function

Private Function Comment(addr As Long, opcode As Byte, Mode As Integer) As String
    Dim NewComment As String
    
    NewComment = OldComment: OldComment = ""
    
    Select Case opcode
    Case 169, 162, 160
        NewComment = NewComment & Comment_LDIM(addr, opcode, Mode)
    Case 172 To 174
        'LDA addr, LDX addr, LDY addr
        NewComment = NewComment & Comment_Load_Direct(addr, opcode, Mode, 2)
    Case 164 To 166
        NewComment = NewComment & Comment_Load_Direct(addr, opcode, Mode, 1)
    Case 140 To 142
        NewComment = NewComment & Comment_Store_Direct(addr, opcode, Mode, 2)
    Case 132 To 134
        NewComment = NewComment & Comment_Store_Direct(addr, opcode, Mode, 1)
    End Select
    
    If NewComment = "" Then
        Comment = ""
    Else
        Comment = StringOut("", IIf(chkAssembly, 45, 24) - Len(Linie), 0, False) & _
                  "; " & NewComment
    End If
End Function

Private Function Comment_LDIM(addr As Long, opcode As Byte, Mode As Integer) As String
    Dim TempComment As String, j As Integer, A As Long

    j = opcode - 20: If opcode = 169 Then j = 141
    
    If PEEK(addr + 2) = j - 8 Then
        A = PEEK(addr + 3)
    Else
        If PEEK(addr + 2) <> j Then Comment_LDIM = "": Exit Function
        
        A = PEEK(addr + 3) + 256 * CLng(PEEK(addr + 4))
    End If
    
    If A < 53280 Or A > 53294 Then
        If A = 54276 Or A = 54283 Or A = 54290 Then
            If PEEK(addr + 1) And 1 = 1 Then
                TempComment = "ENABLE"
            Else
                TempComment = "DISABLE"
            End If
        End If
    Else
        TempComment = ColorName(PEEK(addr + 1) And 15)
    End If
    
    Comment_LDIM = TempComment
End Function

Private Function Comment_Load_Direct(addr As Long, opcode As Byte, Mode As Integer, k As Integer) As String
    Dim TempComment As String, j As Integer, P As Long

    TempComment = Reg_Desc(addr, k)
    
    If A = 197 Then
        OldComment = Find_Key(addr, k)
    Else
        If (PEEK(addr) = 173 Or PEEK(addr) = 165) _
        And (PEEK(addr + k + 1) = 9 Or PEEK(addr + k + 1) = 41) Then
            If PEEK(addr + k + 3) = 141 Or PEEK(addr + k + 3) = 133 Then
                P = PEEK(addr + k + 4)
                
                If PEEK(addr + k + 3) = 141 Then
                    P = P + 256 * CLng(PEEK(addr + k + 5))
                End If
                
                If A = P Then
                    NoComments = True
                
                    Select Case A
                    Case 53265
                        OldComment = VIC1(addr)
                    Case 53270
                        OldComment = VIC2(addr)
                    Case 56320, 56321
                        OldComment = Joysticks(addr, k)
                    Case Else
                        OldComment = Find_Bits(addr, k)
                    End Select
                Else
                    OldComment = Find_Bits(addr, k)
                End If
            ElseIf PEEK(addr + k + 3) = 208 Or PEEK(addr + k + 3) = 240 Then
                If PEEK(addr + k + 1) = 41 Then
                    Select Case A
                    Case 53265
                        OldComment = VIC1(addr)
                    Case 53270
                        OldComment = VIC2(addr)
                    Case 56320, 56321
                        OldComment = Joysticks(addr, k)
                    Case Else
                        OldComment = Find_Bits(addr, k)
                    End Select
                End If
            End If
        End If
    End If

    Comment_Load_Direct = TempComment
End Function

Private Function Reg_Desc(addr As Long, k As Integer) As String
    Dim TempComment As String, j As Integer, x As Integer
    
    TempComment = ""
    
    A = PEEK(addr + 1)
    
    If k = 2 Then A = A + 256 * CLng(PEEK(addr + 2))
    
    Select Case A
    Case 631 To 640
        TempComment = "KEYBOARD BUFFER"
    Case 53248 To 53263
        TempComment = "SPRITE " & Trim$(A \ 2 - 26624) & IIf(A Mod 2 = 0, " X POS", " Y POS")
    Case 53282 To 53284
        TempComment = "BACKGROUND COLOR " & Trim$(A - 53281)
    Case 53287 To 53294
        TempComment = "SPRITE " & Trim$(A - 53287) & " COLOR"
    Case Else
        x = 99
        
        For j = 0 To AntalReg
            If RegAddr(j) = A Then x = j: j = AntalReg
        Next
        
        If x < 99 Then TempComment = RegName(x)
    End Select
    
    Reg_Desc = TempComment
End Function

Private Function Find_Key(addr As Long, k As Integer) As String
    Dim TempComment As String
    
    TempComment = ""
    
    If (PEEK(addr + k + 1) = 201 And (PEEK(addr) = 165 Or PEEK(addr) = 173)) _
    Or (PEEK(addr + k + 1) = 224 And (PEEK(addr) = 166 Or PEEK(addr) = 174)) _
    Or (PEEK(addr + k + 1) = 192 And (PEEK(addr) = 164 Or PEEK(addr) = 172)) Then
        TempComment = "IF " & IIf(PEEK(addr + k + 3) = 208, "NOT ", "")
        
        If PEEK(addr + k + 2) > 64 Then
            TempComment = ""
        ElseIf PEEK(addr + k + 2) = 64 Then
            TempComment = TempComment & Key(PEEK(addr + k + 2))
        Else
            TempComment = TempComment & "'" & Key(PEEK(addr + k + 2)) & "'"
        End If
    End If
    
    Find_Key = TempComment
End Function

Private Function VIC1(addr As Long) As String
    Dim TempComment As String, x As Byte
    
    TempComment = ""
    
    x = PEEK(addr + 4)
    
    If PEEK(addr + 3) = 9 Or PEEK(addr + 5) = 208 Then 'OR or BNE
        If x And 128 Then TempComment = "RAS-HI,"
        If x And 64 Then TempComment = TempComment & "ECM,"
        If x And 32 Then TempComment = TempComment & "BITMAP,"
        If x And 16 Then TempComment = TempComment & "SCREEN,"
        If x And 8 Then TempComment = TempComment & "25-ROWS,"
        
        If Len(TempComment) > 0 Then
            TempComment = Left$(TempComment, Len(TempComment) - 1) & " ON"
        End If
    Else
        If (x And 128) = 0 Then TempComment = "RAS-HI,"
        If (x And 64) = 0 Then TempComment = TempComment & "ECM,"
        If (x And 32) = 0 Then TempComment = TempComment & "BITMAP,"
        If (x And 16) = 0 Then TempComment = TempComment & "SCREEN,"
        If (x And 8) = 0 Then TempComment = TempComment & "25-ROWS,"
        
        If Len(TempComment) > 0 Then
            TempComment = Left$(TempComment, Len(TempComment) - 1) & " OFF"
        End If
    End If
    
    If Len(TempComment) > 0 Then
        If PEEK(addr + 5) = 208 Or PEEK(addr + 5) = 240 Then
            TempComment = IIf(PEEK(addr + 5) = 240, "IF ", "IF NOT ") & TempComment
        End If
    End If
    
    VIC1 = TempComment
End Function

Private Function VIC2(addr As Long) As String
    Dim TempComment As String, x As Byte
    
    TempComment = ""
    
    x = PEEK(addr + 4)
    
    If PEEK(addr + 3) = 9 Or PEEK(addr + 5) = 208 Then 'OR or BNE
        If x And 16 Then TempComment = "MCM,"
        If x And 8 Then TempComment = TempComment & "40-COLUMNS,"
        
        If Len(TempComment) > 0 Then
            TempComment = Left$(TempComment, Len(TempComment) - 1) & " ON"
        End If
    Else
        If (x And 16) = 0 Then TempComment = "MCM,"
        If (x And 8) = 0 Then TempComment = TempComment & "40 COLUMNS,"
        
        If Len(TempComment) > 0 Then
            TempComment = Left$(TempComment, Len(TempComment) - 1) & " OFF"
        End If
    End If
    
    If Len(TempComment) > 0 Then
        If PEEK(addr + 5) = 208 Or PEEK(addr + 5) = 240 Then
            TempComment = IIf(PEEK(addr + 5) = 240, "IF ", "IF NOT ") & TempComment
        End If
    End If
    
    VIC2 = TempComment
End Function

Private Function Joysticks(addr As Long, k As Integer) As String
    Dim TempComment As String
    
    TempComment = ""
    
    If PEEK(addr + 5) = 141 Then
        TempComment = Find_Bits(addr, k)
    Else
        If PEEK(addr + 4) And 16 Then TempComment = " FIRE +"
        If PEEK(addr + 4) And 8 Then TempComment = TempComment & " EAST +"
        If PEEK(addr + 4) And 4 Then TempComment = TempComment & " WEST +"
        If PEEK(addr + 4) And 2 Then TempComment = TempComment & " SOUTH +"
        If PEEK(addr + 4) And 1 Then TempComment = TempComment & " NORTH +"
        
        If Len(TempComment) > 0 Then
            TempComment = IIf(PEEK(addr + 5) = 240, "IF", "IF NOT") & Left$(TempComment, Len(TempComment) - 2)
        End If
    End If
    
    Joysticks = TempComment
End Function

Private Function Find_Bits(addr As Long, k As Integer) As String
    Dim TempComment As String, x As Integer, y As Integer, j As Integer
    
    TempComment = "BIT "
    
    x = PEEK(addr + k + 2)
    
    For j = 0 To 7
        y = x Mod 2: x = x \ 2
        
        If PEEK(addr + k + 1) = 9 _
        Or PEEK(addr + k + 3) = 208 _
        Or PEEK(addr + k + 3) = 240 Then
            If y = 1 Then TempComment = TempComment & Trim$(j) & " "
        Else
            If y = 0 Then TempComment = TempComment & Trim$(j) & " "
        End If
    Next
    
    If PEEK(addr + k + 3) = 240 Then TempComment = "IF " & TempComment
    If PEEK(addr + k + 3) = 208 Then TempComment = "IF NOT " & TempComment
    
    TempComment = TempComment & IIf(PEEK(addr + k + 1) = 9, "ON", "OFF")
    
    Find_Bits = TempComment
End Function

Private Function Comment_Store_Direct(addr As Long, opcode As Byte, Mode As Integer, k As Integer) As String
    Dim TempComment As String

    TempComment = ""
    
    If NoComments Then
        NoComments = False
    Else
        TempComment = Reg_Desc(addr, k)
    End If
    
    Comment_Store_Direct = TempComment
End Function
