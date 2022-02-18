VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "BlockIx to Address"
   ClientHeight    =   2385
   ClientLeft      =   135
   ClientTop       =   210
   ClientWidth     =   5265
   LinkTopic       =   "Form1"
   ScaleHeight     =   159
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   351
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdBlockIx2Addr 
      Caption         =   "BlockIx2Addr"
      Height          =   495
      Left            =   1440
      TabIndex        =   0
      Top             =   840
      Width           =   1815
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdBlockIx2Addr_Click()
    Dim Blocks As Long, BlockIx As Long, BlockIxConv As Long, BlockDisp As Long

    Blocks = 17609

    Open App.Path & "\BlockIx2Addr.txt" For Output As #1

    For BlockIx = 0 To 255
        BlockIxConv = BlockIx
        BlockDisp = 0

        If BlockIxConv >= 29 Then BlockIxConv = BlockIxConv - 29: BlockDisp = 256
        If BlockIxConv >= 28 Then BlockIxConv = BlockIxConv - 28: BlockDisp = BlockDisp + 256

        Print #1, Dec2Hex(Blocks + 9 * BlockIxConv + BlockDisp, 4) & "    " & Dec2Hex(BlockIx, 2)
    Next

    Close #1

    MsgBox "Done"
End Sub

Private Function Dec2Hex(Dec As Long, HexLen As Integer) As String
    Dec2Hex = Right$("0000" & Hex(Dec), HexLen)
End Function
