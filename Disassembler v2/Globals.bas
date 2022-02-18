Attribute VB_Name = "Globals"
Option Explicit

Public Const AntalReg = 65

Public MNE(0 To 255) As String
Public AddrMode(0 To 255) As Integer

Public Memory(0 To 65537) As Byte
Public StartAddr As Long, EndAddr As Long

Public RegAddr(0 To AntalReg) As Long
Public RegName(0 To AntalReg) As String
Public ColorName(0 To 15) As String
Public Key(0 To 64) As String

Public Label(0 To 99999) As Long
Public AntLabels As Long

Public Linie As String

Public Branch_Addr As Long
Public PeekROM As Boolean
Public HexMode As Boolean
Public NoComments As Boolean

Public A As Long
