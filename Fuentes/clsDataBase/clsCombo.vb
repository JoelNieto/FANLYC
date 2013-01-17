
Public Class clsCombo

    Public Sub Carga(ByVal Cbo As Windows.Forms.ComboBox, ByVal Tablas As List(Of String), ByVal Display As String, ByVal Valor As String, ByVal Filtros As List(Of String), ByVal Condiciones As List(Of String), Conexion As SqlClient.SqlConnection)
        Dim sTablas As String
        Dim sCampos As String
        Dim sCondiciones As String
        Dim sSql As String

        Dim bCondicion As Boolean

        'Campos a seleccionar para el combo
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
End Class
