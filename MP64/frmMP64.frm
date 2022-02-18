VERSION 5.00
Begin VB.Form frmMP64 
   Appearance      =   0  'Flat
   BackColor       =   &H00FF8080&
   BorderStyle     =   0  'None
   Caption         =   "MP64"
   ClientHeight    =   6960
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   12015
   KeyPreview      =   -1  'True
   LinkTopic       =   "frmMP64"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   464
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   801
   Begin VB.CommandButton cmdSlow 
      Caption         =   "SLOW"
      Height          =   372
      Left            =   1680
      TabIndex        =   15
      Top             =   5640
      Width           =   1092
   End
   Begin VB.CheckBox chkSavePC 
      Caption         =   "Check1"
      Height          =   252
      Left            =   6960
      TabIndex        =   10
      Top             =   3360
      Width           =   972
   End
   Begin VB.TextBox txtWatch 
      Height          =   288
      Left            =   6960
      TabIndex        =   5
      Top             =   2520
      Width           =   732
   End
   Begin VB.CommandButton cmdDump 
      Caption         =   "Dump"
      Height          =   495
      Left            =   6960
      TabIndex        =   3
      Top             =   4320
      Width           =   1575
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   4365
      Index           =   1
      Left            =   0
      ScaleHeight     =   291
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   457
      TabIndex        =   2
      Top             =   0
      Width           =   6855
      Begin VB.Label lblPerformance 
         BackColor       =   &H8000000E&
         BeginProperty Font 
            Name            =   "Fixedsys"
            Size            =   9
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FF8080&
         Height          =   252
         Left            =   0
         TabIndex        =   14
         Top             =   0
         Width           =   372
      End
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      ForeColor       =   &H80000008&
      Height          =   4332
      Index           =   0
      Left            =   0
      ScaleHeight     =   289
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   457
      TabIndex        =   0
      Top             =   0
      Width           =   6852
   End
   Begin VB.Label lblOpcode 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      BorderStyle     =   1  'Fixed Single
      ForeColor       =   &H80000008&
      Height          =   252
      Left            =   2880
      TabIndex        =   16
      Top             =   5640
      Width           =   1332
   End
   Begin VB.Label lblIRQ 
      BackStyle       =   0  'Transparent
      ForeColor       =   &H00FF0000&
      Height          =   252
      Left            =   7560
      TabIndex        =   13
      Top             =   4920
      Width           =   732
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "IRQ ="
      ForeColor       =   &H00FF0000&
      Height          =   252
      Left            =   6960
      TabIndex        =   12
      Top             =   4920
      Width           =   492
   End
   Begin VB.Label lblI 
      Height          =   252
      Left            =   6960
      TabIndex        =   11
      Top             =   240
      Width           =   972
   End
   Begin VB.Label Label3 
      Caption         =   "Label3"
      Height          =   252
      Left            =   6960
      TabIndex        =   9
      Top             =   1680
      Width           =   732
   End
   Begin VB.Label Label2 
      Caption         =   "Char:"
      Height          =   252
      Left            =   6960
      TabIndex        =   8
      Top             =   840
      Width           =   732
   End
   Begin VB.Label lblChar 
      Height          =   252
      Left            =   6960
      TabIndex        =   7
      Top             =   1080
      Width           =   732
   End
   Begin VB.Label lblValue 
      Height          =   252
      Left            =   6960
      TabIndex        =   6
      Top             =   2880
      Width           =   732
   End
   Begin VB.Label lblWatch 
      BackStyle       =   0  'Transparent
      Caption         =   "Watch reg."
      Height          =   252
      Left            =   6960
      TabIndex        =   4
      Top             =   2280
      Width           =   1092
   End
   Begin VB.Label Label1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Fixedsys"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF8080&
      Height          =   1092
      Left            =   0
      TabIndex        =   1
      Top             =   4320
      Width           =   6852
   End
End
Attribute VB_Name = "frmMP64"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

'
'   T O D O
'
'
'   DONE 1. Draw sprites
'   DONE 2. Bad line cond. and fetch
'   DONE 3. Draw border
'   DONE 4. X-Scroll
'   DONE 5. Expanded sprites
'   DONE 6. Sprites in border
'   7. Render from CharBuffer - not CharColorBuffer
'   8. Multicolor sprites
'   9. Multicolor BMM
'   10. Sprite/character priority
'   11. Emulator hangs
'   12. Not DEN And Not BorderON (Test on a real C64)
'   13. Collision in border
'   14. Character/Sprite collision
'   15. Multiple collisions
'   16. Close MIDI correctly when app. ends
'   17. Sprite stretching
'   18. Stop flickering in sprites
'   19. Decay
'   20. Read .D64 files
'   21. Optimize VIC
'   22. Optimize CPU
'   23. Optimize SID
'   24. Test timing of rasterinterrupts
'   25. Change number of instructions on a rasterline
'   26. Correct CIA interrupts
'   27. Refresh PictureBox when form is activated
'
'   Raster (fetch 8 lines of graphics when Raster = Y-Scroll)
'   Interrupts
'   Borders
'   Stop flicker in sprites
'   Expanded sprites
'   Smooth scroll
'   Sprite-Char priority
'   Sprite-Char Collisions
'   Sprite-Sprite Collisions
'   Keyboard
'   SID queue (of pokes)
'   Count cycles
'----------------------------------
'   Mirrors when PEEK to VIC or SID
'   PEEK(53295) to PEEK(53311) should always return 255
'   PEEK(54301) to PEEK(54303) should always return 255
'   6510 bugs
'   Illegal opcodes
'----------------------------------
'   SPECIAL FEATURES:
'   Color to black/white slider
'   Stereo panning
'   Mute voice
'   Map waveform to MIDI-patch
'   Export to MIDI-file
'   Disable sprite-sprite collision for a sprite
'   Disable display of a sprite
'   Debug mode:
'       POKE an address
'       PEEK an address
'       Watch an address
'       Fix an address on a value
'       Break when an address obtains a value
'       Break when a PC is reached
'       Start trace from PC
'       Start trace button
'       Stop trace button
'

Const CCDEVICENAME = 32
Const CCFORMNAME = 32
Const DM_PELSWIDTH = &H80000
Const DM_PELSHEIGHT = &H100000
Const CDS_TEST = &H4
Private Type DISPLAY_DEVICE
    cb As Long
    DeviceName As String * 32
    DeviceString As String * 128
    StateFlags As Long
    DeviceID As String * 128
    DeviceKey  As String * 128
End Type
Private Type DEVMODE
    dmDeviceName As String * CCDEVICENAME
    dmSpecVersion As Integer
    dmDriverVersion As Integer
    dmSize As Integer
    dmDriverExtra As Integer
    dmFields As Long
    dmOrientation As Integer
    dmPaperSize As Integer
    dmPaperLength As Integer
    dmPaperWidth As Integer
    dmScale As Integer
    dmCopies As Integer
    dmDefaultSource As Integer
    dmPrintQuality As Integer
    dmColor As Integer
    dmDuplex As Integer
    dmYResolution As Integer
    dmTTOption As Integer
    dmCollate As Integer
    dmFormName As String * CCFORMNAME
    dmUnusedPadding As Integer
    dmBitsPerPel As Integer
    dmPelsWidth As Long
    dmPelsHeight As Long
    dmDisplayFlags As Long
    dmDisplayFrequency As Long
    dmICMMethod As Long 'NT 4.0
    dmICMIntent As Long 'NT 4.0
    dmMediaType As Long 'NT 4.0
    dmDitherType As Long 'NT 4.0
    dmReserved1 As Long 'NT 4.0
    dmReserved2 As Long 'NT 4.0
    dmPanningWidth As Long 'Win2000
    dmPanningHeight As Long 'Win2000
End Type
Private Declare Function ChangeDisplaySettingsEx Lib "user32" Alias "ChangeDisplaySettingsExA" (lpszDeviceName As Any, lpDevMode As Any, ByVal hWnd As Long, ByVal dwFlags As Long, lParam As Any) As Long
Private Declare Function EnumDisplayDevices Lib "user32" Alias "EnumDisplayDevicesA" (Unused As Any, ByVal iDevNum As Long, lpDisplayDevice As DISPLAY_DEVICE, ByVal dwFlags As Long) As Boolean
Dim OldX As Long, OldY As Long, T As Long
Dim DD As DISPLAY_DEVICE, DevM As DEVMODE

Private Declare Function ShowCursor Lib "user32" (ByVal bShow As Long) As Long

Private Declare Function GetTickCount Lib "kernel32" () As Long
Private Declare Function QueryPerformanceCounter Lib "kernel32" (lpPerformanceCount As LARGE_INTEGER) As Long
Private Declare Function QueryPerformanceFrequency Lib "kernel32" (lpFrequency As LARGE_INTEGER) As Long
Private Declare Sub CopyMemory Lib "kernel32.dll" Alias "RtlMoveMemory" (Destination As Any, Source As Any, ByVal Length As Long)

Private Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)

Private Type LARGE_INTEGER
    LowPart As Long
    HighPart As Long
End Type

Dim LoNote As Integer

Dim Trace As Boolean

Dim Opcode As Byte
Dim TraceText As String
Dim LineNo As Long
Dim KeyPressed As Byte
Dim Buffer As Byte, CharCode As Byte, xxx As Long, yyy As Long
Dim KeyboardBuffer As String
Dim OldKeyCode As Integer
Dim Now1 As Date, Now2 As Date
Dim Joy2 As Byte
Dim Mode As Integer
Dim Performance As Long
Dim ScreenTypeX As Long
Dim ScreenTypeY As Long
Dim SkipFrames As Long
Dim Slow As Boolean

Dim Tider(1 To 10) As Long, Fra(1 To 10) As Long, Til(1 To 10) As Long

Private Sub Main_Loop_new()
    Dim liFrequency As LARGE_INTEGER, cuFrequency As Currency
    Dim liLastIRQ As LARGE_INTEGER, cuLastIRQ As Currency
    Dim liNewIRQ As LARGE_INTEGER, cuNewIRQ As Currency
    Dim pp As Long, ShowScreen As Boolean, ShowCount As Long
    Dim SleepTime As Long

ShowScreen = True: ShowCount = 0
    If QueryPerformanceFrequency(liFrequency) = 0 Then
        MsgBox "Your hardware doesn't support a high-resolution performance counter!", vbInformation
        Exit Sub
    Else
        cuFrequency = LargeIntToCurrency(liFrequency) * 10
    End If

    QueryPerformanceCounter liLastIRQ
    cuLastIRQ = LargeIntToCurrency(liLastIRQ) * 10000

    HidPic = 1

    PC = PEEKADDR(65532): Reset = False: StopEmu = False: Now1 = Now()
    LineNo = 0: KeyPressed = 0: KeyboardBuffer = "": OldKeyCode = -1

Looping:

    SID_Frame3

    For RASTER = 0 To 311
        If (RASTER = RasterLineIRQ + 1) And Not I Then
            If IoRAM(53274) And 1 Then
                IoRAM(53273) = 129
                B = False
                POKE 256 + SP, PC \ 256: SP = SP - 1
                POKE 256 + SP, PC Mod 256: SP = SP - 1
                POKE 256 + SP, ST: SP = SP - 1
                I = True
                PC = PEEKADDR(65534)
            End If
        End If

        If I Then
            For pp = 1 To 20 'Should be >= 25
        '        If Slow Then lblOpcode.Caption = Hex(PC) & "  " & Hex(PEEK(PC)): DoEvents
        '
        'If PC = 53248 Then Stop
                Opcode = PEEK(PC): PC = PC + 1: Do_Instruction (Opcode)
            Next
        Else
            For pp = 1 To 20 '25 '8 '19 'Should be >= 8 and <= 19
        '        If Slow Then lblOpcode.Caption = Hex(PC) & "  " & Hex(PEEK(PC)): DoEvents
        '
        'If PC = 53248 Then Stop
                Opcode = PEEK(PC): PC = PC + 1: Do_Instruction (Opcode)
            Next
        End If

        If ShowScreen Then
            If RASTER >= 15 And RASTER <= 298 Then Render_Raster_Line_In_Array (RASTER)
        End If
    Next

    If SkipFrames > 0 Then
        If ShowScreen Then
            ShowScreen = False: ShowCount = SkipFrames
        Else
            ShowCount = ShowCount - 1
            If ShowCount = 0 Then ShowScreen = True
        End If
    End If

    RASTER = 0
    
    lblIRQ.Caption = PEEKADDR(65534) 'PEEK(1)

    If StopEmu Then
        Close_SID

        If Mode = 1 Then
            DevM.dmPelsWidth = OldX
            DevM.dmPelsHeight = OldY
            Call ChangeDisplaySettingsEx(ByVal 0&, DevM, ByVal 0&, CDS_TEST, ByVal 0&)

            ShowCursor True
        End If

        Close #17

        End
    End If

TooFast:

    QueryPerformanceCounter liNewIRQ
    cuNewIRQ = LargeIntToCurrency(liNewIRQ) * 10000

    'If cuNewIRQ < cuLastIRQ + 42000 Then GoTo TooFast

    SleepTime = 20 - (cuNewIRQ - cuLastIRQ) / cuFrequency
    If SleepTime > 0 Then Sleep SleepTime
    'cuNewIRQ = cuLastIRQ + 50000

    QueryPerformanceCounter liNewIRQ
    cuNewIRQ = LargeIntToCurrency(liNewIRQ) * 10000
    'Performance = Int((9 * Performance + Int(5000000 / (cuNewIRQ - cuLastIRQ) + 0.5)) / 10 + 0.5)
    Performance = Int((9 * Performance + 2000 * cuFrequency / (cuNewIRQ - cuLastIRQ)) / 10 + 0.5)
    lblPerformance.Caption = Right$("   " & Performance, 3)
    cuLastIRQ = cuNewIRQ

    If (Not I) And Reset Then
        POKE 1, 55
        PC = PEEKADDR(65532): I = True: Reset = False
        D = False
        Close_SID 'Stop_Notes
        Init_SID3
    ElseIf (Not I) And IoRAM(56333) <> 127 Then ' And cuNewIRQ >= cuLastIRQ + 50000 Then
        cuLastIRQ = cuNewIRQ

        If KeyboardBuffer <> "" Then
            Buffer = PEEK(198)

            If Buffer < 10 Then
                CharCode = CByte(Asc(Left$(KeyboardBuffer, 1)))
                KeyboardBuffer = Mid$(KeyboardBuffer, 2)
            End If

            KeyPressed = 0
        End If

        IoRAM(53273) = 0
        B = False
        POKE 256 + SP, PC \ 256: SP = SP - 1
        POKE 256 + SP, PC Mod 256: SP = SP - 1
        POKE 256 + SP, ST: SP = SP - 1
        I = True
        PC = PEEKADDR(65534)
    End If

lblI.Caption = "I = " & I
    DoEvents

    GoTo Looping
End Sub

Private Function BIN(N As Byte) As String
    If N > 15 Then N = N / 16

    Select Case N
    Case 0
        BIN = "0000"
    Case 1
        BIN = "0001"
    Case 2
        BIN = "0010"
    Case 3
        BIN = "0011"
    Case 4
        BIN = "0100"
    Case 5
        BIN = "0101"
    Case 6
        BIN = "0110"
    Case 7
        BIN = "0111"
    Case 8
        BIN = "1000"
    Case 9
        BIN = "1001"
    Case 10
        BIN = "1010"
    Case 11
        BIN = "1011"
    Case 12
        BIN = "1100"
    Case 13
        BIN = "1101"
    Case 14
        BIN = "1110"
    Case 15
        BIN = "1111"
    End Select
End Function

Private Sub cmdSlow_Click()
    If cmdSlow.Caption = "SLOW" Then
        cmdSlow.Caption = "FAST"
        Slow = True
    Else
        cmdSlow.Caption = "SLOW"
        Slow = False
    End If
End Sub

Private Sub Form_KeyDown(KeyCode As Integer, Shift As Integer)
    KeyDown KeyCode, Shift
End Sub

Private Sub Form_KeyUp(KeyCode As Integer, Shift As Integer)
    KeyUp KeyCode, Shift
End Sub

Private Sub Form_Load()
    Dim Ix1 As Integer, Ix2 As Integer, StereoInt As Integer

    Performance = 0: Slow = False

    For Ix1 = 0 To 7: PowerOfTwo(Ix1) = 2 ^ Ix1: Next

    BorderON = True: ScreenBaseX = 45: ScreenBaseY = 36

    Init_VIC

    Load_ROMs
    POKE 0, 255: POKE 1, 255
    POKE 56576, 151: POKE 53272, 21
    POKE 56320, 127: POKE 56321, 255: Joy2 = 127

    I = True: IRQno = 0
    BasicIn = True
    CharAndIoOut = False
    CharIn = False
    KernalOut = False

    Open App.Path & "\Properties.txt" For Input As #3

    Input #3, Mode: Input #3, StereoInt: Stereo = CBool(StereoInt)
    Input #3, PatchNo(1): Input #3, PatchNo(2): Input #3, PatchNo(3): Input #3, PatchNo(4)
    Input #3, PatchVol(1): Input #3, PatchVol(2): Input #3, PatchVol(3): Input #3, PatchVol(4)
    Input #3, ScreenTypeX: Input #3, ScreenTypeY: Input #3, SkipFrames

    Close #3

    If Mode = 1 Then ShowCursor False

    Init_SID3

    DD.cb = Len(DD)
    OldX = SCREEN.Width / SCREEN.TwipsPerPixelX
    OldY = SCREEN.Height / SCREEN.TwipsPerPixelY
    DevM.dmSize = Len(DevM)
    'we want to change the horizontal and the vertical resolution
    DevM.dmFields = DM_PELSWIDTH Or DM_PELSHEIGHT
    DevM.dmPelsWidth = IIf(ScreenTypeX <> 400, ScreenTypeX, 400) '320 '480
    DevM.dmPelsHeight = IIf(ScreenTypeY <> 300, ScreenTypeY, 300) '240 '360
    'change the display settings

    If Mode = 1 Then
        Call ChangeDisplaySettingsEx(ByVal 0&, DevM, ByVal 0&, CDS_TEST, ByVal 0&)
    End If
frmMP64.Move 700, 400
    For Ix1 = 0 To 7
        For Ix2 = 0 To 7
            KeyMatrix(Ix1, Ix2) = 1
        Next
    Next

    Joy56320 = 255: Joy56321 = 255

    'DoEvents
    Open App.Path & "\PC.txt" For Output As #21
End Sub

Private Sub Form_Paint()
    Static FirstTime As Integer

    If FirstTime = 0 Then
        FirstTime = 1
        Main_Loop_new
    End If

    Refresh_Screen
End Sub

Private Sub Picture1_MouseDown(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Index = 0 Then Exit Sub

    lblChar.Caption = PEEK(16384 * CLng(3 - (IoRAM(56576) And 3)) + 64 * CLng(IoRAM(53272) And 240) + 40 * (Y \ 8) + X \ 8)
End Sub

Private Sub Picture1_MouseUp(Index As Integer, Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Index = 0 Then Exit Sub

    lblChar.Caption = ""
End Sub

Private Sub cmdDump_Click()
    Dim Ix1 As Long

    Open App.Path & "\Dump.txt" For Binary As #7

    For Ix1 = 0 To 65535: Put #7, , RAM(Ix1): Next

    Close #7

    MsgBox "Dump saved!"
End Sub

Private Function LargeIntToCurrency(liInput As LARGE_INTEGER) As Currency
    'Copy 8 bytes from the large integer to an empty currency
    CopyMemory LargeIntToCurrency, liInput, LenB(liInput)
    'Adjust it
    LargeIntToCurrency = LargeIntToCurrency
End Function
