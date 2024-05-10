Imports System.Data.SqlClient

Public Class AgendarCitas
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '    Dim dv As DataView = DirectCast(DS_Usuario.Select(DataSourceSelectArguments.Empty), DataView)
        '    If dv IsNot Nothing AndAlso dv.Count <> 0 Then
        '        Session("ID") = dv.Table.Rows(0)(0).ToString()
        '        lbUsuario.Text = 1
        '        lbLocal.Text = 1

        '        Session("Rol") = dv.Table.Rows(0)(1).ToString()
        '        lbRol.Text = 1

        '        If Integer.TryParse(lbRol.Text, Nothing) AndAlso CInt(lbRol.Text) = 1 Then

        '            Dim dv1 As DataView = DirectCast(DS_Reserva.Select(DataSourceSelectArguments.Empty), DataView)
        '            If dv1 IsNot Nothing AndAlso dv1.Count <> 0 Then

        '                ' Obtener los valores de cada fila (se omite para brevedad)
        '                Dim local As String = dv1.Table.Rows(0)(6).ToString()
        '                Dim direccion As String = dv1.Table.Rows(0)(1).ToString()
        '                Dim telefono As String = dv1.Table.Rows(0)(2).ToString()
        '                Dim Foto As String = dv1.Table.Rows(0)(4).ToString()
        '                Dim rutaCarpeta As String = "images/background/"

        '                ' Crear controles HTML para mostrar la información de la cita
        '                Dim citaHtml As New StringBuilder()

        '                ' Agregar la estructura HTML deseada
        '                citaHtml.Append("<img src='" & rutaCarpeta & Foto & " 'class='jarallax-img' alt=''>")

        '                citaHtml.Append("<div class='container'>")
        '                citaHtml.Append("<div class='row'>") ' Cierre de col-lg-6
        '                citaHtml.Append("<div class='col-lg-6 col-lg-6 offset-lg-3 text-center'>")
        '                citaHtml.Append("<h1>" & local & "</h2>")
        '                citaHtml.Append("<div class='de-separator'></div>")
        '                citaHtml.Append("        </div>")
        '                citaHtml.Append("    </div>")
        '                citaHtml.Append("</div>")

        '                divLocal.InnerHtml &= citaHtml.ToString()

        '                '****************************************************************'

        '                Dim ServicioHtml As New StringBuilder()
        '                For Each row As DataRowView In dv1

        '                    Dim serviciosDelLocal As String = ObtenerServiciosDelLocal(row("IDLocal").ToString())


        '                    ' Construir el HTML de cada elemento del carrusel
        '                    ServicioHtml.Append("<div class='swiper-slide card'>")
        '                    ServicioHtml.Append("    <div class='card-content'>")
        '                    ServicioHtml.Append("        <div class='image'>")
        '                    ServicioHtml.Append("            <img src='" & rutaCarpeta & Foto & "' alt=''>")
        '                    ServicioHtml.Append("        </div>")
        '                    ServicioHtml.Append("        <div class='name-profession'>")
        '                    ServicioHtml.Append("            <span class='name'>" & local & "</span>")
        '                    ServicioHtml.Append("            <span class='profession'>" & serviciosDelLocal & "</span>")
        '                    ServicioHtml.Append("        </div>")
        '                    ServicioHtml.Append("        <div class='rating'>")




        '                Next

        '                ' Agregar la información de la cita al carrusel
        '                litServicio.Text = citaHtml.ToString()




        '            End If
        '        ElseIf Integer.TryParse(lbRol.Text, Nothing) AndAlso CInt(lbRol.Text) = 1 Then

        '        Else
        '            If Integer.TryParse(lbRol.Text, Nothing) AndAlso CInt(lbRol.Text) = 2 Then

        '            End If
        '        End If
        '    End If
    End Sub
    'Private Function ObtenerServiciosDelLocal(idLocal As String) As String
    '    ' Consulta SQL para obtener los servicios del local con el ID especificado
    '    Dim query As String = "SELECT Local.Nombre, Servicios.Servicio, Servicio_Local.FK_Local, Servicio_Local.FK_Servicio
    'FROM     Local INNER JOIN
    '                  Servicio_Local ON Local.Id = Servicio_Local.FK_Local INNER JOIN
    '                  Servicios ON Servicio_Local.FK_Servicio = Servicios.Id AND Servicio_Local.FK_Servicio = Servicios.Id
    'WHERE  (Servicio_Local.FK_Local = @local)"

    '    ' Establecer la conexión con la base de datos (cambia esta parte según el tipo de base de datos que estés utilizando)
    '    Dim connectionString As String = "Data Source=localhost;Initial Catalog=Atlas;User ID=sa;Password=DSW12345;"

    '    Dim connection As New SqlConnection(connectionString)

    '    ' Crear el comando SQL
    '    Dim command As New SqlCommand(query, connection)
    '    command.Parameters.AddWithValue("@IdLocal", idLocal)

    '    ' Abrir la conexión
    '    connection.Open()

    '    ' Ejecutar el comando y leer los resultados
    '    Dim servicios As New List(Of String)()
    '    Dim reader As SqlDataReader = command.ExecuteReader()
    '    While reader.Read()
    '        servicios.Add(reader("Servicio").ToString())
    '    End While

    '    ' Cerrar la conexión y el lector
    '    reader.Close()
    '    connection.Close()

    '    ' Concatenar los nombres de los servicios en una cadena separados por comas
    '    Dim serviciosDelLocal As String = String.Join(", ", servicios)

    '    Return serviciosDelLocal
    'End Function

End Class