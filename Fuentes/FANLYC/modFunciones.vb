Module modFunciones

    Public Sub InicializaPaciente()
        Paciente.Nombre = ""
        Paciente.SegundoNombre = ""
        Paciente.Apellido = ""
        Paciente.SegundoApellido = ""
        Paciente.Sexo = 1
        Paciente.FecNac = Now
        Paciente.Hospital = 1
        Paciente.Edad = 1
        Paciente.EdadMeses = 0
        Paciente.Provincia = 1
        Paciente.Distrito = 1
        Paciente.Corregimiento = 1
        Paciente.Barrio = ""
        Paciente.Calle = ""
        Paciente.Edificio = ""
        Paciente.Casa = ""
        Paciente.DirCompleta = ""
        Paciente.Diagnostico = 1
        Paciente.Estado = 1
        Paciente.Doctor = 1
        Paciente.Hospital = 1
        Paciente.ApelMadre = ""
        Paciente.NomMadre = ""
        Paciente.ApelPadre = ""
        Paciente.NomPadre = ""
        Paciente.TelCel = ""
        Paciente.TelDomi = ""
        Paciente.TelOfic = ""
    End Sub

    Public Function ObtieneNuevoId() As Integer
        Dim lFiltros As New List(Of String)
        Dim lCondiciones As New List(Of String)

        lFiltros.Add("NO TIENE")
        lCondiciones.Add("NO TIENE")

        ObtieneNuevoId = CInt(objScripts.BuscaUltimoIndice("PacientesHeader", "id_paciente", lCondiciones, lFiltros, objDataBase.Conexion)) + 1

    End Function

    Public Sub GuardaTemporal()
        Try
            GuardaHeaderTemporal()
            GuardaDireccionTemporal()
            GuardaTelefonoTemporal()
            GuardaPadresTemporal()
        Catch ex As Exception
            MsgBox("Error al guardar temporal: " + ex.Source.ToUpper + vbCrLf + ex.Message.ToString)
        End Try
        
    End Sub

    Private Sub GuardaHeaderTemporal()
        Dim lParametros As New List(Of String)
        Dim lTipos As New List(Of String)
        With Paciente
            lParametros.Add(.IdPaciente.ToString) : lTipos.Add("NUMERO")
            lParametros.Add(.Hospital.ToString) : lTipos.Add("NUMERO")
            lParametros.Add(.Doctor.ToString) : lTipos.Add("NUMERO")
            lParametros.Add(.Estado.ToString) : lTipos.Add("NUMERO")
            lParametros.Add(.Diagnostico.ToString) : lTipos.Add("NUMERO")
            lParametros.Add(.Nombre.ToString) : lTipos.Add("TEXTO")
            lParametros.Add(.SegundoNombre.ToString) : lTipos.Add("TEXTO")
            lParametros.Add(.Apellido.ToString) : lTipos.Add("TEXTO")
            lParametros.Add(.SegundoApellido.ToString) : lTipos.Add("TEXTO")
            lParametros.Add(.Sexo.ToString) : lTipos.Add("NUMERO")
            lParametros.Add(Format(.FecNac, "yyyyMMdd")) : lTipos.Add("TEXTO")
            lParametros.Add(.Edad.ToString) : lTipos.Add("NUMERO")
            lParametros.Add(.EdadMeses.ToString) : lTipos.Add("NUMERO")
            lParametros.Add("0") : lTipos.Add("NUMERO")

        End With
        objScripts.EjecutaSP("GuardaHeaderTemporal", lParametros, lTipos, objDataBase.Conexion)
    End Sub

    Private Sub GuardaDireccionTemporal()
        Dim lParametros As New List(Of String)
        Dim lTipos As New List(Of String)

        With Paciente
            lParametros.Add(.IdPaciente.ToString) : lTipos.Add("NUMERO")
            lParametros.Add(.Provincia.ToString) : lTipos.Add("NUMERO")
            lParametros.Add(.Distrito.ToString) : lTipos.Add("NUMERO")
            lParametros.Add(.Corregimiento.ToString) : lTipos.Add("NUMERO")
            lParametros.Add(.Barrio.ToString) : lTipos.Add("TEXTO")
            lParametros.Add(.Calle.ToString) : lTipos.Add("TEXTO")
            lParametros.Add(.Edificio.ToString) : lTipos.Add("TEXTO")
            lParametros.Add(.Casa.ToString) : lTipos.Add("TEXTO")
            lParametros.Add(.DirCompleta.ToString) : lTipos.Add("TEXTO")
        End With
        objScripts.EjecutaSP("GuardaDireccionTemporal", lParametros, lTipos, objDataBase.Conexion)
    End Sub

    Private Sub GuardaTelefonoTemporal()
        Dim lParametros As New List(Of String)
        Dim lTipos As New List(Of String)

        With Paciente
            lParametros.Add(.IdPaciente.ToString) : lTipos.Add("NUMERO")
            lParametros.Add(.TelDomi.ToString) : lTipos.Add("TEXTO")
            lParametros.Add(.TelOfic.ToString) : lTipos.Add("TEXTO")
            lParametros.Add(.TelCel.ToString) : lTipos.Add("TEXTO")
        End With
        objScripts.EjecutaSP("GuardaTelefonoTemporal", lParametros, lTipos, objDataBase.Conexion)

    End Sub

    Private Sub GuardaPadresTemporal()
        Dim lParametros As New List(Of String)
        Dim lTipos As New List(Of String)

        With Paciente
            lParametros.Add(.IdPaciente.ToString) : lTipos.Add("NUMERO")
            lParametros.Add(.NomPadre.ToString) : lTipos.Add("TEXTO")
            lParametros.Add(.ApelPadre.ToString) : lTipos.Add("TEXTO")
            lParametros.Add(.NomMadre.ToString) : lTipos.Add("TEXTO")
            lParametros.Add(.ApelMadre.ToString) : lTipos.Add("TEXTO")
        End With

        objScripts.EjecutaSP("GuardaPadresTemporal", lParametros, lTipos, objDataBase.Conexion)
    End Sub

    Public Sub TrasladaTemporal()
        Dim lParametros As New List(Of String)
        Dim lTipos As New List(Of String)

        With Paciente
            lParametros.Add(.IdPaciente.ToString) : lTipos.Add("NUMERO")
            lParametros.Add(iNuevoId.ToString) : lTipos.Add("NUMERO")
        End With

        objScripts.EjecutaSP("TrasladaTemporal", lParametros, lTipos, objDataBase.Conexion)
    End Sub

    Public Sub LimpiarPacientes(bTemporal As Boolean)
        Dim sSp As String
        Dim Id As Integer
        Dim lParametros As New List(Of String)
        Dim lTipos As New List(Of String)


        If bTemporal = True Then
            sSp = "LimpiaTemporal"
            Id = Paciente.IdPaciente
        Else
            sSp = "LimpiaPaciente"
            Id = iNuevoId
        End If

        lParametros.Add(Id.ToString) : lTipos.Add("NUMERO")

        objScripts.EjecutaSP(sSp, lParametros, lTipos, objDataBase.Conexion)
    End Sub

    Public Function CalculaEdadMes(fecNac As Date) As Integer
        CalculaEdadMes = CInt(DateDiff(DateInterval.Month, fecNac, Now))
    End Function

End Module
