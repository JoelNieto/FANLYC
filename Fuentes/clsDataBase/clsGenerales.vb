Public Class clsGenerales

    Public Sub SelText(ByVal Txtbox As Windows.Forms.TextBox)
        Txtbox.SelectionStart = 0
        Txtbox.SelectionLength = Txtbox.TextLength
    End Sub

End Class
