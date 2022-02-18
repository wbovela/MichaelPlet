VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "M a p 2 C h a r s"
   ClientHeight    =   2385
   ClientLeft      =   135
   ClientTop       =   210
   ClientWidth     =   4740
   LinkTopic       =   "Form1"
   ScaleHeight     =   159
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   316
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdMap2Chars 
      Caption         =   "Map2Chars"
      Height          =   375
      Left            =   1440
      TabIndex        =   0
      Top             =   1080
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Const MapWidth = 256
Const MapHeight = 6

Dim Blocks(0 To 255, 0 To 3, 0 To 3) As String
Dim BlockX As Integer, BlockY As Integer

Private Sub cmdMap2Chars_Click()
    Read_Blocks

    Make_File

    MsgBox "Done"
End Sub

Private Sub Read_Blocks()
    Dim BlockByte As Byte, BlockNo As Integer

    Open App.Path & "\MAYBLK.bin" For Binary As #1

    For BlockNo = 0 To 255
        For BlockY = 0 To 3
            For BlockX = 0 To 3
                Get 1, , BlockByte
                Blocks(BlockNo, BlockX, BlockY) = Dec2Hex(CLng(BlockByte), 2)
            Next
        Next
    Next

    Close #1
End Sub

Private Sub Make_File()
    Dim MapByte As Byte, MapX As Integer, MapY As Integer, Linie(0 To 3) As String

    Open App.Path & "\MapInChars.txt" For Output As #3

    Open App.Path & "\MAYMAP.bin" For Binary As #2

    For MapY = 0 To MapHeight - 1
        Linie(0) = "": Linie(1) = "": Linie(2) = "": Linie(3) = ""

        For MapX = 0 To MapWidth - 1
            Get 2, , MapByte

            For BlockY = 0 To 3
                For BlockX = 0 To 3
                    Linie(BlockY) = Linie(BlockY) & Blocks(MapByte, BlockX, BlockY) & " "
                Next
            Next
        Next

        Print #3, Linie(0) & vbCrLf & Linie(1) & vbCrLf & Linie(2) & vbCrLf & Linie(3)
    Next

    Close #2
    Close #3
End Sub

Private Function Dec2Hex(Dec As Long, HexLen As Integer) As String
    Dec2Hex = Right$("0000" & Hex(Dec), HexLen)
End Function
