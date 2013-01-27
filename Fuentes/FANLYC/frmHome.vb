Public Class frmHome

    Private Sub butTablas_Click(sender As System.Object, e As System.EventArgs) Handles butTablas.Click
        frmTablas.ShowDialog()
    End Sub

    Private Sub frmHome_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        If objDataBase.ConectarBase("FANLYC") = False Then
            MsgBox("Conexión Fallida")
            Exit Sub
        End If
        Me.Text = "INICIO  -  " + objDataBase.DataBaseName
    End Sub

    Private Sub butAgregar_Click(sender As System.Object, e As System.EventArgs) Handles butAgregar.Click
        frmABMPacientes.iNuevoPaciente = True
        frmABMPacientes.ShowDialog()
    End Sub

    Private Sub butConsultar_Click(sender As System.Object, e As System.EventArgs) Handles butConsultar.Click
        frmConsulta.ShowDialog()
    End Sub

    Private Sub butReportes_Click(sender As System.Object, e As System.EventArgs) Handles butReportes.Click
        frmReportes.ShowDialog()
    End Sub

    Private Sub butSalir_Click(sender As System.Object, e As System.EventArgs) Handles butSalir.Click
        If MsgBox("Desea Salir?", MsgBoxStyle.YesNo, "Salida") = MsgBoxResult.Yes Then
            Me.Close()
        End If
    End Sub

End Class
