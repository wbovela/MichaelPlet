Attribute VB_Name = "CIA"
Option Explicit

Global Reset As Boolean
Global StopEmu As Boolean

Global Joy56320 As Byte
Global Joy56321 As Byte

Public Sub KeyDown(KeyCode As Integer, Shift As Integer)
'    Static Calls As Integer
'
''KeyPressed = KeyCode
'
'    If KeyCode = 18 And Shift = 6 Then Joy2 = Joy2 And 111 'POKE 56320, PEEK(56320) And 111
'
'    If KeyCode >= 16 And KeyCode <= 18 Then Exit Sub
'
'    If KeyCode = 27 Then StopEmu = True: Exit Sub
'    If KeyCode = 112 Then Reset = True: Exit Sub
'    If KeyCode = 121 Then Load_PRG: Exit Sub
'
'    If KeyCode = 48 And Shift = 1 Then KeyCode = 61 '=
'    If KeyCode = 50 And Shift = 1 Then KeyCode = 34 '"
'    If KeyCode = 52 And Shift = 6 Then KeyCode = 36 '$
'    If KeyCode = 55 And Shift = 1 Then KeyCode = 47 '/
'    If KeyCode = 56 And Shift = 1 Then KeyCode = 40 '(
'    If KeyCode = 57 And Shift = 1 Then KeyCode = 41 ')
'    If KeyCode = 187 And Shift = 0 Then KeyCode = 43 '+
'    If KeyCode = 187 And Shift = 1 Then KeyCode = 63 '?
'    If KeyCode = 188 And Shift = 0 Then KeyCode = 44 ',
'    If KeyCode = 188 And Shift = 1 Then KeyCode = 59 ';
'    If KeyCode = 189 And Shift = 0 Then KeyCode = 45 '-
'    If KeyCode = 190 And Shift = 1 Then KeyCode = 58 ':
'    If KeyCode = 191 And Shift = 1 Then KeyCode = 42 '*
'    If KeyCode = 37 Then Joy2 = (Joy2 Or 8) And IIf(Shift = 6, 107, 123) 'POKE 56320, (PEEK(56320) Or 8) And IIf(Shift = 6, 107, 123) 'LEFT
'    If KeyCode = 38 Then Joy2 = (Joy2 Or 2) And IIf(Shift = 6, 110, 126) 'POKE 56320, (PEEK(56320) Or 2) And IIf(Shift = 6, 110, 126) 'UP
'    If KeyCode = 39 Then Joy2 = (Joy2 Or 4) And IIf(Shift = 6, 103, 119) 'POKE 56320, (PEEK(56320) Or 4) And IIf(Shift = 6, 103, 119) 'RIGHT
'    If KeyCode = 40 Then Joy2 = (Joy2 Or 1) And IIf(Shift = 6, 109, 125) 'POKE 56320, (PEEK(56320) Or 1) And IIf(Shift = 6, 109, 125) 'DOWN
'    POKE 56320, Joy2
'    'If Shift = 1 Then KeyCode = KeyCode - 16
'
'    If KeyCode = OldKeyCode Then
'        If Calls = 5 Then
'            OldKeyCode = -1: Calls = 0
'        Else
'            Calls = Calls + 1
'        End If
'    Else
'        KeyboardBuffer = KeyboardBuffer & Chr$(KeyCode)
'        OldKeyCode = KeyCode: Calls = 0
'        POKE 197, CByte(KeyCode)
'        If KeyCode = 13 Then POKE 197, 1 'RETURN
'    End If
'
''    Dim Buffer As Byte
''
''    Buffer = PEEK(198)
''
''    If Buffer < 10 Then
''        POKE 631 + Buffer, CByte(KeyCode)
''        POKE 198, Buffer + 1
''    End If

'MsgBox "KD " & KeyCode & " " & Shift

    If KeyCode = 27 Then StopEmu = True: Exit Sub 'Esc
    If KeyCode = 123 Then Reset = True: Exit Sub 'F12
    If KeyCode = 121 Then Load_PRG: Exit Sub 'F10


'up=1, down=2, left=4, right=8, fire=16
'Joystick 1 (56321):
'    Up      111 0    Num /
'    Down    101 0    Num 5
'    Left    103 0    Num 7
'    Right   105 0    Num 9
'    Fire     45 0    Insert
'
'Joystick 2 (56320):
'    Up      104 0    Num 8
'    Down     98 0    Num 2
'    Left    100 0    Num 4
'    Right   102 0    Num 6
'    Fire     46 0    Delete
    Select Case KeyCode
    Case 111
        Joy56321 = Joy56321 And 254
        'IoRAM(56321) = IoRAM(56321) And 254
    Case 101
        Joy56321 = Joy56321 And 253
        'IoRAM(56321) = IoRAM(56321) And 253
    Case 103
        Joy56321 = Joy56321 And 251
        'IoRAM(56321) = IoRAM(56321) And 251
    Case 105
        Joy56321 = Joy56321 And 247
        'IoRAM(56321) = IoRAM(56321) And 247
    Case 45
        Joy56321 = Joy56321 And 239
        'IoRAM(56321) = IoRAM(56321) And 239
    Case 104
        Joy56320 = Joy56320 And 254
        'IoRAM(56320) = Joy56320
    Case 98
        Joy56320 = Joy56320 And 253
        'IoRAM(56320) = Joy56320
    Case 100
        Joy56320 = Joy56320 And 251
        'IoRAM(56320) = Joy56320
    Case 102
        Joy56320 = Joy56320 And 247
        'IoRAM(56320) = Joy56320
    Case 46
        Joy56320 = Joy56320 And 239
        'IoRAM(56320) = Joy56320
    End Select


    Select Case Shift
    Case 0 'UNSHIFTED
        KeyMatrix(1, 7) = 1
        KeyMatrix(6, 4) = 1
        KeyMatrix(7, 2) = 1 'CTRL
        KeyMatrix(7, 5) = 1 'C= (ALT)
    Case 1 'SHIFT
        KeyMatrix(1, 7) = 0
        KeyMatrix(6, 4) = 0
        KeyMatrix(7, 2) = 1 'CTRL
        KeyMatrix(7, 5) = 1 'C= (ALT)
    Case 2 'CTRL
        KeyMatrix(1, 7) = 1
        KeyMatrix(6, 4) = 1
        KeyMatrix(7, 2) = 0 'CTRL
        KeyMatrix(7, 5) = 1 'C= (ALT)
    Case 3 'SHIFT + CTRL
        KeyMatrix(1, 7) = 1
        KeyMatrix(6, 4) = 1
        KeyMatrix(7, 2) = 1 'CTRL
        KeyMatrix(7, 5) = 1 'C= (ALT)
    Case 4 'ALT
        KeyMatrix(1, 7) = 1
        KeyMatrix(6, 4) = 1
        KeyMatrix(7, 2) = 1 'CTRL
        KeyMatrix(7, 5) = 0 'C= (ALT)
    Case 5 'SHIFT + ALT
        KeyMatrix(1, 7) = 1
        KeyMatrix(6, 4) = 1
        KeyMatrix(7, 2) = 1 'CTRL
        KeyMatrix(7, 5) = 1 'C= (ALT)
    Case 6 'CTRL + ALT = ALT GR
        KeyMatrix(1, 7) = 1
        KeyMatrix(6, 4) = 1
        KeyMatrix(7, 2) = 1 'CTRL
        KeyMatrix(7, 5) = 1 'C= (ALT)
    Case 7 'SHIFT + CTRL + ALT
        KeyMatrix(1, 7) = 1
        KeyMatrix(6, 4) = 1
        KeyMatrix(7, 2) = 1 'CTRL
        KeyMatrix(7, 5) = 1 'C= (ALT)
    End Select

    Select Case KeyCode
    Case 220 'STOP - here ½
        KeyMatrix(7, 7) = 0
    Case 81 'Q
        KeyMatrix(7, 6) = 0
    ''Case 18 'C= - here Alt
    ''    If Shift = 4 Then KeyMatrix(7, 5) = 0
    Case 32 'SPACE
        KeyMatrix(7, 4) = 0
    ''Case 17 'CTRL
    ''    KeyMatrix(7, 2) = 0
    Case 8 '<-
        KeyMatrix(7, 1) = 0
    Case 49 '1
        If Shift = 1 Then
            KeyMatrix(7, 0) = 0
    ''        KeyMatrix(1, 7) = 0
    ''        KeyMatrix(6, 4) = 0
        Else
            KeyMatrix(7, 0) = 0
        End If
    Case 186 '^
        If Shift = 1 Then
            KeyMatrix(6, 6) = 0
    ''        KeyMatrix(1, 7) = 1
    ''        KeyMatrix(6, 4) = 1
        End If
    Case 36 'HOME
        KeyMatrix(6, 3) = 0
    Case 191
        Select Case Shift
        Case 1
            KeyMatrix(6, 1) = 0 '*
    ''        KeyMatrix(1, 7) = 1
    ''        KeyMatrix(6, 4) = 1
        End Select
    Case 188
        If Shift = 1 Then
            KeyMatrix(6, 2) = 0 ';
    ''        KeyMatrix(1, 7) = 1
    ''        KeyMatrix(6, 4) = 1
        Else
            KeyMatrix(5, 7) = 0 ',
        End If
    Case 50
        Select Case Shift
        Case 6
            KeyMatrix(5, 6) = 0 '@
        Case 1
            KeyMatrix(7, 3) = 0 '"

    ''    KeyMatrix(1, 7) = 0
    ''    KeyMatrix(6, 4) = 0
        Case 0
            KeyMatrix(7, 3) = 0 '2
        End Select
    Case 190
        If Shift = 1 Then
            KeyMatrix(5, 5) = 0 ':
    ''        KeyMatrix(1, 7) = 1
    ''        KeyMatrix(6, 4) = 1
        Else
            KeyMatrix(5, 4) = 0 '.
        End If
    Case 189 '-
        KeyMatrix(5, 3) = 0
    Case 76 'L
        KeyMatrix(5, 2) = 0
    Case 80 'P
        KeyMatrix(5, 1) = 0
    Case 187 '+
        KeyMatrix(5, 0) = 0
    Case 78 'N
        KeyMatrix(4, 7) = 0
    Case 79 'O
        KeyMatrix(4, 6) = 0
    Case 75 'K
        KeyMatrix(4, 5) = 0
    Case 77 'M
        KeyMatrix(4, 4) = 0
    Case 48
        If Shift = 1 Then
            KeyMatrix(6, 5) = 0 '=
        Else
            KeyMatrix(4, 3) = 0 '0
        End If
    Case 74 'J
        KeyMatrix(4, 2) = 0
    Case 73 'I
        KeyMatrix(4, 1) = 0
    Case 57 '9
        KeyMatrix(4, 0) = 0
    Case 86 'V
        KeyMatrix(3, 7) = 0
    Case 85 'U
        KeyMatrix(3, 6) = 0
    Case 72 'H
        KeyMatrix(3, 5) = 0
    Case 66 'B
        KeyMatrix(3, 4) = 0
    Case 56 '8
        KeyMatrix(3, 3) = 0
    Case 71 'G
        KeyMatrix(3, 2) = 0
    Case 89 'Y
        KeyMatrix(3, 1) = 0
    Case 55
        If Shift = 1 Then
            KeyMatrix(6, 7) = 0 '/
        Else
            KeyMatrix(3, 0) = 0 '7
        End If
    Case 88 'X
        KeyMatrix(2, 7) = 0
    Case 84 'T
        KeyMatrix(2, 6) = 0
    Case 70 'F
        KeyMatrix(2, 5) = 0
    Case 67 'C
        KeyMatrix(2, 4) = 0
    Case 54 '6
        KeyMatrix(2, 3) = 0
    Case 68 'D
        KeyMatrix(2, 2) = 0
    Case 82 'R
        KeyMatrix(2, 1) = 0
    Case 53 '5
        KeyMatrix(2, 0) = 0
    Case 16 'LSHIFT - also RSHIFT unfortunately
        'KeyMatrix(1, 7) = 0
        'KeyMatrix(6, 4) = 0
    Case 69 'E
        KeyMatrix(1, 6) = 0
    Case 83 'S
        KeyMatrix(1, 5) = 0
    Case 90 'Z
        KeyMatrix(1, 4) = 0
    Case 52 '4
        KeyMatrix(1, 3) = 0
    Case 65 'A
        KeyMatrix(1, 2) = 0
    Case 87 'W
        KeyMatrix(1, 1) = 0
    Case 51
        Select Case Shift
        Case 6
            KeyMatrix(6, 0) = 0 '£
        Case 0
            KeyMatrix(1, 0) = 0 '3
        End Select
    Case 38 'CRSR UP
        KeyMatrix(0, 7) = 0
        KeyMatrix(1, 7) = 0
        KeyMatrix(6, 4) = 0
    Case 40 'CRSR DN
        KeyMatrix(0, 7) = 0
    Case 116 'F5
        KeyMatrix(0, 6) = 0
    Case 114 'F3
        KeyMatrix(0, 5) = 0
    Case 112 'F1
        KeyMatrix(0, 4) = 0
    Case 118 'F7
        KeyMatrix(0, 3) = 0
    Case 37 'CRSR LT
        KeyMatrix(0, 2) = 0
        KeyMatrix(1, 7) = 0
        KeyMatrix(6, 4) = 0
        KeyMatrix(7, 2) = 1 'CTRL
        KeyMatrix(7, 5) = 1 'C= (ALT)
    Case 39 'CRSR RT
        KeyMatrix(0, 2) = 0
    Case 13 'RETURN
        KeyMatrix(0, 1) = 0
    Case 46 'DELETE
        KeyMatrix(0, 0) = 0
    End Select
End Sub

Public Sub KeyUp(KeyCode As Integer, Shift As Integer)
'    OldKeyCode = -1
'
'    If Shift = 6 Then Joy2 = PEEK(56320) Or 16 'POKE 56320, PEEK(56320) Or 16
'    If KeyCode = 18 Then Joy2 = Joy2 Or 16 'PEEK(56320) Or 16 'FIRE
'    If KeyCode = 37 Then Joy2 = Joy2 Or 4 'PEEK(56320) Or 4 'LEFT
'    If KeyCode = 38 Then Joy2 = Joy2 Or 1 'PEEK(56320) Or 1 'UP
'    If KeyCode = 39 Then Joy2 = Joy2 Or 8 'PEEK(56320) Or 8 'RIGHT
'    If KeyCode = 40 Then Joy2 = Joy2 Or 2 'PEEK(56320) Or 2 'DOWN
'
'    POKE 56320, Joy2
'MsgBox "KU " & KeyCode & " " & Shift


'up=1, down=2, left=4, right=8, fire=16
'Joystick 1 (56321):
'    Up      111 0    Num /
'    Down    101 0    Num 5
'    Left    103 0    Num 7
'    Right   105 0    Num 9
'    Fire     45 0    Insert
'
'Joystick 2 (56320):
'    Up      104 0    Num 8
'    Down     98 0    Num 2
'    Left    100 0    Num 4
'    Right   102 0    Num 6
'    Fire     46 0    Delete
    Select Case KeyCode
    Case 111
        Joy56321 = Joy56321 Or 1
        'IoRAM(56321) = IoRAM(56321) Or 1
    Case 101
        Joy56321 = Joy56321 Or 2
        'IoRAM(56321) = IoRAM(56321) Or 2
    Case 103
        Joy56321 = Joy56321 Or 4
        'IoRAM(56321) = IoRAM(56321) Or 4
    Case 105
        Joy56321 = Joy56321 Or 8
        'IoRAM(56321) = IoRAM(56321) Or 8
    Case 45
        Joy56321 = Joy56321 Or 16
        'IoRAM(56321) = IoRAM(56321) Or 16
    Case 104
        Joy56320 = Joy56320 Or 1
        'IoRAM(56320) = Joy56320
    Case 98
        Joy56320 = Joy56320 Or 2
        'IoRAM(56320) = Joy56320
    Case 100
        Joy56320 = Joy56320 Or 4
        'IoRAM(56320) = Joy56320
    Case 102
        Joy56320 = Joy56320 Or 8
        'IoRAM(56320) = Joy56320
    Case 46
        Joy56320 = Joy56320 Or 16
        'IoRAM(56320) = Joy56320
    End Select


    Select Case Shift
    Case 0 'UNSHIFTED
        KeyMatrix(1, 7) = 1
        KeyMatrix(6, 4) = 1
        KeyMatrix(7, 2) = 1 'CTRL
        KeyMatrix(7, 5) = 1 'C= (ALT)
    Case 1 ' SHIFT
        KeyMatrix(1, 7) = 0
        KeyMatrix(6, 4) = 0
        KeyMatrix(7, 2) = 1 'CTRL
        KeyMatrix(7, 5) = 1 'C= (ALT)
    Case 2 'CTRL
        KeyMatrix(1, 7) = 1
        KeyMatrix(6, 4) = 1
        KeyMatrix(7, 2) = 0 'CTRL
        KeyMatrix(7, 5) = 1 'C= (ALT)
    Case 3 'SHIFT + CTRL
        KeyMatrix(1, 7) = 1
        KeyMatrix(6, 4) = 1
        KeyMatrix(7, 2) = 1 'CTRL
        KeyMatrix(7, 5) = 1 'C= (ALT)
    Case 4 'ALT
        KeyMatrix(1, 7) = 1
        KeyMatrix(6, 4) = 1
        KeyMatrix(7, 2) = 1 'CTRL
        KeyMatrix(7, 5) = 0 'C= (ALT)
    Case 5 'SHIFT + ALT
        KeyMatrix(1, 7) = 1
        KeyMatrix(6, 4) = 1
        KeyMatrix(7, 2) = 1 'CTRL
        KeyMatrix(7, 5) = 1 'C= (ALT)
    Case 6 'CTRL + ALT = ALT GR
        KeyMatrix(1, 7) = 1
        KeyMatrix(6, 4) = 1
        KeyMatrix(7, 2) = 1 'CTRL
        KeyMatrix(7, 5) = 1 'C= (ALT)
    Case 7 'SHIFT + CTRL + ALT
        KeyMatrix(1, 7) = 1
        KeyMatrix(6, 4) = 1
        KeyMatrix(7, 2) = 1 'CTRL
        KeyMatrix(7, 5) = 1 'C= (ALT)
    End Select

    Select Case KeyCode
    Case 220 'STOP - here ½
        KeyMatrix(7, 7) = 1
    Case 81 'Q
        KeyMatrix(7, 6) = 1
    Case 18 'C= - here Alt
        'KeyDown is 18 4, but KeyUp is 18 0
        ''If Shift = 0 Then KeyMatrix(7, 5) = 1
    Case 32 'SPACE
        KeyMatrix(7, 4) = 1
    Case 17 'CTRL
        KeyMatrix(7, 2) = 1
    Case 8 '<-
        KeyMatrix(7, 1) = 1
    Case 49 '1
        KeyMatrix(7, 0) = 1
    Case 186 '^
        If Shift = 1 Then
            KeyMatrix(6, 6) = 1
    ''        KeyMatrix(1, 7) = 0
    ''        KeyMatrix(6, 4) = 0
        End If
    Case 36 'HOME
        KeyMatrix(6, 3) = 1
    Case 191
        Select Case Shift
        Case 1
            KeyMatrix(6, 1) = 1 '*
    ''        KeyMatrix(1, 7) = 0
    ''        KeyMatrix(6, 4) = 0
        End Select
    Case 188
        If Shift = 1 Then
            KeyMatrix(6, 2) = 1 ';
    ''        KeyMatrix(1, 7) = 0
    ''        KeyMatrix(6, 4) = 0
        Else
            KeyMatrix(5, 7) = 1 ',
        End If
    Case 50
        Select Case Shift
        Case 6
            KeyMatrix(5, 6) = 1 '@
        Case 1
            KeyMatrix(7, 3) = 1 '"

    ''    KeyMatrix(1, 7) = 1
    ''    KeyMatrix(6, 4) = 1
        Case 0
            KeyMatrix(7, 3) = 1 '2
        End Select
    Case 190
        If Shift = 1 Then
            KeyMatrix(5, 5) = 1 ':
    ''        KeyMatrix(1, 7) = 0
    ''        KeyMatrix(6, 4) = 0
        Else
            KeyMatrix(5, 4) = 1 '.
        End If
    Case 189 '-
        KeyMatrix(5, 3) = 1
    Case 76 'L
        KeyMatrix(5, 2) = 1
    Case 80 'P
        KeyMatrix(5, 1) = 1
    Case 187 '+
        KeyMatrix(5, 0) = 1
    Case 78 'N
        KeyMatrix(4, 7) = 1
    Case 79 'O
        KeyMatrix(4, 6) = 1
    Case 75 'K
        KeyMatrix(4, 5) = 1
    Case 77 'M
        KeyMatrix(4, 4) = 1
    Case 48
        If Shift = 1 Then
            KeyMatrix(6, 5) = 1 '=
        Else
            KeyMatrix(4, 3) = 1 '0
        End If
    Case 74 'J
        KeyMatrix(4, 2) = 1
    Case 73 'I
        KeyMatrix(4, 1) = 1
    Case 57 '9
        KeyMatrix(4, 0) = 1
    Case 86 'V
        KeyMatrix(3, 7) = 1
    Case 85 'U
        KeyMatrix(3, 6) = 1
    Case 72 'H
        KeyMatrix(3, 5) = 1
    Case 66 'B
        KeyMatrix(3, 4) = 1
    Case 56 '8
        KeyMatrix(3, 3) = 1
    Case 71 'G
        KeyMatrix(3, 2) = 1
    Case 89 'Y
        KeyMatrix(3, 1) = 1
    Case 55
        If Shift = 1 Then
            KeyMatrix(6, 7) = 1 '/
        Else
            KeyMatrix(3, 0) = 1 '7
        End If
    Case 88 'X
        KeyMatrix(2, 7) = 1
    Case 84 'T
        KeyMatrix(2, 6) = 1
    Case 70 'F
        KeyMatrix(2, 5) = 1
    Case 67 'C
        KeyMatrix(2, 4) = 1
    Case 54 '6
        KeyMatrix(2, 3) = 1
    Case 68 'D
        KeyMatrix(2, 2) = 1
    Case 82 'R
        KeyMatrix(2, 1) = 1
    Case 53 '5
        KeyMatrix(2, 0) = 1
    Case 16 'LSHIFT - also RSHIFT unfortunately
        'KeyDown is 16 1, but KeyUp is 16 0
        'KeyMatrix(1, 7) = 1
        'KeyMatrix(6, 4) = 1
    Case 69 'E
        KeyMatrix(1, 6) = 1
    Case 83 'S
        KeyMatrix(1, 5) = 1
    Case 90 'Z
        KeyMatrix(1, 4) = 1
    Case 52 '4
        KeyMatrix(1, 3) = 1
    Case 65 'A
        KeyMatrix(1, 2) = 1
    Case 87 'W
        KeyMatrix(1, 1) = 1
    Case 51
        Select Case Shift
        Case 6
            KeyMatrix(6, 0) = 1 '£
        Case 0
            KeyMatrix(1, 0) = 1 '3
        End Select
    Case 38 'CRSR UP
        KeyMatrix(0, 7) = 1
        KeyMatrix(1, 7) = 1
        KeyMatrix(6, 4) = 1
        KeyMatrix(7, 2) = 1 'CTRL
        KeyMatrix(7, 5) = 1 'C= (ALT)
    Case 40 'CRSR DN
        KeyMatrix(0, 7) = 1
    Case 116 'F5
        KeyMatrix(0, 6) = 1
    Case 114 'F3
        KeyMatrix(0, 5) = 1
    Case 112 'F1
        KeyMatrix(0, 4) = 1
    Case 118 'F7
        KeyMatrix(0, 3) = 1
    Case 37 'CRSR LT
        KeyMatrix(0, 2) = 1
        KeyMatrix(1, 7) = 1
        KeyMatrix(6, 4) = 1
        KeyMatrix(7, 2) = 1 'CTRL
        KeyMatrix(7, 5) = 1 'C= (ALT)
    Case 39 'CRSR RT
        KeyMatrix(0, 2) = 1
    Case 13 'RETURN
        KeyMatrix(0, 1) = 1
    Case 46 'DELETE
        KeyMatrix(0, 0) = 1
    End Select
End Sub

Private Sub Load_PRG()
    Dim Temp As Byte, Addr As Long, Disp As Long, Prg As String, TempSP As Byte

    'TempSP = SP

    Prg = InputBox("Please enter a filename: ", , "MANIC MINER")
    
    If Dir$(App.Path & "\Prg\" & Prg & ".prg") = "" Then
        MsgBox "File not found": Exit Sub
    End If
    
    'Open App.Path & "\MANIC MINER.PRG" For Binary As #2
    'Open App.Path & "\gumshoe.prg" For Binary As #2
    'Open App.Path & "\OUTRUN.PRG" For Binary As #2
    Open App.Path & "\Prg\" & Prg & ".prg" For Binary As #2

    Disp = 0

    Get #2, , Temp: Addr = Temp
    Get #2, , Temp: Addr = Addr + 256 * CLng(Temp)

    Do While Not EOF(2)
        'Get #2, , Temp: POKE Addr + Disp, Temp
        Get #2, , Temp: RAM(Addr + Disp) = Temp
        Disp = Disp + 1
    Loop

    If (Addr = 2048 Or Addr = 2049) And (Addr + Disp < 40960) Then
    'If Addr = 2049 Then
        POKE 45, (Addr + Disp) Mod 256: POKE 46, (Addr + Disp) \ 256
        'POKE 45, 2104 Mod 256: POKE 46, 2104 \ 256
        'PC = 42282
    End If

    Close #2: MsgBox "PRG Loaded!"

    'SP = TempSP
End Sub
