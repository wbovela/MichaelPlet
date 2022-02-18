VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "Make DATA"
   ClientHeight    =   4335
   ClientLeft      =   135
   ClientTop       =   510
   ClientWidth     =   9855
   LinkTopic       =   "Form1"
   ScaleHeight     =   4335
   ScaleWidth      =   9855
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdMakeData 
      Caption         =   "Make DATA"
      Height          =   375
      Left            =   3720
      TabIndex        =   5
      Top             =   3000
      Width           =   1455
   End
   Begin VB.TextBox txtFilename 
      Height          =   285
      Left            =   600
      TabIndex        =   3
      Top             =   600
      Width           =   8655
   End
   Begin VB.TextBox txtAddrFrom 
      Height          =   285
      Left            =   2880
      TabIndex        =   1
      Top             =   1320
      Width           =   855
   End
   Begin VB.CheckBox chkMulti 
      Caption         =   "Multicolor"
      Enabled         =   0   'False
      Height          =   375
      Left            =   5160
      TabIndex        =   0
      Top             =   1320
      Value           =   1  'Checked
      Width           =   2655
   End
   Begin MSComDlg.CommonDialog cdcOpen 
      Left            =   9000
      Top             =   960
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label Label4 
      Caption         =   "Filename:"
      Height          =   255
      Left            =   600
      TabIndex        =   4
      Top             =   360
      Width           =   1575
   End
   Begin VB.Label Label3 
      Caption         =   "Address from (in DEC):"
      Height          =   255
      Left            =   600
      TabIndex        =   2
      Top             =   1320
      Width           =   2055
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

Dim Memory(0 To 65535) As Byte

Dim StartAddr As Long
Dim EndAddr As Long
Dim Address As Long

Private Sub cmdMakeData_Click()
    If txtFilename.Text <> "" Then
        Read_File (txtFilename.Text)

        Make_DATA

        MsgBox "Done"
    End If
End Sub

Private Sub mnuOpen_Click()
    cdcOpen.ShowOpen
    
    If cdcOpen.filename <> "" Then txtFilename.Text = cdcOpen.filename
End Sub

Private Sub Read_File(filename As String)
    Dim byt As Byte

    StartAddr = Val(txtAddrFrom.Text)

    EndAddr = FileLen(filename) + StartAddr - 1

    Open filename For Binary As #1

    For Address = StartAddr To EndAddr
        Get #1, , byt
        
        If Address <= 65535 Then
            Memory(Address) = byt
        End If
    Next

    Close #1
End Sub

Private Sub Make_DATA()
    Dim Ix1 As Long, Ix2 As Long
    Dim Linie As String, Bits As Integer, CharLine As Integer, CharNo As Integer
    Dim Hires As String, Multi As String

'Hi-res:
'0   White       ..
'1   Black       ##
'
'Multi:
'00  White       ....
'01  Cyan        ++++
'10  Red         OOOO
'11  Black       ####
'
'---
'
'Hi -res:
'00  White       ....
'01  Black       ..##
'10  White       ##..
'11  Black       ####

    Open App.Path & "\DATA.txt" For Output As #2

    CharLine = 0: CharNo = 0

    For Ix1 = StartAddr To EndAddr
        If CharLine = 0 Then
            Linie = "                                             ; " & _
                    Dec2Hex(CLng(CharNo), 2)
            Print #2, Linie
        End If

        Linie = Dec2Hex(Ix1, 4) & "  " & _
                Dec2Hex(CLng(Memory(Ix1)), 2) & "                 " & _
                "BYTE $" & _
                Dec2Hex(CLng(Memory(Ix1)), 2) & _
                "            ;     "

        Hires = "": Multi = ""

        For Ix2 = 6 To 0 Step -2
            Bits = (Memory(Ix1) And (2 ^ (Ix2 + 1) + 2 ^ Ix2)) / (2 ^ (Ix2))

            Select Case Bits
            Case 0
                'Linie = Linie & "...."
                Hires = Hires & "....": Multi = Multi & "...."
            Case 1
                Hires = Hires & "..##": Multi = Multi & "++++"

                'If chkMulti.Value <> vbChecked Then
                '    Linie = Linie & "..##"
                'Else
                '    Linie = Linie & "++++"
                'End If
            Case 2
                Hires = Hires & "##..": Multi = Multi & "OOOO"

                'If chkMulti.Value <> vbChecked Then
                '    Linie = Linie & "##.."
                'Else
                '    Linie = Linie & "OOOO"
                'End If
            Case 3
                'Linie = Linie & "####"
                Hires = Hires & "####": Multi = Multi & "####"
            End Select
        Next

        Linie = Linie & Hires & "        " & Multi

        Print #2, Linie

        CharLine = (CharLine + 1) Mod 8

        If CharLine = 0 Then
            CharNo = (CharNo + 1) Mod 256
        End If
    Next

    Close #2
End Sub

Private Function Dec2Hex(Dec As Long, HexLen As Integer) As String
    Dec2Hex = Right$("0000" & Hex(Dec), HexLen)
End Function
