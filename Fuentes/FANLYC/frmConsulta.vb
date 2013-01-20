Public Class frmConsulta

    Private Sub frmConsulta_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        'TODO: This line of code loads data into the 'DSetPacientes.PacientesMain' table. You can move, or remove it, as needed.
        Me.PacientesMainTableAdapter.Fill(Me.DSetPacientes.PacientesMain)
        'TODO: This line of code loads data into the 'DSetPacientes.PacientesMain' table. You can move, or remove it, as needed.
        Me.PacientesMainTableAdapter.Fill(Me.DSetPacientes.PacientesMain)
        Me.CenterToScreen()
    End Sub


    Private Sub mnuConsultar_Click(sender As System.Object, e As System.EventArgs) Handles mnuConsultar.Click
        Paciente.IdPaciente = grdPacientes.CurrentRow.Cells(0).Value
        frmABMPacientes.iNuevoPaciente = False
        frmABMPacientes.ShowDialog()
    End Sub

End Class