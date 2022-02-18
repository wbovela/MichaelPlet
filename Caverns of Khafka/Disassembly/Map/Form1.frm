VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5340
   ClientLeft      =   60
   ClientTop       =   360
   ClientWidth     =   6705
   LinkTopic       =   "Form1"
   ScaleHeight     =   356
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   447
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   375
      Left            =   2880
      TabIndex        =   1
      Top             =   720
      Width           =   1215
   End
   Begin VB.PictureBox Picture1 
      Appearance      =   0  'Flat
      AutoRedraw      =   -1  'True
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   12030
      Left            =   1200
      ScaleHeight     =   800
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   1280
      TabIndex        =   0
      Top             =   2520
      Width           =   19230
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Command1_Click()
    Dim Colors(0 To 3) As Long
    Dim Chars(0 To 255, 0 To 7) As String, Ix1 As Long, Ix2 As Long
    Dim Linie As String, Ix3 As Long, Ix4 As Long, Ix5 As Long, Char As Long
    Dim CharLin As String

    Colors(0) = RGB(25, 29, 25) 'RGB(0, 0, 0)
    Colors(1) = RGB(163, 167, 167) 'RGB(144, 144, 144)
    Colors(2) = RGB(216, 156, 91) 'RGB(255, 128, 0)
    'Colors(2) = RGB(127, 83, 7)  'RGB(128, 64, 128)
    Colors(3) = RGB(79, 68, 216) 'RGB(0, 0, 255)


    Ix1 = 0: Ix2 = 0

    Open App.Path & "\CharDef.txt" For Input As #2

    Do While Not EOF(2)
        Line Input #2, Linie

        If Linie <> "" Then
            Chars(Ix1, Ix2) = Trim$(Linie)
            If Ix2 = 7 Then
                Ix2 = 0: Ix1 = Ix1 + 1
            Else
                Ix2 = Ix2 + 1
            End If
        End If
    Loop

    Close #2

    Ix2 = 0

    Open App.Path & "\Map.txt" For Input As #1

    Do While Not EOF(1)
        Line Input #1, Linie

        If Trim$(Linie) <> "" Then
            Ix1 = 0

            For Ix3 = 0 To 159
                Char = Hex2Dec(Mid$(Linie, 1 + 3 * Ix3, 2))

                For Ix4 = 0 To 7
                    CharLin = PixLin(Chars(Char, Ix4))

                    For Ix5 = 0 To 7
                        Picture1.PSet (Ix1 + Ix5, Ix2 + Ix4), _
                                      Colors(Val(Mid$(CharLin, Ix5 + 1, 1)))
                    Next
                Next

                Ix1 = Ix1 + 8
            Next

            Ix2 = Ix2 + 8
        End If
    Loop

    Close #1

    SavePicture Picture1.Image, App.Path & "\Map.bmp"

    MsgBox "Done"
End Sub

Private Function Hex2Dec(HexVal As String) As Long
    Dim CharVal(1 To 2) As String, Sum As Long, Ix1 As Long

    CharVal(1) = Left$(HexVal, 1)
    CharVal(2) = Mid$(HexVal, 2, 1)

    Sum = 0

    For Ix1 = 1 To 2
        Sum = 16 * Sum

        Select Case CharVal(Ix1)
        Case "0"
        Case "1"
            Sum = Sum + 1
        Case "2"
            Sum = Sum + 2
        Case "3"
            Sum = Sum + 3
        Case "4"
            Sum = Sum + 4
        Case "5"
            Sum = Sum + 5
        Case "6"
            Sum = Sum + 6
        Case "7"
            Sum = Sum + 7
        Case "8"
            Sum = Sum + 8
        Case "9"
            Sum = Sum + 9
        Case "A"
            Sum = Sum + 10
        Case "B"
            Sum = Sum + 11
        Case "C"
            Sum = Sum + 12
        Case "D"
            Sum = Sum + 13
        Case "E"
            Sum = Sum + 14
        Case "F"
            Sum = Sum + 15
        End Select
    Next

    Hex2Dec = Sum
End Function

Private Function PixLin(CharPix As String) As String
    Dim CharVal(1 To 2) As String, Lin As String, Ix1 As Long

    CharVal(1) = Left$(CharPix, 1)
    CharVal(2) = Mid$(CharPix, 2, 1)

    Lin = ""

    For Ix1 = 1 To 2
        Select Case CharVal(Ix1)
        Case "0"
            Lin = Lin & "0000"
        Case "1"
            Lin = Lin & "0011"
        Case "2"
            Lin = Lin & "0022"
        Case "3"
            Lin = Lin & "0033"
        Case "4"
            Lin = Lin & "1100"
        Case "5"
            Lin = Lin & "1111"
        Case "6"
            Lin = Lin & "1122"
        Case "7"
            Lin = Lin & "1133"
        Case "8"
            Lin = Lin & "2200"
        Case "9"
            Lin = Lin & "2211"
        Case "A"
            Lin = Lin & "2222"
        Case "B"
            Lin = Lin & "2233"
        Case "C"
            Lin = Lin & "3300"
        Case "D"
            Lin = Lin & "3311"
        Case "E"
            Lin = Lin & "3322"
        Case "F"
            Lin = Lin & "3333"
        End Select
    Next

    PixLin = Lin
End Function
