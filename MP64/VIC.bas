Attribute VB_Name = "VIC"
Option Explicit

Private Declare Function SetPixel Lib "gdi32" (ByVal hdc As Long, ByVal X As Long, ByVal Y As Long, ByVal crColor As Long) As Long

Const Foreground = 16

Global ScreenBaseX As Long
Global ScreenBaseY As Long
Global BorderON As Boolean
Global HidPic As Long
Dim Colors(0 To 15) As Long
Dim OldPixels(0 To 401, 0 To 283) As Long
Dim CharBuffer2(0 To 39) As Long
Dim CharColorBuffer2(0 To 39) As Long
Dim PixelBuffer(0 To 326) As Long
Dim SpritePixelBuffer(0 To 7, 0 To 319) As Long
Dim MCM As Boolean, ECM As Boolean, BMM As Boolean
Dim CharCode As Long, VP As Long
Dim CHARS As Long
Dim BorderColor As Long
Dim BackgroundColor(0 To 3) As Long
Global ScreenStack(0 To 350000) As Long
'Global ScreenStackPT As Long
Dim SprStackXpos(0 To 7, 1 To 48) As Long
Dim SprStackPixel(0 To 7, 1 To 48) As Long
Dim SprStackPtr(0 To 7) As Long
Dim DispMode As Long
Dim DENinLine48 As Boolean

Public Sub Init_VIC()
    Dim Ix1 As Long

    Colors(0) = RGB(25, 29, 25) 'RGB(0, 0, 0)
    Colors(1) = RGB(252, 249, 252) 'RGB(255, 255, 255)
    Colors(2) = RGB(147, 58, 76) 'RGB(255, 0, 0)
    Colors(3) = RGB(182, 250, 250) 'RGB(0, 255, 255)
    Colors(4) = RGB(210, 125, 237) 'RGB(255, 0, 255)
    Colors(5) = RGB(106, 207, 111) 'RGB(0, 255, 0)
    Colors(6) = RGB(79, 68, 216) 'RGB(0, 0, 255)
    Colors(7) = RGB(251, 251, 139) 'RGB(255, 255, 0)
    Colors(8) = RGB(216, 156, 91) 'RGB(255, 128, 0)
    Colors(9) = RGB(127, 83, 7)  'RGB(128, 64, 128)
    Colors(10) = RGB(239, 131, 159) 'RGB(255, 128, 128)
    Colors(11) = RGB(87, 87, 83) 'RGB(96, 96, 96)
    Colors(12) = RGB(163, 167, 167) 'RGB(144, 144, 144)
    Colors(13) = RGB(183, 251, 191) 'RGB(128, 255, 128)
    Colors(14) = RGB(163, 151, 255) 'RGB(128, 128, 255)
    Colors(15) = RGB(204, 200, 198) 'RGB(239, 233, 231) 'RGB(192, 192, 192)

    For Ix1 = 0 To 65535: IoRAM(Ix1) = 0: Next
End Sub

Public Sub Render_Raster_Line_In_Array(RASTER As Long)
    Dim BANK As Long, SCREEN As Long
    Dim DEN As Boolean
    Dim XSCROLL As Long, YSCROLL As Long, RSEL As Long, CSEL As Long
    Dim Ix1 As Long, Ix2 As Long, Ix3 As Long, Ix4 As Long
    Dim AAA As Long, BBB As Long, CCC As Long, DDD As Long
    Dim EEE As Long, FFF As Long, GGG As Long, HHH As Long
    Dim ByteVal As Long
    Dim SpriteNo As Long, SPRCHARCOL As Long
    Static BadLineNo As Long

    'If RASTER = 15 Then ScreenStackPT = 0

    If RASTER < 48 Then BadLineNo = 0

    BANK = 16384 * CLng(3 - (IoRAM(56576) And 3))
    SCREEN = BANK + 64 * CLng(IoRAM(53272) And 240)
    CHARS = BANK + 1024 * CLng(IoRAM(53272) And 14)
    DEN = CBool(PEEK(53265) And 16)
    RSEL = (IoRAM(53265) And 8) \ 8
    CSEL = (IoRAM(53270) And 8) \ 8
    XSCROLL = IoRAM(53270) And 7
    YSCROLL = IoRAM(53265) And 7
    DispMode = 0
    MCM = CBool(IoRAM(53270) And 16): If MCM Then DispMode = DispMode + 1
    ECM = CBool(IoRAM(53265) And 64): If ECM Then DispMode = DispMode + 4
    BMM = CBool(IoRAM(53265) And 32): If BMM Then DispMode = DispMode + 2

    ' 39FF/3FFF
    If (RASTER - YSCROLL - 48 < 0) Or (RASTER - YSCROLL - 48 > 199) Then
        DispMode = 8
    End If

    BorderColor = Colors(IoRAM(53280) And 15)
    BackgroundColor(0) = IoRAM(53281) And 15
    BackgroundColor(1) = IoRAM(53282) And 15
    BackgroundColor(2) = IoRAM(53283) And 15
    BackgroundColor(3) = IoRAM(53284) And 15

    If RASTER = 48 Then
        If DEN Then
            DENinLine48 = True
        Else
            DENinLine48 = False
        End If
    End If
    
    ' BAD LINE CONDITION
    '
    'A Bad Line Condition is given at any arbitrary clock cycle, if at the negative edge of ø0 at
    'the beginning of the cycle RASTER $30 and RASTER $f7 and the lower three bits of
    'RASTER are equal to YSCROLL and if the DEN bit was set during an arbitrary cycle of
    'raster line $30.
    '
    If RASTER >= 48 And RASTER <= 247 Then
        If ((RASTER And 7) = YSCROLL) _
        And DENinLine48 Then
            Bad_Line_Fetch SCREEN, RASTER, YSCROLL, BadLineNo
            BadLineNo = BadLineNo + 1
        End If
    End If

    ' TODO  Take into account ECM+MCM in DispMode 8
    If BadLineNo = 0 Then DispMode = 8

    If RASTER = 51 And RSEL = 1 And DEN Then BorderON = False
    If RASTER = 55 And RSEL = 0 And DEN Then BorderON = False
    If RASTER = 247 And RSEL = 0 Then BorderON = True
    If RASTER = 251 And RSEL = 1 Then BorderON = True

    ' TOP/BOTTOM BORDER
    'If (Not DEN) Or _
    '   ((RASTER <= 50 Or RASTER >= 251) And BorderON) Or _
    '   ((RASTER <= 54 Or RASTER >= 247) And BorderON And RSEL = 0) Then
    If (Not DEN) Or BorderON Then
        For Ix1 = 0 To 401
            Draw_Pixel Ix1, RASTER - 15, BorderColor
        Next

        Exit Sub
    End If

    ' SIDEBORDERS
    If CSEL = 1 Then
        For Ix1 = 0 To 44
            Draw_Pixel Ix1, RASTER - 15, BorderColor
        Next
        For Ix1 = 365 To 401
            Draw_Pixel Ix1, RASTER - 15, BorderColor
        Next
    Else
        For Ix1 = 0 To 51
            Draw_Pixel Ix1, RASTER - 15, BorderColor
        Next
        For Ix1 = 356 To 401
            Draw_Pixel Ix1, RASTER - 15, BorderColor
        Next
    End If


    'If RASTER = 50 Then frmMP64.Label3.Caption = YSCROLL

    Ix3 = (RASTER - YSCROLL) Mod 8

    Select Case DispMode
    Case 0 'STANDARD TEXT MODE
        For Ix1 = 0 To 39
            ByteVal = VicPEEK(CHARS + 8 * CharBuffer2(Ix1) + Ix3)
            BBB = XSCROLL + 8 * Ix1 + 7
            For Ix2 = 7 To 0 Step -1
                If ByteVal And PowerOfTwo(Ix2) Then
                    PixelBuffer(BBB - Ix2) = CharColorBuffer2(Ix1) + Foreground
                Else
                    PixelBuffer(BBB - Ix2) = BackgroundColor(0)
                End If
            Next
        Next
    Case 1 'MULTICOLOR TEXT MODE
        For Ix1 = 0 To 39
            ByteVal = VicPEEK(CHARS + 8 * CharBuffer2(Ix1) + Ix3)
            BBB = XSCROLL + 8 * Ix1 + 7
            CCC = BBB + 1
            DDD = (CharColorBuffer2(Ix1) And 7) + Foreground
            If CharColorBuffer2(Ix1) And 8 Then
                For Ix2 = 7 To 1 Step -2
                    If ByteVal And (PowerOfTwo(Ix2)) Then
                        If ByteVal And (PowerOfTwo(Ix2 - 1)) Then
                            PixelBuffer(BBB - Ix2) = DDD
                            PixelBuffer(CCC - Ix2) = DDD
                        Else
                            PixelBuffer(BBB - Ix2) = BackgroundColor(2) + Foreground
                            PixelBuffer(CCC - Ix2) = BackgroundColor(2) + Foreground
                        End If
                    Else
                        If ByteVal And PowerOfTwo(Ix2 - 1) Then
                            PixelBuffer(BBB - Ix2) = BackgroundColor(1)
                            PixelBuffer(CCC - Ix2) = BackgroundColor(1)
                        Else
                            PixelBuffer(BBB - Ix2) = BackgroundColor(0)
                            PixelBuffer(CCC - Ix2) = BackgroundColor(0)
                        End If
                    End If
                Next
            Else
                For Ix2 = 7 To 0 Step -1
                    If ByteVal And PowerOfTwo(Ix2) Then
                        PixelBuffer(BBB - Ix2) = DDD
                    Else
                        PixelBuffer(BBB - Ix2) = BackgroundColor(0)
                    End If
                Next
            End If
        Next
    Case 2 'STANDARD BITMAP MODE
        Ix3 = RASTER - YSCROLL - 48 ' + ((RASTER - YSCROLL) Mod 8)

        If Ix3 >= 0 And Ix3 <= 199 Then
            For Ix1 = 0 To 39
                BBB = VicPEEK(BANK + 1024 * (IoRAM(53272) And 8) + 320 * (Ix3 \ 8) + 8 * Ix1 + (Ix3 And 7))
                CCC = XSCROLL + 8 * Ix1 + 7
                DDD = (CharBuffer2(Ix1) \ 16) + Foreground
                EEE = CharBuffer2(Ix1) And 15
                For Ix2 = 7 To 0 Step -1
                    If BBB And PowerOfTwo(Ix2) Then
                        PixelBuffer(CCC - Ix2) = DDD
                    Else
                        PixelBuffer(CCC - Ix2) = EEE
                    End If
                Next
            Next
        End If
    Case 3 'MULTICOLOR BITMAP MODE
        Ix3 = RASTER - YSCROLL - 48 ' + ((RASTER - YSCROLL) Mod 8)

        If Ix3 >= 0 And Ix3 <= 199 Then
            For Ix1 = 0 To 39
                BBB = VicPEEK(BANK + 1024 * (IoRAM(53272) And 8) + 320 * (Ix3 \ 8) + 8 * Ix1 + (Ix3 And 7))
                CCC = XSCROLL + 8 * Ix1 + 7
                DDD = CCC + 1
                EEE = (CharColorBuffer2(Ix1) And 15) + Foreground
                FFF = (CharBuffer2(Ix1) And 15) + Foreground
                GGG = (CharBuffer2(Ix1) \ 16) ' + Foreground
                For Ix2 = 7 To 1 Step -2
                    If BBB And PowerOfTwo(Ix2) Then
                        If BBB And PowerOfTwo(Ix2 - 1) Then
                            PixelBuffer(CCC - Ix2) = EEE
                            PixelBuffer(DDD - Ix2) = EEE
                        Else
                            PixelBuffer(CCC - Ix2) = FFF
                            PixelBuffer(DDD - Ix2) = FFF
                        End If
                    Else
                        If BBB And PowerOfTwo(Ix2 - 1) Then
                            PixelBuffer(CCC - Ix2) = GGG
                            PixelBuffer(DDD - Ix2) = GGG
                        Else
                            PixelBuffer(CCC - Ix2) = BackgroundColor(0)
                            PixelBuffer(DDD - Ix2) = BackgroundColor(0)
                        End If
                    End If
                Next
            Next
        End If
    Case 4 'EXTENDED BACKGROUND COLOR MODE
        AAA = XSCROLL + 7
        For Ix1 = 0 To 39
            ByteVal = VicPEEK(CHARS + 8 * (CharBuffer2(Ix1) And 63) + Ix3)
            BBB = AAA + 8 * Ix1
            CCC = CharColorBuffer2(Ix1) + Foreground
            DDD = BackgroundColor((CharBuffer2(Ix1) And 192) \ 64)
            For Ix2 = 7 To 0 Step -1
                If ByteVal And (PowerOfTwo(Ix2)) Then
                    PixelBuffer(BBB - Ix2) = CCC
                Else
                    PixelBuffer(BBB - Ix2) = DDD
                End If
            Next
        Next
    Case 5 'ECM & MCM - Illegal
        For Ix1 = 0 To 319
            PixelBuffer(XSCROLL + Ix1) = 0
        Next
    Case 6 'ECM & BMM - Illegal
        For Ix1 = 0 To 319
            PixelBuffer(XSCROLL + Ix1) = 0
        Next
    Case 7 'ECM & BMM & MCM - Illegal
        For Ix1 = 0 To 319
            PixelBuffer(XSCROLL + Ix1) = 0
        Next
    Case 8 '39FF/3FFF
        If ECM Then
            VP = VicPEEK(BANK + 14847)
        Else
            VP = VicPEEK(BANK + 16383)
        End If

        For Ix2 = 7 To 0 Step -1
            AAA = XSCROLL + 7
            If (VP And PowerOfTwo(Ix2)) > 0 Then
                PixelBuffer(AAA - Ix2) = Foreground
            Else
                PixelBuffer(AAA - Ix2) = BackgroundColor(0)
            End If
        Next

        For Ix1 = 1 To 39
            AAA = XSCROLL + 8 * Ix1
            For Ix2 = 0 To 7 Step 1
                PixelBuffer(AAA + Ix2) = PixelBuffer(XSCROLL + Ix2)
            Next
        Next
    Case Else
        'MsgBox DispMode
    End Select

    Render_Sprites_In_Raster_Line BANK, SCREEN, RASTER

    'Check Collisions

    If DispMode < 8 Then
        SPRCHARCOL = 0

        For SpriteNo = 7 To 0 Step -1
            If SprStackPtr(SpriteNo) > 0 Then
                For Ix1 = 1 To SprStackPtr(SpriteNo)
                    If SprStackPixel(SpriteNo, Ix1) Then 'And Foreground Then
                        If PixelBuffer(SprStackXpos(SpriteNo, Ix1)) And Foreground Then
                            SPRCHARCOL = SPRCHARCOL + PowerOfTwo(SpriteNo)
                            Ix1 = SprStackPtr(SpriteNo)
                        End If
                    End If
                Next
            End If
        Next

        If SPRCHARCOL > 0 Then
            'If IoRAM(53274) And 4 Then
            '    Sprite_Char_Coll SPRCHARCOL
            'End If
        End If
    End If

    For SpriteNo = 7 To 0 Step -1
        If SprStackPtr(SpriteNo) > 0 Then
            For Ix1 = 1 To SprStackPtr(SpriteNo)
                'If SprStackPixel(SpriteNo, Ix1) And Foreground Then
                    Ix2 = SprStackXpos(SpriteNo, Ix1)
                    PixelBuffer(Ix2) = SprStackPixel(SpriteNo, Ix1)
                'End If
            Next
        End If
    Next

    If CSEL = 1 Then
        AAA = RASTER - 15
        ' Render X-Scroll area
        If XSCROLL > 0 Then
            BBB = Colors(BackgroundColor(0))
            For Ix1 = 1 To XSCROLL
                Draw_Pixel 44 + Ix1, AAA, BBB
            Next
        End If

        ' Render characters
        For Ix1 = XSCROLL To 319
            Draw_Pixel 45 + Ix1, AAA, Colors(PixelBuffer(Ix1) And 15)
        Next
    Else
        AAA = RASTER - 15
        ' Render characters
        For Ix1 = 7 To 310
            Draw_Pixel 45 + Ix1, AAA, Colors(PixelBuffer(Ix1) And 15)
        Next
    End If

    'frmMP64.Label1.Caption = "BANK=" & BANK & "  " & _
                             "SCREEN=" & SCREEN & "  " & _
                             "CHARS=" & CHARS & "                       " & _
                             "MCM=" & MCM & "  " & _
                             "ECM=" & ECM & "  " & _
                             "BMM=" & BMM & "                       " & _
                             "XSCROLL=" & XSCROLL & "  " & _
                             "YSCROLL=" & YSCROLL
End Sub

Public Sub Bad_Line_Fetch(SCREEN As Long, RASTER As Long, YSCROLL As Long, BadLineNo As Long)
    Dim Ix1 As Long, Ix2 As Long, AAA As Long, BBB As Long

    ' Independent of DispMode
    Ix1 = 40 * BadLineNo '5 * (RASTER - YSCROLL - 48)
    AAA = SCREEN + Ix1
    BBB = 55296 + Ix1
    For Ix2 = 0 To 39
        CharBuffer2(Ix2) = VicPEEK(AAA + Ix2)
        CharColorBuffer2(Ix2) = IoRAM(BBB + Ix2) And 15
    Next
End Sub

Public Sub Render_Sprites_In_Raster_Line(BANK As Long, SCREEN As Long, RASTER As Long)
    Dim SP1 As Long, SP2 As Long
    Dim Ix3 As Long, j As Long, k As Long, l As Long
    Dim DByte As Long, Addr As Long, XPos As Long, YPos As Long
    Dim SpriteNo As Long, SpriteLine As Long
    Dim MaxSpriteLine As Long, XCount As Long, XExp As Long
    Dim SpritePoints(0 To 319) As Long
    Dim CollIx As Long

    For SpriteNo = 0 To 7
        SprStackPtr(SpriteNo) = 0
    Next

    For l = 0 To 319: SpritePoints(l) = 0: Next

    CollIx = -1

    'If RASTER < 51 Or RASTER > 250 Then Exit Sub

    For SpriteNo = 7 To 0 Step -1
        If IoRAM(53269) And PowerOfTwo(SpriteNo) Then
            If IoRAM(53271) And PowerOfTwo(SpriteNo) Then 'Y-Expanded
                MaxSpriteLine = 41
            Else
                MaxSpriteLine = 20
            End If

            SpriteLine = RASTER - IoRAM(53249 + 2 * SpriteNo) - 1

            If (SpriteLine >= 0 And SpriteLine <= MaxSpriteLine) _
            Or (SpriteLine >= 256 And SpriteLine <= 256 + MaxSpriteLine) Then
                If IoRAM(53277) And PowerOfTwo(SpriteNo) Then
                    XExp = 1
                Else
                    XExp = 0
                End If

                If IoRAM(53271) And PowerOfTwo(SpriteNo) Then 'Y-Expanded
                    SpriteLine = (SpriteLine And 255) \ 2
                Else
                    SpriteLine = SpriteLine And 255
                End If

                Addr = BANK + 64 * VicPEEK(SCREEN + 1016 + SpriteNo)

                For j = 0 To 2
                    DByte = RAM(Addr + j + 3 * SpriteLine)

                    If IoRAM(53276) And PowerOfTwo(SpriteNo) Then 'Multicolor
                        For l = 7 To 1 Step -2
                            If DByte And PowerOfTwo(l) Then
                                If DByte And PowerOfTwo(l - 1) Then
                                    For XCount = 0 To XExp
                                        XPos = IIf(IoRAM(53264) And PowerOfTwo(SpriteNo), 256, 0) + _
                                               IoRAM(53248 + 2 * SpriteNo)

                                        If XPos > 403 And XPos < 504 Then XPos = XPos - 504 'If XPos > 401 ???

                                        XPos = XPos + (XExp + 1) * (8 * j + 7 - l) - 24 + XCount

                                        If XPos >= 0 And XPos <= 319 Then ' 0-319 ?
                                            SprStackPtr(SpriteNo) = SprStackPtr(SpriteNo) + 1
                                            SprStackXpos(SpriteNo, SprStackPtr(SpriteNo)) = XPos
                                            SprStackPixel(SpriteNo, SprStackPtr(SpriteNo)) = _
                                                (IoRAM(53286) And 15) + Foreground

                                            If SpritePoints(XPos) > 0 Then
                                                CollIx = XPos
                                            End If

                                            SpritePoints(XPos) = SpritePoints(XPos) + PowerOfTwo(SpriteNo)

                                            XPos = XPos + 1

                                            If XPos >= 0 And XPos <= 319 Then ' 0-319 ?
                                                SprStackPtr(SpriteNo) = SprStackPtr(SpriteNo) + 1
                                                SprStackXpos(SpriteNo, SprStackPtr(SpriteNo)) = XPos
                                                SprStackPixel(SpriteNo, SprStackPtr(SpriteNo)) = _
                                                    (IoRAM(53286) And 15) + Foreground

                                                If SpritePoints(XPos) > 0 Then
                                                    CollIx = XPos
                                                End If

                                                SpritePoints(XPos) = SpritePoints(XPos) + PowerOfTwo(SpriteNo)
                                            End If
                                        End If
                                    Next
                                Else
                                    For XCount = 0 To XExp
                                        XPos = IIf(IoRAM(53264) And PowerOfTwo(SpriteNo), 256, 0) + _
                                               IoRAM(53248 + 2 * SpriteNo)

                                        If XPos > 403 And XPos < 504 Then XPos = XPos - 504 'If XPos > 401 ???

                                        XPos = XPos + (XExp + 1) * (8 * j + 7 - l) - 24 + XCount

                                        If XPos >= 0 And XPos <= 319 Then ' 0-319 ?
                                            SprStackPtr(SpriteNo) = SprStackPtr(SpriteNo) + 1
                                            SprStackXpos(SpriteNo, SprStackPtr(SpriteNo)) = XPos
                                            SprStackPixel(SpriteNo, SprStackPtr(SpriteNo)) = _
                                                (IoRAM(53287 + SpriteNo) And 15) + Foreground

                                            If SpritePoints(XPos) > 0 Then
                                                CollIx = XPos
                                            End If

                                            SpritePoints(XPos) = SpritePoints(XPos) + PowerOfTwo(SpriteNo)

                                            XPos = XPos + 1

                                            If XPos >= 0 And XPos <= 319 Then ' 0-319 ?
                                                SprStackPtr(SpriteNo) = SprStackPtr(SpriteNo) + 1
                                                SprStackXpos(SpriteNo, SprStackPtr(SpriteNo)) = XPos
                                                SprStackPixel(SpriteNo, SprStackPtr(SpriteNo)) = _
                                                    (IoRAM(53287 + SpriteNo) And 15) + Foreground

                                                If SpritePoints(XPos) > 0 Then
                                                    CollIx = XPos
                                                End If

                                                SpritePoints(XPos) = SpritePoints(XPos) + PowerOfTwo(SpriteNo)
                                            End If
                                        End If
                                    Next
                                End If
                            Else
                                If DByte And PowerOfTwo(l - 1) Then
                                    For XCount = 0 To XExp
                                        XPos = IIf(IoRAM(53264) And PowerOfTwo(SpriteNo), 256, 0) + _
                                               IoRAM(53248 + 2 * SpriteNo)

                                        If XPos > 403 And XPos < 504 Then XPos = XPos - 504 'If XPos > 401 ???

                                        XPos = XPos + (XExp + 1) * (8 * j + 7 - l) - 24 + XCount

                                        If XPos >= 0 And XPos <= 319 Then ' 0-319 ?
                                            SprStackPtr(SpriteNo) = SprStackPtr(SpriteNo) + 1
                                            SprStackXpos(SpriteNo, SprStackPtr(SpriteNo)) = XPos
                                            SprStackPixel(SpriteNo, SprStackPtr(SpriteNo)) = _
                                                (IoRAM(53285) And 15)

                                            If SpritePoints(XPos) > 0 Then
                                                CollIx = XPos
                                            End If

                                            SpritePoints(XPos) = SpritePoints(XPos) + PowerOfTwo(SpriteNo)

                                            XPos = XPos + 1

                                            If XPos >= 0 And XPos <= 319 Then ' 0-319 ?
                                                SprStackPtr(SpriteNo) = SprStackPtr(SpriteNo) + 1
                                                SprStackXpos(SpriteNo, SprStackPtr(SpriteNo)) = XPos
                                                SprStackPixel(SpriteNo, SprStackPtr(SpriteNo)) = _
                                                    (IoRAM(53285) And 15)

                                                If SpritePoints(XPos) > 0 Then
                                                    CollIx = XPos
                                                End If

                                                SpritePoints(XPos) = SpritePoints(XPos) + PowerOfTwo(SpriteNo)
                                            End If
                                        End If
                                    Next
                                End If
                            End If
                        Next
                    Else
                        For l = 7 To 0 Step -1
                            If DByte And PowerOfTwo(l) Then
                                For XCount = 0 To XExp
                                    XPos = IIf(IoRAM(53264) And PowerOfTwo(SpriteNo), 256, 0) + _
                                           IoRAM(53248 + 2 * SpriteNo)

                                    If XPos > 403 And XPos < 504 Then XPos = XPos - 504 'If XPos > 401 ???

                                    XPos = XPos + (XExp + 1) * (8 * j + 7 - l) - 24 + XCount

                                    If XPos >= 0 And XPos <= 319 Then ' 0-319 ?
                                        SprStackPtr(SpriteNo) = SprStackPtr(SpriteNo) + 1
                                        SprStackXpos(SpriteNo, SprStackPtr(SpriteNo)) = XPos
                                        SprStackPixel(SpriteNo, SprStackPtr(SpriteNo)) = _
                                            (IoRAM(53287 + SpriteNo) And 15) + Foreground

                                        If SpritePoints(XPos) > 0 Then
                                            CollIx = XPos
                                        End If

                                        SpritePoints(XPos) = SpritePoints(XPos) + PowerOfTwo(SpriteNo)
                                    End If
                                Next
                            End If
                        Next
                    End If
                Next
            End If
        End If
    Next

    If CollIx > -1 And DispMode < 8 Then
        'If IoRAM(53274) And 4 Then
            Sprite_Sprite_Coll SpritePoints(CollIx)
        'End If
    End If
End Sub

Public Sub Render_Sprites_In_Raster_Line_old(BANK As Long, SCREEN As Long, RASTER As Long)
    Dim SP1 As Long, SP2 As Long
    Dim Ix3 As Long, j As Long, k As Long, l As Long
    Dim DByte As Long, Addr As Long, XPos As Long, YPos As Long
    Dim SpriteNo As Long, SpriteLine As Long
    Dim MaxSpriteLine As Long, XCount As Long
    Dim SpritePoints(0 To 319) As Long
    Dim CollIx As Long

    For SpriteNo = 0 To 7
        SprStackPtr(SpriteNo) = 0
    Next

    For l = 0 To 319: SpritePoints(l) = 0: Next

    CollIx = -1

    'If RASTER < 51 Or RASTER > 250 Then Exit Sub

    For SpriteNo = 7 To 0 Step -1
        If PEEK(53269) And PowerOfTwo(SpriteNo) Then
            If PEEK(53271) And PowerOfTwo(SpriteNo) Then 'Y-Expanded
                MaxSpriteLine = 41
            Else
                MaxSpriteLine = 20
            End If

            SpriteLine = RASTER - PEEK(53249 + 2 * SpriteNo) - 1

            If (SpriteLine >= 0 And SpriteLine <= MaxSpriteLine) _
            Or (SpriteLine >= 256 And SpriteLine <= 256 + MaxSpriteLine) Then
                If PEEK(53271) And PowerOfTwo(SpriteNo) Then 'Y-Expanded
                    SpriteLine = (SpriteLine And 255) \ 2
                Else
                    SpriteLine = SpriteLine And 255
                End If

                Addr = BANK + 64 * PEEK(SCREEN + 1016 + SpriteNo)

                For j = 0 To 2
                    DByte = RAM(Addr + j + 3 * SpriteLine)

                    For l = 7 To 0 Step -1
                        If DByte And PowerOfTwo(l) Then
                            If PEEK(53277) And PowerOfTwo(SpriteNo) Then 'X-Expanded
                                For XCount = 0 To 1
                                    XPos = IIf(PEEK(53264) And PowerOfTwo(SpriteNo), 256, 0) + _
                                           PEEK(53248 + 2 * SpriteNo)

                                    If XPos > 403 And XPos < 504 Then XPos = XPos - 504 'If XPos > 401 ???

                                    XPos = XPos + 16 * j + 14 - 2 * l - 24 + XCount

                                    If XPos >= 0 And XPos <= 319 Then ' 0-319 ?
                                        SprStackPtr(SpriteNo) = SprStackPtr(SpriteNo) + 1
                                        SprStackXpos(SpriteNo, SprStackPtr(SpriteNo)) = XPos
                                        SprStackPixel(SpriteNo, SprStackPtr(SpriteNo)) = _
                                            (PEEK(53287 + SpriteNo) And 15) + Foreground

                                        If SpritePoints(XPos) > 0 Then
                                            CollIx = XPos
                                        End If

                                        SpritePoints(XPos) = SpritePoints(XPos) + PowerOfTwo(SpriteNo)
                                    End If
                                Next
                            Else
                                XPos = IIf(PEEK(53264) And PowerOfTwo(SpriteNo), 256, 0) + _
                                       PEEK(53248 + 2 * SpriteNo)

                                If XPos > 403 And XPos < 504 Then XPos = XPos - 504 'If XPos > 401 ???

                                XPos = XPos + 8 * j + 7 - l - 24

                                If XPos >= 0 And XPos <= 319 Then ' 0-319 ?
                                    SprStackPtr(SpriteNo) = SprStackPtr(SpriteNo) + 1
                                    SprStackXpos(SpriteNo, SprStackPtr(SpriteNo)) = XPos
                                    SprStackPixel(SpriteNo, SprStackPtr(SpriteNo)) = _
                                        (PEEK(53287 + SpriteNo) And 15) + Foreground

                                    If SpritePoints(XPos) > 0 Then
                                        CollIx = XPos
                                    End If

                                    SpritePoints(XPos) = SpritePoints(XPos) + PowerOfTwo(SpriteNo)
                                End If
                            End If
                        End If
                    Next
                Next
            End If
        End If
    Next

    If CollIx > -1 And DispMode < 8 Then
        'If PEEK(53274) And 4 Then
            Sprite_Sprite_Coll SpritePoints(CollIx)
        'End If
    End If
End Sub

Private Sub Sprite_Sprite_Coll(SPX As Long)
    If I Then Exit Sub

    'POKE 53273, PEEK(53273) Or 4
    'POKE 53278, PEEK(53278) Or SPX
    IoRAM(53273) = IoRAM(53273) Or 4
    IoRAM(53278) = IoRAM(53278) Or SPX

    B = False
    POKE 256 + SP, PC \ 256: SP = SP - 1
    POKE 256 + SP, PC Mod 256: SP = SP - 1
    POKE 256 + SP, ST: SP = SP - 1
    I = True
    PC = PEEKADDR(65534)
End Sub

Private Sub Draw_Pixel(X As Long, Y As Long, Color As Long)
    If Color <> OldPixels(X, Y) Then
        OldPixels(X, Y) = Color
        SetPixel frmMP64.Picture1(HidPic).hdc, X, Y, Color
        'ScreenStack(ScreenStackPT) = X: ScreenStackPT = ScreenStackPT + 1
        'ScreenStack(ScreenStackPT) = Y: ScreenStackPT = ScreenStackPT + 1
        'ScreenStack(ScreenStackPT) = Color: ScreenStackPT = ScreenStackPT + 1
    End If
End Sub

Public Sub Refresh_Screen()
    Dim X As Long, Y As Long

    frmMP64.Picture1(HidPic).Cls

    For Y = 0 To 283
        For X = 0 To 401
            SetPixel frmMP64.Picture1(HidPic).hdc, X, Y, OldPixels(X, Y)
        Next
    Next
End Sub

'Public Sub Render_Screen()
'    Dim Ix1 As Long
'
'    Ix1 = 0
'
'    Do While Ix1 <= ScreenStackPT
'        SetPixel frmMP64.Picture1(HidPic).hdc, ScreenStack(Ix1), ScreenStack(Ix1 + 1), ScreenStack(Ix1 + 2)
'        Ix1 = Ix1 + 3
'    Loop
'End Sub
