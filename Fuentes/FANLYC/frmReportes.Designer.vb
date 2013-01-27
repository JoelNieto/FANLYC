<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmReportes
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Dim ReportDataSource1 As Microsoft.Reporting.WinForms.ReportDataSource = New Microsoft.Reporting.WinForms.ReportDataSource()
        Me.ReportPacienteBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.dSetPacientes = New FANLYC.dSetPacientes()
        Me.ReportViewer1 = New Microsoft.Reporting.WinForms.ReportViewer()
        Me.ReportPacienteTableAdapter = New FANLYC.dSetPacientesTableAdapters.ReportPacienteTableAdapter()
        CType(Me.ReportPacienteBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.dSetPacientes, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'ReportPacienteBindingSource
        '
        Me.ReportPacienteBindingSource.DataMember = "ReportPaciente"
        Me.ReportPacienteBindingSource.DataSource = Me.dSetPacientes
        '
        'dSetPacientes
        '
        Me.dSetPacientes.DataSetName = "dSetPacientes"
        Me.dSetPacientes.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'ReportViewer1
        '
        Me.ReportViewer1.AutoSize = True
        Me.ReportViewer1.BorderStyle = System.Windows.Forms.BorderStyle.None
        Me.ReportViewer1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.ReportViewer1.DocumentMapWidth = 55
        Me.ReportViewer1.Font = New System.Drawing.Font("Segoe UI Light", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        ReportDataSource1.Name = "Reportes"
        ReportDataSource1.Value = Me.ReportPacienteBindingSource
        Me.ReportViewer1.LocalReport.DataSources.Add(ReportDataSource1)
        Me.ReportViewer1.LocalReport.DisplayName = "Listado Pacientes"
        Me.ReportViewer1.LocalReport.ReportEmbeddedResource = "FANLYC.rptPaciente.rdlc"
        Me.ReportViewer1.Location = New System.Drawing.Point(0, 0)
        Me.ReportViewer1.Name = "ReportViewer1"
        Me.ReportViewer1.Size = New System.Drawing.Size(823, 514)
        Me.ReportViewer1.TabIndex = 0
        '
        'ReportPacienteTableAdapter
        '
        Me.ReportPacienteTableAdapter.ClearBeforeFill = True
        '
        'frmReportes
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(823, 514)
        Me.Controls.Add(Me.ReportViewer1)
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog
        Me.Name = "frmReportes"
        Me.ShowIcon = False
        Me.ShowInTaskbar = False
        Me.Text = "Reportes"
        Me.WindowState = System.Windows.Forms.FormWindowState.Maximized
        CType(Me.ReportPacienteBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.dSetPacientes, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents ReportViewer1 As Microsoft.Reporting.WinForms.ReportViewer
    Friend WithEvents ReportPacienteBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents dSetPacientes As FANLYC.dSetPacientes
    Friend WithEvents ReportPacienteTableAdapter As FANLYC.dSetPacientesTableAdapters.ReportPacienteTableAdapter
End Class
