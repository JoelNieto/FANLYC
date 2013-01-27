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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmTablas))
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.butEstados = New System.Windows.Forms.Button()
        Me.butDiagnostico = New System.Windows.Forms.Button()
        Me.butDoctores = New System.Windows.Forms.Button()
        Me.butHospital = New System.Windows.Forms.Button()
        Me.butSalir = New System.Windows.Forms.Button()
        Me.Panel1.SuspendLayout()
        Me.SuspendLayout()
        '
        'Panel1
        '
        Me.Panel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.Panel1.Controls.Add(Me.butSalir)
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
        Me.butEstados.Image = CType(resources.GetObject("butEstados.Image"), System.Drawing.Image)
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
        Me.butDiagnostico.Image = CType(resources.GetObject("butDiagnostico.Image"), System.Drawing.Image)
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
        Me.butDoctores.Image = CType(resources.GetObject("butDoctores.Image"), System.Drawing.Image)
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
        Me.butHospital.Image = CType(resources.GetObject("butHospital.Image"), System.Drawing.Image)
        Me.butHospital.ImageAlign = System.Drawing.ContentAlignment.TopCenter
        Me.butHospital.Location = New System.Drawing.Point(23, 15)
        Me.butHospital.Name = "butHospital"
        Me.butHospital.Size = New System.Drawing.Size(103, 60)
        Me.butHospital.TabIndex = 0
        Me.butHospital.Text = "Hospitales"
        Me.butHospital.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.butHospital.UseVisualStyleBackColor = False
        '
        'butSalir
        '
        Me.butSalir.BackColor = System.Drawing.Color.DarkGray
        Me.butSalir.FlatAppearance.BorderSize = 0
        Me.butSalir.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.butSalir.Font = New System.Drawing.Font("Segoe UI Light", 10.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.butSalir.ForeColor = System.Drawing.Color.White
        Me.butSalir.Image = CType(resources.GetObject("butSalir.Image"), System.Drawing.Image)
        Me.butSalir.ImageAlign = System.Drawing.ContentAlignment.TopCenter
        Me.butSalir.Location = New System.Drawing.Point(160, 97)
        Me.butSalir.Name = "butSalir"
        Me.butSalir.Size = New System.Drawing.Size(103, 59)
        Me.butSalir.TabIndex = 4
        Me.butSalir.Text = "Salir"
        Me.butSalir.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.butSalir.UseVisualStyleBackColor = False
        '
        'frmTablas
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.White
        Me.ClientSize = New System.Drawing.Size(489, 338)
        Me.Controls.Add(Me.Panel1)
        Me.Font = New System.Drawing.Font("Segoe UI Light", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "frmTablas"
        Me.Text = "Tablas"
        Me.Panel1.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents butHospital As System.Windows.Forms.Button
    Friend WithEvents butDoctores As System.Windows.Forms.Button
    Friend WithEvents butDiagnostico As System.Windows.Forms.Button
    Friend WithEvents butEstados As System.Windows.Forms.Button
    Friend WithEvents butSalir As System.Windows.Forms.Button
End Class
