Public Class frmReportes

    Private Sub frmReportes_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'dSetPacientes.ReportPaciente' table. You can move, or remove it, as needed.
        Me.ReportPacienteTableAdapter.Fill(Me.dSetPacientes.ReportPaciente)

        Me.ReportViewer1.RefreshReport()
        Me.ReportViewer1.RefreshReport()
        Me.ReportViewer1.RefreshReport()
    End Sub
End Class