Imports System.Data.SqlClient
Imports System.Data.Sql
Public Class clsDataBase
    Private cnConexion As SqlConnection
    Private sCadenaConexion As String
    Private sDataBase As String

    Public Property Conexion As SqlConnection
        Get
            Return cnConexion
        End Get
        Set(value As SqlConnection)
            cnConexion = value
        End Set
    End Property

    Public Property CadenaConexion As String
        Get
            Return sCadenaConexion
        End Get
        Set(value As String)
            sCadenaConexion = value
        End Set
    End Property

    Public Function ConectarBase(sBase As String) As Boolean

        Dim sqlConec As New SqlConnection

        Try
            CadenaConexion = System.Configuration.ConfigurationManager.ConnectionStrings(sBase).ConnectionString
        Catch ex As Exception
            MsgBox("Error obteniendo Cadena de Conexión" + vbCrLf + ex.Message)
            ConectarBase = False
            Exit Function
        End Try

        Try
            sqlConec.ConnectionString = CadenaConexion
            sqlConec.Open()
        Catch ex As Exception
            MsgBox("Error conectando Base de Datos" + vbCrLf + ex.Message)
            ConectarBase = False
            Exit Function
        End Try

        If sqlConec.State = ConnectionState.Open Then
            Conexion = sqlConec
            ConectarBase = True
            DataBaseName = Conexion.Database
        Else
            ConectarBase = False
        End If

    End Function

    Public Property DataBaseName
        Get
            Return sDataBase
        End Get
        Set(value)
            sDataBase = value
        End Set
    End Property

End Class
