Public Class frmTablas

    Private Sub butHospital_Click(sender As System.Object, e As System.EventArgs) Handles butHospital.Click

        frmHospital.iTablas = 1
        frmHospital.ShowDialog()
    End Sub

    Private Sub butDoctores_Click(sender As System.Object, e As System.EventArgs) Handles butDoctores.Click

        frmHospital.iTablas = 2
        frmHospital.ShowDialog()
    End Sub

    Private Sub butDiagnostico_Click(sender As System.Object, e As System.EventArgs) Handles butDiagnostico.Click

        frmHospital.iTablas = 3
        frmHospital.ShowDialog()
    End Sub


    Private Sub butEstados_Click(sender As System.Object, e As System.EventArgs) Handles butEstados.Click
        frmHospital.iTablas = 4
        frmHospital.ShowDialog()
    End Sub

    Private Sub frmTablas_Load(sender As Object, e As System.EventArgs) Handles Me.Load
        Me.CenterToScreen()
    End Sub
End Class