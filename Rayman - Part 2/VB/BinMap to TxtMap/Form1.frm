VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "BinMap to TxtMap"
   ClientHeight    =   3930
   ClientLeft      =   135
   ClientTop       =   510
   ClientWidth     =   9855
   LinkTopic       =   "Form1"
   ScaleHeight     =   3930
   ScaleWidth      =   9855
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox txtMapWidth 
      Height          =   285
      Left            =   4080
      TabIndex        =   3
      Top             =   1560
      Width           =   735
   End
   Begin VB.CommandButton cmdMakeTxt 
      Caption         =   "Make TXT"
      Height          =   375
      Left            =   3720
      TabIndex        =   2
      Top             =   2760
      Width           =   1455
   End
   Begin VB.TextBox txtFilename 
      Height          =   285
      Left            =   4080
      TabIndex        =   0
      Top             =   720
      Width           =   4095
   End
   Begin MSComDlg.CommonDialog cdcOpen 
      Left            =   1320
      Top             =   1560
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label Label1 
      Caption         =   "Map Width"
      Height          =   255
      Left            =   2280
      TabIndex        =   4
      Top             =   1560
      Width           =   855
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

Private Sub cmdMakeTxt_Click()
    If txtFilename.Text <> "" Then
        Make_TXT (txtFilename.Text)

        MsgBox "Done"
    End If
End Sub

Private Sub mnuOpen_Click()
    cdcOpen.ShowOpen
    
    If cdcOpen.Filename <> "" Then txtFilename.Text = cdcOpen.Filename
End Sub

Private Sub Make_TXT(Filename As String)
    Dim Ix1 As Long, Ix2 As Long, Linie As String, MapWidth As Long, byt As Byte

    MapWidth = Val(txtMapWidth.Text)

    Open Filename For Binary As #1

    Open App.Path & "\Map.txt" For Output As #2

    For Ix1 = 0 To (FileLen(Filename) \ MapWidth) - 1
        Linie = ""

        For Ix2 = 0 To MapWidth - 1
            Get #1, , byt

            Linie = Linie & IIf(Ix2 = 0, "", " ") & Dec2Hex(CLng(byt), 2)
        Next

        Print #2, Linie
    Next

    Close #1
    Close #2
End Sub

Private Function Dec2Hex(Dec As Long, HexLen As Integer) As String
    Dec2Hex = Right$("0000" & Hex(Dec), HexLen)
End Function
