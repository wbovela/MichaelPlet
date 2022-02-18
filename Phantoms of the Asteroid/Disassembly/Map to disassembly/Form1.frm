VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   Caption         =   "Make DATA"
   ClientHeight    =   2385
   ClientLeft      =   135
   ClientTop       =   510
   ClientWidth     =   8370
   LinkTopic       =   "Form1"
   ScaleHeight     =   159
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   558
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdMap2Dis 
      Caption         =   "Map2Dis"
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
      Text            =   "D:\Michael\C64\Games\Phantom of the Asteroid\New folder\Disassembly\Phantom of the Asteroid (Version a) - B0.PRG"
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

Private Sub cmdMap2Dis_Click()
    If txtFilename.Text <> "" Then
        Read_File (txtFilename.Text)

        Make_Dis

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
End Sub

Private Sub Make_Dis()
    Dim Blocks As Long, BlockIx As Long, CharSet As Long
    Dim MapStart As Long, MapWidth As Long, MapHeight As Long
    Dim MapX As Long, MapY As Long
    Dim BlockX As Long, BlockY As Long, CharVal As Long
    Dim Ix1 As Long, Ix2 As Long, X As Long, Y As Long
    Dim Linie As String, Bits As Integer
    Dim ColTab As Long
    Dim Screen As Long, ScreenRow As Long, ScreenCol As Long

    Open App.Path & "\Map as BYTE.txt" For Output As #2
    Open App.Path & "\Blocks as BYTE.txt" For Output As #3
    Open App.Path & "\Screen as BYTE.txt" For Output As #4

    Blocks = 32768 '32848 '32768
    CharSet = 12288: ColTab = 16384
    MapStart = 57344 '32772 '33514 - 10 * 77 + 28
    MapWidth = 64: MapHeight = 127 '128 '20
    Screen = 1024

    For MapY = 0 To MapHeight - 1
        Linie = Dec2Hex(MapStart + 64 * MapY, 4) & "  "

        BlockIx = Memory(MapStart + MapWidth * MapY)

        Linie = Linie & Dec2Hex(BlockIx, 2) & " ...             "

        For MapX = 0 To MapWidth - 1
            BlockIx = Memory(MapStart + MapWidth * MapY + MapX)

            Linie = Linie & IIf(MapX = 0, "BYTE ", ",") & "$" & Dec2Hex(BlockIx, 2)
        Next

        Print #2, Linie
    Next


    For BlockIx = 0 To 255
        Print #3, "                                             ; Block " & Dec2Hex(BlockIx, 2)

        For BlockY = 0 To 7
            Linie = Dec2Hex(Blocks + 80 * BlockIx + 10 * BlockY, 4) & "  "

            CharVal = Memory(Blocks + 80 * BlockIx + 10 * BlockY)

            Linie = Linie & Dec2Hex(CharVal, 2) & " ...             "

            For BlockX = 0 To 9
                CharVal = Memory(Blocks + 80 * BlockIx + 10 * BlockY + BlockX)

                Linie = Linie & IIf(BlockX = 0, "BYTE ", ",") & "$" & Dec2Hex(CharVal, 2)
            Next BlockX

            Print #3, Linie
        Next BlockY
    Next BlockIx


    For ScreenRow = 0 To 24
        Linie = Dec2Hex(Screen + 40 * ScreenRow, 4) & "  "

        CharVal = Memory(Screen + 40 * ScreenRow)

        Linie = Linie & Dec2Hex(CharVal, 2) & " ...             "

        For ScreenCol = 0 To 39
            CharVal = Memory(Screen + 40 * ScreenRow + ScreenCol)

            Linie = Linie & IIf(ScreenCol = 0, "BYTE ", ",") & "$" & Dec2Hex(CharVal, 2)
        Next ScreenCol

        Print #4, Linie
    Next ScreenRow

    Close #2
    Close #3
    Close #4
End Sub

Private Function Dec2Hex(Dec As Long, HexLen As Integer) As String
    Dec2Hex = Right$("0000" & Hex(Dec), HexLen)
End Function
