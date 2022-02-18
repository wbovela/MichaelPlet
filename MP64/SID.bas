Attribute VB_Name = "SID"
Option Explicit

'
'   I M P O R T A N T   F I N D I N G S
'
'
'   1. When starting a MIDI note at a given volume
'      expression settings cannot turn up the volume above that level.
'      Expression 127 will make the volume equal to the initial level.
'      So all notes must be started with PatchVol()
'
'   2. It is possible to set AD to $00, open the gate, wait a moment
'      then set AD to another value and still get a note.
'      This is done in the game Commando. How is this possible?
'      When opening the gate a frame counter is started.
'      So when the gate is set to a new value the counter is checked
'      and if the number of passed frames is not long enough to have
'      completed the new Attack and Decay, you will hear the remaining part.
'

Global Stereo As Boolean

Private Declare Function QueryPerformanceCounter Lib "kernel32" (lpPerformanceCount As LARGE_INTEGER) As Long
Private Declare Sub CopyMemory Lib "kernel32.dll" Alias "RtlMoveMemory" (Destination As Any, Source As Any, ByVal Length As Long)

Private Declare Function midiOutClose Lib "winmm.dll" (ByVal hMidiOut As Long) As Long
Private Declare Function midiOutOpen Lib "winmm.dll" (lphMidiOut As Long, ByVal uDeviceID As Long, ByVal dwCallback As Long, ByVal dwInstance As Long, ByVal dwFlags As Long) As Long
Private Declare Function midiOutShortMsg Lib "winmm.dll" (ByVal hMidiOut As Long, ByVal dwMsg As Long) As Long

Private hMidiOut As Long

Private Type LARGE_INTEGER
    LowPart As Long
    HighPart As Long
End Type

Dim Vol(1 To 3) As Long

Dim PBR As Long
Dim Wheel As Long
Dim MSB As Integer
Dim LSB As Integer

Dim MasterVol As Long
Dim Expr1 As Long, Expr2 As Long, Expr3 As Long
Dim WaveForm1 As Byte, WaveForm2 As Byte, WaveForm3 As Byte
Dim NotePlaying1 As Long, NotePlaying2 As Long, NotePlaying3 As Long
Dim NoteVol1 As Long, NoteVol2 As Long, NoteVol3 As Long

'79,88,80,122,96,108,72,127
Global PatchNo(1 To 4) As Byte
Global PatchVol(1 To 4) As Byte

Dim AttTable(0 To 15, 0 To 257) As Integer
Dim DecRelTable(0 To 15, 0 To 757) As Integer

Dim V1Attack As Integer, V2Attack As Integer, V3Attack As Integer
Dim V1Decay As Integer, V2Decay As Integer, V3Decay As Integer
Dim V1Sustain As Integer, V2Sustain As Integer, V3Sustain As Integer
Dim V1Release As Integer, V2Release As Integer, V3Release As Integer

Dim V1Chn As Integer, V2Chn As Integer, V3Chn As Integer
Dim V1Level As Integer, V2Level As Integer, V3Level As Integer

' Phase
' 0 Wait
' 1 Sustain
' 2 Attack
' 3 Decay
' 4 Release
Dim V1Phase As Integer, V2Phase As Integer, V3Phase As Integer

Dim V1AttIx As Integer, V2AttIx As Integer, V3AttIx As Integer
Dim V1DecRelIx As Integer, V2DecRelIx As Integer, V3DecRelIx As Integer

Dim MidiNotePlaying(0 To 8) As Long

Dim VOL2EXPR(0 To 15) As Integer

Dim MuteV1 As Boolean, MuteV2 As Boolean, MuteV3 As Boolean
Dim LogV1 As Boolean, LogV2 As Boolean, LogV3 As Boolean, LogV0 As Boolean

Dim SIDFrameNo As Long

Public Sub Init_SID3()
    Dim MsgChannel As Long, Linie As String, Ix1 As Long, Ix2 As Long

    'MasterVol = 127 * (IoRAM(54296) And 15) \ 15
    'Expr1 = 1: Expr2 = 1: Expr3 = 1
    'WaveForm1 = 0: WaveForm2 = 0: WaveForm3 = 0
    'NotePlaying1 = 0: NotePlaying2 = 0: NotePlaying3 = 0
    'NoteVol1 = 0: NoteVol2 = 0: NoteVol3 = 0

    SIDFrameNo = 0

    MuteV1 = False
    MuteV2 = False
    MuteV3 = False

    LogV1 = False
    LogV2 = False
    LogV3 = False
    LogV0 = False

    VOL2EXPR(0) = 0: VOL2EXPR(1) = 32: VOL2EXPR(2) = 48: VOL2EXPR(3) = 60
    VOL2EXPR(4) = 68: VOL2EXPR(5) = 72: VOL2EXPR(6) = 78: VOL2EXPR(7) = 84
    VOL2EXPR(8) = 90: VOL2EXPR(9) = 96: VOL2EXPR(10) = 102: VOL2EXPR(11) = 108
    VOL2EXPR(12) = 114: VOL2EXPR(13) = 120: VOL2EXPR(14) = 126: VOL2EXPR(15) = 127

    'For Ix1 = 1 To 15: VOL2EXPR(Ix1) = 2 * VOL2EXPR(Ix1): Next
    ''VOL2EXPR(0) = 255
    'For Ix1 = 1 To 15: VOL2EXPR(Ix1) = 255: Next
    

    V1Attack = 0: V2Attack = 0: V3Attack = 0
    V1Decay = 0: V2Decay = 0: V3Decay = 0
    V1Sustain = 0: V2Sustain = 0: V3Sustain = 0
    V1Release = 0: V2Release = 0: V3Release = 0

    V1Chn = -1: V2Chn = -1: V3Chn = -1
    V1Level = 0: V2Level = 0: V3Level = 0
    V1Phase = 0: V2Phase = 0: V3Phase = 0

    Open App.Path & "\SIDOUT.txt" For Output As #61

    Open App.Path & "\AttackTable.txt" For Input As #60

    Do While Not EOF(60)
        Line Input #60, Linie

        Ix1 = Val(Left$(Linie, 4))
        Linie = Mid$(Linie, 5)

        Ix2 = 0

        Do While Trim$(Linie) <> ""
            AttTable(Ix1, Ix2) = Val(Left$(Linie, 4))
            Linie = Mid$(Linie, 5)
            Ix2 = Ix2 + 1
        Loop
    Loop

    Close #60

    Open App.Path & "\DecayReleaseTable.txt" For Input As #60

    Do While Not EOF(60)
        Line Input #60, Linie

        Ix1 = Val(Left$(Linie, 4))
        Linie = Mid$(Linie, 5)

        Ix2 = 0

        Do While Trim$(Linie) <> ""
            DecRelTable(Ix1, Ix2) = Val(Left$(Linie, 4))
            Linie = Mid$(Linie, 5)
            Ix2 = Ix2 + 1
        Loop
    Loop

    Close #60


    Call midiOutOpen(hMidiOut, 0, 0, 0, 0)

    PBR = 24: HighLow (8192)

    For MsgChannel = 0 To 8
        'Set Pitch Bend Range to 24 seminotes
        midiOutShortMsg hMidiOut, GetParm(176 + MsgChannel, 101, 0)
        midiOutShortMsg hMidiOut, GetParm(176 + MsgChannel, 100, 0)
        midiOutShortMsg hMidiOut, GetParm(176 + MsgChannel, 6, PBR)
        midiOutShortMsg hMidiOut, GetParm(176 + MsgChannel, 38, 0)
        midiOutShortMsg hMidiOut, GetParm(176 + MsgChannel, 101, 127)
        midiOutShortMsg hMidiOut, GetParm(176 + MsgChannel, 100, 127)

        'Set Patch
        Call midiOutShortMsg(hMidiOut, GetParm(192 + MsgChannel, _
                             PatchNo((MsgChannel Mod 3) + 1), 0))

        'Start Note
        Call midiOutShortMsg(hMidiOut, GetParm(144 + MsgChannel, _
                             0, PatchVol((MsgChannel Mod 3) + 1)))

        MidiNotePlaying(MsgChannel) = 0

        'Set PitchBend
        midiOutShortMsg hMidiOut, GetParm(224 + MsgChannel, LSB, MSB)

        'Set Expression
        midiOutShortMsg hMidiOut, GetParm(176 + MsgChannel, 11, 0)
    Next

    MsgChannel = 9

    'Set Patch
    Call midiOutShortMsg(hMidiOut, GetParm(192 + MsgChannel, PatchNo(4), 0))

    'Start Note
    Call midiOutShortMsg(hMidiOut, GetParm(144 + MsgChannel, 79, PatchVol(4)))

    'MidiNotePlaying(MsgChannel) = 79

    'Set PitchBend
    midiOutShortMsg hMidiOut, GetParm(224 + MsgChannel, LSB, MSB)

    'Set Expression
    midiOutShortMsg hMidiOut, GetParm(176 + MsgChannel, 11, 0)


    MsgChannel = 10
    'Set Patch
    Call midiOutShortMsg(hMidiOut, GetParm(192 + MsgChannel, 79, 0))
'    'Start Note
'    Call midiOutShortMsg(hMidiOut, GetParm(144 + MsgChannel, 3, 127))
'    'Set PitchBend
'    HighLow (8192)
'    midiOutShortMsg hMidiOut, GetParm(224 + MsgChannel, LSB, MSB)
'    'Set Expression
'    midiOutShortMsg hMidiOut, GetParm(176 + MsgChannel, 11, 0)



    'Volume = Expr1 * Vol(1) * (MasterVol / 127)
    'Call midiOutShortMsg(hMidiOut, GetParm(144, Note2Midi(NewNote), Volume))
    'HighLow (PitchBend(NewNote, NewNote))
    'midiOutShortMsg hMidiOut, GetParm(224, LSB, MSB)
    'Volume = Expr1 * Vol(1) * (MasterVol / 127)

    If Stereo Then
    '    'Pan
    '    'Bn 0A xx
        Call midiOutShortMsg(hMidiOut, GetParm(176, 10, 64))
        Call midiOutShortMsg(hMidiOut, GetParm(177, 10, 64))
        Call midiOutShortMsg(hMidiOut, GetParm(178, 10, 64))
        Call midiOutShortMsg(hMidiOut, GetParm(179, 10, 112))
        Call midiOutShortMsg(hMidiOut, GetParm(180, 10, 112))
        Call midiOutShortMsg(hMidiOut, GetParm(181, 10, 112))
        Call midiOutShortMsg(hMidiOut, GetParm(182, 10, 16))
        Call midiOutShortMsg(hMidiOut, GetParm(183, 10, 16))
        Call midiOutShortMsg(hMidiOut, GetParm(184, 10, 16))
        Call midiOutShortMsg(hMidiOut, GetParm(185, 10, 64))
    Else
        Call midiOutShortMsg(hMidiOut, GetParm(176, 10, 64))
        Call midiOutShortMsg(hMidiOut, GetParm(177, 10, 64))
        Call midiOutShortMsg(hMidiOut, GetParm(178, 10, 64))
        Call midiOutShortMsg(hMidiOut, GetParm(179, 10, 64))
        Call midiOutShortMsg(hMidiOut, GetParm(180, 10, 64))
        Call midiOutShortMsg(hMidiOut, GetParm(181, 10, 64))
        Call midiOutShortMsg(hMidiOut, GetParm(182, 10, 64))
        Call midiOutShortMsg(hMidiOut, GetParm(183, 10, 64))
        Call midiOutShortMsg(hMidiOut, GetParm(184, 10, 64))
        Call midiOutShortMsg(hMidiOut, GetParm(185, 10, 64))
    End If
End Sub

Public Sub New_SID3(Address As Long, Value As Byte)
    Dim NewNote As Long, Volume As Byte, NewChn As Integer, Pause As Long

    Select Case Address
    '
    'VOICE 1
    Case 54272 'Voice 1 Frequency Control (low byte)
        If MuteV1 Then Exit Sub
        If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1A POKE 54272," & Value & "  (Old value " & IoRAM(54272) & ")"
        If V1Chn > -1 And V1Chn < 9 Then
            NewNote = 256 * CLng(IoRAM(54273)) + CLng(Value)
            
            Wheel = PitchBend3(MidiNotePlaying(V1Chn), NewNote)

            If Wheel >= 0 And Wheel <= 16383 Then
                HighLow (Wheel)
                midiOutShortMsg hMidiOut, GetParm(224 + V1Chn, LSB, MSB)
                If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1B midiOutShortMsg hMidiOut, GetParm(224 + " & V1Chn & ", " & LSB & ", " & MSB & ")"
            Else
                Call midiOutShortMsg(hMidiOut, GetParm(128 + V1Chn, MidiNotePlaying(V1Chn), 0))
                If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1C midiOutShortMsg(hMidiOut, GetParm(128 + " & V1Chn & ", " & MidiNotePlaying(V1Chn) & ", 0))"
                MidiNotePlaying(V1Chn) = Note2Midi(NewNote)
                Call midiOutShortMsg(hMidiOut, GetParm(144 + V1Chn, MidiNotePlaying(V1Chn), 127))
                If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1D midiOutShortMsg(hMidiOut, GetParm(144 + " & V1Chn & ", " & MidiNotePlaying(V1Chn) & ", 127))"
                'Set Expression
                midiOutShortMsg hMidiOut, GetParm(176 + V1Chn, 11, Int(127 * V1Level / 255))
                If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1E midiOutShortMsg hMidiOut, GetParm(176 + " & V1Chn & ", 11, " & Int(127 * V1Level / 255) & ")"
                HighLow (PitchBend3(MidiNotePlaying(V1Chn), NewNote))
                midiOutShortMsg hMidiOut, GetParm(224 + V1Chn, LSB, MSB)
                If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1F midiOutShortMsg hMidiOut, GetParm(224 + " & V1Chn & ", " & LSB & ", " & MSB & ")"
            End If
        End If
    Case 54273 'Voice 1 Frequency Control (high byte)
        If MuteV1 Then Exit Sub
        If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1G POKE 54273," & Value & "  (Old value " & IoRAM(54273) & ")"
        If V1Chn > -1 And V1Chn < 9 Then
            NewNote = 256 * CLng(Value) + CLng(IoRAM(54272))

            Wheel = PitchBend3(MidiNotePlaying(V1Chn), NewNote)

            If Wheel >= 0 And Wheel <= 16383 Then
                HighLow (Wheel)
                midiOutShortMsg hMidiOut, GetParm(224 + V1Chn, LSB, MSB)
                If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1H midiOutShortMsg hMidiOut, GetParm(224 + " & V1Chn & ", " & LSB & ", " & MSB & ")"
            Else
                Call midiOutShortMsg(hMidiOut, GetParm(128 + V1Chn, MidiNotePlaying(V1Chn), 0))
                If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1I midiOutShortMsg(hMidiOut, GetParm(128 + " & V1Chn & ", " & MidiNotePlaying(V1Chn) & ", 0))"
                MidiNotePlaying(V1Chn) = Note2Midi(NewNote)
                Call midiOutShortMsg(hMidiOut, GetParm(144 + V1Chn, MidiNotePlaying(V1Chn), 127))
                If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1J midiOutShortMsg(hMidiOut, GetParm(144 + " & V1Chn & ", " & MidiNotePlaying(V1Chn) & ", 127))"
                'Set Expression
                midiOutShortMsg hMidiOut, GetParm(176 + V1Chn, 11, Int(127 * V1Level / 255))
                If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1K midiOutShortMsg hMidiOut, GetParm(176 + " & V1Chn & ", 11, " & Int(127 * V1Level / 255) & ")"
                HighLow (PitchBend3(MidiNotePlaying(V1Chn), NewNote))
                midiOutShortMsg hMidiOut, GetParm(224 + V1Chn, LSB, MSB)
                If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1L midiOutShortMsg hMidiOut, GetParm(224 + " & V1Chn & ", " & LSB & ", " & MSB & ")"
            End If
        End If
    Case 54276 'Voice 1 Control Register
        If MuteV1 Then Exit Sub
        If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1M POKE 54276," & Value & "  (Old value " & IoRAM(54276) & ")"
        NewChn = -1

        If (Value And 240) = 16 Then NewChn = 0
        If (Value And 240) = 32 Then NewChn = 1
        If (Value And 240) = 64 Then NewChn = 2
        If (Value And 240) = 128 Then NewChn = 9

        If NewChn <> V1Chn Then
        'Temp solution
            If V1Chn > -1 Then
                'Set Expression
                midiOutShortMsg hMidiOut, GetParm(176 + V1Chn, 11, 0)
                If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1N midiOutShortMsg hMidiOut, GetParm(176 + " & V1Chn & ", 11, 0)"
            End If

            If NewChn > -1 And NewChn < 9 Then
                NewNote = 256 * CLng(IoRAM(54273)) + CLng(IoRAM(54272))

                Wheel = PitchBend3(MidiNotePlaying(NewChn), NewNote)

                If Wheel >= 0 And Wheel <= 16383 Then
                    HighLow (Wheel)
                    midiOutShortMsg hMidiOut, GetParm(224 + NewChn, LSB, MSB)
                    If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1O midiOutShortMsg hMidiOut, GetParm(224 + " & NewChn & ", " & LSB & ", " & MSB & ")"
                Else
                    Call midiOutShortMsg(hMidiOut, GetParm(128 + NewChn, MidiNotePlaying(NewChn), 0))
                    If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1P midiOutShortMsg(hMidiOut, GetParm(128 + " & NewChn & ", " & MidiNotePlaying(NewChn) & ", 0))"
                    MidiNotePlaying(NewChn) = Note2Midi(NewNote)
                    Call midiOutShortMsg(hMidiOut, GetParm(144 + NewChn, MidiNotePlaying(NewChn), 127))
                    If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1Q midiOutShortMsg(hMidiOut, GetParm(144 + " & NewChn & ", " & MidiNotePlaying(NewChn) & ", 127))"
                    'Set Expression
                    midiOutShortMsg hMidiOut, GetParm(176 + NewChn, 11, Int(127 * V1Level / 255))
                    If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1R midiOutShortMsg hMidiOut, GetParm(176 + " & NewChn & ", 11, " & Int(127 * V1Level / 255) & ")"
                    HighLow (PitchBend3(MidiNotePlaying(NewChn), NewNote))
                    midiOutShortMsg hMidiOut, GetParm(224 + NewChn, LSB, MSB)
                    If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1S midiOutShortMsg hMidiOut, GetParm(224 + " & NewChn & ", " & LSB & ", " & MSB & ")"
                End If
            End If
        End If

        If NewChn = -1 Then
            V1Phase = 0
            If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1Ø V1Phase = " & V1Phase
        Else
            V1Attack = (IoRAM(54277) And 240) \ 16
            V1Decay = IoRAM(54277) And 15
            V1Sustain = VOL2EXPR((IoRAM(54278) And 240) \ 16)
            V1Release = IoRAM(54278) And 15

     '       If (Value And 1) <> (IoRAM(54276) And 1) Then
                If (Value And 1) = 1 Then
                    If V1Attack = 0 Then
                        V1Level = 255

                        If V1Decay = 0 Then
                            V1Level = V1Sustain
                            V1Phase = 1 'Sustain
                            If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1Ø V1Phase = " & V1Phase
                            'Set Expression
                            midiOutShortMsg hMidiOut, GetParm(176 + NewChn, 11, Int(127 * V1Level / 255))
                            If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1T midiOutShortMsg hMidiOut, GetParm(176 + " & NewChn & ", 11, " & Int(127 * V1Level / 255) & ")"
                        Else
                            V1DecRelIx = Find_DecRelIx(V1Decay, 255)
                            V1Phase = 3 'Decay
                            If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1Ø V1Phase = " & V1Phase
                        End If
                    Else
                        V1AttIx = Find_AttIx(V1Attack, V1Level)
                        V1Phase = 2 'Attack
                        If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1Ø V1Phase = " & V1Phase
                    End If
                Else
                    V1DecRelIx = Find_DecRelIx(V1Release, V1Level)
                    V1Phase = 4 'Release
                    If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1Ø V1Phase = " & V1Phase
                End If
     '       End If
        End If

        V1Chn = NewChn
    Case 54277 'Voice 1 Attack/Decay Register
        If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1V POKE 54277," & Value & "  (Old value " & IoRAM(54277) & ")"
    Case 54278 'Voice 1 Sustain/Release Control Register
        If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1W POKE 54278," & Value & "  (Old value " & IoRAM(54278) & ")"
    '
    'VOICE 2
    Case 54279 'Voice 2 Frequency Control (low byte)
        If MuteV2 Then Exit Sub
        If LogV2 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 2A POKE 54279," & Value & "  (Old value " & IoRAM(54279) & ")"
        If V2Chn > -1 And V2Chn < 9 Then
            NewNote = 256 * CLng(IoRAM(54280)) + CLng(Value)
            
            Wheel = PitchBend3(MidiNotePlaying(V2Chn), NewNote)

            If Wheel >= 0 And Wheel <= 16383 Then
                HighLow (Wheel)
                midiOutShortMsg hMidiOut, GetParm(224 + V2Chn, LSB, MSB)
                If LogV2 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 2B midiOutShortMsg hMidiOut, GetParm(224 + " & V2Chn & ", " & LSB & ", " & MSB & ")"
            Else
                Call midiOutShortMsg(hMidiOut, GetParm(128 + V2Chn, MidiNotePlaying(V2Chn), 0))
                If LogV2 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 2C midiOutShortMsg(hMidiOut, GetParm(128 + " & V2Chn & ", " & MidiNotePlaying(V2Chn) & ", 0))"
                MidiNotePlaying(V2Chn) = Note2Midi(NewNote)
                Call midiOutShortMsg(hMidiOut, GetParm(144 + V2Chn, MidiNotePlaying(V2Chn), 127))
                If LogV2 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 2D midiOutShortMsg(hMidiOut, GetParm(144 + " & V2Chn & ", " & MidiNotePlaying(V2Chn) & ", 127))"
                'Set Expression
                midiOutShortMsg hMidiOut, GetParm(176 + V2Chn, 11, Int(127 * V2Level / 255))
                If LogV2 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 2E midiOutShortMsg hMidiOut, GetParm(176 + " & V2Chn & ", 11, " & Int(127 * V2Level / 255) & ")"
                HighLow (PitchBend3(MidiNotePlaying(V2Chn), NewNote))
                midiOutShortMsg hMidiOut, GetParm(224 + V2Chn, LSB, MSB)
                If LogV2 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 2F midiOutShortMsg hMidiOut, GetParm(224 + " & V2Chn & ", " & LSB & ", " & MSB & ")"
            End If
        End If
    Case 54280 'Voice 2 Frequency Control (high byte)
        If MuteV2 Then Exit Sub
        If LogV2 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 2G POKE 54280," & Value & "  (Old value " & IoRAM(54280) & ")"
        If V2Chn > -1 And V2Chn < 9 Then
            NewNote = 256 * CLng(Value) + CLng(IoRAM(54279))

            Wheel = PitchBend3(MidiNotePlaying(V2Chn), NewNote)

            If Wheel >= 0 And Wheel <= 16383 Then
                HighLow (Wheel)
                midiOutShortMsg hMidiOut, GetParm(224 + V2Chn, LSB, MSB)
                If LogV2 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 2H midiOutShortMsg hMidiOut, GetParm(224 + " & V2Chn & ", " & LSB & ", " & MSB & ")"
            Else
                Call midiOutShortMsg(hMidiOut, GetParm(128 + V2Chn, MidiNotePlaying(V2Chn), 0))
                If LogV2 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 2I midiOutShortMsg(hMidiOut, GetParm(128 + " & V2Chn & ", " & MidiNotePlaying(V2Chn) & ", 0))"
                MidiNotePlaying(V2Chn) = Note2Midi(NewNote)
                Call midiOutShortMsg(hMidiOut, GetParm(144 + V2Chn, MidiNotePlaying(V2Chn), 127))
                If LogV2 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 2J midiOutShortMsg(hMidiOut, GetParm(144 + " & V2Chn & ", " & MidiNotePlaying(V2Chn) & ", 127))"
                'Set Expression
                midiOutShortMsg hMidiOut, GetParm(176 + V2Chn, 11, Int(127 * V2Level / 255))
                If LogV2 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 2K midiOutShortMsg hMidiOut, GetParm(176 + " & V2Chn & ", 11, " & Int(127 * V2Level / 255) & ")"
                HighLow (PitchBend3(MidiNotePlaying(V2Chn), NewNote))
                midiOutShortMsg hMidiOut, GetParm(224 + V2Chn, LSB, MSB)
                If LogV2 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 2L midiOutShortMsg hMidiOut, GetParm(224 + " & V2Chn & ", " & LSB & ", " & MSB & ")"
            End If
        End If
    Case 54283 'Voice 2 Control Register
        If MuteV2 Then Exit Sub
        If LogV2 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 2M POKE 54283," & Value & "  (Old value " & IoRAM(54283) & ")"
        NewChn = -1

        If (Value And 240) = 16 Then NewChn = 3
        If (Value And 240) = 32 Then NewChn = 4
        If (Value And 240) = 64 Then NewChn = 5
        If (Value And 240) = 128 Then NewChn = 9

        If NewChn <> V2Chn Then
        'Temp solution
            If V2Chn > -1 Then
                'Set Expression
                midiOutShortMsg hMidiOut, GetParm(176 + V2Chn, 11, 0)
                If LogV2 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 2N midiOutShortMsg hMidiOut, GetParm(176 + " & V2Chn & ", 11, 0)"
            End If

            If NewChn > -1 And NewChn < 9 Then
                NewNote = 256 * CLng(IoRAM(54280)) + CLng(IoRAM(54279))

                Wheel = PitchBend3(MidiNotePlaying(NewChn), NewNote)

                If Wheel >= 0 And Wheel <= 16383 Then
                    HighLow (Wheel)
                    midiOutShortMsg hMidiOut, GetParm(224 + NewChn, LSB, MSB)
                    If LogV2 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 2O midiOutShortMsg hMidiOut, GetParm(224 + " & NewChn & ", " & LSB & ", " & MSB & ")"
                Else
                    Call midiOutShortMsg(hMidiOut, GetParm(128 + NewChn, MidiNotePlaying(NewChn), 0))
                    If LogV2 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 2P midiOutShortMsg(hMidiOut, GetParm(128 + " & NewChn & ", " & MidiNotePlaying(NewChn) & ", 0))"
                    MidiNotePlaying(NewChn) = Note2Midi(NewNote)
                    Call midiOutShortMsg(hMidiOut, GetParm(144 + NewChn, MidiNotePlaying(NewChn), 127))
                    If LogV2 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 2Q midiOutShortMsg(hMidiOut, GetParm(144 + " & NewChn & ", " & MidiNotePlaying(NewChn) & ", 127))"
                    'Set Expression
                    midiOutShortMsg hMidiOut, GetParm(176 + NewChn, 11, Int(127 * V2Level / 255))
                    If LogV2 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 2R midiOutShortMsg hMidiOut, GetParm(176 + " & NewChn & ", 11, " & Int(127 * V2Level / 255) & ")"
                    HighLow (PitchBend3(MidiNotePlaying(NewChn), NewNote))
                    midiOutShortMsg hMidiOut, GetParm(224 + NewChn, LSB, MSB)
                    If LogV2 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 2S midiOutShortMsg hMidiOut, GetParm(224 + " & NewChn & ", " & LSB & ", " & MSB & ")"
                End If
            End If
        End If

        If NewChn = -1 Then
            V2Phase = 0
        Else
            V2Attack = (IoRAM(54284) And 240) \ 16
            V2Decay = IoRAM(54284) And 15
            V2Sustain = VOL2EXPR((IoRAM(54285) And 240) \ 16)
            V2Release = IoRAM(54285) And 15

     '       If (Value And 1) <> (IoRAM(54283) And 1) Then
                If (Value And 1) = 1 Then
                    If V2Attack = 0 Then
                        V2Level = 255

                        If V2Decay = 0 Then
                            V2Level = V2Sustain
                            V2Phase = 1 'Sustain
                            'Set Expression
                            midiOutShortMsg hMidiOut, GetParm(176 + NewChn, 11, Int(127 * V2Level / 255))
                            If LogV2 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 2T midiOutShortMsg hMidiOut, GetParm(176 + " & NewChn & ", 11, " & Int(127 * V2Level / 255) & ")"
                        Else
                            V2DecRelIx = Find_DecRelIx(V2Decay, 255)
                            V2Phase = 3 'Decay
                        End If
                    Else
                        V2AttIx = Find_AttIx(V2Attack, V2Level)
                        If LogV2 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " Find_AttIx(" & V2Attack & ", " & V2Level & ") <= " & V2AttIx
                        V2Phase = 2 'Attack
                    End If
                Else
                    V2DecRelIx = Find_DecRelIx(V2Release, V2Level)
                    V2Phase = 4 'Release
                End If
     '       End If
        End If

        V2Chn = NewChn
    Case 54284 'Voice 2 Attack/Decay Register
        If LogV2 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 2V POKE 54284," & Value & "  (Old value " & IoRAM(54284) & ")"
    Case 54285 'Voice 2 Sustain/Release Control Register
        If LogV2 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 2W POKE 54285," & Value & "  (Old value " & IoRAM(54285) & ")"
    '
    'VOICE 3
    Case 54286 'Voice 3 Frequency Control (low byte)
        If MuteV3 Then Exit Sub
        If LogV3 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 3A POKE 54286," & Value & "  (Old value " & IoRAM(54286) & ")"
        If V3Chn > -1 And V3Chn < 9 Then
            NewNote = 256 * CLng(IoRAM(54287)) + CLng(Value)
            
            Wheel = PitchBend3(MidiNotePlaying(V3Chn), NewNote)

            If Wheel >= 0 And Wheel <= 16383 Then
                HighLow (Wheel)
                midiOutShortMsg hMidiOut, GetParm(224 + V3Chn, LSB, MSB)
                If LogV3 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 3B midiOutShortMsg hMidiOut, GetParm(224 + " & V3Chn & ", " & LSB & ", " & MSB & ")"
            Else
                Call midiOutShortMsg(hMidiOut, GetParm(128 + V3Chn, MidiNotePlaying(V3Chn), 0))
                If LogV3 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 3C midiOutShortMsg(hMidiOut, GetParm(128 + " & V3Chn & ", " & MidiNotePlaying(V3Chn) & ", 0))"
                MidiNotePlaying(V3Chn) = Note2Midi(NewNote)
                Call midiOutShortMsg(hMidiOut, GetParm(144 + V3Chn, MidiNotePlaying(V3Chn), 127))
                If LogV3 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 3D midiOutShortMsg(hMidiOut, GetParm(144 + " & V3Chn & ", " & MidiNotePlaying(V3Chn) & ", 127))"
                'Set Expression
                midiOutShortMsg hMidiOut, GetParm(176 + V3Chn, 11, Int(127 * V3Level / 255))
                If LogV3 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 3E midiOutShortMsg hMidiOut, GetParm(176 + " & V3Chn & ", 11, " & Int(127 * V3Level / 255) & ")"
                HighLow (PitchBend3(MidiNotePlaying(V3Chn), NewNote))
                midiOutShortMsg hMidiOut, GetParm(224 + V3Chn, LSB, MSB)
                If LogV3 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 3F midiOutShortMsg hMidiOut, GetParm(224 + " & V3Chn & ", " & LSB & ", " & MSB & ")"
            End If
        End If
    Case 54287 'Voice 3 Frequency Control (high byte)
        If MuteV3 Then Exit Sub
        If LogV3 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 3G POKE 54287," & Value & "  (Old value " & IoRAM(54287) & ")"
        If V3Chn > -1 And V3Chn < 9 Then
            NewNote = 256 * CLng(Value) + CLng(IoRAM(54286))

            Wheel = PitchBend3(MidiNotePlaying(V3Chn), NewNote)

            If Wheel >= 0 And Wheel <= 16383 Then
                HighLow (Wheel)
                midiOutShortMsg hMidiOut, GetParm(224 + V3Chn, LSB, MSB)
                If LogV3 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 3H midiOutShortMsg hMidiOut, GetParm(224 + " & V3Chn & ", " & LSB & ", " & MSB & ")"
            Else
                Call midiOutShortMsg(hMidiOut, GetParm(128 + V3Chn, MidiNotePlaying(V3Chn), 0))
                If LogV3 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 3I midiOutShortMsg(hMidiOut, GetParm(128 + " & V3Chn & ", " & MidiNotePlaying(V3Chn) & ", 0))"
                MidiNotePlaying(V3Chn) = Note2Midi(NewNote)
                Call midiOutShortMsg(hMidiOut, GetParm(144 + V3Chn, MidiNotePlaying(V3Chn), 127))
                If LogV3 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 3J midiOutShortMsg(hMidiOut, GetParm(144 + " & V3Chn & ", " & MidiNotePlaying(V3Chn) & ", 127))"
                'Set Expression
                midiOutShortMsg hMidiOut, GetParm(176 + V3Chn, 11, Int(127 * V3Level / 255))
                If LogV3 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 3K midiOutShortMsg hMidiOut, GetParm(176 + " & V3Chn & ", 11, " & Int(127 * V3Level / 255) & ")"
                HighLow (PitchBend3(MidiNotePlaying(V3Chn), NewNote))
                midiOutShortMsg hMidiOut, GetParm(224 + V3Chn, LSB, MSB)
                If LogV3 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 3L midiOutShortMsg hMidiOut, GetParm(224 + " & V3Chn & ", " & LSB & ", " & MSB & ")"
            End If
        End If
    Case 54290 'Voice 3 Control Register
        If MuteV3 Then Exit Sub
        If LogV3 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 3M POKE 54290," & Value & "  (Old value " & IoRAM(54290) & ")"
        NewChn = -1

        If (Value And 240) = 16 Then NewChn = 6
        If (Value And 240) = 32 Then NewChn = 7
        If (Value And 240) = 64 Then NewChn = 8
        If (Value And 240) = 128 Then NewChn = 9

        If NewChn <> V3Chn Then
        'Temp solution
            If V3Chn > -1 Then
                'Set Expression
                midiOutShortMsg hMidiOut, GetParm(176 + V3Chn, 11, 0)
                If LogV3 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 3N midiOutShortMsg hMidiOut, GetParm(176 + " & V3Chn & ", 11, 0)"
            End If

            If NewChn > -1 And NewChn < 9 Then
                NewNote = 256 * CLng(IoRAM(54287)) + CLng(IoRAM(54286))

                Wheel = PitchBend3(MidiNotePlaying(NewChn), NewNote)

                If Wheel >= 0 And Wheel <= 16383 Then
                    HighLow (Wheel)
                    midiOutShortMsg hMidiOut, GetParm(224 + NewChn, LSB, MSB)
                    If LogV3 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 3O midiOutShortMsg hMidiOut, GetParm(224 + " & NewChn & ", " & LSB & ", " & MSB & ")"
                Else
                    Call midiOutShortMsg(hMidiOut, GetParm(128 + NewChn, MidiNotePlaying(NewChn), 0))
                    If LogV3 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 3P midiOutShortMsg(hMidiOut, GetParm(128 + " & NewChn & ", " & MidiNotePlaying(NewChn) & ", 0))"
                    MidiNotePlaying(NewChn) = Note2Midi(NewNote)
                    Call midiOutShortMsg(hMidiOut, GetParm(144 + NewChn, MidiNotePlaying(NewChn), 127))
                    If LogV3 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 3Q midiOutShortMsg(hMidiOut, GetParm(144 + " & NewChn & ", " & MidiNotePlaying(NewChn) & ", 127))"
                    'Set Expression
                    midiOutShortMsg hMidiOut, GetParm(176 + NewChn, 11, Int(127 * V3Level / 255))
                    If LogV3 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 3R midiOutShortMsg hMidiOut, GetParm(176 + " & NewChn & ", 11, " & Int(127 * V3Level / 255) & ")"
                    HighLow (PitchBend3(MidiNotePlaying(NewChn), NewNote))
                    midiOutShortMsg hMidiOut, GetParm(224 + NewChn, LSB, MSB)
                    If LogV3 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 3S midiOutShortMsg hMidiOut, GetParm(224 + " & NewChn & ", " & LSB & ", " & MSB & ")"
                End If
            End If
        End If

        If NewChn = -1 Then
            V3Phase = 0
        Else
            V3Attack = (IoRAM(54291) And 240) \ 16
            V3Decay = IoRAM(54291) And 15
            V3Sustain = VOL2EXPR((IoRAM(54292) And 240) \ 16)
            V3Release = IoRAM(54292) And 15

     '       If (Value And 1) <> (IoRAM(54290) And 1) Then
                If (Value And 1) = 1 Then
                    If V3Attack = 0 Then
                        V3Level = 255

                        If V3Decay = 0 Then
                            V3Level = V3Sustain
                            V3Phase = 1 'Sustain
                            'Set Expression
                            midiOutShortMsg hMidiOut, GetParm(176 + NewChn, 11, Int(127 * V3Level / 255))
                            If LogV3 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 3T midiOutShortMsg hMidiOut, GetParm(176 + " & NewChn & ", 11, " & Int(127 * V3Level / 255) & ")"
                        Else
                            V3DecRelIx = Find_DecRelIx(V3Decay, 255)
                            V3Phase = 3 'Decay
                        End If
                    Else
                        V3AttIx = Find_AttIx(V3Attack, V3Level)
                        V3Phase = 2 'Attack
                    End If
                Else
                    V3DecRelIx = Find_DecRelIx(V3Release, V3Level)
                    V3Phase = 4 'Release
                End If
     '       End If
        End If

        V3Chn = NewChn
    Case 54291 'Voice 3 Attack/Decay Register
        If LogV3 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 3V POKE 54291," & Value & "  (Old value " & IoRAM(54291) & ")"
    Case 54292 'Voice 3 Sustain/Release Control Register
        If LogV3 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 3W POKE 54292," & Value & "  (Old value " & IoRAM(54292) & ")"
    Case 54296 'Volume and Filter Select Register
        If LogV0 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 0A POKE 54296," & Value & "  (Old value " & IoRAM(54296) & ")"
'        'Set Expression
'        midiOutShortMsg hMidiOut, GetParm(186, 11, Value And 15)
'        'For Pause = 1 To 10
'        '    DoEvents
'        'Next
'        midiOutShortMsg hMidiOut, GetParm(186, 11, 0)
        'If Value <> IoRAM(54296) Then
        'Call midiOutShortMsg(hMidiOut, GetParm(154, 0, Value And 15))
        'Call midiOutShortMsg(hMidiOut, GetParm(138, 0, 0))
        'End If
    End Select
End Sub

Private Function PitchBend3(MidiNote As Long, Note As Long) As Long
    Dim Fn As Double, Temp As Double

    If Note = 0 Then 'Or Note2 = 0 Then
        If MidiNote = 0 Then
            PitchBend3 = 0
        Else
            PitchBend3 = 99999
        End If

        Exit Function
    End If

    Fn = CDbl(Note) * 5.75380668526261E-02

    Temp = 12 * Log(Fn / 8) / Log(2)
    PitchBend3 = 8192 + Int(8192 * (Temp - MidiNote) / PBR)
End Function

Public Sub SID_Frame3()
    SIDFrameNo = SIDFrameNo + 1

    If V1Phase > 1 And (Not MuteV1) Then
        If V1Phase = 2 Then 'Attack
            V1AttIx = V1AttIx + 1
            V1Level = AttTable(V1Attack, V1AttIx)

            If V1Level = 255 Then
                If V1Decay = 0 Then
                    V1Phase = 1
                    If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1Ø V1Phase = " & V1Phase
                    V1Level = V1Sustain
                Else
                    V1Phase = 3 'Decay
                    If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1Ø V1Phase = " & V1Phase
                    V1DecRelIx = 0
                End If
            End If
        ElseIf V1Phase = 3 Then 'Decay
            V1DecRelIx = V1DecRelIx + 1
            V1Level = DecRelTable(V1Decay, V1DecRelIx)

            If V1Level <= V1Sustain Then
                If V1Level = 0 Then
                    V1Phase = 0
                    If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1Ø V1Phase = " & V1Phase
                Else
                    V1Phase = 1 'Sustain
                    If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1Ø V1Phase = " & V1Phase
                End If
            End If
        ElseIf V1Phase = 4 Then 'Release
            V1DecRelIx = V1DecRelIx + 1
            V1Level = DecRelTable(V1Release, V1DecRelIx)

            If V1Level = 0 Then
                V1Phase = 0
                If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1Ø V1Phase = " & V1Phase
            End If
        End If

        'Set Expression
        midiOutShortMsg hMidiOut, GetParm(176 + V1Chn, 11, Int(127 * V1Level / 255))
        If LogV1 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 1U FmidiOutShortMsg hMidiOut, GetParm(176 + " & V1Chn & ", 11, " & Int(127 * V1Level / 255) & ")"
    End If

    If V2Phase > 1 And (Not MuteV2) Then
        If V2Phase = 2 Then 'Attack
            V2AttIx = V2AttIx + 1
            V2Level = AttTable(V2Attack, V2AttIx)

            If V2Level = 255 Then
                If V2Decay = 0 Then
                    V2Phase = 1
                    V2Level = V2Sustain
                Else
                    V2Phase = 3 'Decay
                    V2DecRelIx = 0
                End If
            End If
        ElseIf V2Phase = 3 Then 'Decay
            V2DecRelIx = V2DecRelIx + 1
            V2Level = DecRelTable(V2Decay, V2DecRelIx)

            If V2Level <= V2Sustain Then
                If V2Level = 0 Then
                    V2Phase = 0
                Else
                    V2Phase = 1 'Sustain
                End If
            End If
        ElseIf V2Phase = 4 Then 'Release
            V2DecRelIx = V2DecRelIx + 1
            V2Level = DecRelTable(V2Release, V2DecRelIx)

            If V2Level = 0 Then
                V2Phase = 0
            End If
        End If

        'Set Expression
        midiOutShortMsg hMidiOut, GetParm(176 + V2Chn, 11, Int(127 * V2Level / 255))
        If LogV2 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 2U FmidiOutShortMsg hMidiOut, GetParm(176 + " & V2Chn & ", 11, " & Int(127 * V2Level / 255) & ")"
    End If

    If V3Phase > 1 And (Not MuteV3) Then
        If V3Phase = 2 Then 'Attack
            V3AttIx = V3AttIx + 1
            V3Level = AttTable(V3Attack, V3AttIx)

            If V3Level = 255 Then
                If V3Decay = 0 Then
                    V3Phase = 1
                    V3Level = V3Sustain
                Else
                    V3Phase = 3 'Decay
                    V3DecRelIx = 0
                End If
            End If
        ElseIf V3Phase = 3 Then 'Decay
            V3DecRelIx = V3DecRelIx + 1
            V3Level = DecRelTable(V3Decay, V3DecRelIx)

            If V3Level <= V3Sustain Then
                If V3Level = 0 Then
                    V3Phase = 0
                Else
                    V3Phase = 1 'Sustain
                End If
            End If
        ElseIf V3Phase = 4 Then 'Release
            V3DecRelIx = V3DecRelIx + 1
            V3Level = DecRelTable(V3Release, V3DecRelIx)

            If V3Level = 0 Then
                V3Phase = 0
            End If
        End If

        'Set Expression
        midiOutShortMsg hMidiOut, GetParm(176 + V3Chn, 11, Int(127 * V3Level / 255))
        If LogV3 Then Print #61, Right$("000000" & SIDFrameNo, 6) & " 3U FmidiOutShortMsg hMidiOut, GetParm(176 + " & V3Chn & ", 11, " & Int(127 * V3Level / 255) & ")"
    End If
End Sub

Private Function Find_AttIx(Attack As Integer, Level As Integer) As Integer
    Dim Ix1 As Long

    Ix1 = 0

    Do While AttTable(Attack, Ix1) < Level
        Ix1 = Ix1 + 1
    Loop

    If AttTable(Attack, Ix1) = 255 Then Ix1 = Ix1 - 1

    Find_AttIx = Ix1
End Function

Private Function Find_DecRelIx(DecRel As Integer, Level As Integer) As Integer
    Dim Ix1 As Long

    Ix1 = 0

    Do While DecRelTable(DecRel, Ix1) > Level
        Ix1 = Ix1 + 1
    Loop

    If Level = 0 Then Ix1 = Ix1 - 1

    Find_DecRelIx = Ix1
End Function

Public Sub New_SID2(Address As Long, Value As Byte)
'DONE Stop note med samme volume, som den er startet med
'DONE Hvis patch er 33, ændres til 8 og derefter til 33, skal ikke sendes msg
'DONE Hvis note spilles og gate's igen med samme patch, skal muligvis ikke sendes msg
'
'DONE Hvis freq=0 gates sendes msg ikke, men hvis freq ændres, skal note startes
'DONE Note skal startes med korrekt volume (afh. af patch, expr og mastervol)
'DONE Send ikke samme msg to gange lige efter hinanden (når startet note gates igen)
'     Hvis mastervol ændres og tone spilles, sendes expr msg
'     Note skal dø ud (expr msg) hvis sustain er 0
    Dim NewNote As Long, Volume As Byte

    Select Case Address
    '
    'VOICE 1
    Case 54272 'Voice 1 Frequency Control (low byte)
        If Value = IoRAM(54272) Then Exit Sub

        If NotePlaying1 <> 0 Then
            Volume = Expr1 * Vol(1) * (MasterVol / 127)
            NewNote = 256 * CLng(IoRAM(54273)) + CLng(Value)
            
            If NewNote = 0 Then NewNote = 1

            If NewNote = 0 Then
                Call midiOutShortMsg(hMidiOut, GetParm(128, Note2Midi(NotePlaying1), NoteVol1))
                NotePlaying1 = 0: NoteVol1 = 0
            Else
                Wheel = PitchBend(NotePlaying1, NewNote)

                If Wheel >= 0 And Wheel <= 16383 Then
                    HighLow (Wheel)
                    midiOutShortMsg hMidiOut, GetParm(224, LSB, MSB)
                Else
                    Call midiOutShortMsg(hMidiOut, GetParm(128, Note2Midi(NotePlaying1), NoteVol1))
                    Call midiOutShortMsg(hMidiOut, GetParm(144, Note2Midi(NewNote), Volume))
                    HighLow (PitchBend(NewNote, NewNote))
                    midiOutShortMsg hMidiOut, GetParm(224, LSB, MSB)
                    NotePlaying1 = NewNote: NoteVol1 = Volume
                End If
            End If
        End If
    Case 54273 'Voice 1 Frequency Control (high byte)
        If Value = IoRAM(54273) Then Exit Sub

        If NotePlaying1 <> 0 Then
            Volume = Expr1 * Vol(1) * (MasterVol / 127)
            NewNote = 256 * CLng(Value) + CLng(IoRAM(54272))

            If NewNote = 0 Then NewNote = 1

            If NewNote = 0 Then
                Call midiOutShortMsg(hMidiOut, GetParm(128, Note2Midi(NotePlaying1), NoteVol1))
                NotePlaying1 = 0: NoteVol1 = 0
            Else
                Wheel = PitchBend(NotePlaying1, NewNote)

                If Wheel >= 0 And Wheel <= 16383 Then
                    HighLow (Wheel)
                    midiOutShortMsg hMidiOut, GetParm(224, LSB, MSB)
                Else
                    Call midiOutShortMsg(hMidiOut, GetParm(128, Note2Midi(NotePlaying1), NoteVol1))
                    Call midiOutShortMsg(hMidiOut, GetParm(144, Note2Midi(NewNote), Volume))
                    HighLow (PitchBend(NewNote, NewNote))
                    midiOutShortMsg hMidiOut, GetParm(224, LSB, MSB)
                    NotePlaying1 = NewNote: NoteVol1 = Volume
                End If
            End If
        End If
    Case 54274 'Voice 1 Pulse Waveform Width (low byte)
    Case 54275 'Voice 1 Pulse Waveform Width (high nybble)
    Case 54276 'Voice 1 Control Register
        NewNote = 256 * CLng(IoRAM(54273)) + CLng(IoRAM(54272))

        If NewNote = 0 Then NewNote = 1

        Volume = Expr1 * Vol(1) * (MasterVol / 127)

        'If ((Value And 240) <> (IoRAM(54276) And 240)) And Value > 15 Then
        If ((Value And 240) <> WaveForm1) And Value > 15 Then
            Call midiOutShortMsg(hMidiOut, GetParm(192, GetPatch(1, Value), 0))
            WaveForm1 = Value And 240
        End If

        If (Value And 8) <> 0 Then
            Expr1 = 0
        Else
            Expr1 = 1
        End If

        If NotePlaying1 <> 0 Then
            If ((Value And 1) = 0) Or (NewNote = 0) Then
                Call midiOutShortMsg(hMidiOut, GetParm(128, Note2Midi(NotePlaying1), NoteVol1))
                NotePlaying1 = 0: NoteVol1 = 0
            Else
                If NewNote = NotePlaying1 Then Exit Sub

                Volume = Expr1 * Vol(1) * (MasterVol / 127)
                Wheel = PitchBend(NotePlaying1, NewNote)

                If Wheel >= 0 And Wheel <= 16383 Then
                    HighLow (Wheel)
                    midiOutShortMsg hMidiOut, GetParm(224, LSB, MSB)
                Else
                    Call midiOutShortMsg(hMidiOut, GetParm(128, Note2Midi(NotePlaying1), NoteVol1))
                    Call midiOutShortMsg(hMidiOut, GetParm(144, Note2Midi(NewNote), Volume))
                    HighLow (PitchBend(NewNote, NewNote))
                    midiOutShortMsg hMidiOut, GetParm(224, LSB, MSB)
                    NotePlaying1 = NewNote: NoteVol1 = Volume
                End If
            End If
        Else
            If ((Value And 1) = 1) And (NewNote <> 0) Then
                Volume = Expr1 * Vol(1) * (MasterVol / 127)
                Call midiOutShortMsg(hMidiOut, GetParm(144, Note2Midi(NewNote), Volume))
                HighLow (PitchBend(NewNote, NewNote))
                midiOutShortMsg hMidiOut, GetParm(224, LSB, MSB)
                NotePlaying1 = NewNote: NoteVol1 = Volume
            End If
        End If
    Case 54277 'Voice 1 Attack/Decay Register
    Case 54278 'Voice 1 Sustain/Release Control Register
'        If ((Value And 240) = 0) And ((IoRAM(54278) And 240) <> 0) Then
'            Call midiOutShortMsg(hMidiOut, GetParm(192, 122, 0))
'            If tt1 Then Print #8, Right$("000000" & IRQno, 6) & " midiOutShortMsg hMidiOut, GetParm(192, " & 0 & ", 0)"
'        ElseIf ((Value And 240) <> 0) And ((IoRAM(54278) And 240) = 0) Then
'            Call midiOutShortMsg(hMidiOut, GetParm(192, GetPatch(1, WaveForm1), 0))
'            If tt1 Then Print #8, Right$("000000" & IRQno, 6) & " midiOutShortMsg hMidiOut, GetParm(192, " & GetPatch(1, WaveForm1) & ", 0)"
'        End If
        If (Value And 240) = 0 Then
            If NotePlaying1 <> 0 Then
                Call midiOutShortMsg(hMidiOut, GetParm(128, Note2Midi(NotePlaying1), NoteVol1))
            End If

            Call midiOutShortMsg(hMidiOut, GetParm(192, 25, 0))
        Else
            Call midiOutShortMsg(hMidiOut, GetParm(192, GetPatch(1, WaveForm1), 0))
        End If
    '
    'VOICE 2
    Case 54279 'Voice 2 Frequency Control (low byte)
        If Value = IoRAM(54279) Then Exit Sub

        If NotePlaying2 <> 0 Then
            Volume = Expr2 * Vol(2) * (MasterVol / 127)
            NewNote = 256 * CLng(IoRAM(54280)) + CLng(Value)

            If NewNote = 0 Then NewNote = 1

            If NewNote = 0 Then
                Call midiOutShortMsg(hMidiOut, GetParm(129, Note2Midi(NotePlaying2), NoteVol2))
                NotePlaying2 = 0: NoteVol2 = 0
            Else
                Wheel = PitchBend(NotePlaying2, NewNote)

                If Wheel >= 0 And Wheel <= 16383 Then
                    HighLow (Wheel)
                    midiOutShortMsg hMidiOut, GetParm(225, LSB, MSB)
                Else
                    Call midiOutShortMsg(hMidiOut, GetParm(129, Note2Midi(NotePlaying2), NoteVol2))
                    Call midiOutShortMsg(hMidiOut, GetParm(145, Note2Midi(NewNote), Volume))
                    HighLow (PitchBend(NewNote, NewNote))
                    midiOutShortMsg hMidiOut, GetParm(225, LSB, MSB)
                    NotePlaying2 = NewNote: NoteVol2 = Volume
                End If
            End If
        End If
    Case 54280 'Voice 2 Frequency Control (high byte)
        If Value = IoRAM(54280) Then Exit Sub

        If NotePlaying2 <> 0 Then
            Volume = Expr2 * Vol(2) * (MasterVol / 127)
            NewNote = 256 * CLng(Value) + CLng(IoRAM(54279))

            If NewNote = 0 Then NewNote = 1

            If NewNote = 0 Then
                Call midiOutShortMsg(hMidiOut, GetParm(129, Note2Midi(NotePlaying2), NoteVol2))
                NotePlaying2 = 0: NoteVol2 = 0
            Else
                Wheel = PitchBend(NotePlaying2, NewNote)

                If Wheel >= 0 And Wheel <= 16383 Then
                    HighLow (Wheel)
                    midiOutShortMsg hMidiOut, GetParm(225, LSB, MSB)
                Else
                    Call midiOutShortMsg(hMidiOut, GetParm(129, Note2Midi(NotePlaying2), NoteVol2))
                    Call midiOutShortMsg(hMidiOut, GetParm(145, Note2Midi(NewNote), Volume))
                    HighLow (PitchBend(NewNote, NewNote))
                    midiOutShortMsg hMidiOut, GetParm(225, LSB, MSB)
                    NotePlaying2 = NewNote: NoteVol2 = Volume
                End If
            End If
        End If
    Case 54281 'Voice 2 Pulse Waveform Width (low byte)
    Case 54282 'Voice 2 Pulse Waveform Width (high nybble)
    Case 54283 'Voice 2 Control Register
        NewNote = 256 * CLng(IoRAM(54280)) + CLng(IoRAM(54279))

        If NewNote = 0 Then NewNote = 1

        Volume = Expr2 * Vol(2) * (MasterVol / 127)

        'If ((Value And 240) <> (IoRAM(54283) And 240)) And Value > 15 Then
        If ((Value And 240) <> WaveForm2) And Value > 15 Then
            Call midiOutShortMsg(hMidiOut, GetParm(193, GetPatch(2, Value), 0))
            WaveForm2 = Value And 240
        End If

        If (Value And 8) <> 0 Then
            Expr2 = 0
        Else
            Expr2 = 1
        End If

        If NotePlaying2 <> 0 Then
            If ((Value And 1) = 0) Or (NewNote = 0) Then
                Call midiOutShortMsg(hMidiOut, GetParm(129, Note2Midi(NotePlaying2), NoteVol2))
                NotePlaying2 = 0: NoteVol2 = 0
            Else
                If NewNote = NotePlaying2 Then Exit Sub

                Volume = Expr2 * Vol(2) * (MasterVol / 127)
                Wheel = PitchBend(NotePlaying2, NewNote)

                If Wheel >= 0 And Wheel <= 16383 Then
                    HighLow (Wheel)
                    midiOutShortMsg hMidiOut, GetParm(225, LSB, MSB)
                Else
                    Call midiOutShortMsg(hMidiOut, GetParm(129, Note2Midi(NotePlaying2), NoteVol2))
                    Call midiOutShortMsg(hMidiOut, GetParm(145, Note2Midi(NewNote), Volume))
                    HighLow (PitchBend(NewNote, NewNote))
                    midiOutShortMsg hMidiOut, GetParm(225, LSB, MSB)
                    NotePlaying2 = NewNote: NoteVol2 = Volume
                End If
            End If
        Else
            If ((Value And 1) = 1) And (NewNote <> 0) Then
                Volume = Expr2 * Vol(2) * (MasterVol / 127)
                Call midiOutShortMsg(hMidiOut, GetParm(145, Note2Midi(NewNote), Volume))
                HighLow (PitchBend(NewNote, NewNote))
                midiOutShortMsg hMidiOut, GetParm(225, LSB, MSB)
                NotePlaying2 = NewNote: NoteVol2 = Volume
            End If
        End If
    Case 54284 'Voice 2 Attack/Decay Register
    Case 54285 'Voice 2 Sustain/Release Control Register
'        If ((Value And 240) = 0) And ((IoRAM(54285) And 240) <> 0) Then
'            Call midiOutShortMsg(hMidiOut, GetParm(193, 122, 0))
'            If tt2 Then Print #8, Right$("000000" & IRQno, 6) & " midiOutShortMsg hMidiOut, GetParm(193, " & 0 & ", 0)"
'        ElseIf ((Value And 240) <> 0) And ((IoRAM(54285) And 240) = 0) Then
'            Call midiOutShortMsg(hMidiOut, GetParm(193, GetPatch(2, WaveForm2), 0))
'            If tt2 Then Print #8, Right$("000000" & IRQno, 6) & " midiOutShortMsg hMidiOut, GetParm(193, " & GetPatch(2, WaveForm2) & ", 0)"
'        End If
        If (Value And 240) = 0 Then
            If NotePlaying2 <> 0 Then
                Call midiOutShortMsg(hMidiOut, GetParm(129, Note2Midi(NotePlaying2), NoteVol2))
            End If

            Call midiOutShortMsg(hMidiOut, GetParm(193, 25, 0))
        Else
            Call midiOutShortMsg(hMidiOut, GetParm(193, GetPatch(2, WaveForm2), 0))
        End If
    '
    'VOICE 3
    Case 54286 'Voice 3 Frequency Control (low byte)
        If Value = IoRAM(54286) Then Exit Sub

        If NotePlaying3 <> 0 Then
            Volume = Expr3 * Vol(3) * (MasterVol / 127)
            NewNote = 256 * CLng(IoRAM(54287)) + CLng(Value)

            If NewNote = 0 Then NewNote = 1

            If NewNote = 0 Then
                Call midiOutShortMsg(hMidiOut, GetParm(130, Note2Midi(NotePlaying3), NoteVol3))
                NotePlaying3 = 0: NoteVol3 = 0
            Else
                Wheel = PitchBend(NotePlaying3, NewNote)

                If Wheel >= 0 And Wheel <= 16383 Then
                    HighLow (Wheel)
                    midiOutShortMsg hMidiOut, GetParm(226, LSB, MSB)
                Else
                    Call midiOutShortMsg(hMidiOut, GetParm(130, Note2Midi(NotePlaying3), NoteVol3))
                    Call midiOutShortMsg(hMidiOut, GetParm(146, Note2Midi(NewNote), Volume))
                    HighLow (PitchBend(NewNote, NewNote))
                    midiOutShortMsg hMidiOut, GetParm(226, LSB, MSB)
                    NotePlaying3 = NewNote: NoteVol3 = Volume
                End If
            End If
        End If
    Case 54287 'Voice 3 Frequency Control (high byte)
        If Value = IoRAM(54287) Then Exit Sub

        If NotePlaying3 <> 0 Then
            Volume = Expr3 * Vol(3) * (MasterVol / 127)
            NewNote = 256 * CLng(Value) + CLng(IoRAM(54286))

            If NewNote = 0 Then NewNote = 1

            If NewNote = 0 Then
                Call midiOutShortMsg(hMidiOut, GetParm(130, Note2Midi(NotePlaying3), NoteVol3))
                NotePlaying3 = 0: NoteVol3 = 0
            Else
                Wheel = PitchBend(NotePlaying3, NewNote)

                If Wheel >= 0 And Wheel <= 16383 Then
                    HighLow (Wheel)
                    midiOutShortMsg hMidiOut, GetParm(226, LSB, MSB)
                Else
                    Call midiOutShortMsg(hMidiOut, GetParm(130, Note2Midi(NotePlaying3), NoteVol3))
                    Call midiOutShortMsg(hMidiOut, GetParm(146, Note2Midi(NewNote), Volume))
                    HighLow (PitchBend(NewNote, NewNote))
                    midiOutShortMsg hMidiOut, GetParm(226, LSB, MSB)
                    NotePlaying3 = NewNote: NoteVol3 = Volume
                End If
            End If
        End If
    Case 54288 'Voice 3 Pulse Waveform Width (low byte)
    Case 54289 'Voice 3 Pulse Waveform Width (high nybble)
    Case 54290 'Voice 3 Control Register
        NewNote = 256 * CLng(IoRAM(54287)) + CLng(IoRAM(54286))

        If NewNote = 0 Then NewNote = 1

        Volume = Expr3 * Vol(3) * (MasterVol / 127)

        'If ((Value And 240) <> (IoRAM(54290) And 240)) And Value > 15 Then
        If ((Value And 240) <> WaveForm3) And Value > 15 Then
            Call midiOutShortMsg(hMidiOut, GetParm(194, GetPatch(3, Value), 0))
            WaveForm3 = Value And 240
        End If

        If (Value And 8) <> 0 Then
            Expr3 = 0
        Else
            Expr3 = 1
        End If

        If NotePlaying3 <> 0 Then
            If ((Value And 1) = 0) Or (NewNote = 0) Then
                Call midiOutShortMsg(hMidiOut, GetParm(130, Note2Midi(NotePlaying3), NoteVol3))
                NotePlaying3 = 0: NoteVol3 = 0
            Else
                If NewNote = NotePlaying3 Then Exit Sub

                Volume = Expr3 * Vol(3) * (MasterVol / 127)
                Wheel = PitchBend(NotePlaying3, NewNote)

                If Wheel >= 0 And Wheel <= 16383 Then
                    HighLow (Wheel)
                    midiOutShortMsg hMidiOut, GetParm(226, LSB, MSB)
                Else
                    Call midiOutShortMsg(hMidiOut, GetParm(130, Note2Midi(NotePlaying3), NoteVol3))
                    Call midiOutShortMsg(hMidiOut, GetParm(146, Note2Midi(NewNote), Volume))
                    HighLow (PitchBend(NewNote, NewNote))
                    midiOutShortMsg hMidiOut, GetParm(226, LSB, MSB)
                    NotePlaying3 = NewNote: NoteVol3 = Volume
                End If
            End If
        Else
            If ((Value And 1) = 1) And (NewNote <> 0) Then
                Volume = Expr3 * Vol(3) * (MasterVol / 127)
                Call midiOutShortMsg(hMidiOut, GetParm(146, Note2Midi(NewNote), Volume))
                HighLow (PitchBend(NewNote, NewNote))
                midiOutShortMsg hMidiOut, GetParm(226, LSB, MSB)
                NotePlaying3 = NewNote: NoteVol3 = Volume
            End If
        End If
    Case 54291 'Voice 3 Attack/Decay Register
    Case 54292 'Voice 3 Sustain/Release Control Register
'        If ((Value And 240) = 0) And ((IoRAM(54292) And 240) <> 0) Then
'            Call midiOutShortMsg(hMidiOut, GetParm(194, 122, 0))
'            If tt3 Then Print #8, Right$("000000" & IRQno, 6) & " midiOutShortMsg hMidiOut, GetParm(194, " & 0 & ", 0)"
'        ElseIf ((Value And 240) <> 0) And ((IoRAM(54292) And 240) = 0) Then
'            Call midiOutShortMsg(hMidiOut, GetParm(194, GetPatch(3, WaveForm3), 0))
'            If tt3 Then Print #8, Right$("000000" & IRQno, 6) & " midiOutShortMsg hMidiOut, GetParm(194, " & GetPatch(3, WaveForm3) & ", 0)"
'        End If
        If (Value And 240) = 0 Then
            If NotePlaying3 <> 0 Then
                Call midiOutShortMsg(hMidiOut, GetParm(130, Note2Midi(NotePlaying3), NoteVol3))
            End If

            Call midiOutShortMsg(hMidiOut, GetParm(194, 25, 0))
        Else
            Call midiOutShortMsg(hMidiOut, GetParm(194, GetPatch(3, WaveForm3), 0))
        End If
    '
    ' ALL VOICES
    Case 54293 'Bits 0-2:  Low portion of filter cutoff frequency
    Case 54294 'Filter Cutoff Frequency (high byte)
    Case 54295 'Filter Resonance Control Register
    Case 54296 'Volume and Filter Select Register
        MasterVol = 127 * (Value And 15) \ 15
    '    Call midiOutShortMsg(hMidiOut, GetParm(192, 81, 0))
    '    Call midiOutShortMsg(hMidiOut, GetParm(144, 0, MasterVol))
    '    Call midiOutShortMsg(hMidiOut, GetParm(128, 0, MasterVol))
    '    Call midiOutShortMsg(hMidiOut, GetParm(192, GetPatch(1, WaveForm1), 0))
    Case 54297 'Read Game Paddle 1 (or 3) Position
    Case 54298 'Read Game Paddle 2 (or 4) Position
    Case 54299 'Read Oscillator 3/Random Number Generator
    Case 54300 'Envelope Generator 3 Output
    End Select
End Sub

Public Function Stop_Notes()
    If NotePlaying1 <> 0 Then
        Call midiOutShortMsg(hMidiOut, GetParm(128, Note2Midi(NotePlaying1), NoteVol1))
    End If

    If NotePlaying2 <> 0 Then
        Call midiOutShortMsg(hMidiOut, GetParm(129, Note2Midi(NotePlaying2), NoteVol2))
    End If

    If NotePlaying3 <> 0 Then
        Call midiOutShortMsg(hMidiOut, GetParm(130, Note2Midi(NotePlaying3), NoteVol3))
    End If
End Function

Private Function Note2Midi(Note As Long) As Integer
    Dim Fn As Double

    If Note = 0 Then Note2Midi = 0: Exit Function

    Fn = CDbl(Note) * 5.75380668526261E-02

    Note2Midi = Int(12 * Log(Fn / 8) / Log(2))

    'Wheel = Int(12 * Log(Fn / 8) / Log(2) - Int(12 * Log(Fn / 8) / Log(2)))
End Function

Private Function PitchBend(Note1 As Long, Note2 As Long) As Long
    Dim Fn1 As Double, Fn2 As Double, temp1 As Double, temp2 As Double

    If Note1 = 0 Or Note2 = 0 Then
        PitchBend = 8192
        Exit Function
    End If

    Fn1 = CDbl(Note1) * 5.75380668526261E-02: Fn2 = CDbl(Note2) * 5.75380668526261E-02

    'PitchBend = 8192 + 8192 * Int(12 * Log(Fn2 / 8) / Log(2) - Int(12 * Log(Fn1 / 8) / Log(2))) / PBR
    temp1 = Int(12 * Log(Fn1 / 8) / Log(2))
    temp2 = 12 * Log(Fn2 / 8) / Log(2)
    PitchBend = 8192 + Int(8192 * (temp2 - temp1) / PBR)
End Function

Private Function GetParm(Parm1, Parm2, Parm3) As Long
    GetParm = Parm3 * 65536 + Parm2 * 256 + Parm1
End Function

Private Sub HighLow(Value As Double)
    MSB = Value \ 128
    LSB = Value And 127
End Sub

Private Function GetPatch(Voice As Byte, Waveform As Byte) As Byte
    If Waveform And 16 Then GetPatch = PatchNo(1): Vol(Voice) = PatchVol(1): Exit Function
    If Waveform And 32 Then GetPatch = PatchNo(2): Vol(Voice) = PatchVol(2): Exit Function '81
    If Waveform And 64 Then GetPatch = PatchNo(3): Vol(Voice) = PatchVol(3): Exit Function
    If Waveform And 128 Then GetPatch = PatchNo(4): Vol(Voice) = PatchVol(4): Exit Function
End Function

Private Function LargeIntToCurrency(liInput As LARGE_INTEGER) As Currency
    'copy 8 bytes from the large integer to an empty currency
    CopyMemory LargeIntToCurrency, liInput, LenB(liInput)
    'adjust it
    LargeIntToCurrency = LargeIntToCurrency * 10000
End Function

Public Function Close_SID() As Long
    Dim midiError As Long

    midiError = midiOutClose(hMidiOut)

    Close_SID = midiError

    Close #61
End Function
