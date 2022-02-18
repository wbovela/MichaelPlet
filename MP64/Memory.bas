Attribute VB_Name = "Memory"
Option Explicit

Global RAM(0 To 65535) As Byte
Dim BasicROM(40960 To 49151) As Byte
Dim KernalROM(57344 To 65535) As Byte
Dim CharROM(53248 To 57343) As Byte
'Global IoRAM(53248 To 57343) As Byte
Global IoRAM(0 To 65535) As Byte

Global RASTER As Long
Global RasterLineIRQ As Long

'   Accumulator
Public A As Byte

'   Index Register X
Public X As Byte

'   Index Register Y
Public Y As Byte

'   Program Counter
Public PC As Long

'   Stack Pointer
Public SP As Long

'   Processor Status
'   ----------------
'
'   The processor status register is not directly accessible by any 6502
'   instruction.  Instead, there exist numerous instructions that test the
'   bits of the processor status register.  The flags within the register
'   are:
'
'
'       bit ->   7                           0
'              +---+---+---+---+---+---+---+---+
'              | N | V |   | B | D | I | Z | C |  <-- flag, 0/1 = reset/set
'              +---+---+---+---+---+---+---+---+
'
'Public ST As Byte

'Public ZN As Byte

'       N  =  NEGATIVE. Set if bit 7 of the accumulator is set.
'
Public N As Boolean

'       V  =  OVERFLOW. Set if the addition of two like-signed numbers or the
'             subtraction of two unlike-signed numbers produces a result
'             greater than +127 or less than -128.
'
Public V As Boolean

'       B  =  BRK COMMAND. Set if an interrupt caused by a BRK, reset if
'             caused by an external interrupt.
'
Public B As Boolean

'       D  =  DECIMAL MODE. Set if decimal mode active.
'
Public D As Boolean

'       I  =  IRQ DISABLE.  Set if maskable interrupts are disabled.
'
Public I As Boolean

'       Z  =  ZERO.  Set if the result of the last operation (load/inc/dec/
'             add/sub) was zero.
'
Public Z As Boolean

'       C  =  CARRY. Set if the add produced a carry, or if the subtraction
'             produced a borrow.  Also holds bits after a logical shift.
'
Public C As Boolean

Global BasicIn As Boolean
Global CharAndIoOut As Boolean
Global CharIn As Boolean
Global KernalOut As Boolean

Global KeyMatrix(0 To 7, 0 To 7) As Integer

Global PowerOfTwo(0 To 7) As Long

Public Function PEEK(Address As Long) As Long
    Static PeekVal As Long

    'TODO
    If Address = 53279 Then
        If Not CharAndIoOut And Not CharIn Then
            PEEK = 0

            Exit Function
        End If
    End If


    Select Case Address
    Case 40960 To 49151
        'If (RAM(1) And 3) = 3 Then
        If BasicIn Then
            PEEK = BasicROM(Address)
        Else
            PEEK = RAM(Address)
        End If
    Case 53248 To 57343
        'If (RAM(1) And 3) = 0 Then
        If CharAndIoOut Then
            PEEK = RAM(Address)
        'ElseIf (RAM(1) And 4) = 0 Then
        ElseIf CharIn Then
            PEEK = CharROM(Address)
        Else
             'DONE RAM(Address) 'TODO Should be I/O
            Select Case Address
            Case 53265
                PEEK = ((IoRAM(Address) And 127) Or 128 * (RASTER \ 256))
            Case 53266
                PEEK = (RASTER And 255)
            Case 56320 To 56321
                PEEK = Read_Keyboard(Address)
            Case Else
                If Address < 56832 Then
                    PEEK = IoRAM(Address) 'PEEK = 255
                Else
                    PeekVal = (PeekVal + 1) Mod 256
                    PEEK = PeekVal
                End If
                'If Address = 53273 Then MsgBox "PEEK(53273)=" & RAM(Address)
            End Select
        End If
    Case 57344 To 65535
        'If (RAM(1) And 2) = 0 Then
        If KernalOut Then
            PEEK = RAM(Address)
        Else
            PEEK = KernalROM(Address)
        End If
    Case Else
        PEEK = RAM(Address)
    End Select
    If Not (CharAndIoOut Or CharIn) Then
        If Address = 53278 Then POKE 53278, 0
    End If
End Function

Public Function VicPEEK(Address As Long) As Byte
    Select Case Address
    Case 4096 To 8191
        VicPEEK = CharROM(Address + 49152)
    Case 36864 To 40959
        VicPEEK = CharROM(Address + 16384)
    Case Else
        VicPEEK = RAM(Address)
    End Select
End Function

Private Function Read_Keyboard(Address As Long) As Byte
    Dim Ret As Long, Tst As Long, Ix1 As Long, Ix2 As Long
'If KeyMatrix(1, 5) = 0 Then Stop
    Select Case Address
    Case 56320
        Ret = IoRAM(56320) Or (IoRAM(56322) Xor 255): Tst = (IoRAM(56321) Or (IoRAM(56323) Xor 255)) And Joy56321

        For Ix2 = 0 To 7
            If (Tst And 2 ^ Ix2) = 0 Then
                For Ix1 = 0 To 7
                    If KeyMatrix(Ix1, Ix2) = 0 Or KeyMatrix(Ix1, Ix2) = 2 Then
                        Ret = Ret And (255 - 2 ^ Ix1)
                    End If
                Next
            End If
        Next

        Read_Keyboard = Ret And Joy56320
    Case 56321
        Ret = IoRAM(56323) Xor 255:  Tst = (IoRAM(56320) Or (IoRAM(56322) Xor 255)) And Joy56320
'If KeyMatrix(1, 5) = 0 Then Stop
        For Ix1 = 0 To 7
            If (Tst And 2 ^ Ix1) = 0 Then
                For Ix2 = 0 To 7
                    If KeyMatrix(Ix1, Ix2) = 0 Or KeyMatrix(Ix1, Ix2) = 2 Then
                        Ret = Ret And (255 - 2 ^ Ix2)
                    End If
                Next
            End If
        Next
'If KeyMatrix(7, 0) = 0 Then MsgBox IoRAM(56320) & " " & IoRAM(56321) & " " & IoRAM(56322) & " " & IoRAM(56323) & " " & CStr((Ret Or (IoRAM(56321) And IoRAM(56323))) And Joy56321)
        Read_Keyboard = (Ret Or (IoRAM(56321) And IoRAM(56323))) And Joy56321
    End Select
End Function

Private Function Read_Keyboard_old(Address As Long) As Byte
    Dim TempByte, Ix1 As Integer, Ix2 As Integer

'If KeyMatrix(1, 2) = 0 Then Stop

'    If IoRAM(56322) = 0 And IoRAM(56323) = 0 Then
'        ReadKeyboard = IoRAM(Address)
'
'        Exit Function
'    End If

    If Address = 56320 Then
        Read_Keyboard_old = Joy56320 Or 96

        Exit Function
    End If


    TempByte = 255

    If Address = 56320 Then
        For Ix2 = 0 To 7
            If (IoRAM(56321) And 2 ^ Ix2) = 0 Then
                For Ix1 = 0 To 7
                    If KeyMatrix(Ix1, Ix2) = 0 Or KeyMatrix(Ix1, Ix2) = 2 Then
                        TempByte = TempByte And (255 - 2 ^ Ix1)
                    End If
                Next
            End If
        Next
    Else
        For Ix1 = 0 To 7
            If (IoRAM(56320) And 2 ^ Ix1) = 0 Then
                For Ix2 = 0 To 7
                    If KeyMatrix(Ix1, Ix2) = 0 Or KeyMatrix(Ix1, Ix2) = 2 Then
                        TempByte = TempByte And (255 - 2 ^ Ix2)
                    End If
                Next
            End If
        Next
    End If
'If TempByte <> 255 Then MsgBox RAM(56320) & " " & Address & " " & TempByte
If KeyMatrix(1, 5) = 0 Then MsgBox IoRAM(56320) & " " & IoRAM(56321) & " " & IoRAM(56322) & " " & IoRAM(56323) & " " & TempByte
    Read_Keyboard_old = TempByte
End Function

Public Function PEEKADDR(Address As Long) As Long
    Dim LO As Long, HI As Long

    LO = PEEK(Address): HI = PEEK(Address + 1)
    PEEKADDR = LO + 256 * HI
End Function

Public Sub POKE(Address As Long, Value As Byte)
    If (Address >= 53248 And Address <= 57343) _
    And (Not CharIn) _
    And (Not CharAndIoOut) Then
        If Address >= 54272 And Address <= 54300 Then Call New_SID3(Address, Value)

        IoRAM(Address) = Value

        If Address = 53266 Then
            RasterLineIRQ = Value
            'If Value = 96 Or Value = 128 Then Print #17, Hex(PC) & " POKE 53266," & Value
            'MsgBox "POKE 53266," & Value
        End If
    Else
        'If Address = 56320 Or Address = 56321 Then IoRAM(Address) = Value

        If Address >= 65534 Then
            If KernalOut Then
                RAM(Address) = Value
            Else
                'KernalROM(Address) = Value
                RAM(Address) = Value
            End If
        Else
            RAM(Address) = Value
        End If
    End If

    If Address = 1 Then
        BasicIn = ((Value And 3) = 3)
        CharAndIoOut = ((Value And 3) = 0)
        CharIn = (((Value And 4) = 0) And Not CharAndIoOut)
        KernalOut = ((Value And 2) = 0)
    End If
    'If Address >= 54272 And Address <= 54300 Then Old_SID
End Sub

Public Sub Load_ROMs()
    Call Load_ROM(KernalROM, App.Path & "\KERNAL.ROM")
    Call Load_ROM(BasicROM, App.Path & "\BASIC.ROM")
    Call Load_ROM(CharROM, App.Path & "\CHAR.ROM")
End Sub

Private Sub Load_ROM(ROM, Filename As String)
    Dim FileNo As Integer, Address As Long, ByteRead As Byte

    FileNo = FreeFile()

    Open Filename For Binary As #FileNo

    Address = LBound(ROM)

    Do While Not EOF(FileNo)
        Get #FileNo, , ByteRead
        ROM(Address) = ByteRead
        Address = Address + 1
        
        If Address > UBound(ROM) Then Exit Do
    Loop

    Close #FileNo
End Sub

Public Function ST() As Byte
    ST = IIf(N, 128, 0) + _
         IIf(V, 64, 0) + _
         IIf(B, 16, 0) + _
         IIf(D, 8, 0) + _
         IIf(I, 4, 0) + _
         IIf(Z, 2, 0) + _
         IIf(C, 1, 0)
End Function
