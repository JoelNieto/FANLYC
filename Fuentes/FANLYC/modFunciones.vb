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

    Public Sub GuardaTemporal()
        GuardaHeaderTemporal()
        GuardaDireccionTemporal()
    End Sub

    Private Sub GuardaHeaderTemporal()
        Dim lParametros As New List(Of String)
        Dim lTipos As New List(Of String)

        lParametros.Add(Paciente.IdPaciente.ToString) : lTipos.Add("NUMERO")
        lParametros.Add(Paciente.Hospital.ToString) : lTipos.Add("NUMERO")
        lParametros.Add(Paciente.Doctor.ToString) : lTipos.Add("NUMERO")
        lParametros.Add(Paciente.Estado.ToString) : lTipos.Add("NUMERO")
        lParametros.Add(Paciente.Diagnostico.ToString) : lTipos.Add("NUMERO")
        lParametros.Add(Paciente.Nombre.ToString) : lTipos.Add("TEXTO")
        lParametros.Add(Paciente.SegundoNombre.ToString) : lTipos.Add("TEXTO")
        lParametros.Add(Paciente.Apellido.ToString) : lTipos.Add("TEXTO")
        lParametros.Add(Paciente.SegundoApellido.ToString) : lTipos.Add("TEXTO")
        lParametros.Add(Paciente.Sexo.ToString) : lTipos.Add("NUMERO")
        lParametros.Add(Format(Paciente.FecNac, "yyyyMMdd")) : lTipos.Add("TEXTO")
        lParametros.Add(Paciente.Edad.ToString) : lTipos.Add("NUMERO")
        lParametros.Add(Paciente.EdadMeses.ToString) : lTipos.Add("NUMERO")
        lParametros.Add("0") : lTipos.Add("NUMERO")

        objScripts.EjecutaSP("GuardaHeaderTemporal", lParametros, lTipos, objDataBase.Conexion)
    End Sub

    Private Sub GuardaDireccionTemporal()
        Dim lParametros As New List(Of String)
        Dim lTipos As New List(Of String)

        lParametros.Add(Paciente.IdPaciente.ToString) : lTipos.Add("NUMERO")
        lParametros.Add(Paciente.Provincia.ToString) : lTipos.Add("NUMERO")
        lParametros.Add(Paciente.Distrito.ToString) : lTipos.Add("NUMERO")
        lParametros.Add(Paciente.Corregimiento.ToString) : lTipos.Add("NUMERO")
        lParametros.Add(Paciente.Barrio.ToString) : lTipos.Add("TEXTO")
        lParametros.Add(Paciente.Calle.ToString) : lTipos.Add("TEXTO")
        lParametros.Add(Paciente.Edificio.ToString) : lTipos.Add("TEXTO")
        lParametros.Add(Paciente.Casa.ToString) : lTipos.Add("TEXTO")
        lParametros.Add(Paciente.DirCompleta.ToString) : lTipos.Add("TEXTO")

        objScripts.EjecutaSP("GuardaDireccionTemporal", lParametros, lTipos, objDataBase.Conexion)
    End Sub

    Public Function CalculaEdadMes(fecNac As Date) As Integer
        CalculaEdadMes = CInt(DateDiff(DateInterval.Month, fecNac, Now))
    End Function

End Module
