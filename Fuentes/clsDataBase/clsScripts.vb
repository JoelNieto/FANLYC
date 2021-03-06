﻿Imports System.Data.SqlClient
Imports System.Data.Sql

Public Class clsScripts

    Public Function Inserta(Tablas As String, Campos As List(Of String), Tipo As List(Of String), Valores As List(Of String), Conexion As SqlConnection) As Boolean
        Dim sSql As String
        Dim sCampos As String
        Dim sValores As String

        If Campos.Count <> Valores.Count Or Campos.Count <> Tipo.Count Then
            Inserta = False
            Exit Function
        End If

        sSql = "INSERT INTO " + Tablas
        sCampos = "("

        For Each Campo As String In Campos
            If Campos.IndexOf(Campo) <> 0 Then
                sCampos = sCampos + ", "
            End If
            sCampos = sCampos + Campo
        Next
        sCampos = sCampos + ")"
        sValores = " VALUES ("

        For i As Integer = 0 To Valores.Count - 1
            If i <> 0 Then
                sValores = sValores + ", "
            End If

            If Tipo(i).ToString = "TEXTO" Then
                Valores(i) = "'" + Valores(i).ToString + "'"
            End If
            sValores = sValores + Valores(i)
        Next

        sValores = sValores + ")"

        sSql = sSql + sCampos + sValores
        Try

            Dim dc As New SqlClient.SqlCommand(sSql, Conexion)
            dc.ExecuteNonQuery()
        Catch ex As Exception
            MsgBox("ERROR AL INSERT REGISTRO " + vbCrLf + ex.Message.ToString)
            Inserta = False
            Exit Function
        End Try

        Inserta = True

    End Function

    Public Function Elimina(Tablas As String, Condiciones As List(Of String), Valores As List(Of String), Conexion As SqlConnection) As Boolean
        Dim sSql As String
        Dim sCondiciones As String

        If Condiciones.Count <> Valores.Count Then
            Elimina = False
            Exit Function
        End If

        sSql = "DELETE FROM " + Tablas

        sCondiciones = "WHERE "

        For Each Condicion As String In Condiciones
            If Condiciones.IndexOf(Condicion) > 0 Then
                sCondiciones = sCondiciones + " AND "
            End If

            sCondiciones = sCondiciones + Condicion
            sCondiciones = sCondiciones + " = "
            sCondiciones = sCondiciones + Valores(Condiciones.IndexOf(Condicion).ToString)
        Next

        sSql = sSql + sCondiciones

        Try
            Dim dc As New SqlClient.SqlCommand(sSql, Conexion)
            dc.ExecuteNonQuery()
        Catch ex As Exception
            MsgBox("ERROR AL ELIMINAR REGISTRO " + vbCrLf + ex.Message.ToString)
            Elimina = False
            Exit Function
        End Try

        'If bMantIndice = True And Condiciones.Count = 1 Then

        'End If
        Elimina = True

    End Function

    Public Sub EjecutaSP(SP As String, Parametros As List(Of String), Tipos As List(Of String), Conexion As SqlConnection)
        Dim sSql As String
        Dim sParametros As String
        Dim sDeclare As String = ""
        Dim DR As SqlDataReader

        sSql = "EXEC " + SP

        sParametros = " "

        For i As Integer = 0 To Parametros.Count - 1
            If i <> 0 Then
                sParametros = sParametros + ", "
            End If

            If Tipos(i).ToString = "TEXTO" Then
                Parametros(i) = "'" + Parametros(i).ToString + "'"
            End If
            sParametros = sParametros + Parametros(i)
        Next

        sSql = sSql + sParametros

        Dim dc As New SqlCommand(sSql, Conexion)

        DR = dc.ExecuteReader

        DR.Close()

    End Sub

    Public Function BuscaUltimoIndice(Tablas As String, Indice As String, Condiciones As List(Of String), Filtros As List(Of String), Conexion As SqlConnection) As String
        Dim sSql As String
        Dim sCondiciones As String
        Dim bCondiciones As Boolean
        BuscaUltimoIndice = ""
        If Condiciones.Count <> Filtros.Count Then
            BuscaUltimoIndice = "ERROR"
            Exit Function
        End If

        sSql = "SELECT ISNULL(MAX(" + Indice.ToString + "), 0) "
        sSql = sSql + " FROM " + Tablas.ToString

        If UCase(Condiciones(0).ToString) = "NO TIENE" Then
            bCondiciones = False
            sCondiciones = vbNullString
        Else
            bCondiciones = True
            sCondiciones = " WHERE"
        End If

        If bCondiciones = True Then
            For i As Integer = 0 To Filtros.Count - 1
                If i <> 0 Then
                    sCondiciones = sCondiciones + " AND "
                End If
                sCondiciones = sCondiciones + " " + Condiciones(i).ToString
                sCondiciones = sCondiciones + " = " + Filtros(i).ToString
            Next
            sSql = sSql + sCondiciones
        End If

        Dim da As New SqlClient.SqlCommand(sSql, Conexion)
        Dim dQuery As SqlDataReader = da.ExecuteReader()

        While dQuery.Read
            BuscaUltimoIndice = dQuery(0).ToString
        End While
        dQuery.Close()

    End Function

End Class
