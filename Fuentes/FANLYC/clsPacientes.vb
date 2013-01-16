Public Class clsPacientes

    Private iIdPaciente As Integer
    Private sNombre As String
    Private sSegundoNombre As String
    Private sApellido As String
    Private sSegundoApellido As String
    Private iSexo As Integer
    Private dFecNac As Date
    Private iEdad As Integer
    Private iProvincia As Integer
    Private iDistrito As Integer
    Private iCorregimiento As Integer
    Private sBarrio As String
    Private sCalle As String
    Private sEdificio As String
    Private sCasa As String
    Private sDirCompleta As String
    Private iHospital As Integer
    Private iEstado As Integer
    Private iDiagnostico As Integer
    Private iDoctor As Integer
    Private oTelefonos As Object
    Private

    Public Property IdPaciente() As Integer
        Get
            Return iIdPaciente
        End Get
        Set(value As Integer)
            iIdPaciente = value
        End Set
    End Property

    Public Property Nombre As String
        Get
            Return sNombre
        End Get
        Set(value As String)
            sNombre = value
        End Set
    End Property

    Public Property SegundoNombre As String
        Get
            Return sSegundoNombre
        End Get
        Set(value As String)
            sSegundoNombre = value
        End Set
    End Property

    Public Property Apellido As String
        Get
            Return sApellido
        End Get
        Set(value As String)
            sApellido = value
        End Set
    End Property

    Public Property SegundoApellido As String
        Get
            Return sSegundoApellido
        End Get
        Set(value As String)
            sSegundoApellido = value
        End Set
    End Property

    Public Property Sexo As Integer
        Get
            Return iSexo
        End Get
        Set(value As Integer)
            iSexo = value
        End Set
    End Property

    Public Property FecNac As Date
        Get
            Return dFecNac
        End Get
        Set(value As Date)
            dFecNac = value
        End Set
    End Property

    Public Property Edad As Integer
        Get
            Return iEdad
        End Get
        Set(value As Integer)
            iEdad = value
        End Set
    End Property

    Public Property Provincia As Integer
        Get
            Return iProvincia
        End Get
        Set(value As Integer)
            iProvincia = value
        End Set
    End Property

    Public Property Distrito As Integer
        Get
            Return iDistrito
        End Get
        Set(value As Integer)
            iDistrito = value
        End Set
    End Property

    Public Property Corregimiento As Integer
        Get
            Return iCorregimiento
        End Get
        Set(value As Integer)
            iCorregimiento = value
        End Set
    End Property

    Public Property Barrio As String
        Get
            Return sBarrio
        End Get
        Set(value As String)
            sBarrio = value
        End Set
    End Property

    Public Property Calle As String
        Get
            Return sCalle
        End Get
        Set(value As String)
            sCalle = value
        End Set
    End Property

    Public Property Edificio As String
        Get
            Return sEdificio
        End Get
        Set(value As String)
            sEdificio = value
        End Set
    End Property

    Public Property Casa As String
        Get
            Return sCasa
        End Get
        Set(value As String)
            sCasa = value
        End Set
    End Property

    Public Property DirCompleta As String
        Get
            Return sDirCompleta
        End Get
        Set(value As String)
            sDirCompleta = value
        End Set
    End Property

    Public Property Hospital As String
        Get
            Return iHospital
        End Get
        Set(value As String)
            iHospital = value
        End Set
    End Property

    Public Property Estado As String
        Get
            Return iEstado
        End Get
        Set(value As String)
            iEstado = value
        End Set
    End Property

    Public Property Diagnostico As String
        Get
            Return iDiagnostico
        End Get
        Set(value As String)
            iDiagnostico = value
        End Set
    End Property

    Public Property Doctor As String
        Get
            Return iDoctor
        End Get
        Set(value As String)
            iDoctor = value
        End Set
    End Property

End Class
