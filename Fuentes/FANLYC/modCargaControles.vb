Imports System.Data.Sql
Imports System.Data.SqlClient
Imports System.Collections.Generic

Module modCargaControles

    Public Sub CargaCombo(ByVal Cbo As Windows.Forms.ComboBox, ByVal Tablas As List(Of String), ByVal Display As String, ByVal Valor As String, ByVal Filtros As List(Of String), ByVal Condiciones As List(Of String))
        Dim sTablas As String
        Dim sCampos As String
        Dim sCondiciones As String
        Dim sSql As String

        Dim bCondicion As Boolean

        'Campos ha seleccionar para el combo
        sCampos = "SELECT " + Display + " AS DISPLAY "
        sCampos = sCampos + ", " + Valor + " AS VALOR "


        'Filtros
        If UCase(Filtros(0).ToString) = "NO TIENE" Then
            bCondicion = False
            sCondiciones = vbNullString
        Else
            bCondicion = True
            sCondiciones = "WHERE "
            For i As Integer = 0 To Condiciones.Count - 1
                If i <> 0 Then
                    sCondiciones = sCondiciones + " AND "
                End If
                sCondiciones = sCondiciones + " " + Filtros(i).ToString
                sCondiciones = sCondiciones + " = " + Condiciones(i).ToString
            Next
        End If

        'Tablas a usar
        sTablas = "FROM "
        For Each Tabla As String In Tablas
            If Tablas.IndexOf(Tabla) <> 0 Then
                sTablas = sTablas + ", "
            End If
            sTablas = sTablas + Tabla
        Next

        sSql = sCampos + " " + sTablas + " " + sCondiciones

       
        Dim da As New SqlClient.SqlDataAdapter(sSql, Conexion)
        Dim ds As New DataSet
        Try

            da.Fill(ds)
        Catch ex As Exception
            MsgBox("ERROR AL CARGAR COMBO " + Cbo.Name + ex.ToString)
            Exit Sub
        End Try

        Cbo.DataSource = ds.Tables(0)
        Cbo.DisplayMember = "DISPLAY"
        Cbo.ValueMember = "VALOR"
    End Sub

    Public Sub SelText(ByVal Txtbox As Windows.Forms.TextBox)
        Txtbox.SelectionStart = 0
        Txtbox.SelectionLength = Txtbox.TextLength
    End Sub

    Public Sub CargaListView(Listv As Windows.Forms.ListView, Columnas As List(Of String), Tablas As List(Of String), Filtro As List(Of String), Condiciones As List(Of String))
        Dim sTablas As String
        Dim sColumnas As String
        Dim sCondiciones As String
        Dim sSql As String

        Dim bCondiciones As Boolean

        If UCase(Filtro(0).ToString) = "NO TIENE" Then
            bCondiciones = False
            sCondiciones = vbNullString
        Else
            bCondiciones = True
            sCondiciones = " WHERE "
        End If

        If bCondiciones = True Then
            For i As Integer = 0 To Filtro.Count - 1
                If i <> 0 Then
                    sCondiciones = sCondiciones + " AND "
                End If
                sCondiciones = sCondiciones + " " + Filtro(i).ToString
                sCondiciones = sCondiciones + " = " + Condiciones(i).ToString
            Next
        End If

        sTablas = "FROM "

        For Each Tabla As String In Tablas
            If Tablas.IndexOf(Tabla) <> 0 Then
                sTablas = sTablas + ", "
            End If
            sTablas = sTablas + Tabla
        Next
        sColumnas = "SELECT "
        For Each Columna As String In Columnas
            If Columnas.IndexOf(Columna) <> 0 Then
                sColumnas = sColumnas + ", "
            End If
            sColumnas = sColumnas + Columna
        Next

        sSql = sColumnas + " " + sTablas + " " + sCondiciones

        Dim da As New SqlClient.SqlDataAdapter(sSql, Conexion)
        Dim ds As New DataSet

        Try   
            da.Fill(ds)

            For i As Integer = 0 To ds.Tables(0).Rows.Count - 1
                Dim Fila As DataRow = ds.Tables(0).Rows(i)
                For j As Integer = 0 To Columnas.Count - 1
                    If j = 0 Then
                        Listv.Items.Add(CInt(Fila.Item(j).ToString))
                    Else
                        Listv.Items(i).SubItems.Add(Fila.Item(j).ToString)
                    End If
                Next
            Next
        Catch ex As Exception
            MsgBox("ERROR AL CARGAR LISTVIEW " + ex.Message.ToString.ToUpper)
        End Try
    End Sub

End Module
