﻿<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmHome
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmHome))
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.butConsultar = New System.Windows.Forms.Button()
        Me.butAgregar = New System.Windows.Forms.Button()
        Me.butTablas = New System.Windows.Forms.Button()
        Me.Panel1.SuspendLayout()
        Me.SuspendLayout()
        '
        'Panel1
        '
        Me.Panel1.BackColor = System.Drawing.Color.Transparent
        Me.Panel1.Controls.Add(Me.butConsultar)
        Me.Panel1.Controls.Add(Me.butAgregar)
        Me.Panel1.Controls.Add(Me.butTablas)
        Me.Panel1.Dock = System.Windows.Forms.DockStyle.Left
        Me.Panel1.Location = New System.Drawing.Point(0, 0)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(324, 407)
        Me.Panel1.TabIndex = 0
        '
        'butConsultar
        '
        Me.butConsultar.BackColor = System.Drawing.Color.LightCoral
        Me.butConsultar.FlatAppearance.BorderSize = 0
        Me.butConsultar.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.butConsultar.Font = New System.Drawing.Font("Segoe UI Light", 16.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.butConsultar.ForeColor = System.Drawing.Color.White
        Me.butConsultar.Image = Global.FANLYC.My.Resources.Resources.search48
        Me.butConsultar.ImageAlign = System.Drawing.ContentAlignment.TopCenter
        Me.butConsultar.Location = New System.Drawing.Point(45, 33)
        Me.butConsultar.Name = "butConsultar"
        Me.butConsultar.Size = New System.Drawing.Size(176, 88)
        Me.butConsultar.TabIndex = 2
        Me.butConsultar.Text = "Consultar"
        Me.butConsultar.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.butConsultar.UseVisualStyleBackColor = False
        '
        'butAgregar
        '
        Me.butAgregar.BackColor = System.Drawing.Color.LightSteelBlue
        Me.butAgregar.FlatAppearance.BorderSize = 0
        Me.butAgregar.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.butAgregar.Font = New System.Drawing.Font("Segoe UI Light", 16.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.butAgregar.ForeColor = System.Drawing.Color.White
        Me.butAgregar.Image = Global.FANLYC.My.Resources.Resources.my_tickets48
        Me.butAgregar.ImageAlign = System.Drawing.ContentAlignment.TopCenter
        Me.butAgregar.Location = New System.Drawing.Point(45, 151)
        Me.butAgregar.Name = "butAgregar"
        Me.butAgregar.Size = New System.Drawing.Size(176, 88)
        Me.butAgregar.TabIndex = 1
        Me.butAgregar.Text = "Agregar"
        Me.butAgregar.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.butAgregar.UseVisualStyleBackColor = False
        '
        'butTablas
        '
        Me.butTablas.BackColor = System.Drawing.Color.PaleGreen
        Me.butTablas.FlatAppearance.BorderSize = 0
        Me.butTablas.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.butTablas.Font = New System.Drawing.Font("Segoe UI Light", 16.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.butTablas.ForeColor = System.Drawing.Color.White
        Me.butTablas.Image = Global.FANLYC.My.Resources.Resources.surveys48
        Me.butTablas.ImageAlign = System.Drawing.ContentAlignment.TopCenter
        Me.butTablas.Location = New System.Drawing.Point(45, 269)
        Me.butTablas.Name = "butTablas"
        Me.butTablas.Size = New System.Drawing.Size(176, 88)
        Me.butTablas.TabIndex = 0
        Me.butTablas.Text = "Tablas"
        Me.butTablas.TextAlign = System.Drawing.ContentAlignment.BottomCenter
        Me.butTablas.UseVisualStyleBackColor = False
        '
        'frmHome
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.White
        Me.BackgroundImage = Global.FANLYC.My.Resources.Resources.lfanlyc
        Me.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center
        Me.ClientSize = New System.Drawing.Size(695, 407)
        Me.Controls.Add(Me.Panel1)
        Me.DoubleBuffered = True
        Me.Font = New System.Drawing.Font("Segoe UI Light", 8.25!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.MaximizeBox = False
        Me.Name = "frmHome"
        Me.Text = "Inicio"
        Me.WindowState = System.Windows.Forms.FormWindowState.Maximized
        Me.Panel1.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents Panel1 As System.Windows.Forms.Panel
    Friend WithEvents butTablas As System.Windows.Forms.Button
    Friend WithEvents butAgregar As System.Windows.Forms.Button
    Friend WithEvents butConsultar As System.Windows.Forms.Button

End Class
