VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Object = "{86CF1D34-0C5F-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCT2.OCX"
Begin VB.Form Form1 
   Caption         =   "Screen Finder"
   ClientHeight    =   8025
   ClientLeft      =   135
   ClientTop       =   510
   ClientWidth     =   10020
   LinkTopic       =   "Form1"
   ScaleHeight     =   535
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   668
   StartUpPosition =   2  'CenterScreen
   Begin MSComCtl2.UpDown udCharset 
      Height          =   495
      Left            =   2280
      TabIndex        =   15
      Top             =   1680
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   873
      _Version        =   393216
      Enabled         =   -1  'True
   End
   Begin MSComCtl2.UpDown udScreen 
      Height          =   495
      Left            =   2280
      TabIndex        =   14
      Top             =   960
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   873
      _Version        =   393216
      Enabled         =   -1  'True
   End
   Begin MSComCtl2.UpDown udBank 
      Height          =   495
      Left            =   2280
      TabIndex        =   13
      Top             =   240
      Width           =   255
      _ExtentX        =   450
      _ExtentY        =   873
      _Version        =   393216
      Enabled         =   -1  'True
   End
   Begin VB.CheckBox chkFix 
      Caption         =   "Fix colour"
      Height          =   255
      Left            =   5040
      TabIndex        =   12
      Top             =   1800
      Width           =   1215
   End
   Begin VB.CommandButton cmdRefresh 
      Caption         =   "&Refresh"
      Height          =   375
      Left            =   7440
      TabIndex        =   11
      Top             =   1800
      Width           =   1095
   End
   Begin VB.CheckBox chkEBC 
      Caption         =   "EBC mode"
      Height          =   252
      Left            =   6960
      TabIndex        =   6
      Top             =   360
      Width           =   1572
   End
   Begin VB.CheckBox chkMulticolor 
      Caption         =   "Multicolor mode"
      Height          =   252
      Left            =   5040
      TabIndex        =   5
      Top             =   360
      Width           =   1572
   End
   Begin VB.PictureBox picScreen 
      Appearance      =   0  'Flat
      BackColor       =   &H80000005&
      ForeColor       =   &H80000008&
      Height          =   4800
      Left            =   840
      ScaleHeight     =   400
      ScaleMode       =   0  'User
      ScaleWidth      =   640
      TabIndex        =   1
      Top             =   2400
      Width           =   7680
   End
   Begin MSComDlg.CommonDialog cdcOpen 
      Left            =   240
      Top             =   4920
      _ExtentX        =   688
      _ExtentY        =   688
      _Version        =   393216
   End
   Begin VB.Label lblCharSet 
      Height          =   255
      Left            =   1200
      TabIndex        =   18
      Top             =   1800
      Width           =   855
   End
   Begin VB.Label lblScreen 
      Height          =   255
      Left            =   1200
      TabIndex        =   17
      Top             =   1080
      Width           =   855
   End
   Begin VB.Label lblBank 
      Height          =   255
      Left            =   1200
      TabIndex        =   16
      Top             =   360
      Width           =   855
   End
   Begin VB.Label lbl53284 
      Alignment       =   2  'Center
      Caption         =   "53284"
      Height          =   255
      Left            =   120
      TabIndex        =   10
      Top             =   3600
      Width           =   615
   End
   Begin VB.Label lbl53283 
      Alignment       =   2  'Center
      Caption         =   "53283"
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   3240
      Width           =   615
   End
   Begin VB.Label lbl53282 
      Alignment       =   2  'Center
      Caption         =   "53282"
      Height          =   255
      Left            =   120
      TabIndex        =   8
      Top             =   2880
      Width           =   615
   End
   Begin VB.Label lbl53281 
      Alignment       =   2  'Center
      Caption         =   "53281"
      Height          =   255
      Left            =   120
      TabIndex        =   7
      Top             =   2520
      Width           =   615
   End
   Begin VB.Label lblValue 
      Height          =   252
      Left            =   6480
      TabIndex        =   4
      Top             =   6000
      Width           =   852
   End
   Begin VB.Label Label3 
      Caption         =   "Screen:"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   1080
      Width           =   855
   End
   Begin VB.Label Label4 
      Caption         =   "Char. set:"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   1800
      Width           =   855
   End
   Begin VB.Label Label2 
      Caption         =   "Bank:"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   360
      Width           =   855
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
Dim Color(0 To 15) As Long

Dim StartAddr As Long
Dim EndAddr As Long
Dim CurrAddr As Long

Dim Bank As Long, CharSet As Long, Screen As Long

Private Sub chkEBC_Click()
    Show_Screen
End Sub

Private Sub chkMulticolor_Click()
    Show_Screen
End Sub

Private Sub cmdRefresh_Click()
    Show_Screen
End Sub

Private Sub Form_Load()
    Color(0) = RGB(25, 29, 25)
    Color(1) = RGB(252, 249, 252)
    Color(2) = RGB(147, 58, 76)
    Color(3) = RGB(182, 250, 250)
    Color(4) = RGB(210, 125, 237)
    Color(5) = RGB(106, 207, 111)
    Color(6) = RGB(79, 68, 216)
    Color(7) = RGB(251, 251, 139)
    Color(8) = RGB(216, 156, 91)
    Color(9) = RGB(127, 83, 7)
    Color(10) = RGB(239, 131, 159)
    Color(11) = RGB(87, 87, 83)
    Color(12) = RGB(163, 163, 167)
    Color(13) = RGB(183, 251, 191)
    Color(14) = RGB(163, 151, 255)
    Color(15) = RGB(239, 233, 231)
End Sub

Private Sub udBank_DownClick()
    If Bank >= 16384 Then
        Bank = Bank - 16384

        Show_Screen
    End If
End Sub

Private Sub udBank_UpClick()
    If Bank <= 32768 Then
        Bank = Bank + 16384

        Show_Screen
    End If
End Sub

Private Sub udScreen_DownClick()
    If Screen >= 1024 Then
        Screen = Screen - 1024

        Show_Screen
    End If
End Sub

Private Sub udScreen_UpClick()
    If Screen <= 14 * 1024 Then
        Screen = Screen + 1024

        Show_Screen
    End If
End Sub

Private Sub udCharset_DownClick()
    If CharSet >= 2048 Then
        CharSet = CharSet - 2048

        Show_Screen
    End If
End Sub

Private Sub udCharset_UpClick()
    If CharSet <= 6 * 2048 Then
        CharSet = CharSet + 2048

        Show_Screen
    End If
End Sub

Private Sub Show_Screen()
    Dim i As Integer, j As Integer, k As Integer, X As Byte
    Dim xx As Integer, yy As Integer, Code As Integer
    Dim Disp As Long, x1 As Integer, y1 As Integer
    Dim C00 As Long, C01 As Long, C10 As Long, C11 As Long
    Dim MultiColorChar As Boolean
    
    C00 = Color(Memory(53281) And 15)
    C01 = Color(Memory(53282) And 15)
    C10 = Color(Memory(53283) And 15)

    If chkFix.Value = vbChecked Then
        C00 = Color(2)
        C01 = Color(3)
        C10 = Color(4)
    End If

    lblBank.Caption = "$" & Dec2Hex(Bank, 4)
    
    lblCharSet.Caption = "$" & Dec2Hex(CharSet + Bank, 4)
    
    lblScreen.Caption = "$" & Dec2Hex(Screen + Bank, 4)
    
    picScreen.Cls
    
    For k = 0 To 999
        xx = 16 * (k Mod 40): yy = 16 * (k \ 40)
        Code = Memory(Screen + Bank + k)
        
        If chkEBC.Value = vbChecked Then Code = Code And 63
        
        MultiColorChar = False
        
        If chkMulticolor.Value = vbChecked Then
            C11 = Color(Memory(55296 + k) And 7)
            
            If Memory(55295 + k) And 8 Then
                MultiColorChar = True
            End If

            If chkFix.Value = vbChecked Then
                C11 = Color(5)
                MultiColorChar = True
            End If
        Else
            C11 = Color(Memory(55296 + k) And 15)
        End If
        
        Disp = CharSet + Bank + 8 * Code
        
        For j = 0 To 7
            X = Memory(Disp + j)
            
            y1 = yy + 2 * j
            
            If MultiColorChar Then
                For i = 0 To 6 Step 2
                    x1 = xx + 2 * i
                
                    If X And (2 ^ (7 - i)) Then
                        If X And (2 ^ (6 - i)) Then
                            picScreen.PSet (x1, y1), C11
                            picScreen.PSet (x1, y1 + 1), C11
                            picScreen.PSet (x1 + 1, y1), C11
                            picScreen.PSet (x1 + 1, y1 + 1), C11
                            picScreen.PSet (x1 + 2, y1), C11
                            picScreen.PSet (x1 + 2, y1 + 1), C11
                            picScreen.PSet (x1 + 3, y1), C11
                            picScreen.PSet (x1 + 3, y1 + 1), C11
                        Else
                            picScreen.PSet (x1, y1), C10
                            picScreen.PSet (x1, y1 + 1), C10
                            picScreen.PSet (x1 + 1, y1), C10
                            picScreen.PSet (x1 + 1, y1 + 1), C10
                            picScreen.PSet (x1 + 2, y1), C10
                            picScreen.PSet (x1 + 2, y1 + 1), C10
                            picScreen.PSet (x1 + 3, y1), C10
                            picScreen.PSet (x1 + 3, y1 + 1), C10
                        End If
                    Else
                        If X And (2 ^ (6 - i)) Then
                            picScreen.PSet (x1, y1), C01
                            picScreen.PSet (x1, y1 + 1), C01
                            picScreen.PSet (x1 + 1, y1), C01
                            picScreen.PSet (x1 + 1, y1 + 1), C01
                            picScreen.PSet (x1 + 2, y1), C01
                            picScreen.PSet (x1 + 2, y1 + 1), C01
                            picScreen.PSet (x1 + 3, y1), C01
                            picScreen.PSet (x1 + 3, y1 + 1), C01
                        Else
                            picScreen.PSet (x1, y1), C00
                            picScreen.PSet (x1, y1 + 1), C00
                            picScreen.PSet (x1 + 1, y1), C00
                            picScreen.PSet (x1 + 1, y1 + 1), C00
                            picScreen.PSet (x1 + 2, y1), C00
                            picScreen.PSet (x1 + 2, y1 + 1), C00
                            picScreen.PSet (x1 + 3, y1), C00
                            picScreen.PSet (x1 + 3, y1 + 1), C00
                        End If
                    End If
                Next
            Else
                For i = 0 To 7
                    x1 = xx + 2 * i
                
                    If X And (2 ^ (7 - i)) Then
                        picScreen.PSet (x1, y1), C11
                        picScreen.PSet (x1, y1 + 1), C11
                        picScreen.PSet (x1 + 1, y1), C11
                        picScreen.PSet (x1 + 1, y1 + 1), C11
                    Else
                        picScreen.PSet (x1, y1), C00
                        picScreen.PSet (x1, y1 + 1), C00
                        picScreen.PSet (x1 + 1, y1), C00
                        picScreen.PSet (x1 + 1, y1 + 1), C00
                    End If
                Next
            End If
        Next
    Next
    
    DoEvents
End Sub

Private Sub mnuOpen_Click()
    cdcOpen.ShowOpen
    
    If cdcOpen.filename <> "" Then Read_File (cdcOpen.filename)
End Sub

Private Sub Read_File(filename As String)
    Dim byt As Byte, Address As Long

    Open filename For Binary As #1

    Get #1, , byt: Address = byt
    Get #1, , byt: Address = Address + 256 * CLng(byt)

    StartAddr = Address
    EndAddr = StartAddr + FileLen(filename) - 3

    For Address = StartAddr To EndAddr
        Get #1, , byt
        
        If Address <= 65535 Then
            Memory(Address) = byt
        End If
    Next

    Close #1
    
    Caption = "Screen Finder - " & cdcOpen.filename & "  " & Dec2Hex(StartAddr, 4) & "-" & Dec2Hex(EndAddr, 4)
    
    If Memory(53270) And 16 Then
        chkMulticolor.Value = vbChecked
    Else
        chkMulticolor.Value = vbUnchecked
    End If
    
    If Memory(53265) And 64 Then
        chkEBC.Value = vbChecked
    Else
        chkEBC.Value = vbUnchecked
    End If
    
    lbl53281.BackColor = Color(Memory(53281) And 15)
    lbl53282.BackColor = Color(Memory(53282) And 15)
    lbl53283.BackColor = Color(Memory(53283) And 15)
    lbl53284.BackColor = Color(Memory(53284) And 15)
    
    lbl53281.Caption = Memory(53281) And 15
    lbl53282.Caption = Memory(53282) And 15
    lbl53283.Caption = Memory(53283) And 15
    lbl53284.Caption = Memory(53284) And 15
    
    Bank = 16384 * (3 - (CLng(Memory(56576)) And 3))

    Screen = 1024 * (CLng(Memory(53272)) \ 16)

    CharSet = 2048 * ((CLng(Memory(53272)) And 15) \ 2)

    Show_Screen
End Sub

Private Function Dec2Hex(Dec As Long, HexLen As Integer) As String
    Dec2Hex = Right$("0000" & Hex(Dec), HexLen)
End Function
