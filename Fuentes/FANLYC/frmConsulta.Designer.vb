<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmConsulta
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmConsulta))
        Me.grdPacientes = New System.Windows.Forms.DataGridView()
        Me.IDDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.NombreDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.ApellidoDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.SexoDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.HospitalDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.DoctorDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.EstadoDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.ProvinciaDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.DistritoDataGridViewTextBoxColumn = New System.Windows.Forms.DataGridViewTextBoxColumn()
        Me.mnuConsulta = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.mnuConsultar = New System.Windows.Forms.ToolStripMenuItem()
        Me.PacientesMainBindingSource = New System.Windows.Forms.BindingSource(Me.components)
        Me.DSetPacientes = New FANLYC.dSetPacientes()
        Me.PacientesMainTableAdapter = New FANLYC.dSetPacientesTableAdapters.PacientesMainTableAdapter()
        Me.butSalir = New System.Windows.Forms.Button()
        Me.txtConsulta = New System.Windows.Forms.TextBox()
        Me.Label1 = New System.Windows.Forms.Label()
        CType(Me.grdPacientes, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.mnuConsulta.SuspendLayout()
        CType(Me.PacientesMainBindingSource, System.ComponentModel.ISupportInitialize).BeginInit()
        CType(Me.DSetPacientes, System.ComponentModel.ISupportInitialize).BeginInit()
        Me.SuspendLayout()
        '
        'grdPacientes
        '
        Me.grdPacientes.AllowUserToAddRows = False
        Me.grdPacientes.AllowUserToDeleteRows = False
        Me.grdPacientes.AllowUserToOrderColumns = True
        Me.grdPacientes.AutoGenerateColumns = False
        Me.grdPacientes.BackgroundColor = System.Drawing.Color.LightBlue
        Me.grdPacientes.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize
        Me.grdPacientes.Columns.AddRange(New System.Windows.Forms.DataGridViewColumn() {Me.IDDataGridViewTextBoxColumn, Me.NombreDataGridViewTextBoxColumn, Me.ApellidoDataGridViewTextBoxColumn, Me.SexoDataGridViewTextBoxColumn, Me.HospitalDataGridViewTextBoxColumn, Me.DoctorDataGridViewTextBoxColumn, Me.EstadoDataGridViewTextBoxColumn, Me.ProvinciaDataGridViewTextBoxColumn, Me.DistritoDataGridViewTextBoxColumn})
        Me.grdPacientes.ContextMenuStrip = Me.mnuConsulta
        Me.grdPacientes.DataSource = Me.PacientesMainBindingSource
        Me.grdPacientes.GridColor = System.Drawing.Color.SkyBlue
        Me.grdPacientes.Location = New System.Drawing.Point(31, 85)
        Me.grdPacientes.MultiSelect = False
        Me.grdPacientes.Name = "grdPacientes"
        Me.grdPacientes.ReadOnly = True
        Me.grdPacientes.Size = New System.Drawing.Size(656, 353)
        Me.grdPacientes.TabIndex = 0
        '
        'IDDataGridViewTextBoxColumn
        '
        Me.IDDataGridViewTextBoxColumn.DataPropertyName = "ID"
        Me.IDDataGridViewTextBoxColumn.HeaderText = "ID"
        Me.IDDataGridViewTextBoxColumn.Name = "IDDataGridViewTextBoxColumn"
        Me.IDDataGridViewTextBoxColumn.ReadOnly = True
        Me.IDDataGridViewTextBoxColumn.Width = 30
        '
        'NombreDataGridViewTextBoxColumn
        '
        Me.NombreDataGridViewTextBoxColumn.DataPropertyName = "Nombre"
        Me.NombreDataGridViewTextBoxColumn.HeaderText = "Nombre"
        Me.NombreDataGridViewTextBoxColumn.Name = "NombreDataGridViewTextBoxColumn"
        Me.NombreDataGridViewTextBoxColumn.ReadOnly = True
        '
        'ApellidoDataGridViewTextBoxColumn
        '
        Me.ApellidoDataGridViewTextBoxColumn.DataPropertyName = "Apellido"
        Me.ApellidoDataGridViewTextBoxColumn.HeaderText = "Apellido"
        Me.ApellidoDataGridViewTextBoxColumn.Name = "ApellidoDataGridViewTextBoxColumn"
        Me.ApellidoDataGridViewTextBoxColumn.ReadOnly = True
        '
        'SexoDataGridViewTextBoxColumn
        '
        Me.SexoDataGridViewTextBoxColumn.DataPropertyName = "Sexo"
        Me.SexoDataGridViewTextBoxColumn.HeaderText = "Sexo"
        Me.SexoDataGridViewTextBoxColumn.Name = "SexoDataGridViewTextBoxColumn"
        Me.SexoDataGridViewTextBoxColumn.ReadOnly = True
        '
        'HospitalDataGridViewTextBoxColumn
        '
        Me.HospitalDataGridViewTextBoxColumn.DataPropertyName = "Hospital"
        Me.HospitalDataGridViewTextBoxColumn.HeaderText = "Hospital"
        Me.HospitalDataGridViewTextBoxColumn.Name = "HospitalDataGridViewTextBoxColumn"
        Me.HospitalDataGridViewTextBoxColumn.ReadOnly = True
        '
        'DoctorDataGridViewTextBoxColumn
        '
        Me.DoctorDataGridViewTextBoxColumn.DataPropertyName = "Doctor"
        Me.DoctorDataGridViewTextBoxColumn.HeaderText = "Doctor"
        Me.DoctorDataGridViewTextBoxColumn.Name = "DoctorDataGridViewTextBoxColumn"
        Me.DoctorDataGridViewTextBoxColumn.ReadOnly = True
        '
        'EstadoDataGridViewTextBoxColumn
        '
        Me.EstadoDataGridViewTextBoxColumn.DataPropertyName = "Estado"
        Me.EstadoDataGridViewTextBoxColumn.HeaderText = "Estado"
        Me.EstadoDataGridViewTextBoxColumn.Name = "EstadoDataGridViewTextBoxColumn"
        Me.EstadoDataGridViewTextBoxColumn.ReadOnly = True
        '
        'ProvinciaDataGridViewTextBoxColumn
        '
        Me.ProvinciaDataGridViewTextBoxColumn.DataPropertyName = "Provincia"
        Me.ProvinciaDataGridViewTextBoxColumn.HeaderText = "Provincia"
        Me.ProvinciaDataGridViewTextBoxColumn.Name = "ProvinciaDataGridViewTextBoxColumn"
        Me.ProvinciaDataGridViewTextBoxColumn.ReadOnly = True
        '
        'DistritoDataGridViewTextBoxColumn
        '
        Me.DistritoDataGridViewTextBoxColumn.DataPropertyName = "Distrito"
        Me.DistritoDataGridViewTextBoxColumn.HeaderText = "Distrito"
        Me.DistritoDataGridViewTextBoxColumn.Name = "DistritoDataGridViewTextBoxColumn"
        Me.DistritoDataGridViewTextBoxColumn.ReadOnly = True
        '
        'mnuConsulta
        '
        Me.mnuConsulta.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.mnuConsultar})
        Me.mnuConsulta.Name = "mnuConsulta"
        Me.mnuConsulta.Size = New System.Drawing.Size(189, 28)
        '
        'mnuConsultar
        '
        Me.mnuConsultar.Font = New System.Drawing.Font("Segoe UI Light", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.mnuConsultar.Name = "mnuConsultar"
        Me.mnuConsultar.Size = New System.Drawing.Size(188, 24)
        Me.mnuConsultar.Text = "Consultar Paciente"
        '
        'PacientesMainBindingSource
        '
        Me.PacientesMainBindingSource.DataMember = "PacientesMain"
        Me.PacientesMainBindingSource.DataSource = Me.DSetPacientes
        '
        'DSetPacientes
        '
        Me.DSetPacientes.DataSetName = "dSetPacientes"
        Me.DSetPacientes.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema
        '
        'PacientesMainTableAdapter
        '
        Me.PacientesMainTableAdapter.ClearBeforeFill = True
        '
        'butSalir
        '
        Me.butSalir.BackColor = System.Drawing.Color.LightCoral
        Me.butSalir.FlatAppearance.BorderSize = 0
        Me.butSalir.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.butSalir.Font = New System.Drawing.Font("Segoe UI Light", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.butSalir.ForeColor = System.Drawing.Color.White
        Me.butSalir.Image = CType(resources.GetObject("butSalir.Image"), System.Drawing.Image)
        Me.butSalir.ImageAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.butSalir.Location = New System.Drawing.Point(579, 454)
        Me.butSalir.Name = "butSalir"
        Me.butSalir.Size = New System.Drawing.Size(108, 47)
        Me.butSalir.TabIndex = 1
        Me.butSalir.Text = "Salir"
        Me.butSalir.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.butSalir.UseVisualStyleBackColor = False
        '
        'txtConsulta
        '
        Me.txtConsulta.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtConsulta.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtConsulta.Location = New System.Drawing.Point(123, 40)
        Me.txtConsulta.Name = "txtConsulta"
        Me.txtConsulta.Size = New System.Drawing.Size(305, 23)
        Me.txtConsulta.TabIndex = 2
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Segoe UI Light", 11.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(28, 40)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(89, 20)
        Me.Label1.TabIndex = 3
        Me.Label1.Text = "Buscar Por:"
        '
        'frmConsulta
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 15.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.White
        Me.ClientSize = New System.Drawing.Size(719, 513)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.txtConsulta)
        Me.Controls.Add(Me.butSalir)
        Me.Controls.Add(Me.grdPacientes)
        Me.Font = New System.Drawing.Font("Segoe UI Light", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.SizableToolWindow
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "frmConsulta"
        Me.Text = "Consulta de Pacientes"
        CType(Me.grdPacientes, System.ComponentModel.ISupportInitialize).EndInit()
        Me.mnuConsulta.ResumeLayout(False)
        CType(Me.PacientesMainBindingSource, System.ComponentModel.ISupportInitialize).EndInit()
        CType(Me.DSetPacientes, System.ComponentModel.ISupportInitialize).EndInit()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents grdPacientes As System.Windows.Forms.DataGridView
    Friend WithEvents DSetPacientes As FANLYC.dSetPacientes
    Friend WithEvents PacientesMainBindingSource As System.Windows.Forms.BindingSource
    Friend WithEvents PacientesMainTableAdapter As FANLYC.dSetPacientesTableAdapters.PacientesMainTableAdapter
    Friend WithEvents IDDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents NombreDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents ApellidoDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents SexoDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents HospitalDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DoctorDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents EstadoDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents ProvinciaDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents DistritoDataGridViewTextBoxColumn As System.Windows.Forms.DataGridViewTextBoxColumn
    Friend WithEvents mnuConsulta As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents mnuConsultar As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents butSalir As System.Windows.Forms.Button
    Friend WithEvents txtConsulta As System.Windows.Forms.TextBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
End Class
