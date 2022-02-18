Attribute VB_Name = "Labels"
Option Explicit

Public Sub Indsaet_Label(addr As Long)
    If Find_Label(addr) = 0 Then
        AntLabels = AntLabels + 1
        Label(AntLabels) = addr
    End If
End Sub

Public Function Find_Label(addr As Long) As Long
    Dim i As Long
 
    Find_Label = 0
 
    If AntLabels > 0 Then
        For i = 1 To AntLabels
            If Label(i) = addr Then Find_Label = i: i = AntLabels
        Next
    End If
End Function

Public Sub Sort_Labels()
    Dim i As Long, j As Long, MinVal As Long, MinIx As Long

    If AntLabels > 1 Then
        For i = 1 To AntLabels - 1
            MinVal = Label(i): MinIx = i
            
            For j = i + 1 To AntLabels
                If Label(j) < MinVal Then
                    MinVal = Label(j): MinIx = j
                End If
            Next
            
            Label(MinIx) = Label(i): Label(i) = MinVal
        Next
    End If
End Sub
