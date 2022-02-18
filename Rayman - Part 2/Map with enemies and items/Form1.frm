VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6510
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   10725
   LinkTopic       =   "Form1"
   ScaleHeight     =   434
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   715
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdPlaceObjects 
      Caption         =   "Place objects"
      Height          =   495
      Left            =   2400
      TabIndex        =   2
      Top             =   480
      Width           =   1815
   End
   Begin VB.PictureBox picObject 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1215
      Left            =   1560
      ScaleHeight     =   77
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   85
      TabIndex        =   1
      Top             =   1320
      Width           =   1335
   End
   Begin VB.PictureBox picMap 
      AutoRedraw      =   -1  'True
      AutoSize        =   -1  'True
      Height          =   1215
      Left            =   3720
      ScaleHeight     =   77
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   85
      TabIndex        =   0
      Top             =   1320
      Width           =   1335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdPlaceObjects_Click()
    picMap.Picture = LoadPicture(App.Path & "\Grid.bmp")

    Place_Object 0 * 32 + 2 * 8, 16 * 32 + 3 * 8, "Cloud", 3.5
    Place_Object 0 * 32 + 2 * 8, 12 * 32 + 3 * 8, "Cloud", 3.5
    Place_Object 2 * 32 + 1 * 8, 11 * 32 + 3 * 8, "Cloud", 3.5
    Place_Object 3 * 32 + 0 * 8, 10 * 32 + 3 * 8, "Cloud", 3.5
    Place_Object 2 * 32 + 1 * 8, 9 * 32 + 3 * 8, "Cloud", 3.5
    Place_Object 3 * 32 + 0 * 8, 8 * 32 + 2 * 8, "Cloud", 3.5
    Place_Object 1 * 32 + 3 * 8, 7 * 32 + 1 * 8, "Cloud", 3.5
    Place_Object 2 * 32 + 3 * 8, 6 * 32 + 1 * 8, "Cloud", 3.5

    Place_Object 5 * 32 + 3 * 8, 17 * 32 + 0 * 8, "Cloud", 3.5
    Place_Object 6 * 32 + 0 * 8, 15 * 32 + 0 * 8, "Cloud", 3.5

    Place_Object 10 * 32 + 3 * 8, 12 * 32 + 3 * 8, "Cloud", 3.5
    Place_Object 10 * 32 + 3 * 8, 11 * 32 + 2 * 8, "Cloud", 3.5

    Place_Object 17 * 32 + 2 * 8, 16 * 32 + 2 * 8, "Cloud", 3.5
    Place_Object 19 * 32 + 0 * 8, 9 * 32 + 3 * 8, "Cloud", 3.5
    Place_Object 28 * 32 + 0 * 8, 10 * 32 + 1 * 8, "Cloud", 3.5
    Place_Object 36 * 32 + 0 * 8, 11 * 32 + 1 * 8, "Cloud", 3.5

    Place_Object 45 * 32 + 2 * 8, 8 * 32 + 1 * 8, "Cloud", 3.5

    Place_Object 0 * 32 + 2 * 8, 17 * 32 + 0 * 8, "Stone man", 3.5

    Place_Object 1 * 32 + 0 * 8, 17 * 32 + 3 * 8, "Back sign", 3.5

    Place_Object 8 * 32 + 3 * 8, 5 * 32 + 2 * 8, "Big pointy ball", 4

    Place_Object 16 * 32 + 0 * 8, 9 * 32 + 2 * 8, "Two birds", 4

    Place_Object 39 * 32 + 1 * 8, 15 * 32 + 2 * 8, "Hook", 3.5

    Place_Object 36 * 32 + 1 * 8, 16 * 32 + 2 * 8, "Moving hook", 3.5

    Place_Object 25 * 32 + 2 * 8, 19 * 32 + 2 * 8, "Big bird", 4
    Place_Object 27 * 32 + 2 * 8, 19 * 32 + 2 * 8, "Big bird", 4

    SavePicture picMap.Image, App.Path & "\Grid with enemies and items.bmp"

    MsgBox "Done"
End Sub

Private Sub Place_Object(X As Long, Y As Long, ObjectName As String, Factor As Double)
    Dim ObjX As Long, ObjY As Long

    picObject.Picture = LoadPicture(App.Path & "\" & ObjectName & ".bmp")

    For ObjX = 0 To picObject.ScaleWidth - 1
        For ObjY = 0 To picObject.ScaleHeight - 1
            picMap.PSet (X + ObjX / Factor, Y + ObjY / Factor), picObject.Point(ObjX, ObjY)
        Next
    Next
End Sub
