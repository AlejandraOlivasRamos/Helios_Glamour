Imports System.Data.SqlClient
Imports System.IO
Imports System.Web.Script.Serialization
Imports Microsoft.VisualBasic.ApplicationServices
Imports Newtonsoft.Json

Public Class Favoritos
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '        Dim favoritoId As String = "" ' Declarar la variable favoritoId

        '        If Request.HttpMethod = "POST" Then
        '            Dim userID As String = If(lbUsuario.Text = "1", "1", "")
        '            Dim jsonString As String
        '            Using inputStream As Stream = Request.InputStream
        '                Using streamReader As New StreamReader(inputStream)
        '                    jsonString = streamReader.ReadToEnd()
        '                End Using
        '            End Using

        '            ' Intentar extraer el valor de favoritoId de la cadena JSON
        '            Dim match As Match = Regex.Match(jsonString, """favoritoId""\s*:\s*""([^""]*)""")
        '            If match.Success Then
        '                favoritoId = match.Groups(1).Value
        '            Else
        '                ' Si no se encontró el campo "favoritoId" en la cadena JSON, mostrar un mensaje de error
        '                Console.WriteLine("El campo 'favoritoId' no se encontró en la cadena JSON.")
        '            End If
        '            EliminarFavorito(favoritoId, userID)
        '        End If


        '        lbLocal.Text = 1

        '        Dim dv As DataView = DirectCast(DS_Usuario.Select(DataSourceSelectArguments.Empty), DataView)
        '        If dv IsNot Nothing AndAlso dv.Count <> 0 Then
        '            Session("ID") = dv.Table.Rows(0)(0).ToString()
        '            lbUsuario.Text = Session("ID")
        '        End If

        '        Dim dv1 As DataView = DirectCast(DS_Favoritos.Select(DataSourceSelectArguments.Empty), DataView)
        '        If dv1 IsNot Nothing AndAlso dv1.Count <> 0 Then
        '            lbLocal.Text = dv1.Table.Rows(0)(4).ToString()
        '            Dim i As Integer = 0

        '            Dim citaHtml As New StringBuilder()
        '            For Each row As DataRowView In dv1

        '                ' Obtener los valores de cada fila
        '                Dim localId As String = row("Id").ToString() ' Supongamos que el ID del local se encuentra en la columna "ID"
        '                favoritoId = localId

        '                Dim local As String = row("Nombre").ToString()
        '                Dim serviciosDelLocal As String = ObtenerServiciosDelLocal(row("IDLocal").ToString())
        '                Dim foto As String = row("Foto").ToString()
        '                Dim rutaCarpeta As String = "images/services/"

        '                ' Construir el HTML de cada elemento del carrusel
        '                citaHtml.Append("<div class='swiper-slide card'>")
        '                citaHtml.Append("    <div class='card-content'>")
        '                citaHtml.Append("        <div class='image'>")
        '                citaHtml.Append("            <img src='" & rutaCarpeta & foto & "' alt=''>")
        '                citaHtml.Append("        </div>")
        '                citaHtml.Append("        <div class='name-profession'>")
        '                citaHtml.Append("            <span class='name'>" & local & "</span>")
        '                citaHtml.Append("            <span class='profession'>" & serviciosDelLocal & "</span>")
        '                citaHtml.Append("        </div>")
        '                citaHtml.Append("        <div class='rating'>")
        '                citaHtml.Append("            <i class='fas fa-star'></i>")
        '                citaHtml.Append("            <i class='fas fa-star'></i>")
        '                citaHtml.Append("            <i class='fas fa-star'></i>")
        '                citaHtml.Append("            <i class='fas fa-star'></i>")
        '                citaHtml.Append("            <i class='far fa-star'></i>")
        '                citaHtml.Append("        </div>")
        '                citaHtml.Append("        <div class='button'>")
        '                citaHtml.Append("            <button class='AboutMe' data-favorito-id='" & localId & "' onclick='eliminarFavorito(this)'><i class='fa-solid fa-heart'></i></button>")

        '                citaHtml.Append("            <a href='MisCitas.aspx?id=" & local & "' class='hirMe'>Ver detalles</a>")
        '                citaHtml.Append("        </div>")
        '                citaHtml.Append("    </div>")
        '                citaHtml.Append("</div>")

        '                i += 1

        '            Next

        '            ' Agregar la información de la cita al carrusel
        '            litCarrusel.Text = citaHtml.ToString()

        '            ' JavaScript para cambiar el ícono al pasar el cursor sobre el botón
        '            litCarrusel.Text &= "<script>var heartButtons = document.getElementsByClassName('AboutMe'); for(var i = 0; i < heartButtons.length; i++) { heartButtons[i].addEventListener('mouseover', function() { this.innerHTML = '<i class=""fa-regular fa-heart""></i>'; }); heartButtons[i].addEventListener('mouseout', function() { this.innerHTML = '<i class=""fa-solid fa-heart""></i>'; }); }</script>"
        '        End If
    End Sub
    '    <System.Web.Services.WebMethod()>
    '    Public Shared Sub EliminarFavorito(ByVal favoritoId As String, ByVal userId As String)
    '        ' Query para eliminar el favorito del usuario especificado
    '        Dim query As String = "DELETE FROM Favoritos WHERE Id = @favoritoId AND FK_Usuario = @userId"

    '        ' Establecer la conexión con la base de datos
    '        Dim connectionString As String = "Data Source=localhost;Initial Catalog=Atlas;User ID=sa;Password=DSW12345;"
    '        Using connection As New SqlConnection(connectionString)
    '            ' Crear el comando SQL
    '            Dim command As New SqlCommand(query, connection)
    '            ' Agregar parámetros
    '            command.Parameters.AddWithValue("@favoritoId", favoritoId)
    '            command.Parameters.AddWithValue("@userId", userId)

    '            Try
    '                ' Abrir la conexión y ejecutar el comando
    '                connection.Open()
    '                Dim rowsAffected As Integer = command.ExecuteNonQuery()


    '            Catch ex As Exception
    '                ' Manejar cualquier error que pueda ocurrir durante la eliminación del favorito
    '            End Try
    '        End Using
    '    End Sub

    '    Protected Sub btnEliminarFavorito_Click(ByVal sender As Object, ByVal e As EventArgs)
    '        Dim favoritoId As String = TryCast(sender, Button)?.CommandArgument
    '        Dim userId As String = lbUsuario.Text
    '        EliminarFavorito(favoritoId, userId)
    '    End Sub

    '    Private Function ObtenerServiciosDelLocal(idLocal As String) As String
    '        ' Consulta SQL para obtener los servicios del local con el ID especificado
    '        Dim query As String = "SELECT Local.Foto, Local.Nombre, Servicios.Servicio, Servicio_Local.FK_Local, Servicio_Local.FK_Servicio
    'FROM     Local INNER JOIN
    '                  Servicio_Local ON Local.Id = Servicio_Local.FK_Local INNER JOIN
    '                  Servicios ON Servicio_Local.FK_Servicio = Servicios.Id AND Servicio_Local.FK_Servicio = Servicios.Id
    'WHERE  (Servicio_Local.FK_Local = @idLocal)"

    '        ' Establecer la conexión con la base de datos (cambia esta parte según el tipo de base de datos que estés utilizando)
    '        Dim connectionString As String = "Data Source=localhost;Initial Catalog=Atlas;User ID=sa;Password=DSW12345;"

    '        Dim connection As New SqlConnection(connectionString)

    '        ' Crear el comando SQL
    '        Dim command As New SqlCommand(query, connection)
    '        command.Parameters.AddWithValue("@IdLocal", idLocal)

    '        ' Abrir la conexión
    '        connection.Open()

    '        ' Ejecutar el comando y leer los resultados
    '        Dim servicios As New List(Of String)()
    '        Dim reader As SqlDataReader = command.ExecuteReader()
    '        While reader.Read()
    '            servicios.Add(reader("Servicio").ToString())
    '        End While

    '        ' Cerrar la conexión y el lector
    '        reader.Close()
    '        connection.Close()

    '        ' Concatenar los nombres de los servicios en una cadena separados por comas
    '        Dim serviciosDelLocal As String = String.Join(", ", servicios)

    '        Return serviciosDelLocal
    '    End Function

End Class