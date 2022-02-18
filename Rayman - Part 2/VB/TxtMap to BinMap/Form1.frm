VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "TxtMap to BinMap"
   ClientHeight    =   3930
   ClientLeft      =   135
   ClientTop       =   510
   ClientWidth     =   9855
   LinkTopic       =   "Form1"
   ScaleHeight     =   3930
   ScaleWidth      =   9855
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdMakeBin 
      Caption         =   "Make BIN"
      Height          =   375
      Left            =   3720
      TabIndex        =   2
      Top             =   2760
      Width           =   1455
   End
   Begin VB.TextBox txtFilename 
      Height          =   285
      Left            =   720
      TabIndex        =   0
      Text            =   "D:\Michael\C64\VB\TxtMap to BinMap\Map.txt"
      Top             =   720
      Width           =   8415
   End
   Begin MSComDlg.CommonDialog cdcOpen 
      Left            =   1320
      Top             =   1560
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label Label4 
      Caption         =   "Filename"
      Height          =   255
      Left            =   720
      TabIndex        =   1
      Top             =   480
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

Private Sub cmdMakeBin_Click()
    If txtFilename.Text <> "" Then
        Make_BIN (txtFilename.Text)

        MsgBox "Done"
    End If
End Sub

Private Sub mnuOpen_Click()
    cdcOpen.ShowOpen
    
    If cdcOpen.Filename <> "" Then txtFilename.Text = cdcOpen.Filename
End Sub

Private Sub Make_BIN(Filename As String)
    Dim Ix1 As Long, Ix2 As Long, Linie As String, byt As Byte, BlockNo As String

    Open Filename For Input As #1

    Open App.Path & "\MapInBlocks.bin" For Binary As #2

    Do While Not EOF(1)
        Line Input #1, Linie

        Do While Trim$(Linie) <> ""
            BlockNo = Left$(Linie, 2)

            byt = CLng(DecVal(BlockNo))

            Put #2, , byt

            Linie = Trim$(Mid$(Linie, 3))
        Loop
    Loop

    Close #1
    Close #2
End Sub

Private Function Dec2Hex(Dec As Long, HexLen As Integer) As String
    Dec2Hex = Right$("0000" & Hex(Dec), HexLen)
End Function

Private Function DecVal(HexVal As String) As Long
    Dim Ix3 As Long, HexDig As String, HexDigNum As Long, DecSum As Long, Factor As Long

    DecSum = 0: Factor = 16

    For Ix3 = 1 To 2
        HexDig = Mid$(HexVal, Ix3, 1)

        Select Case HexDig
        Case "0"
            HexDigNum = 0
        Case "1"
            HexDigNum = 1
        Case "2"
            HexDigNum = 2
        Case "3"
            HexDigNum = 3
        Case "4"
            HexDigNum = 4
        Case "5"
            HexDigNum = 5
        Case "6"
            HexDigNum = 6
        Case "7"
            HexDigNum = 7
        Case "8"
            HexDigNum = 8
        Case "9"
            HexDigNum = 9
        Case "A"
            HexDigNum = 10
        Case "B"
            HexDigNum = 11
        Case "C"
            HexDigNum = 12
        Case "D"
            HexDigNum = 13
        Case "E"
            HexDigNum = 14
        Case "F"
            HexDigNum = 15
        End Select

        DecSum = DecSum + HexDigNum * Factor

        Factor = 1
    Next

    DecVal = DecSum
End Function
