Public Class clsGenerales

    Public Sub SelText(ByVal Txtbox As Windows.Forms.TextBox)
        Txtbox.SelectionStart = 0
        Txtbox.SelectionLength = Txtbox.TextLength
    End Sub

    Public Function CalculaEdad(FecNac As Date) As Integer
        Dim Anos As Integer
        Anos = DateDiff(DateInterval.Year, FecNac, Now)
        If Now < DateSerial(Year(Now), Month(FecNac), Day(FecNac)) Then
            Anos = Anos - 1
        End If
        CalculaEdad = Anos
    End Function

    Public Function CalculaEdadMeses(FecNac As Date) As Integer
        Dim Meses As Integer
        Dim FecPrueba As Date
        FecPrueba = DateSerial(Year(Now), Month(FecNac), Day(FecNac))
        If Now > FecPrueba Then
            Meses = DateDiff(DateInterval.Month, FecPrueba, Now)
        Else
            Meses = DateDiff(DateInterval.Month, FecPrueba, DateAdd(DateInterval.Year, 1, Now))
        End If
        CalculaEdadMeses = Meses
    End Function

End Class
