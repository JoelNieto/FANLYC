<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class frmABMPacientes
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
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(frmABMPacientes))
        Me.TabControl1 = New System.Windows.Forms.TabControl()
        Me.tabDat = New System.Windows.Forms.TabPage()
        Me.GroupBox2 = New System.Windows.Forms.GroupBox()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.txtEdad = New System.Windows.Forms.TextBox()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.datFecNac = New System.Windows.Forms.DateTimePicker()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.cboSexo = New System.Windows.Forms.ComboBox()
        Me.GroupBox1 = New System.Windows.Forms.GroupBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.txtApellido2 = New System.Windows.Forms.TextBox()
        Me.txtApellido = New System.Windows.Forms.TextBox()
        Me.txtNombre2 = New System.Windows.Forms.TextBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.txtNombre = New System.Windows.Forms.TextBox()
        Me.tabDireccion = New System.Windows.Forms.TabPage()
        Me.GroupBox3 = New System.Windows.Forms.GroupBox()
        Me.Label15 = New System.Windows.Forms.Label()
        Me.Label14 = New System.Windows.Forms.Label()
        Me.Label13 = New System.Windows.Forms.Label()
        Me.Label12 = New System.Windows.Forms.Label()
        Me.Label11 = New System.Windows.Forms.Label()
        Me.txtDirComp = New System.Windows.Forms.TextBox()
        Me.txtApto = New System.Windows.Forms.TextBox()
        Me.txtEdificio = New System.Windows.Forms.TextBox()
        Me.txtCalle = New System.Windows.Forms.TextBox()
        Me.txtBarrio = New System.Windows.Forms.TextBox()
        Me.Label10 = New System.Windows.Forms.Label()
        Me.Label9 = New System.Windows.Forms.Label()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.cboCorregimiento = New System.Windows.Forms.ComboBox()
        Me.cboDistrito = New System.Windows.Forms.ComboBox()
        Me.cboProvincia = New System.Windows.Forms.ComboBox()
        Me.tabContacto = New System.Windows.Forms.TabPage()
        Me.GroupBox5 = New System.Windows.Forms.GroupBox()
        Me.txtTelOfic = New System.Windows.Forms.TextBox()
        Me.txtTelCel = New System.Windows.Forms.TextBox()
        Me.txtTelDom = New System.Windows.Forms.TextBox()
        Me.Label25 = New System.Windows.Forms.Label()
        Me.Label24 = New System.Windows.Forms.Label()
        Me.Label18 = New System.Windows.Forms.Label()
        Me.GroupBox4 = New System.Windows.Forms.GroupBox()
        Me.txtApellidoPadre = New System.Windows.Forms.TextBox()
        Me.txtApellidoMadre = New System.Windows.Forms.TextBox()
        Me.Label23 = New System.Windows.Forms.Label()
        Me.Label22 = New System.Windows.Forms.Label()
        Me.Label17 = New System.Windows.Forms.Label()
        Me.txtPadre = New System.Windows.Forms.TextBox()
        Me.Label16 = New System.Windows.Forms.Label()
        Me.txtMadre = New System.Windows.Forms.TextBox()
        Me.tabMedica = New System.Windows.Forms.TabPage()
        Me.GroupBox7 = New System.Windows.Forms.GroupBox()
        Me.Label21 = New System.Windows.Forms.Label()
        Me.Label20 = New System.Windows.Forms.Label()
        Me.Label19 = New System.Windows.Forms.Label()
        Me.cboDiagnostico = New System.Windows.Forms.ComboBox()
        Me.cboEstado = New System.Windows.Forms.ComboBox()
        Me.cboHospital = New System.Windows.Forms.ComboBox()
        Me.GroupBox6 = New System.Windows.Forms.GroupBox()
        Me.lblOtroDoc = New System.Windows.Forms.Label()
        Me.txtOtroDoctor = New System.Windows.Forms.TextBox()
        Me.chkOtroDoc = New System.Windows.Forms.CheckBox()
        Me.cboDoctor = New System.Windows.Forms.ComboBox()
        Me.butSalir = New System.Windows.Forms.Button()
        Me.butEditar = New System.Windows.Forms.Button()
        Me.butGrabar = New System.Windows.Forms.Button()
        Me.PacienteRecupTableAdapter1 = New FANLYC.dSetPacientesTableAdapters.PacienteRecupTableAdapter()
        Me.TabControl1.SuspendLayout()
        Me.tabDat.SuspendLayout()
        Me.GroupBox2.SuspendLayout()
        Me.GroupBox1.SuspendLayout()
        Me.tabDireccion.SuspendLayout()
        Me.GroupBox3.SuspendLayout()
        Me.tabContacto.SuspendLayout()
        Me.GroupBox5.SuspendLayout()
        Me.GroupBox4.SuspendLayout()
        Me.tabMedica.SuspendLayout()
        Me.GroupBox7.SuspendLayout()
        Me.GroupBox6.SuspendLayout()
        Me.SuspendLayout()
        '
        'TabControl1
        '
        Me.TabControl1.Controls.Add(Me.tabDat)
        Me.TabControl1.Controls.Add(Me.tabDireccion)
        Me.TabControl1.Controls.Add(Me.tabContacto)
        Me.TabControl1.Controls.Add(Me.tabMedica)
        Me.TabControl1.Location = New System.Drawing.Point(19, 47)
        Me.TabControl1.Name = "TabControl1"
        Me.TabControl1.SelectedIndex = 0
        Me.TabControl1.Size = New System.Drawing.Size(726, 325)
        Me.TabControl1.TabIndex = 1
        '
        'tabDat
        '
        Me.tabDat.BackColor = System.Drawing.Color.White
        Me.tabDat.Controls.Add(Me.GroupBox2)
        Me.tabDat.Controls.Add(Me.GroupBox1)
        Me.tabDat.Location = New System.Drawing.Point(4, 26)
        Me.tabDat.Name = "tabDat"
        Me.tabDat.Padding = New System.Windows.Forms.Padding(3)
        Me.tabDat.Size = New System.Drawing.Size(718, 295)
        Me.tabDat.TabIndex = 0
        Me.tabDat.Text = "DATOS PERSONALES"
        '
        'GroupBox2
        '
        Me.GroupBox2.Controls.Add(Me.Label7)
        Me.GroupBox2.Controls.Add(Me.txtEdad)
        Me.GroupBox2.Controls.Add(Me.Label6)
        Me.GroupBox2.Controls.Add(Me.datFecNac)
        Me.GroupBox2.Controls.Add(Me.Label5)
        Me.GroupBox2.Controls.Add(Me.cboSexo)
        Me.GroupBox2.Location = New System.Drawing.Point(60, 152)
        Me.GroupBox2.Name = "GroupBox2"
        Me.GroupBox2.Size = New System.Drawing.Size(599, 123)
        Me.GroupBox2.TabIndex = 1
        Me.GroupBox2.TabStop = False
        Me.GroupBox2.Text = "Generales"
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(279, 76)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(39, 19)
        Me.Label7.TabIndex = 5
        Me.Label7.Text = "Edad"
        '
        'txtEdad
        '
        Me.txtEdad.BackColor = System.Drawing.Color.White
        Me.txtEdad.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtEdad.Enabled = False
        Me.txtEdad.Location = New System.Drawing.Point(324, 74)
        Me.txtEdad.Name = "txtEdad"
        Me.txtEdad.Size = New System.Drawing.Size(70, 25)
        Me.txtEdad.TabIndex = 4
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Label6.Location = New System.Drawing.Point(7, 76)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(133, 19)
        Me.Label6.TabIndex = 3
        Me.Label6.Text = "Fecha de Nacimiento"
        '
        'datFecNac
        '
        Me.datFecNac.Format = System.Windows.Forms.DateTimePickerFormat.[Short]
        Me.datFecNac.Location = New System.Drawing.Point(146, 73)
        Me.datFecNac.Name = "datFecNac"
        Me.datFecNac.Size = New System.Drawing.Size(109, 25)
        Me.datFecNac.TabIndex = 2
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(6, 31)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(37, 19)
        Me.Label5.TabIndex = 1
        Me.Label5.Text = "Sexo"
        '
        'cboSexo
        '
        Me.cboSexo.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.cboSexo.FormattingEnabled = True
        Me.cboSexo.Location = New System.Drawing.Point(49, 28)
        Me.cboSexo.Name = "cboSexo"
        Me.cboSexo.Size = New System.Drawing.Size(146, 25)
        Me.cboSexo.TabIndex = 0
        '
        'GroupBox1
        '
        Me.GroupBox1.Controls.Add(Me.Label4)
        Me.GroupBox1.Controls.Add(Me.Label3)
        Me.GroupBox1.Controls.Add(Me.Label2)
        Me.GroupBox1.Controls.Add(Me.txtApellido2)
        Me.GroupBox1.Controls.Add(Me.txtApellido)
        Me.GroupBox1.Controls.Add(Me.txtNombre2)
        Me.GroupBox1.Controls.Add(Me.Label1)
        Me.GroupBox1.Controls.Add(Me.txtNombre)
        Me.GroupBox1.Location = New System.Drawing.Point(19, 16)
        Me.GroupBox1.Name = "GroupBox1"
        Me.GroupBox1.Size = New System.Drawing.Size(680, 120)
        Me.GroupBox1.TabIndex = 0
        Me.GroupBox1.TabStop = False
        Me.GroupBox1.Text = "Nombre Completo"
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(339, 84)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(114, 19)
        Me.Label4.TabIndex = 7
        Me.Label4.Text = "Segundo Apellido"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(338, 34)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(115, 19)
        Me.Label3.TabIndex = 6
        Me.Label3.Text = "Segundo Nombre"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(7, 84)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(102, 19)
        Me.Label2.TabIndex = 5
        Me.Label2.Text = "Primer Apellido"
        '
        'txtApellido2
        '
        Me.txtApellido2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtApellido2.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtApellido2.Location = New System.Drawing.Point(459, 81)
        Me.txtApellido2.Name = "txtApellido2"
        Me.txtApellido2.Size = New System.Drawing.Size(199, 25)
        Me.txtApellido2.TabIndex = 4
        '
        'txtApellido
        '
        Me.txtApellido.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtApellido.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtApellido.Location = New System.Drawing.Point(115, 81)
        Me.txtApellido.Name = "txtApellido"
        Me.txtApellido.Size = New System.Drawing.Size(199, 25)
        Me.txtApellido.TabIndex = 3
        '
        'txtNombre2
        '
        Me.txtNombre2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtNombre2.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtNombre2.Location = New System.Drawing.Point(459, 31)
        Me.txtNombre2.Name = "txtNombre2"
        Me.txtNombre2.Size = New System.Drawing.Size(199, 25)
        Me.txtNombre2.TabIndex = 2
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Segoe UI Light", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.Label1.Location = New System.Drawing.Point(6, 34)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(103, 19)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Primer Nombre"
        '
        'txtNombre
        '
        Me.txtNombre.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtNombre.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtNombre.Location = New System.Drawing.Point(115, 31)
        Me.txtNombre.Name = "txtNombre"
        Me.txtNombre.Size = New System.Drawing.Size(199, 25)
        Me.txtNombre.TabIndex = 1
        '
        'tabDireccion
        '
        Me.tabDireccion.Controls.Add(Me.GroupBox3)
        Me.tabDireccion.Location = New System.Drawing.Point(4, 26)
        Me.tabDireccion.Name = "tabDireccion"
        Me.tabDireccion.Padding = New System.Windows.Forms.Padding(3)
        Me.tabDireccion.Size = New System.Drawing.Size(718, 295)
        Me.tabDireccion.TabIndex = 1
        Me.tabDireccion.Text = "DIRECCIÓN"
        Me.tabDireccion.UseVisualStyleBackColor = True
        '
        'GroupBox3
        '
        Me.GroupBox3.Controls.Add(Me.Label15)
        Me.GroupBox3.Controls.Add(Me.Label14)
        Me.GroupBox3.Controls.Add(Me.Label13)
        Me.GroupBox3.Controls.Add(Me.Label12)
        Me.GroupBox3.Controls.Add(Me.Label11)
        Me.GroupBox3.Controls.Add(Me.txtDirComp)
        Me.GroupBox3.Controls.Add(Me.txtApto)
        Me.GroupBox3.Controls.Add(Me.txtEdificio)
        Me.GroupBox3.Controls.Add(Me.txtCalle)
        Me.GroupBox3.Controls.Add(Me.txtBarrio)
        Me.GroupBox3.Controls.Add(Me.Label10)
        Me.GroupBox3.Controls.Add(Me.Label9)
        Me.GroupBox3.Controls.Add(Me.Label8)
        Me.GroupBox3.Controls.Add(Me.cboCorregimiento)
        Me.GroupBox3.Controls.Add(Me.cboDistrito)
        Me.GroupBox3.Controls.Add(Me.cboProvincia)
        Me.GroupBox3.Location = New System.Drawing.Point(15, 31)
        Me.GroupBox3.Name = "GroupBox3"
        Me.GroupBox3.Size = New System.Drawing.Size(685, 189)
        Me.GroupBox3.TabIndex = 0
        Me.GroupBox3.TabStop = False
        Me.GroupBox3.Text = "Residencia"
        '
        'Label15
        '
        Me.Label15.AutoSize = True
        Me.Label15.Location = New System.Drawing.Point(186, 135)
        Me.Label15.Name = "Label15"
        Me.Label15.Size = New System.Drawing.Size(125, 19)
        Me.Label15.TabIndex = 15
        Me.Label15.Text = "Dirección Completa"
        '
        'Label14
        '
        Me.Label14.AutoSize = True
        Me.Label14.Location = New System.Drawing.Point(6, 135)
        Me.Label14.Name = "Label14"
        Me.Label14.Size = New System.Drawing.Size(71, 19)
        Me.Label14.TabIndex = 14
        Me.Label14.Text = "Casa/Apto"
        '
        'Label13
        '
        Me.Label13.AutoSize = True
        Me.Label13.Location = New System.Drawing.Point(468, 83)
        Me.Label13.Name = "Label13"
        Me.Label13.Size = New System.Drawing.Size(51, 19)
        Me.Label13.TabIndex = 13
        Me.Label13.Text = "Edificio"
        '
        'Label12
        '
        Me.Label12.AutoSize = True
        Me.Label12.Location = New System.Drawing.Point(259, 83)
        Me.Label12.Name = "Label12"
        Me.Label12.Size = New System.Drawing.Size(38, 19)
        Me.Label12.TabIndex = 12
        Me.Label12.Text = "Calle"
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.Location = New System.Drawing.Point(6, 83)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(91, 19)
        Me.Label11.TabIndex = 11
        Me.Label11.Text = "Barrio/Pueblo"
        '
        'txtDirComp
        '
        Me.txtDirComp.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtDirComp.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtDirComp.Location = New System.Drawing.Point(317, 132)
        Me.txtDirComp.MaxLength = 200
        Me.txtDirComp.Name = "txtDirComp"
        Me.txtDirComp.Size = New System.Drawing.Size(342, 25)
        Me.txtDirComp.TabIndex = 10
        '
        'txtApto
        '
        Me.txtApto.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtApto.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtApto.Location = New System.Drawing.Point(83, 132)
        Me.txtApto.MaxLength = 10
        Me.txtApto.Name = "txtApto"
        Me.txtApto.Size = New System.Drawing.Size(79, 25)
        Me.txtApto.TabIndex = 9
        '
        'txtEdificio
        '
        Me.txtEdificio.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtEdificio.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtEdificio.Location = New System.Drawing.Point(525, 80)
        Me.txtEdificio.MaxLength = 50
        Me.txtEdificio.Name = "txtEdificio"
        Me.txtEdificio.Size = New System.Drawing.Size(134, 25)
        Me.txtEdificio.TabIndex = 8
        '
        'txtCalle
        '
        Me.txtCalle.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtCalle.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtCalle.Location = New System.Drawing.Point(303, 80)
        Me.txtCalle.MaxLength = 50
        Me.txtCalle.Name = "txtCalle"
        Me.txtCalle.Size = New System.Drawing.Size(134, 25)
        Me.txtCalle.TabIndex = 7
        '
        'txtBarrio
        '
        Me.txtBarrio.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtBarrio.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtBarrio.Location = New System.Drawing.Point(103, 80)
        Me.txtBarrio.MaxLength = 50
        Me.txtBarrio.Name = "txtBarrio"
        Me.txtBarrio.Size = New System.Drawing.Size(134, 25)
        Me.txtBarrio.TabIndex = 6
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Location = New System.Drawing.Point(401, 30)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(95, 19)
        Me.Label10.TabIndex = 5
        Me.Label10.Text = "Corregimiento"
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Location = New System.Drawing.Point(210, 30)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(50, 19)
        Me.Label9.TabIndex = 4
        Me.Label9.Text = "Distrito"
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.Label8.Location = New System.Drawing.Point(2, 30)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(62, 19)
        Me.Label8.TabIndex = 3
        Me.Label8.Text = "Provincia"
        '
        'cboCorregimiento
        '
        Me.cboCorregimiento.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.cboCorregimiento.FormattingEnabled = True
        Me.cboCorregimiento.Location = New System.Drawing.Point(502, 27)
        Me.cboCorregimiento.Name = "cboCorregimiento"
        Me.cboCorregimiento.Size = New System.Drawing.Size(177, 25)
        Me.cboCorregimiento.TabIndex = 2
        '
        'cboDistrito
        '
        Me.cboDistrito.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.cboDistrito.FormattingEnabled = True
        Me.cboDistrito.Location = New System.Drawing.Point(266, 27)
        Me.cboDistrito.Name = "cboDistrito"
        Me.cboDistrito.Size = New System.Drawing.Size(126, 25)
        Me.cboDistrito.TabIndex = 1
        '
        'cboProvincia
        '
        Me.cboProvincia.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.cboProvincia.FormattingEnabled = True
        Me.cboProvincia.Location = New System.Drawing.Point(70, 27)
        Me.cboProvincia.Name = "cboProvincia"
        Me.cboProvincia.Size = New System.Drawing.Size(134, 25)
        Me.cboProvincia.TabIndex = 0
        '
        'tabContacto
        '
        Me.tabContacto.Controls.Add(Me.GroupBox5)
        Me.tabContacto.Controls.Add(Me.GroupBox4)
        Me.tabContacto.Location = New System.Drawing.Point(4, 26)
        Me.tabContacto.Name = "tabContacto"
        Me.tabContacto.Size = New System.Drawing.Size(718, 295)
        Me.tabContacto.TabIndex = 2
        Me.tabContacto.Text = "CONTACTO"
        Me.tabContacto.UseVisualStyleBackColor = True
        '
        'GroupBox5
        '
        Me.GroupBox5.Controls.Add(Me.txtTelOfic)
        Me.GroupBox5.Controls.Add(Me.txtTelCel)
        Me.GroupBox5.Controls.Add(Me.txtTelDom)
        Me.GroupBox5.Controls.Add(Me.Label25)
        Me.GroupBox5.Controls.Add(Me.Label24)
        Me.GroupBox5.Controls.Add(Me.Label18)
        Me.GroupBox5.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.GroupBox5.Location = New System.Drawing.Point(231, 133)
        Me.GroupBox5.Name = "GroupBox5"
        Me.GroupBox5.Size = New System.Drawing.Size(257, 152)
        Me.GroupBox5.TabIndex = 2
        Me.GroupBox5.TabStop = False
        Me.GroupBox5.Text = "Teléfonos"
        '
        'txtTelOfic
        '
        Me.txtTelOfic.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtTelOfic.Location = New System.Drawing.Point(111, 104)
        Me.txtTelOfic.MaxLength = 10
        Me.txtTelOfic.Name = "txtTelOfic"
        Me.txtTelOfic.Size = New System.Drawing.Size(100, 25)
        Me.txtTelOfic.TabIndex = 5
        '
        'txtTelCel
        '
        Me.txtTelCel.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtTelCel.Location = New System.Drawing.Point(111, 68)
        Me.txtTelCel.MaxLength = 10
        Me.txtTelCel.Name = "txtTelCel"
        Me.txtTelCel.Size = New System.Drawing.Size(100, 25)
        Me.txtTelCel.TabIndex = 4
        '
        'txtTelDom
        '
        Me.txtTelDom.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtTelDom.Location = New System.Drawing.Point(111, 32)
        Me.txtTelDom.MaxLength = 10
        Me.txtTelDom.Name = "txtTelDom"
        Me.txtTelDom.Size = New System.Drawing.Size(100, 25)
        Me.txtTelDom.TabIndex = 3
        '
        'Label25
        '
        Me.Label25.AutoSize = True
        Me.Label25.Location = New System.Drawing.Point(55, 105)
        Me.Label25.Name = "Label25"
        Me.Label25.Size = New System.Drawing.Size(50, 19)
        Me.Label25.TabIndex = 2
        Me.Label25.Text = "Oficina"
        '
        'Label24
        '
        Me.Label24.AutoSize = True
        Me.Label24.Location = New System.Drawing.Point(55, 70)
        Me.Label24.Name = "Label24"
        Me.Label24.Size = New System.Drawing.Size(50, 19)
        Me.Label24.TabIndex = 1
        Me.Label24.Text = "Celular"
        '
        'Label18
        '
        Me.Label18.AutoSize = True
        Me.Label18.Location = New System.Drawing.Point(41, 35)
        Me.Label18.Name = "Label18"
        Me.Label18.Size = New System.Drawing.Size(64, 19)
        Me.Label18.TabIndex = 0
        Me.Label18.Text = "Domicilio"
        '
        'GroupBox4
        '
        Me.GroupBox4.Controls.Add(Me.txtApellidoPadre)
        Me.GroupBox4.Controls.Add(Me.txtApellidoMadre)
        Me.GroupBox4.Controls.Add(Me.Label23)
        Me.GroupBox4.Controls.Add(Me.Label22)
        Me.GroupBox4.Controls.Add(Me.Label17)
        Me.GroupBox4.Controls.Add(Me.txtPadre)
        Me.GroupBox4.Controls.Add(Me.Label16)
        Me.GroupBox4.Controls.Add(Me.txtMadre)
        Me.GroupBox4.Location = New System.Drawing.Point(24, 13)
        Me.GroupBox4.Name = "GroupBox4"
        Me.GroupBox4.Size = New System.Drawing.Size(670, 114)
        Me.GroupBox4.TabIndex = 1
        Me.GroupBox4.TabStop = False
        Me.GroupBox4.Text = "Padres"
        '
        'txtApellidoPadre
        '
        Me.txtApellidoPadre.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtApellidoPadre.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtApellidoPadre.Location = New System.Drawing.Point(442, 71)
        Me.txtApellidoPadre.Name = "txtApellidoPadre"
        Me.txtApellidoPadre.Size = New System.Drawing.Size(175, 25)
        Me.txtApellidoPadre.TabIndex = 3
        '
        'txtApellidoMadre
        '
        Me.txtApellidoMadre.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtApellidoMadre.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtApellidoMadre.Location = New System.Drawing.Point(442, 22)
        Me.txtApellidoMadre.Name = "txtApellidoMadre"
        Me.txtApellidoMadre.Size = New System.Drawing.Size(175, 25)
        Me.txtApellidoMadre.TabIndex = 1
        '
        'Label23
        '
        Me.Label23.AutoSize = True
        Me.Label23.Location = New System.Drawing.Point(339, 74)
        Me.Label23.Name = "Label23"
        Me.Label23.Size = New System.Drawing.Size(97, 19)
        Me.Label23.TabIndex = 5
        Me.Label23.Text = "Apellido Padre"
        '
        'Label22
        '
        Me.Label22.AutoSize = True
        Me.Label22.Location = New System.Drawing.Point(335, 25)
        Me.Label22.Name = "Label22"
        Me.Label22.Size = New System.Drawing.Size(101, 19)
        Me.Label22.TabIndex = 4
        Me.Label22.Text = "Apellido Madre"
        '
        'Label17
        '
        Me.Label17.AutoSize = True
        Me.Label17.Location = New System.Drawing.Point(29, 74)
        Me.Label17.Name = "Label17"
        Me.Label17.Size = New System.Drawing.Size(98, 19)
        Me.Label17.TabIndex = 3
        Me.Label17.Text = "Nombre Padre"
        '
        'txtPadre
        '
        Me.txtPadre.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtPadre.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtPadre.Location = New System.Drawing.Point(133, 71)
        Me.txtPadre.Name = "txtPadre"
        Me.txtPadre.Size = New System.Drawing.Size(175, 25)
        Me.txtPadre.TabIndex = 2
        '
        'Label16
        '
        Me.Label16.AutoSize = True
        Me.Label16.Location = New System.Drawing.Point(25, 25)
        Me.Label16.Name = "Label16"
        Me.Label16.Size = New System.Drawing.Size(102, 19)
        Me.Label16.TabIndex = 1
        Me.Label16.Text = "Nombre Madre"
        '
        'txtMadre
        '
        Me.txtMadre.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtMadre.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtMadre.Location = New System.Drawing.Point(133, 22)
        Me.txtMadre.Name = "txtMadre"
        Me.txtMadre.Size = New System.Drawing.Size(175, 25)
        Me.txtMadre.TabIndex = 0
        '
        'tabMedica
        '
        Me.tabMedica.Controls.Add(Me.GroupBox7)
        Me.tabMedica.Controls.Add(Me.GroupBox6)
        Me.tabMedica.Location = New System.Drawing.Point(4, 26)
        Me.tabMedica.Name = "tabMedica"
        Me.tabMedica.Padding = New System.Windows.Forms.Padding(3)
        Me.tabMedica.Size = New System.Drawing.Size(718, 295)
        Me.tabMedica.TabIndex = 3
        Me.tabMedica.Text = "INFO. MÉDICA"
        Me.tabMedica.UseVisualStyleBackColor = True
        '
        'GroupBox7
        '
        Me.GroupBox7.Controls.Add(Me.Label21)
        Me.GroupBox7.Controls.Add(Me.Label20)
        Me.GroupBox7.Controls.Add(Me.Label19)
        Me.GroupBox7.Controls.Add(Me.cboDiagnostico)
        Me.GroupBox7.Controls.Add(Me.cboEstado)
        Me.GroupBox7.Controls.Add(Me.cboHospital)
        Me.GroupBox7.Location = New System.Drawing.Point(30, 29)
        Me.GroupBox7.Name = "GroupBox7"
        Me.GroupBox7.Size = New System.Drawing.Size(663, 128)
        Me.GroupBox7.TabIndex = 1
        Me.GroupBox7.TabStop = False
        Me.GroupBox7.Text = "Datos Médicos"
        '
        'Label21
        '
        Me.Label21.AutoSize = True
        Me.Label21.Location = New System.Drawing.Point(324, 28)
        Me.Label21.Name = "Label21"
        Me.Label21.Size = New System.Drawing.Size(101, 19)
        Me.Label21.TabIndex = 5
        Me.Label21.Text = "Estado Paciente"
        '
        'Label20
        '
        Me.Label20.AutoSize = True
        Me.Label20.Location = New System.Drawing.Point(22, 82)
        Me.Label20.Name = "Label20"
        Me.Label20.Size = New System.Drawing.Size(77, 19)
        Me.Label20.TabIndex = 4
        Me.Label20.Text = "Diagnóstico"
        '
        'Label19
        '
        Me.Label19.AutoSize = True
        Me.Label19.Location = New System.Drawing.Point(22, 28)
        Me.Label19.Name = "Label19"
        Me.Label19.Size = New System.Drawing.Size(56, 19)
        Me.Label19.TabIndex = 3
        Me.Label19.Text = "Hospital"
        '
        'cboDiagnostico
        '
        Me.cboDiagnostico.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.cboDiagnostico.FormattingEnabled = True
        Me.cboDiagnostico.Location = New System.Drawing.Point(105, 79)
        Me.cboDiagnostico.Name = "cboDiagnostico"
        Me.cboDiagnostico.Size = New System.Drawing.Size(232, 25)
        Me.cboDiagnostico.TabIndex = 2
        '
        'cboEstado
        '
        Me.cboEstado.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.cboEstado.FormattingEnabled = True
        Me.cboEstado.Location = New System.Drawing.Point(431, 25)
        Me.cboEstado.Name = "cboEstado"
        Me.cboEstado.Size = New System.Drawing.Size(190, 25)
        Me.cboEstado.TabIndex = 1
        '
        'cboHospital
        '
        Me.cboHospital.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.cboHospital.FormattingEnabled = True
        Me.cboHospital.Location = New System.Drawing.Point(84, 25)
        Me.cboHospital.Name = "cboHospital"
        Me.cboHospital.Size = New System.Drawing.Size(204, 25)
        Me.cboHospital.TabIndex = 0
        '
        'GroupBox6
        '
        Me.GroupBox6.Controls.Add(Me.lblOtroDoc)
        Me.GroupBox6.Controls.Add(Me.txtOtroDoctor)
        Me.GroupBox6.Controls.Add(Me.chkOtroDoc)
        Me.GroupBox6.Controls.Add(Me.cboDoctor)
        Me.GroupBox6.Location = New System.Drawing.Point(30, 185)
        Me.GroupBox6.Name = "GroupBox6"
        Me.GroupBox6.Size = New System.Drawing.Size(663, 70)
        Me.GroupBox6.TabIndex = 0
        Me.GroupBox6.TabStop = False
        Me.GroupBox6.Text = "Doctor"
        '
        'lblOtroDoc
        '
        Me.lblOtroDoc.AutoSize = True
        Me.lblOtroDoc.Location = New System.Drawing.Point(376, 31)
        Me.lblOtroDoc.Name = "lblOtroDoc"
        Me.lblOtroDoc.Size = New System.Drawing.Size(86, 19)
        Me.lblOtroDoc.TabIndex = 3
        Me.lblOtroDoc.Text = "Ingresar Doc."
        Me.lblOtroDoc.Visible = False
        '
        'txtOtroDoctor
        '
        Me.txtOtroDoctor.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.txtOtroDoctor.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper
        Me.txtOtroDoctor.Location = New System.Drawing.Point(468, 28)
        Me.txtOtroDoctor.Name = "txtOtroDoctor"
        Me.txtOtroDoctor.Size = New System.Drawing.Size(165, 25)
        Me.txtOtroDoctor.TabIndex = 2
        Me.txtOtroDoctor.Visible = False
        '
        'chkOtroDoc
        '
        Me.chkOtroDoc.AutoSize = True
        Me.chkOtroDoc.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.chkOtroDoc.Location = New System.Drawing.Point(251, 27)
        Me.chkOtroDoc.Name = "chkOtroDoc"
        Me.chkOtroDoc.Size = New System.Drawing.Size(68, 23)
        Me.chkOtroDoc.TabIndex = 1
        Me.chkOtroDoc.Text = "OTRO?"
        Me.chkOtroDoc.TextAlign = System.Drawing.ContentAlignment.MiddleCenter
        Me.chkOtroDoc.UseVisualStyleBackColor = True
        '
        'cboDoctor
        '
        Me.cboDoctor.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.cboDoctor.FormattingEnabled = True
        Me.cboDoctor.Location = New System.Drawing.Point(26, 27)
        Me.cboDoctor.Name = "cboDoctor"
        Me.cboDoctor.Size = New System.Drawing.Size(191, 25)
        Me.cboDoctor.TabIndex = 0
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
        Me.butSalir.Location = New System.Drawing.Point(366, 390)
        Me.butSalir.Name = "butSalir"
        Me.butSalir.Size = New System.Drawing.Size(113, 38)
        Me.butSalir.TabIndex = 3
        Me.butSalir.Text = "Salir"
        Me.butSalir.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.butSalir.UseVisualStyleBackColor = False
        '
        'butEditar
        '
        Me.butEditar.BackColor = System.Drawing.Color.DeepSkyBlue
        Me.butEditar.FlatAppearance.BorderSize = 0
        Me.butEditar.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.butEditar.Font = New System.Drawing.Font("Segoe UI Light", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.butEditar.ForeColor = System.Drawing.Color.White
        Me.butEditar.Image = CType(resources.GetObject("butEditar.Image"), System.Drawing.Image)
        Me.butEditar.ImageAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.butEditar.Location = New System.Drawing.Point(494, 390)
        Me.butEditar.Name = "butEditar"
        Me.butEditar.Size = New System.Drawing.Size(113, 38)
        Me.butEditar.TabIndex = 2
        Me.butEditar.Text = "Editar"
        Me.butEditar.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.butEditar.UseVisualStyleBackColor = False
        '
        'butGrabar
        '
        Me.butGrabar.BackColor = System.Drawing.Color.PaleGreen
        Me.butGrabar.FlatAppearance.BorderSize = 0
        Me.butGrabar.FlatStyle = System.Windows.Forms.FlatStyle.Flat
        Me.butGrabar.Font = New System.Drawing.Font("Segoe UI Light", 12.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.butGrabar.ForeColor = System.Drawing.Color.White
        Me.butGrabar.Image = CType(resources.GetObject("butGrabar.Image"), System.Drawing.Image)
        Me.butGrabar.ImageAlign = System.Drawing.ContentAlignment.MiddleRight
        Me.butGrabar.Location = New System.Drawing.Point(621, 390)
        Me.butGrabar.Name = "butGrabar"
        Me.butGrabar.Size = New System.Drawing.Size(113, 38)
        Me.butGrabar.TabIndex = 1
        Me.butGrabar.Text = "Grabar"
        Me.butGrabar.TextAlign = System.Drawing.ContentAlignment.MiddleLeft
        Me.butGrabar.UseVisualStyleBackColor = False
        '
        'PacienteRecupTableAdapter1
        '
        Me.PacienteRecupTableAdapter1.ClearBeforeFill = True
        '
        'frmABMPacientes
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(7.0!, 17.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.BackColor = System.Drawing.Color.White
        Me.ClientSize = New System.Drawing.Size(765, 440)
        Me.Controls.Add(Me.butSalir)
        Me.Controls.Add(Me.butEditar)
        Me.Controls.Add(Me.butGrabar)
        Me.Controls.Add(Me.TabControl1)
        Me.Font = New System.Drawing.Font("Segoe UI Light", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow
        Me.Margin = New System.Windows.Forms.Padding(3, 4, 3, 4)
        Me.MaximizeBox = False
        Me.MinimizeBox = False
        Me.Name = "frmABMPacientes"
        Me.Text = "Pacientes"
        Me.TabControl1.ResumeLayout(False)
        Me.tabDat.ResumeLayout(False)
        Me.GroupBox2.ResumeLayout(False)
        Me.GroupBox2.PerformLayout()
        Me.GroupBox1.ResumeLayout(False)
        Me.GroupBox1.PerformLayout()
        Me.tabDireccion.ResumeLayout(False)
        Me.GroupBox3.ResumeLayout(False)
        Me.GroupBox3.PerformLayout()
        Me.tabContacto.ResumeLayout(False)
        Me.GroupBox5.ResumeLayout(False)
        Me.GroupBox5.PerformLayout()
        Me.GroupBox4.ResumeLayout(False)
        Me.GroupBox4.PerformLayout()
        Me.tabMedica.ResumeLayout(False)
        Me.GroupBox7.ResumeLayout(False)
        Me.GroupBox7.PerformLayout()
        Me.GroupBox6.ResumeLayout(False)
        Me.GroupBox6.PerformLayout()
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents TabControl1 As System.Windows.Forms.TabControl
    Friend WithEvents tabDat As System.Windows.Forms.TabPage
    Friend WithEvents GroupBox1 As System.Windows.Forms.GroupBox
    Friend WithEvents txtNombre As System.Windows.Forms.TextBox
    Friend WithEvents tabDireccion As System.Windows.Forms.TabPage
    Friend WithEvents Label2 As System.Windows.Forms.Label
    Friend WithEvents txtApellido2 As System.Windows.Forms.TextBox
    Friend WithEvents txtApellido As System.Windows.Forms.TextBox
    Friend WithEvents txtNombre2 As System.Windows.Forms.TextBox
    Friend WithEvents Label1 As System.Windows.Forms.Label
    Friend WithEvents GroupBox2 As System.Windows.Forms.GroupBox
    Friend WithEvents Label7 As System.Windows.Forms.Label
    Friend WithEvents txtEdad As System.Windows.Forms.TextBox
    Friend WithEvents Label6 As System.Windows.Forms.Label
    Friend WithEvents datFecNac As System.Windows.Forms.DateTimePicker
    Friend WithEvents Label5 As System.Windows.Forms.Label
    Friend WithEvents cboSexo As System.Windows.Forms.ComboBox
    Friend WithEvents Label4 As System.Windows.Forms.Label
    Friend WithEvents Label3 As System.Windows.Forms.Label
    Friend WithEvents GroupBox3 As System.Windows.Forms.GroupBox
    Friend WithEvents Label8 As System.Windows.Forms.Label
    Friend WithEvents cboCorregimiento As System.Windows.Forms.ComboBox
    Friend WithEvents cboDistrito As System.Windows.Forms.ComboBox
    Friend WithEvents cboProvincia As System.Windows.Forms.ComboBox
    Friend WithEvents txtBarrio As System.Windows.Forms.TextBox
    Friend WithEvents Label10 As System.Windows.Forms.Label
    Friend WithEvents Label9 As System.Windows.Forms.Label
    Friend WithEvents txtEdificio As System.Windows.Forms.TextBox
    Friend WithEvents txtCalle As System.Windows.Forms.TextBox
    Friend WithEvents Label15 As System.Windows.Forms.Label
    Friend WithEvents Label14 As System.Windows.Forms.Label
    Friend WithEvents Label13 As System.Windows.Forms.Label
    Friend WithEvents Label12 As System.Windows.Forms.Label
    Friend WithEvents Label11 As System.Windows.Forms.Label
    Friend WithEvents txtDirComp As System.Windows.Forms.TextBox
    Friend WithEvents txtApto As System.Windows.Forms.TextBox
    Friend WithEvents tabContacto As System.Windows.Forms.TabPage
    Friend WithEvents GroupBox4 As System.Windows.Forms.GroupBox
    Friend WithEvents txtMadre As System.Windows.Forms.TextBox
    Friend WithEvents GroupBox5 As System.Windows.Forms.GroupBox
    Friend WithEvents Label17 As System.Windows.Forms.Label
    Friend WithEvents txtPadre As System.Windows.Forms.TextBox
    Friend WithEvents Label16 As System.Windows.Forms.Label
    Friend WithEvents tabMedica As System.Windows.Forms.TabPage
    Friend WithEvents GroupBox6 As System.Windows.Forms.GroupBox
    Friend WithEvents cboDoctor As System.Windows.Forms.ComboBox
    Friend WithEvents lblOtroDoc As System.Windows.Forms.Label
    Friend WithEvents txtOtroDoctor As System.Windows.Forms.TextBox
    Friend WithEvents chkOtroDoc As System.Windows.Forms.CheckBox
    Friend WithEvents GroupBox7 As System.Windows.Forms.GroupBox
    Friend WithEvents cboHospital As System.Windows.Forms.ComboBox
    Friend WithEvents Label21 As System.Windows.Forms.Label
    Friend WithEvents Label20 As System.Windows.Forms.Label
    Friend WithEvents Label19 As System.Windows.Forms.Label
    Friend WithEvents cboDiagnostico As System.Windows.Forms.ComboBox
    Friend WithEvents cboEstado As System.Windows.Forms.ComboBox
    Friend WithEvents butGrabar As System.Windows.Forms.Button
    Friend WithEvents butEditar As System.Windows.Forms.Button
    Friend WithEvents txtApellidoPadre As System.Windows.Forms.TextBox
    Friend WithEvents txtApellidoMadre As System.Windows.Forms.TextBox
    Friend WithEvents Label23 As System.Windows.Forms.Label
    Friend WithEvents Label22 As System.Windows.Forms.Label
    Friend WithEvents butSalir As System.Windows.Forms.Button
    Friend WithEvents txtTelDom As System.Windows.Forms.TextBox
    Friend WithEvents Label25 As System.Windows.Forms.Label
    Friend WithEvents Label24 As System.Windows.Forms.Label
    Friend WithEvents Label18 As System.Windows.Forms.Label
    Friend WithEvents txtTelOfic As System.Windows.Forms.TextBox
    Friend WithEvents txtTelCel As System.Windows.Forms.TextBox
    Friend WithEvents PacienteRecupTableAdapter1 As FANLYC.dSetPacientesTableAdapters.PacienteRecupTableAdapter
End Class
