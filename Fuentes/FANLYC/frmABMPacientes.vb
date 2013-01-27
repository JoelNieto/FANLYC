Public Class frmABMPacientes

    Public iNuevoPaciente As Boolean
    Public bConsulta As Boolean
    Private bGrabado As Boolean
    Public RecPaciente As New DataTable

    Private Sub frmABMPacientes_FormClosing(sender As Object, e As System.Windows.Forms.FormClosingEventArgs) Handles Me.FormClosing
        If bConsulta = False Then
            If bGrabado = False Then
                If MsgBox("Desea guardar temporal?", MsgBoxStyle.YesNo, "Salvado de Temporal") = MsgBoxResult.Yes Then
                    GuardaTemporal()
                    MsgBox("Temporal: " + Paciente.IdPaciente.ToString, MsgBoxStyle.Information)
                End If
            End If
        End If
        LimpiarForma()
    End Sub

    Private Sub frmABMPacientes_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load

        Me.CenterToScreen()
        CargaControles()
        InicializaPaciente()
        If iNuevoPaciente = True Then
            Dim Filtros As New List(Of String)
            Dim Condiciones As New List(Of String)
            Dim Campo As New List(Of String)
            Dim Valor As New List(Of String)
            Dim Tipo As New List(Of String)
            Filtros.Add("NO TIENE")
            Condiciones.Add("NO TIENE")
            Paciente.IdPaciente = CInt(objScripts.BuscaUltimoIndice("PacientesHeaderTmp", "id_paciente_tmp", Condiciones, Filtros, objDataBase.Conexion)) + 1
            Campo.Add("id_paciente_tmp")
            Valor.Add(Paciente.IdPaciente.ToString)
            Tipo.Add("NÚMERO")
            If objScripts.Inserta("PacientesHeaderTmp", Campo, Tipo, Valor, objDataBase.Conexion) = False Then
                MsgBox("Error al generar temporal")
            End If
        Else
            RecPaciente = PacienteRecupTableAdapter1.FiltraPacientes(Paciente.IdPaciente)
            RecuperarPaciente(RecPaciente)
            BloqueaForma()
        End If
    End Sub

    Private Sub CargaControles()
        CargaComboProvincia()
        CargaComboSexo()
        CargaComboDiagnostico()
        CargaComboDoctor()
        CargaComboEstado()
        CargaComboHospital()
    End Sub

    Private Sub CargaComboProvincia()
        Dim lTblas As New List(Of String)
        Dim sValor As String
        Dim sDisplay As String
        Dim lFiltros As New List(Of String)
        Dim lCondicion As New List(Of String)

        lTblas.Add("Provincias tp")
        lFiltros.Add("NO TIENE")
        lCondicion.Add("NO TIENE")
        sValor = "tp.cod_provincia"
        sDisplay = "tp.txt_provincia"
        objCombo.Carga(cboProvincia, lTblas, sDisplay, sValor, lFiltros, lCondicion, objDataBase.Conexion)

    End Sub

    Private Sub CargaComboDistrito()
        Dim lTblas As New List(Of String)
        Dim sValor As String
        Dim sDisplay As String
        Dim lFiltros As New List(Of String)
        Dim lCondicion As New List(Of String)

        lTblas.Add("Distritos td")

        lFiltros.Add("td.cod_provincia")
        lCondicion.Add(cboProvincia.SelectedValue.ToString)
        sValor = "td.cod_distrito"
        sDisplay = "td.txt_distrito"
        objCombo.Carga(cboDistrito, lTblas, sDisplay, sValor, lFiltros, lCondicion, objDataBase.Conexion)
    End Sub

    Private Sub CargaComboCorregimiento()

        Dim lTblas As New List(Of String)
        Dim sValor As String
        Dim sDisplay As String
        Dim lFiltros As New List(Of String)
        Dim lCondicion As New List(Of String)

        lTblas.Add("Corregimientos tc")

        lFiltros.Add("tc.cod_provincia")
        lCondicion.Add(cboProvincia.SelectedValue.ToString)
        lFiltros.Add("tc.cod_distrito")
        lCondicion.Add(cboDistrito.SelectedValue.ToString)

        sValor = "tc.cod_corregimiento"
        sDisplay = "tc.txt_corregimiento"

        objCombo.Carga(cboCorregimiento, lTblas, sDisplay, sValor, lFiltros, lCondicion, objDataBase.Conexion)

    End Sub

    Private Sub cboProvincia_SelectedValueChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles cboProvincia.SelectedValueChanged
        If IsNumeric(cboProvincia.SelectedValue.ToString) Then
            CargaComboDistrito()
            CargaComboCorregimiento()
            Paciente.Provincia = CInt(cboProvincia.SelectedValue.ToString)
        End If
    End Sub

    Private Sub cboDistrito_SelectedValueChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles cboDistrito.SelectedValueChanged
        If IsNumeric(cboDistrito.SelectedValue.ToString) Then
            CargaComboCorregimiento()
            Paciente.Distrito = CInt(cboDistrito.SelectedValue.ToString)
        End If
    End Sub

    Private Sub CargaComboSexo()
        Dim lTablas As New List(Of String)
        Dim sValor As String
        Dim sDisplay As String
        Dim lFiltros As New List(Of String)
        Dim lCondicion As New List(Of String)

        lTablas.Add("Sexo sx")
        lFiltros.Add("NO TIENE")
        lCondicion.Add("NO TIENE")
        sValor = "sx.cod_sexo"
        sDisplay = "sx.txt_sexo"
        objCombo.Carga(cboSexo, lTablas, sDisplay, sValor, lFiltros, lCondicion, objDataBase.Conexion)
    End Sub

    Private Sub CargaComboDoctor()
        Dim lTblas As New List(Of String)
        Dim sValor As String
        Dim sDisplay As String
        Dim lFiltros As New List(Of String)
        Dim lCondicion As New List(Of String)

        lTblas.Add("Doctores dc")
        lFiltros.Add("NO TIENE")
        lCondicion.Add("NO TIENE")
        sValor = "dc.cod_doctor"
        sDisplay = "dc.txt_nom_doctor"
        objCombo.Carga(cboDoctor, lTblas, sDisplay, sValor, lFiltros, lCondicion, objDataBase.Conexion)
    End Sub

    Private Sub CargaComboEstado()
        Dim lTblas As New List(Of String)
        Dim sValor As String
        Dim sDisplay As String
        Dim lFiltros As New List(Of String)
        Dim lCondicion As New List(Of String)

        lTblas.Add("EstadosPaciente ep")
        lFiltros.Add("NO TIENE")
        lCondicion.Add("NO TIENE")
        sValor = "ep.cod_estado"
        sDisplay = "ep.txt_desc_estado"
        objCombo.Carga(cboEstado, lTblas, sDisplay, sValor, lFiltros, lCondicion, objDataBase.Conexion)
    End Sub

    Private Sub CargaComboHospital()
        Dim lTblas As New List(Of String)
        Dim sValor As String
        Dim sDisplay As String
        Dim lFiltros As New List(Of String)
        Dim lCondicion As New List(Of String)

        lTblas.Add("Hospitales hp")
        lFiltros.Add("NO TIENE")
        lCondicion.Add("NO TIENE")
        sValor = "hp.cod_hospital"
        sDisplay = "hp.txt_desc_hospital"
        objCombo.Carga(cboHospital, lTblas, sDisplay, sValor, lFiltros, lCondicion, objDataBase.Conexion)
    End Sub

    Private Sub CargaComboDiagnostico()
        Dim lTblas As New List(Of String)
        Dim sValor As String
        Dim sDisplay As String
        Dim lFiltros As New List(Of String)
        Dim lCondicion As New List(Of String)

        lTblas.Add("Diagnosticos dg")
        lFiltros.Add("NO TIENE")
        lCondicion.Add("NO TIENE")
        sValor = "dg.cod_diagnostico"
        sDisplay = "dg.txt_desc_diagnostico"
        objCombo.Carga(cboDiagnostico, lTblas, sDisplay, sValor, lFiltros, lCondicion, objDataBase.Conexion)
    End Sub

    Private Sub chkOtroDoc_CheckedChanged(sender As System.Object, e As System.EventArgs) Handles chkOtroDoc.CheckedChanged
        If chkOtroDoc.CheckState = CheckState.Checked Then
            lblOtroDoc.Visible = True
            txtOtroDoctor.Visible = True
            cboDoctor.Enabled = False
        ElseIf chkOtroDoc.CheckState = CheckState.Unchecked Then
            lblOtroDoc.Visible = False
            txtOtroDoctor.Visible = False
            cboDoctor.Enabled = True
        End If
    End Sub

    Private Sub datFecNac_ValueChanged(sender As System.Object, e As System.EventArgs) Handles datFecNac.ValueChanged
        If datFecNac.Value > Now Then
            MsgBox("Fecha incorrecta, favor corregir")
            Exit Sub
        Else
            Paciente.FecNac = datFecNac.Value
            txtEdad.Text = objGrales.CalculaEdad(datFecNac.Value)
            Paciente.EdadMeses = objGrales.CalculaEdadMeses(datFecNac.Value)
        End If
    End Sub

    Private Sub txtNombre_GotFocus(sender As Object, e As System.EventArgs) Handles txtNombre.GotFocus
        objGrales.SelText(txtNombre)
    End Sub

    Private Sub txtNombre2_GotFocus(sender As Object, e As System.EventArgs) Handles txtNombre2.GotFocus
        objGrales.SelText(txtNombre2)
    End Sub

    Private Sub txtApellido_GotFocus(sender As Object, e As System.EventArgs) Handles txtApellido.GotFocus
        objGrales.SelText(txtApellido)
    End Sub

    Private Sub txtApellido2_GotFocus(sender As Object, e As System.EventArgs) Handles txtApellido2.GotFocus
        objGrales.SelText(txtApellido2)
    End Sub

    Private Sub txtNombre_LostFocus(sender As Object, e As System.EventArgs) Handles txtNombre.LostFocus
        Paciente.Nombre = txtNombre.Text
    End Sub

    Private Sub txtNombre2_LostFocus(sender As Object, e As System.EventArgs) Handles txtNombre2.LostFocus
        Paciente.SegundoNombre = txtNombre2.Text
    End Sub

    Private Sub txtApellido_LostFocus(sender As Object, e As System.EventArgs) Handles txtApellido.LostFocus
        Paciente.Apellido = txtApellido.Text
    End Sub

    Private Sub txtApellido2_LostFocus(sender As Object, e As System.EventArgs) Handles txtApellido2.LostFocus
        Paciente.SegundoApellido = txtApellido2.Text
    End Sub

    Private Sub cboSexo_SelectedValueChanged(sender As Object, e As System.EventArgs) Handles cboSexo.SelectedValueChanged
        If IsNumeric(cboSexo.SelectedValue.ToString) Then
            Paciente.Sexo = CInt(cboSexo.SelectedValue.ToString)
        End If
    End Sub

    Private Sub txtEdad_TextChanged(sender As Object, e As System.EventArgs) Handles txtEdad.TextChanged
        Paciente.Edad = CInt(Val(txtEdad.Text))
    End Sub

    Private Sub cboCorregimiento_SelectedValueChanged(sender As Object, e As System.EventArgs) Handles cboCorregimiento.SelectedValueChanged
        If IsNumeric(cboCorregimiento.SelectedValue.ToString) Then
            Paciente.Corregimiento = CInt(cboCorregimiento.SelectedValue.ToString)
            ArmaDireccion()
        End If
    End Sub

    Private Sub txtBarrio_LostFocus(sender As Object, e As System.EventArgs) Handles txtBarrio.LostFocus
        Paciente.Barrio = txtBarrio.Text
        ArmaDireccion()
    End Sub

    Private Sub txtCalle_LostFocus(sender As Object, e As System.EventArgs) Handles txtCalle.LostFocus
        Paciente.Calle = txtCalle.Text
        ArmaDireccion()
    End Sub

    Private Sub txtApto_LostFocus(sender As Object, e As System.EventArgs) Handles txtApto.LostFocus
        Paciente.Casa = txtApto.Text
        ArmaDireccion()
    End Sub

    Private Sub txtDirComp_TextChanged(sender As Object, e As System.EventArgs) Handles txtDirComp.TextChanged
        Paciente.DirCompleta = txtDirComp.Text
    End Sub

    Private Sub ArmaDireccion()
        txtDirComp.Text = txtBarrio.Text + ", "
        txtDirComp.Text = txtDirComp.Text + txtCalle.Text + "  " + txtEdificio.Text + ", " + txtApto.Text
    End Sub

    Private Sub cboHospital_SelectedValueChanged(sender As Object, e As System.EventArgs) Handles cboHospital.SelectedValueChanged
        If IsNumeric(cboHospital.SelectedValue.ToString) Then
            Paciente.Hospital = CInt(cboHospital.SelectedValue.ToString)
        End If
    End Sub

    Private Sub cboEstado_SelectedValueChanged(sender As Object, e As System.EventArgs) Handles cboEstado.SelectedValueChanged
        If IsNumeric(cboEstado.SelectedValue.ToString) Then
            Paciente.Estado = CInt(cboEstado.SelectedValue.ToString)
        End If
    End Sub

    Private Sub cboDiagnostico_SelectedValueChanged(sender As Object, e As System.EventArgs) Handles cboDiagnostico.SelectedValueChanged
        If IsNumeric(cboDiagnostico.SelectedValue.ToString) Then
            Paciente.Diagnostico = CInt(cboDiagnostico.SelectedValue.ToString)
        End If
    End Sub

    Private Sub cboDoctor_SelectedValueChanged(sender As Object, e As System.EventArgs) Handles cboDoctor.SelectedValueChanged
        If IsNumeric(cboDoctor.SelectedValue.ToString) Then
            Paciente.Doctor = CInt(cboDoctor.SelectedValue.ToString)
        End If
    End Sub

    Private Sub butSalir_Click(sender As System.Object, e As System.EventArgs) Handles butSalir.Click
        Me.Close()
    End Sub

    Private Sub txtTelDom_KeyPress(sender As Object, e As System.Windows.Forms.KeyPressEventArgs) Handles txtTelDom.KeyPress
        If Char.IsLetter(e.KeyChar) Then
            e.Handled = True
        ElseIf Char.IsWhiteSpace(e.KeyChar) Then
            e.Handled = True
        End If
    End Sub

    Private Sub txtTelCel_KeyPress(sender As Object, e As System.Windows.Forms.KeyPressEventArgs) Handles txtTelCel.KeyPress
        If Char.IsLetter(e.KeyChar) Then
            e.Handled = True
        ElseIf Char.IsWhiteSpace(e.KeyChar) Then
            e.Handled = True
        End If
    End Sub

    Private Sub txtTelOfic_KeyPress(sender As Object, e As System.Windows.Forms.KeyPressEventArgs) Handles txtTelOfic.KeyPress
        If Char.IsLetter(e.KeyChar) Then
            e.Handled = True
        ElseIf Char.IsWhiteSpace(e.KeyChar) Then
            e.Handled = True
        End If
    End Sub

    Private Sub txtMadre_LostFocus(sender As Object, e As System.EventArgs) Handles txtMadre.LostFocus
        Paciente.NomMadre = txtMadre.Text
    End Sub

    Private Sub txtApellidoMadre_LostFocus(sender As Object, e As System.EventArgs) Handles txtApellidoMadre.LostFocus
        Paciente.ApelMadre = txtApellidoMadre.Text
    End Sub

    Private Sub txtPadre_LostFocus(sender As Object, e As System.EventArgs) Handles txtPadre.LostFocus
        Paciente.NomPadre = txtPadre.Text
    End Sub

    Private Sub txtApellidoPadre_LostFocus(sender As Object, e As System.EventArgs) Handles txtApellidoPadre.LostFocus
        Paciente.ApelPadre = txtApellidoPadre.Text
    End Sub

    Private Sub txtTelCel_LostFocus(sender As Object, e As System.EventArgs) Handles txtTelCel.LostFocus
        Paciente.TelCel = txtTelCel.Text
    End Sub

    Private Sub txtTelDom_LostFocus(sender As Object, e As System.EventArgs) Handles txtTelDom.LostFocus
        Paciente.TelDomi = txtTelDom.Text
    End Sub

    Private Sub txtTelOfic_LostFocus(sender As Object, e As System.EventArgs) Handles txtTelOfic.LostFocus
        Paciente.TelOfic = txtTelOfic.Text
    End Sub

    Private Sub butGrabar_Click(sender As System.Object, e As System.EventArgs) Handles butGrabar.Click
        If ValidaFunction() = True Then
            If chkOtroDoc.CheckState = CheckState.Checked Then
                If Len(txtOtroDoctor.Text) <> 0 Then
                    Paciente.Doctor = AgregaOtroDoctor(txtOtroDoctor.Text)
                End If
            End If
            Try
                GuardaTemporal()
                If iNuevoPaciente = True Then
                    iNuevoId = ObtieneNuevoId()
                Else
                    iNuevoId = Paciente.IdPaciente
                End If

                TrasladaTemporal()
            Catch ex As Exception
                LimpiarPacientes(False)
                MsgBox("Error al guardar Paciente, inténtelo de nuevo: " + vbCrLf + ex.Message.ToString, MsgBoxStyle.Critical)
                Exit Sub
            End Try
            MsgBox("Paciente Grabado con Éxito: " + vbCrLf + "ID: " + iNuevoId.ToString, MsgBoxStyle.OkOnly)
            bGrabado = True
            Me.Close()
        End If
    End Sub

    Private Function ValidaFunction() As Boolean
        Dim sAdvertencias As String = ""
        Dim sErrores As String = ""

        If Len(Trim(txtNombre.Text)) = 0 Then
            sErrores = sErrores + "Nombre"
        End If

        If Len(Trim(txtApellido.Text)) = 0 Then
            sErrores = sErrores + vbCrLf + "Apellido"
        End If

        If (Len(Trim(txtPadre.Text)) = 0 Or Len(Trim(txtApellidoPadre.Text)) = 0) And (Len(Trim(txtMadre.Text)) = 0 Or Len(Trim(txtApellidoMadre.Text)) = 0) Then
            sErrores = sErrores + vbCrLf + "Padres"
        End If

        If Len(Trim(txtTelCel.Text)) = 0 And Len(Trim(txtTelDom.Text)) = 0 And Len(Trim(txtTelOfic.Text)) = 0 Then
            sErrores = sErrores + vbCrLf + "Teléfonos"
        End If

        If chkOtroDoc.CheckState = CheckState.Checked And Len(Trim(txtOtroDoctor.Text)) = 0 Then
            sErrores = sErrores + vbCrLf + "Doctor"
        End If

        If Len(Trim(sErrores)) <> 0 Then
            MsgBox("Faltan los siguientes Campos: " + vbCrLf + sErrores, MsgBoxStyle.Critical)
            ValidaFunction = False
            Exit Function
        Else
            ValidaFunction = True
        End If

    End Function

    Private Sub LimpiarForma()

        txtNombre.Clear()
        txtNombre2.Clear()
        txtApellido.Clear()
        txtApellido2.Clear()
        txtEdad.Clear()
        txtBarrio.Clear()
        txtCalle.Clear()
        txtEdificio.Clear()
        txtApto.Clear()
        txtDirComp.Clear()
        txtPadre.Clear()
        txtMadre.Clear()
        txtApellidoMadre.Clear()
        txtApellidoPadre.Clear()
        txtTelCel.Clear()
        txtTelDom.Clear()
        txtTelOfic.Clear()
        txtOtroDoctor.Clear()

    End Sub

    Private Sub BloqueaForma()
        txtNombre.Enabled = False
        txtNombre2.Enabled = False
        txtApellido.Enabled = False
        txtApellido2.Enabled = False
        txtEdad.Enabled = False
        txtBarrio.Enabled = False
        txtCalle.Enabled = False
        txtEdificio.Enabled = False
        txtApto.Enabled = False
        txtDirComp.Enabled = False
        txtPadre.Enabled = False
        txtMadre.Enabled = False
        txtApellidoMadre.Enabled = False
        txtApellidoPadre.Enabled = False
        txtTelCel.Enabled = False
        txtTelDom.Enabled = False
        txtTelOfic.Enabled = False
        txtOtroDoctor.Enabled = False
        cboProvincia.Enabled = False
        cboDistrito.Enabled = False
        cboCorregimiento.Enabled = False
        cboEstado.Enabled = False
        cboHospital.Enabled = False
        cboDoctor.Enabled = False
        cboDiagnostico.Enabled = False
        cboSexo.Enabled = False
        datFecNac.Enabled = False
        chkOtroDoc.Enabled = False
    End Sub

    Private Sub LiberaForma()
        txtNombre.Enabled = True
        txtNombre2.Enabled = True
        txtApellido.Enabled = True
        txtApellido2.Enabled = True
        txtEdad.Enabled = True
        txtBarrio.Enabled = True
        txtCalle.Enabled = True
        txtEdificio.Enabled = True
        txtApto.Enabled = True
        txtDirComp.Enabled = True
        txtPadre.Enabled = True
        txtMadre.Enabled = True
        txtApellidoMadre.Enabled = True
        txtApellidoPadre.Enabled = True
        txtTelCel.Enabled = True
        txtTelDom.Enabled = True
        txtTelOfic.Enabled = True
        txtOtroDoctor.Enabled = True
        cboProvincia.Enabled = True
        cboDistrito.Enabled = True
        cboCorregimiento.Enabled = True
        cboEstado.Enabled = True
        cboHospital.Enabled = True
        cboDoctor.Enabled = True
        cboDiagnostico.Enabled = True
        cboSexo.Enabled = True
        datFecNac.Enabled = True
        chkOtroDoc.Enabled = True
    End Sub

    Private Sub butEditar_Click(sender As System.Object, e As System.EventArgs) Handles butEditar.Click
        LiberaForma()
    End Sub

    Private Sub cboDiagnostico_SelectedIndexChanged(sender As System.Object, e As System.EventArgs) Handles cboDiagnostico.SelectedIndexChanged

    End Sub
End Class