VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4815
   ClientLeft      =   60
   ClientTop       =   360
   ClientWidth     =   6840
   LinkTopic       =   "Form1"
   ScaleHeight     =   321
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   456
   StartUpPosition =   3  'Windows Default
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1815
      Left            =   600
      ScaleHeight     =   117
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   245
      TabIndex        =   1
      Top             =   960
      Width           =   3735
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   375
      Left            =   1920
      TabIndex        =   0
      Top             =   240
      Width           =   1335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim StrDigits(0 To 15) As String

Private Sub Command1_Click()
    Dim Linie As String, Row As Long, Column As Long
    Dim Ix1 As Long, Ix2 As Long

    StrDigits(0) = "xxxx xx xx xxxx"
    StrDigits(1) = " x  x  x  x  x "
    StrDigits(2) = "xx   x x x  xxx"
    StrDigits(3) = "xxx  x x   xxx "
    StrDigits(4) = "x xx xxxx  x  x"
    StrDigits(5) = "xxxx  xx   xxx "
    StrDigits(6) = " x x  xx x x x "
    StrDigits(7) = "xxx  x x x  x  "
    StrDigits(8) = "xxxx xxxxx xxxx"
    StrDigits(9) = " x x x xx  x x "
    StrDigits(10) = " x x xxxxx xx x"
    StrDigits(11) = "xx x xxx x xxx "
    StrDigits(12) = " xxx  x  x   xx"
    StrDigits(13) = "xx x xx xx xxx "
    StrDigits(14) = "xxxx  xx x  xxx"
    StrDigits(15) = "xxxx  xx x  x  "
'MsgBox Asc("0") - 48 & " " & Asc("A") - 55

    Picture1.Picture = LoadPicture(App.Path & "\Map.bmp")
    'MsgBox Picture1.ScaleHeight & " " & Picture1.ScaleWidth

    Row = 0: Column = 0

    Open App.Path & "\Map.txt" For Input As #1

    Do While Not EOF(1)
        Line Input #1, Linie

        If Trim$(Linie) <> "" Then

            Column = Int((Len(Trim$(Linie)) + 0.5) / 3)
            Row = Row + 1
        End If
    Loop

    Close #1

    'MsgBox Row & " " & Column ' 100 159

    Row = 0

    Open App.Path & "\Map.txt" For Input As #1

    Do While Not EOF(1)
        Line Input #1, Linie

        If Trim$(Linie) <> "" Then
            For Ix1 = 0 To Column
                Draw_Digit 8 * Ix1, 8 * Row, Mid$(Linie, 3 * Ix1 + 1, 1)
                Draw_Digit 8 * Ix1 + 4, 8 * Row, Mid$(Linie, 3 * Ix1 + 2, 1)
            Next

            Row = Row + 1
        End If
    Loop

    Close #1

    SavePicture Picture1.Image, App.Path & "\Out.bmp"

    MsgBox "Done"
End Sub

Private Sub Draw_Digit(X As Long, Y As Long, Digit As String)
    Dim DigitIx As Long, Ix3 As Long, Ix4 As Long
    Dim Liniestykke As String, R As Long, G As Long, B As Long
    Dim Colour As Long

    'R 255
    'G 65280
    'B 16711680

    DigitIx = Asc(Digit) - 48: If DigitIx > 9 Then DigitIx = DigitIx - 7

    For Ix4 = 0 To 4
        Liniestykke = Mid$(StrDigits(DigitIx), 3 * Ix4 + 1, 3)

        For Ix3 = 0 To 2
            If Mid$(Liniestykke, Ix3 + 1, 1) <> " " Then
                Colour = Picture1.Point(X + Ix3, Y + Ix4)
                R = (Colour And 255)
                Colour = Colour \ 256: G = (Colour And 255)
                Colour = Colour \ 256: B = (Colour And 255)

                Picture1.PSet (X + Ix3, Y + Ix4), RGB((R + 255) \ 2, (G + 0) \ 2, (B + 0) \ 2)
            End If
        Next
    Next
End Sub
