VERSION 5.00
Begin VB.Form Form2 
   Caption         =   "Form2"
   ClientHeight    =   6750
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   10230
   LinkTopic       =   "Form2"
   ScaleHeight     =   6750
   ScaleWidth      =   10230
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton cmdClose 
      Caption         =   "Close window"
      Height          =   375
      Left            =   4320
      TabIndex        =   2
      Top             =   6120
      Width           =   1815
   End
   Begin VB.TextBox txtMulticolor 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   7.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4815
      Left            =   5280
      MultiLine       =   -1  'True
      TabIndex        =   1
      Top             =   960
      Width           =   4815
   End
   Begin VB.TextBox txtNormal 
      BeginProperty Font 
         Name            =   "Courier New"
         Size            =   7.5
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4815
      Left            =   120
      MultiLine       =   -1  'True
      TabIndex        =   0
      Top             =   960
      Width           =   4815
   End
   Begin VB.Label Label2 
      Caption         =   "Multicolor"
      Height          =   255
      Left            =   5280
      TabIndex        =   4
      Top             =   720
      Width           =   3135
   End
   Begin VB.Label Label1 
      Caption         =   "Normal"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   720
      Width           =   2655
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdClose_Click()
    Unload Me
End Sub

Private Sub Form_Load()
    Dim Temp As String, i As Integer, j As Integer
    
    Temp = ""
    
    For i = 0 To 20
        For j = 0 To 23
            If Form1.lblPixel(24 * i + j + 504).BackColor = vbWhite Then
                Temp = Temp & ".."
            Else
                Temp = Temp & "##"
            End If
        Next
        
        Temp = Temp & vbCrLf
    Next
    
    txtNormal.Text = Temp
    
    Temp = ""
    
    For i = 0 To 20
        For j = 0 To 23
            Select Case Form1.lblPixel(24 * i + j + 2016).BackColor
            Case vbWhite
                Temp = Temp & ".."
            Case vbBlack
                Temp = Temp & "##"
            Case vbCyan
                Temp = Temp & "++"
            Case vbRed
                Temp = Temp & "OO"
            End Select
        Next
        
        Temp = Temp & vbCrLf
    Next
    
    txtMulticolor.Text = Temp
End Sub
