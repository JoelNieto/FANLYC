Public Class frmHome

    Private Sub butTablas_Click(sender As System.Object, e As System.EventArgs) Handles butTablas.Click
        frmTablas.ShowDialog()
    End Sub

    Private Sub frmHome_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        If ConectarBase() = False Then
            MsgBox("CONEXION FALLIDA ")
            Exit Sub
        End If
    End Sub

    Private Sub butAgregar_Click(sender As System.Object, e As System.EventArgs) Handles butAgregar.Click
        frmABMPacientes.iNuevoPaciente = True
        frmABMPacientes.ShowDialog()
    End Sub

End Class
