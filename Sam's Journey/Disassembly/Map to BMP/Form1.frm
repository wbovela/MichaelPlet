VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "Map to bmp"
   ClientHeight    =   2385
   ClientLeft      =   135
   ClientTop       =   510
   ClientWidth     =   8370
   LinkTopic       =   "Form1"
   ScaleHeight     =   159
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   558
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      BackColor       =   &H8000000D&
      Height          =   735
      Left            =   5760
      ScaleHeight     =   45
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   53
      TabIndex        =   3
      Top             =   1200
      Width           =   855
   End
   Begin VB.CommandButton cmdMap2BMP 
      Caption         =   "Map2BMP"
      Height          =   375
      Left            =   3600
      TabIndex        =   2
      Top             =   1560
      Width           =   1455
   End
   Begin VB.TextBox txtFilename 
      Height          =   285
      Left            =   4080
      TabIndex        =   0
      Text            =   "D:\Michael\C64\Games\Sam's Journey\Disassembly\Map to BMP\SJ 05.PRG"
      Top             =   720
      Width           =   4095
   End
   Begin MSComDlg.CommonDialog cdcOpen 
      Left            =   960
      Top             =   360
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label Label4 
      Caption         =   "Filename"
      Height          =   255
      Left            =   2280
      TabIndex        =   1
      Top             =   720
      Width           =   1575
   End
   Begin VB.Menu mnuFile 
      Caption         =   "File"
      Begin VB.Menu mnuOpen 
         Caption         =   "Open ..."
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim Memory(0 To 65535) As Byte

Dim StartAddr As Long
Dim EndAddr As Long
Dim Address As Long

Dim Colors(0 To 15) As Long
Dim BackgroundColor(0 To 3) As Long

Private Sub cmdMap2BMP_Click()
    If txtFilename.Text <> "" Then
        Read_File (txtFilename.Text)

        Make_BMP

        MsgBox "Done"
    End If
End Sub

Private Sub mnuOpen_Click()
    cdcOpen.ShowOpen
    
    If cdcOpen.filename <> "" Then txtFilename.Text = cdcOpen.filename
End Sub

Private Sub Read_File(filename As String)
    Dim byt As Byte

    StartAddr = 0

    EndAddr = FileLen(filename) + StartAddr - 1

    Open filename For Binary As #1

    For Address = StartAddr To EndAddr
        Get #1, , byt

        If Address <= 65535 Then
            Memory(Address) = byt
        End If
    Next

    Close #1

    'BackgroundColor(0) = Memory(53281) And 15
    'BackgroundColor(1) = Memory(53282) And 15
    'BackgroundColor(2) = Memory(53283) And 15
    BackgroundColor(3) = Memory(53284) And 15

    BackgroundColor(0) = 9
    BackgroundColor(1) = 13
    BackgroundColor(2) = 10
End Sub

Private Sub Make_BMP()
    Dim Blocks As Long, BlockIx As Long, CharSet As Long
    Dim MapStart As Long, MapWidth As Long, MapHeight As Long
    Dim MapX As Long, MapY As Long
    Dim BlockX As Long, BlockY As Long, CharVal As Long
    Dim Ix1 As Long, Ix2 As Long, X As Long, Y As Long
    Dim Linie As String, Bits As Integer
    Dim ColTab As Long

    Blocks = 35390
    CharSet = 51200: ColTab = 1024
    MapStart = 32772 '40724
    MapWidth = 90: MapHeight = 9
    'MapWidth = Memory(32770): MapHeight = Memory(32771)

    Picture1.Width = 32 * MapWidth + 4: Picture1.Height = 32 * MapHeight + 4

    For MapY = 0 To MapHeight - 1 '19
        For MapX = 0 To MapWidth - 1
            BlockIx = Memory(MapStart + MapWidth * MapY + MapX)

            For BlockY = 0 To 3
                For BlockX = 0 To 3
                    CharVal = Memory(Blocks + 16 * BlockIx + 4 * BlockY + BlockX)
                    'CharVal = Memory(1280 + CharVal)

                    For Ix1 = 0 To 7
                        If Memory(ColTab + CharVal) And 8 Then
                        'If Memory(56000) And 8 Then
                            For Ix2 = 6 To 0 Step -2
                                Bits = (Memory(CharSet + 8 * CharVal + Ix1) And (2 ^ (Ix2 + 1) + 2 ^ Ix2)) / (2 ^ (Ix2))
    
                                X = 32 * MapX + 8 * BlockX + 6 - Ix2
                                Y = 32 * MapY + 8 * BlockY + Ix1
    
                                Select Case Bits
                                Case 0
                                    Picture1.PSet (X, Y), Colors(BackgroundColor(0))
                                    Picture1.PSet (X + 1, Y), Colors(BackgroundColor(0))
                                Case 1
                                    Picture1.PSet (X, Y), Colors(BackgroundColor(1))
                                    Picture1.PSet (X + 1, Y), Colors(BackgroundColor(1))
                                Case 2
                                    Picture1.PSet (X, Y), Colors(BackgroundColor(2))
                                    Picture1.PSet (X + 1, Y), Colors(BackgroundColor(2))
                                Case 3
                                    Picture1.PSet (X, Y), Colors(Memory(ColTab + CharVal) And 7)
                                    Picture1.PSet (X + 1, Y), Colors(Memory(ColTab + CharVal) And 7)
                                    'Picture1.PSet (X, Y), Colors(0)
                                    'Picture1.PSet (X + 1, Y), Colors(0)
                                End Select
                            Next
                        Else
                            For Ix2 = 7 To 0 Step -1
                                Bits = (Memory(CharSet + 8 * CharVal + Ix1) And (2 ^ Ix2)) / (2 ^ (Ix2))
    
                                X = 32 * MapX + 8 * BlockX + 7 - Ix2
                                Y = 32 * MapY + 8 * BlockY + Ix1
    
                                Select Case Bits
                                Case 0
                                    Picture1.PSet (X, Y), Colors(BackgroundColor(0))
                                Case 1
                                    Picture1.PSet (X, Y), Colors(Memory(ColTab + CharVal) And 7)
                                    'Picture1.PSet (X, Y), Colors(0)
                                End Select
                            Next
                        End If
                    Next
                Next
            Next
        Next
    Next

    SavePicture Picture1.Image, App.Path & "\MAP.bmp"
End Sub

Private Function Dec2Hex(Dec As Long, HexLen As Integer) As String
    Dec2Hex = Right$("0000" & Hex(Dec), HexLen)
End Function

Private Sub Form_Load()
    Colors(0) = RGB(25, 29, 25) 'RGB(0, 0, 0)
    Colors(1) = RGB(252, 249, 252) 'RGB(255, 255, 255)
    Colors(2) = RGB(147, 58, 76) 'RGB(255, 0, 0)
    Colors(3) = RGB(182, 250, 250) 'RGB(0, 255, 255)
    Colors(4) = RGB(210, 125, 237) 'RGB(255, 0, 255)
    Colors(5) = RGB(106, 207, 111) 'RGB(0, 255, 0)
    Colors(6) = RGB(79, 68, 216) 'RGB(0, 0, 255)
    Colors(7) = RGB(251, 251, 139) 'RGB(255, 255, 0)
    Colors(8) = RGB(216, 156, 91) 'RGB(255, 128, 0)
    Colors(9) = RGB(127, 83, 7)  'RGB(128, 64, 128)
    Colors(10) = RGB(239, 131, 159) 'RGB(255, 128, 128)
    Colors(11) = RGB(87, 87, 83) 'RGB(96, 96, 96)
    Colors(12) = RGB(163, 167, 167) 'RGB(144, 144, 144)
    Colors(13) = RGB(183, 251, 191) 'RGB(128, 255, 128)
    Colors(14) = RGB(163, 151, 255) 'RGB(128, 128, 255)
    Colors(15) = RGB(204, 200, 198) 'RGB(239, 233, 231) 'RGB(192, 192, 192)
End Sub
