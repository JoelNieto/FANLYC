<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmTablas
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
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.butEstados = New System.Windows.Forms.Button()
        Me.butDiagnostico = New System.Windows.Forms.Button()
        Me.butDoctores = New System.Windows.Forms.Button()
        Me.butHospital = New System.Windows.Forms.Button()
        Me.Panel1.SuspendLayout()
        Me.SuspendLayout()
        '
        'Panel1
        '
        Me.Panel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.Panel1.Controls.Add(Me.butEstados)
        Me.Panel1.Controls.Add(Me.butDiagnostico)
        Me.Panel1.Controls.Add(Me.butDoctores)
        Me.Panel1.Controls.Add(Me.butHospital)
        Me.Panel1.Dock = System.Windows.Forms.DockStyle.Left
        Me.Panel1.Location = New System.Drawing.Point(0, 0)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(286, 338)
        Me.Panel1.TabIndex = 0
        '
        'butEstados
        '
        Me.butEstados.BackColor = System.Drawing.Color.Wheat
        Me.butEstados.FlatAppearance.BorderSize = 0
        Me.butEstados.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.butEstados.Font = New System.Drawing.Font("Segoe UI Light", 10.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.butEstados.ForeColor = System.Drawing.Color.White
        Me.butEstados.Image = Global.FANLYC.My.Resources.Resources.PatientFile
        Me.butEstados.ImageAlign = System.Drawing.ContentAlignment.TopCenter
        Me.butEstados.Location = New System.Drawing.Point(160, 15)
        Me.butEstados.Name = "butEstados"
        Me.butEstados.Size = New System.Drawing.Size(103, 60)
        Me.butEstados.TabIndex = 3
        Me.butEstados.Text = "Estados"
        Me.butEstados.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.butEstados.UseVisualStyleBackColor = False
        '
        'butDiagnostico
        '
        Me.butDiagnostico.BackColor = System.Drawing.Color.PaleGreen
        Me.butDiagnostico.FlatAppearance.BorderSize = 0
        Me.butDiagnostico.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.butDiagnostico.Font = New System.Drawing.Font("Segoe UI Light", 10.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.butDiagnostico.ForeColor = System.Drawing.Color.White
        Me.butDiagnostico.Image = Global.FANLYC.My.Resources.Resources.AcceptQualityControl
        Me.butDiagnostico.ImageAlign = System.Drawing.ContentAlignment.TopCenter
        Me.butDiagnostico.Location = New System.Drawing.Point(23, 182)
        Me.butDiagnostico.Name = "butDiagnostico"
        Me.butDiagnostico.Size = New System.Drawing.Size(103, 60)
        Me.butDiagnostico.TabIndex = 2
        Me.butDiagnostico.Text = "Diagnósticos"
        Me.butDiagnostico.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.butDiagnostico.UseVisualStyleBackColor = False
        '
        'butDoctores
        '
        Me.butDoctores.BackColor = System.Drawing.Color.PowderBlue
        Me.butDoctores.FlatAppearance.BorderSize = 0
        Me.butDoctores.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.butDoctores.Font = New System.Drawing.Font("Segoe UI Light", 10.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.butDoctores.ForeColor = System.Drawing.Color.White
        Me.butDoctores.Image = Global.FANLYC.My.Resources.Resources.DoctorMale
        Me.butDoctores.ImageAlign = System.Drawing.ContentAlignment.TopCenter
        Me.butDoctores.Location = New System.Drawing.Point(23, 97)
        Me.butDoctores.Name = "butDoctores"
        Me.butDoctores.Size = New System.Drawing.Size(103, 60)
        Me.butDoctores.TabIndex = 1
        Me.butDoctores.Text = "Doctores"
        Me.butDoctores.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.butDoctores.UseVisualStyleBackColor = False
        '
        'butHospital
        '
        Me.butHospital.BackColor = System.Drawing.Color.LightCoral
        Me.butHospital.FlatAppearance.BorderSize = 0
        Me.butHospital.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.butHospital.Font = New System.Drawing.Font("Segoe UI Light", 10.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.butHospital.ForeColor = System.Drawing.Color.White
        Me.butHospital.Image = Global.FANLYC.My.Resources.Resources.Hospital
        Me.butHospital.ImageAlign = System.Drawing.ContentAlignment.TopCenter
        Me.butHospital.Location = New System.Drawing.Point(23, 15)
        Me.butHospital.Name = "butHospital"
        Me.butHospital.Size = New System.Drawing.Size(103, 60)
        Me.butHospital.TabIndex = 0
        Me.butHospital.Text = "Hospitales"
        Me.butHospital.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.butHospital.UseVisualStyleBackColor = False
        '
        'frmTablas
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.White
        Me.ClientSize = New System.Drawing.Size(489, 338)
        Me.Controls.Add(Me.Panel1)
        Me.Font = New System.Drawing.Font("Segoe UI Light", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Name = "frmTablas"
        Me.Text = "frmTablas"
        Me.Panel1.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents butHospital As System.Windows.Forms.Button
    Friend WithEvents butDoctores As System.Windows.Forms.Button
    Friend WithEvents butDiagnostico As System.Windows.Forms.Button
    Friend WithEvents butEstados As System.Windows.Forms.Button
End Class
