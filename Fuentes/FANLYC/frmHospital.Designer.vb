<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmHospital
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmHospital))
        Me.lsvHospital = New System.Windows.Forms.ListView()
        Me.grpHospitales = New System.Windows.Forms.GroupBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.txtNomAbrev = New System.Windows.Forms.TextBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.txtNomHospital = New System.Windows.Forms.TextBox()
        Me.butSalir = New System.Windows.Forms.Button()
        Me.butEliminar = New System.Windows.Forms.Button()
        Me.butAgregar = New System.Windows.Forms.Button()
        Me.grpHospitales.SuspendLayout()
        Me.SuspendLayout()
        '
        'lsvHospital
        '
        Me.lsvHospital.Font = New System.Drawing.Font("Segoe UI Light", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.lsvHospital.GridLines = True
        Me.lsvHospital.Location = New System.Drawing.Point(50, 31)
        Me.lsvHospital.Name = "lsvHospital"
        Me.lsvHospital.Size = New System.Drawing.Size(409, 97)
        Me.lsvHospital.TabIndex = 0
        Me.lsvHospital.UseCompatibleStateImageBehavior = False
        Me.lsvHospital.View = System.Windows.Forms.View.Details
        '
        'grpHospitales
        '
        Me.grpHospitales.Controls.Add(Me.Label2)
        Me.grpHospitales.Controls.Add(Me.txtNomAbrev)
        Me.grpHospitales.Controls.Add(Me.Label1)
        Me.grpHospitales.Controls.Add(Me.txtNomHospital)
        Me.grpHospitales.Font = New System.Drawing.Font("Segoe UI Light", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.grpHospitales.Location = New System.Drawing.Point(50, 147)
        Me.grpHospitales.Name = "grpHospitales"
        Me.grpHospitales.Size = New System.Drawing.Size(409, 97)
        Me.grpHospitales.TabIndex = 1
        Me.grpHospitales.TabStop = False
        Me.grpHospitales.Text = "Hospitales"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(14, 57)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(86, 15)
        Me.Label2.TabIndex = 3
        Me.Label2.Text = "Nombre Abrev."
        '
        'txtNomAbrev
        '
        Me.txtNomAbrev.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtNomAbrev.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtNomAbrev.Font = New System.Drawing.Font("Segoe UI Light", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtNomAbrev.Location = New System.Drawing.Point(138, 55)
        Me.txtNomAbrev.MaxLength = 10
        Me.txtNomAbrev.Name = "txtNomAbrev"
        Me.txtNomAbrev.Size = New System.Drawing.Size(134, 23)
        Me.txtNomAbrev.TabIndex = 2
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(6, 22)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(94, 15)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Nombre Hospital"
        '
        'txtNomHospital
        '
        Me.txtNomHospital.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtNomHospital.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtNomHospital.Font = New System.Drawing.Font("Segoe UI Light", 9.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.txtNomHospital.Location = New System.Drawing.Point(138, 14)
        Me.txtNomHospital.MaxLength = 50
        Me.txtNomHospital.Name = "txtNomHospital"
        Me.txtNomHospital.Size = New System.Drawing.Size(201, 23)
        Me.txtNomHospital.TabIndex = 0
        '
        'butSalir
        '
        Me.butSalir.BackColor = System.Drawing.Color.PowderBlue
        Me.butSalir.FlatAppearance.BorderSize = 0
        Me.butSalir.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.butSalir.Font = New System.Drawing.Font("Segoe UI Light", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.butSalir.Image = CType(resources.GetObject("butSalir.Image"), System.Drawing.Image)
        Me.butSalir.ImageAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.butSalir.Location = New System.Drawing.Point(125, 265)
        Me.butSalir.Name = "butSalir"
        Me.butSalir.Size = New System.Drawing.Size(91, 23)
        Me.butSalir.TabIndex = 4
        Me.butSalir.Text = "Salir"
        Me.butSalir.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.butSalir.UseVisualStyleBackColor = False
        '
        'butEliminar
        '
        Me.butEliminar.BackColor = System.Drawing.Color.LightCoral
        Me.butEliminar.FlatAppearance.BorderSize = 0
        Me.butEliminar.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.butEliminar.Font = New System.Drawing.Font("Segoe UI Light", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.butEliminar.Image = CType(resources.GetObject("butEliminar.Image"), System.Drawing.Image)
        Me.butEliminar.ImageAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.butEliminar.Location = New System.Drawing.Point(246, 265)
        Me.butEliminar.Name = "butEliminar"
        Me.butEliminar.Size = New System.Drawing.Size(91, 23)
        Me.butEliminar.TabIndex = 3
        Me.butEliminar.Text = "Eliminar"
        Me.butEliminar.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.butEliminar.UseVisualStyleBackColor = False
        '
        'butAgregar
        '
        Me.butAgregar.BackColor = System.Drawing.Color.PaleGreen
        Me.butAgregar.FlatAppearance.BorderSize = 0
        Me.butAgregar.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.butAgregar.Font = New System.Drawing.Font("Segoe UI Light", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.butAgregar.Image = CType(resources.GetObject("butAgregar.Image"), System.Drawing.Image)
        Me.butAgregar.ImageAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.butAgregar.Location = New System.Drawing.Point(367, 265)
        Me.butAgregar.Name = "butAgregar"
        Me.butAgregar.Size = New System.Drawing.Size(91, 23)
        Me.butAgregar.TabIndex = 2
        Me.butAgregar.Text = "Agregar"
        Me.butAgregar.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.butAgregar.UseVisualStyleBackColor = False
        '
        'frmHospital
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.White
        Me.ClientSize = New System.Drawing.Size(516, 305)
        Me.Controls.Add(Me.butSalir)
        Me.Controls.Add(Me.butEliminar)
        Me.Controls.Add(Me.butAgregar)
        Me.Controls.Add(Me.grpHospitales)
        Me.Controls.Add(Me.lsvHospital)
        Me.Font = New System.Drawing.Font("Segoe UI Light", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "frmHospital"
        Me.Text = "Hospitales"
        Me.grpHospitales.ResumeLayout(False)
        Me.grpHospitales.PerformLayout()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents lsvHospital As System.Windows.Forms.ListView
    Friend WithEvents grpHospitales As System.Windows.Forms.GroupBox
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents txtNomAbrev As System.Windows.Forms.TextBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents txtNomHospital As System.Windows.Forms.TextBox
    Friend WithEvents butAgregar As System.Windows.Forms.Button
    Friend WithEvents butEliminar As System.Windows.Forms.Button
    Friend WithEvents butSalir As System.Windows.Forms.Button
End Class
