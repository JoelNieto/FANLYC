Public Class frmHospital
    Public iTablas As Integer
    Dim iMax As Integer
    Dim lColumnas As New List(Of String)
    Dim lTablas As New List(Of String)
    Dim lCondiciones As New List(Of String)
    Dim lFiltros As New List(Of String)

    Dim lCampos As New List(Of String)
    Dim lValores As New List(Of String)
    Dim lTipos As New List(Of String)

    Private Sub frmHospital_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load
        Me.CenterToScreen()
        Select Case iTablas
            Case 1
                CargaHospitales()
                txtNomAbrev.Visible = True
                Label1.Text = "Nombre Hospital"
                Label2.Visible = True
                grpHospitales.Text = "Hospitales"
            Case 2
                CargaDoctores()
                txtNomAbrev.Visible = False
                Label1.Text = "Nombre Doctor"
                Label2.Visible = False
                grpHospitales.Text = "Doctores"
                Me.Text = "Doctores"
            Case 3
                CargaDiagnosticos()
                txtNomAbrev.Visible = False
                Label1.Text = "Descripción Diagnósticos"
                Label2.Visible = False
                grpHospitales.Text = "Diagnósticos"
                Me.Text = "Diagnósticos"
            Case 4
                CargaEstados()
                txtNomAbrev.Visible = False
                Label1.Text = "Estados de Paciente"
                Label2.Visible = False
                grpHospitales.Text = "Estados"
                Me.Text = "Estados"
        End Select

    End Sub

    Private Sub CargaHospitales()
        LimpiaListas()
        lsvHospital.Clear()
        lColumnas.Add("th.cod_hospital")
        lColumnas.Add("th.txt_desc_hospital")
        lColumnas.Add("th.txt_abrev_hospital")
        lTablas.Add("Hospitales th")
        lFiltros.Add("NO TIENE")
        lsvHospital.Clear()
        objListview.Carga(lsvHospital, lColumnas, lTablas, lFiltros, lCondiciones, objDataBase.Conexion)
        lsvHospital.Columns.Add("#", 35, HorizontalAlignment.Center)
        lsvHospital.Columns.Add("Nombre Hospital", 200, HorizontalAlignment.Left)
        lsvHospital.Columns.Add("Nombre Abrev.", 100, HorizontalAlignment.Left)
        If lsvHospital.Items.Count <> 0 Then
            iMax = CInt(lsvHospital.Items(CInt(lsvHospital.Items.Count) - 1).Text)
        End If

    End Sub

    Private Sub CargaDoctores()
        LimpiaListas()
        lsvHospital.Clear()
        lColumnas.Add("td.cod_doctor")
        lColumnas.Add("td.txt_nom_doctor")
        lTablas.Add("Doctores td")
        lCondiciones.Add("NO TIENE")
        lFiltros.Add("NO TIENE")
        lsvHospital.Clear()
        objListview.Carga(lsvHospital, lColumnas, lTablas, lFiltros, lCondiciones, objDataBase.Conexion)
        lsvHospital.Columns.Add("#", 35, HorizontalAlignment.Center)
        lsvHospital.Columns.Add("Nombre Doctor", 200, HorizontalAlignment.Left)
        'lsvHospital.Columns.Add("Nombre Abrev.", 60, HorizontalAlignment.Center)
        If lsvHospital.Items.Count <> 0 Then
            iMax = CInt(lsvHospital.Items(CInt(lsvHospital.Items.Count) - 1).Text)
        End If


    End Sub

    Private Sub CargaDiagnosticos()
        LimpiaListas()
        lsvHospital.Clear()
        lColumnas.Add("td.cod_diagnostico")
        lColumnas.Add("td.txt_desc_diagnostico")
        lTablas.Add("Diagnosticos td")
        lCondiciones.Add("NO TIENE")
        lFiltros.Add("NO TIENE")
        lsvHospital.Clear()
        objListview.Carga(lsvHospital, lColumnas, lTablas, lFiltros, lCondiciones, objDataBase.Conexion)
        lsvHospital.Columns.Add("#", 35, HorizontalAlignment.Center)
        lsvHospital.Columns.Add("Descripción Diagnóstico", 200, HorizontalAlignment.Left)
        'lsvHospital.Columns.Add("Nombre Abrev.", 60, HorizontalAlignment.Center)

        If lsvHospital.Items.Count <> 0 Then
            iMax = CInt(lsvHospital.Items(CInt(lsvHospital.Items.Count) - 1).Text)
        End If

    End Sub

    Private Sub CargaEstados()
        LimpiaListas()
        lsvHospital.Clear()
        lColumnas.Add("te.cod_estado")
        lColumnas.Add("te.txt_desc_estado")
        lTablas.Add("EstadosPaciente te")
        lCondiciones.Add("NO TIENE")
        lFiltros.Add("NO TIENE")
        lsvHospital.Clear()
        objListview.Carga(lsvHospital, lColumnas, lTablas, lFiltros, lCondiciones, objDataBase.Conexion)
        lsvHospital.Columns.Add("#", 35, HorizontalAlignment.Center)
        lsvHospital.Columns.Add("Descripción Estado", 200, HorizontalAlignment.Left)
        'lsvHospital.Columns.Add("Nombre Abrev.", 60, HorizontalAlignment.Center)

        If lsvHospital.Items.Count <> 0 Then
            iMax = CInt(lsvHospital.Items(CInt(lsvHospital.Items.Count) - 1).Text)
        End If

    End Sub

    Private Sub butAgregar_Click(sender As System.Object, e As System.EventArgs) Handles butAgregar.Click
        AgregaDatos()
    End Sub

    Private Sub AgregarHospital()
        If txtNomHospital.TextLength = 0 Or txtNomAbrev.TextLength = 0 Then
            MsgBox("Favor llenar los campos correspondientes", MsgBoxStyle.Critical)
            Exit Sub
        End If
        lCampos.Add("th.cod_hospital")
        lValores.Add(iMax + 1.ToString)
        lTipos.Add("NÚMERO")

        lCampos.Add("txt_desc_hospital")
        lValores.Add(txtNomHospital.Text)
        lTipos.Add("TEXTO")

        lCampos.Add("txt_abrev_hospital")
        lValores.Add(txtNomAbrev.Text)
        lTipos.Add("TEXTO")

        If objScripts.Inserta("Hospitales", lCampos, lTipos, lValores, objDataBase.Conexion) = True Then
            MsgBox("Hospital añadido con éxito", MsgBoxStyle.Information)
            txtNomHospital.Text = ""
            txtNomAbrev.Text = ""
            CargaHospitales()

        End If
    End Sub

    Private Sub AgregarDoctor()
        If txtNomHospital.TextLength = 0 Then
            MsgBox("Favor llenar los campos correspondientes", MsgBoxStyle.Critical)
            Exit Sub
        End If
        lCampos.Add("cod_doctor")
        lValores.Add(iMax + 1.ToString)
        lTipos.Add("NÚMERO")

        lCampos.Add("txt_nom_doctor")
        lValores.Add(txtNomHospital.Text)
        lTipos.Add("TEXTO")

        If objScripts.Inserta("Doctores", lCampos, lTipos, lValores, objDataBase.Conexion) = True Then
            MsgBox("Doctor añadido con éxito", MsgBoxStyle.Information)
            txtNomHospital.Text = ""
            CargaDoctores()
        End If
    End Sub

    Private Sub AgregarDiagnostico()
        If txtNomHospital.TextLength = 0 Then
            MsgBox("Favor llenar los campos correspondientes", MsgBoxStyle.Critical)
            Exit Sub
        End If
        lCampos.Add("cod_diagnostico")
        lValores.Add(iMax + 1.ToString)
        lTipos.Add("NÚMERO")

        lCampos.Add("txt_desc_diagnostico")
        lValores.Add(txtNomHospital.Text)
        lTipos.Add("TEXTO")

        If objScripts.Inserta("Diagnosticos", lCampos, lTipos, lValores, objDataBase.Conexion) = True Then
            MsgBox("Diagnóstico añadido con éxito", MsgBoxStyle.Information)
            txtNomHospital.Text = ""
            CargaDiagnosticos()
        End If
    End Sub

    Private Sub AgregarEstado()
        If txtNomHospital.TextLength = 0 Then
            MsgBox("Favor llenar los campos correspondientes", MsgBoxStyle.Critical)
            Exit Sub
        End If
        lCampos.Add("cod_estado")
        lValores.Add(iMax + 1.ToString)
        lTipos.Add("NÚMERO")

        lCampos.Add("txt_desc_estado")
        lValores.Add(txtNomHospital.Text)
        lTipos.Add("TEXTO")

        If objScripts.Inserta("EstadosPaciente", lCampos, lTipos, lValores, objDataBase.Conexion) = True Then
            MsgBox("Estado Paciente añadido con éxito", MsgBoxStyle.Information)
            txtNomHospital.Text = ""
            CargaEstados()
        End If
    End Sub

    Private Sub LimpiaListas()
        lColumnas.Clear()
        lTablas.Clear()
        lCondiciones.Clear()
        lFiltros.Clear()

        lCampos.Clear()
        lValores.Clear()
        lTipos.Clear()

    End Sub

    Private Sub butSalir_Click(sender As System.Object, e As System.EventArgs) Handles butSalir.Click
        Me.Close()
    End Sub

    Private Sub txtNomHospital_KeyDown(sender As Object, e As System.Windows.Forms.KeyEventArgs) Handles txtNomHospital.KeyDown
        If e.KeyCode = Keys.Enter Then
            AgregaDatos()
        End If

    End Sub

    Private Sub txtNomAbrev_KeyDown(sender As Object, e As System.Windows.Forms.KeyEventArgs) Handles txtNomAbrev.KeyDown
        If e.KeyCode = Keys.Enter Then
            AgregaDatos()
        End If
    End Sub

    Private Sub AgregaDatos()
        Select Case iTablas
            Case 1
                AgregarHospital()
            Case 2
                AgregarDoctor()
            Case 3
                AgregarDiagnostico()
            Case 4
                AgregarEstado()
        End Select

    End Sub


End Class