VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3015
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3015
   ScaleWidth      =   4560
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtJumpWidth 
      Height          =   285
      Left            =   2880
      TabIndex        =   4
      Top             =   1200
      Width           =   855
   End
   Begin VB.TextBox txtJumpHeight 
      Height          =   285
      Left            =   2880
      TabIndex        =   3
      Top             =   720
      Width           =   855
   End
   Begin VB.CommandButton cmdCalcJumpTable 
      Caption         =   "Calculate Jump Table"
      Height          =   495
      Left            =   960
      TabIndex        =   0
      Top             =   2040
      Width           =   2415
   End
   Begin VB.Label Label2 
      Caption         =   "Jump Width in Pixels:"
      Height          =   255
      Left            =   720
      TabIndex        =   2
      Top             =   1200
      Width           =   1575
   End
   Begin VB.Label Label1 
      Caption         =   "Jump Height in Pixels:"
      Height          =   255
      Left            =   720
      TabIndex        =   1
      Top             =   720
      Width           =   1815
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdCalcJumpTable_Click()
    Dim JumpParabola(0 To 500) As Double
    Dim JumpHeight As Long, JumpWidth As Long
    Dim X As Long

'=====================
'My formula:
'=====================
'
'(0, 0), (L/2, H), (L, 0)
'
'
'a = -4H/L^2, b = 4H/L, c = 0
'
'Y = -(4H/L^2)*X^2 + (4H/L)*X
'
'Y = -4HX(X - L)/L^2
    
    JumpHeight = Val(txtJumpHeight.Text)
    JumpWidth = Val(txtJumpWidth.Text)

    For X = 0 To JumpWidth
        JumpParabola(X) = 4 * JumpHeight * X * (JumpWidth - X) / JumpWidth ^ 2
    Next

    Open App.Path & "\Jump Table.txt" For Output As #1

    For X = 0 To JumpWidth
        If X = JumpWidth Then
            Print #1, Left$(X & "   ", 3) & Right$(Space(20) & JumpParabola(X), 20)
        Else
            Print #1, Left$(X & "   ", 3) & Right$(Space(20) & JumpParabola(X), 20) & Right$(Space(10) & Int(0.5 + JumpParabola(X + 1) - JumpParabola(X)), 10)
        End If
    Next

    Close #1

    MsgBox "Done"
End Sub
