VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "comdlg32.ocx"
Begin VB.Form Form1 
   Caption         =   "Make Sprites"
   ClientHeight    =   3810
   ClientLeft      =   135
   ClientTop       =   510
   ClientWidth     =   9855
   LinkTopic       =   "Form1"
   ScaleHeight     =   3810
   ScaleWidth      =   9855
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton cmdMakeSprites 
      Caption         =   "Make Sprites"
      Height          =   375
      Left            =   3720
      TabIndex        =   2
      Top             =   2400
      Width           =   1455
   End
   Begin VB.TextBox txtFilename 
      Height          =   285
      Left            =   720
      TabIndex        =   0
      Top             =   960
      Width           =   8295
   End
   Begin MSComDlg.CommonDialog cdcOpen 
      Left            =   8400
      Top             =   1320
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Label Label4 
      Caption         =   "Filename:"
      Height          =   255
      Left            =   720
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

Dim Memory(0 To 65535) As Byte

Dim StartAddr As Long
Dim EndAddr As Long
Dim Address As Long

Private Sub cmdMakeSprites_Click()
    If txtFilename.Text <> "" Then
        Read_File (txtFilename.Text)

        Make_Sprites

        MsgBox "Done"
    End If
End Sub

Private Sub mnuOpen_Click()
    cdcOpen.ShowOpen
    
    If cdcOpen.filename <> "" Then txtFilename.Text = cdcOpen.filename
End Sub

Private Sub Read_File(filename As String)
    Dim byt As Byte

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
End Sub

Private Sub Make_Sprites()
    Dim Ix1 As Long, Ix2 As Long, Ix3 As Long, Ix4 As Long
    Dim Linie As String, LinieNormal As String, LinieMulti As String
    Dim HexStr As String

'0 0000 ........    ........
'1 0001 ....++++    ......##
'2 0010 ....OOOO    ....##..
'3 0011 ....####    ....####
'4 0100 ++++....    ..##....
'5 0101 ++++++++    ..##..##
'6 0110 ++++OOOO    ..####..
'7 0111 ++++####    ..######
'8 1000 OOOO....    ##......
'9 1001 OOOO++++    ##....##
'A 1010 OOOOOOOO    ##..##..
'B 1011 OOOO####    ##..####
'C 1100 ####....    ####....
'D 1101 ####++++    ####..##
'E 1110 ####OOOO    ######..
'F 1111 ########    ########

    Open App.Path & "\SpritesNormal.txt" For Output As #2
    Open App.Path & "\SpritesMulti.txt" For Output As #3

    For Ix1 = 0 To 65472 Step 64
        Print #2, "                 ;________________________________________"
        Print #2, "                                             ; " & _
                  Dec2Hex(Ix1 / 64, 2)
        Print #3, "                 ;________________________________________"
        Print #3, "                                             ; " & _
                  Dec2Hex(Ix1 / 64, 2)

        For Ix2 = 0 To 20
            Linie = Dec2Hex(Ix1 + 3 * Ix2, 4) & "  "

            For Ix3 = 3 * Ix2 To 3 * Ix2 + 2
                Linie = Linie & Dec2Hex(CLng(Memory(Ix1 + Ix3)), 2) & " "
            Next

            Linie = Linie & "          BYTE "

            For Ix3 = 3 * Ix2 To 3 * Ix2 + 2
                Linie = Linie & "$" & Dec2Hex(CLng(Memory(Ix1 + Ix3)), 2)
                If Ix3 <> 3 * Ix2 + 2 Then Linie = Linie & ","
            Next

            HexStr = "": LinieNormal = "": LinieMulti = ""

            For Ix3 = 3 * Ix2 To 3 * Ix2 + 2
                HexStr = HexStr & Dec2Hex(CLng(Memory(Ix1 + Ix3)), 2)
            Next

            For Ix4 = 1 To 6
                Select Case Mid$(HexStr, Ix4, 1)
                Case "0"
                    LinieNormal = LinieNormal & "........"
                    LinieMulti = LinieMulti & "........"
                Case "1"
                    LinieNormal = LinieNormal & "......##"
                    LinieMulti = LinieMulti & "....++++"
                Case "2"
                    LinieNormal = LinieNormal & "....##.."
                    LinieMulti = LinieMulti & "....OOOO"
                Case "3"
                    LinieNormal = LinieNormal & "....####"
                    LinieMulti = LinieMulti & "....####"
                Case "4"
                    LinieNormal = LinieNormal & "..##...."
                    LinieMulti = LinieMulti & "++++...."
                Case "5"
                    LinieNormal = LinieNormal & "..##..##"
                    LinieMulti = LinieMulti & "++++++++"
                Case "6"
                    LinieNormal = LinieNormal & "..####.."
                    LinieMulti = LinieMulti & "++++OOOO"
                Case "7"
                    LinieNormal = LinieNormal & "..######"
                    LinieMulti = LinieMulti & "++++####"
                Case "8"
                    LinieNormal = LinieNormal & "##......"
                    LinieMulti = LinieMulti & "OOOO...."
                Case "9"
                    LinieNormal = LinieNormal & "##....##"
                    LinieMulti = LinieMulti & "OOOO++++"
                Case "A"
                    LinieNormal = LinieNormal & "##..##.."
                    LinieMulti = LinieMulti & "OOOOOOOO"
                Case "B"
                    LinieNormal = LinieNormal & "##..####"
                    LinieMulti = LinieMulti & "OOOO####"
                Case "C"
                    LinieNormal = LinieNormal & "####...."
                    LinieMulti = LinieMulti & "####...."
                Case "D"
                    LinieNormal = LinieNormal & "####..##"
                    LinieMulti = LinieMulti & "####++++"
                Case "E"
                    LinieNormal = LinieNormal & "######.."
                    LinieMulti = LinieMulti & "####OOOO"
                Case "F"
                    LinieNormal = LinieNormal & "########"
                    LinieMulti = LinieMulti & "########"
                End Select
            Next

            Print #2, Linie & "    ; " & LinieNormal
            Print #3, Linie & "    ; " & LinieMulti
        Next

        Linie = Dec2Hex(Ix1 + 63, 4) & "  "

        Linie = Linie & Dec2Hex(CLng(Memory(Ix1 + 63)), 2) & "                 BYTE "

        Linie = Linie & "$" & Dec2Hex(CLng(Memory(Ix1 + 63)), 2)

        Print #2, Linie
        Print #3, Linie
    Next

    Print #2, "                 ;________________________________________"
    Print #3, "                 ;________________________________________"

    Close #2
    Close #3
End Sub

Private Function Dec2Hex(Dec As Long, HexLen As Integer) As String
    Dec2Hex = Right$("0000" & Hex(Dec), HexLen)
End Function
