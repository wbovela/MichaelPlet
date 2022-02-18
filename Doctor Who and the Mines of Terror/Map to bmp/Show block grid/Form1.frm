VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Show block grid"
   ClientHeight    =   2385
   ClientLeft      =   135
   ClientTop       =   210
   ClientWidth     =   8370
   LinkTopic       =   "Form1"
   ScaleHeight     =   159
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   558
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Picture1 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      BackColor       =   &H8000000D&
      Height          =   735
      Left            =   5760
      ScaleHeight     =   45
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   53
      TabIndex        =   1
      Top             =   1200
      Width           =   855
   End
   Begin VB.CommandButton cmdBlockGrid 
      Caption         =   "Show grid"
      Height          =   375
      Left            =   3600
      TabIndex        =   0
      Top             =   1560
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdBlockGrid_Click()
    Make_BMP

    MsgBox "Done"
End Sub

Private Sub Make_BMP()
    Dim Ix1 As Long, Ix2 As Long

    Picture1.Picture = LoadPicture(Left$(App.Path, InStrRev(App.Path, "\") - 1) & "\Pic.bmp")

    Ix1 = 0

    Do While Ix1 < Picture1.ScaleWidth
        Picture1.Line (Ix1, 0)-(Ix1, Picture1.ScaleHeight - 1), RGB(255, 255, 255)
        Ix1 = Ix1 + 32
    Loop

    Ix2 = 0

    Do While Ix2 < Picture1.ScaleHeight
        Picture1.Line (0, Ix2)-(Picture1.ScaleWidth - 1, Ix2), RGB(255, 255, 255)
        Ix2 = Ix2 + 32
    Loop

    SavePicture Picture1.Image, App.Path & "\Grid.bmp"
End Sub
