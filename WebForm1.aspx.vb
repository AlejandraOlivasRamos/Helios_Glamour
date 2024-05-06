Public Class WebForm1
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim dv As DataView = DirectCast(DS_Usuario.Select(DataSourceSelectArguments.Empty), DataView)
        If dv IsNot Nothing AndAlso dv.Count <> 0 Then
            Session("ID") = dv.Table.Rows(0)(0).ToString()
            lbUsuario.Text = 1

            Session("Rol") = dv.Table.Rows(0)(1).ToString()
            lbRol.Text = 3
            If Integer.TryParse(lbRol.Text, Nothing) AndAlso CInt(lbRol.Text) = 1 Then
                Dim dv1 As DataView = DirectCast(DS_Citas.Select(DataSourceSelectArguments.Empty), DataView)
                If dv1 IsNot Nothing AndAlso dv1.Count <> 0 Then
                    Dim offsetClass As String = "offset-lg-2"

                    For Each row As DataRowView In dv1
                        ' Obtener los valores de cada fila (se omite para brevedad)
                        Dim local As String = row("NombreLocal").ToString()
                        Dim direccion As String = row("Direccion").ToString()
                        Dim estatus As String = row("Estatus").ToString()
                        Dim empleado As String = row("Nombre").ToString() + " " + row("Paterno").ToString() + " " + row("Materno").ToString()
                        Dim observacion As String = row("Comentario").ToString()
                        Dim calificacion As String = row("Calificacion").ToString()
                        Dim servicio As String = row("Servicio").ToString()
                        Dim precio As String = row("Precio").ToString()
                        Dim estatusCita As String = row("FK_Estatus").ToString()

                        Dim fechaHora As DateTime = Convert.ToDateTime(row("FechaHora"))
                        Dim fecha As DateTime = fechaHora.Date
                        Dim hora As TimeSpan = fechaHora.TimeOfDay

                        ' Crear controles HTML para mostrar la información de la cita
                        Dim citaHtml As New StringBuilder()

                        ' Agregar la estructura HTML deseada
                        citaHtml.Append("<div class='row'>") ' Cierre de col-lg-6
                        citaHtml.Append("<div class='col-lg-6 " & offsetClass & " mt-10'>")
                        citaHtml.Append("<div class='d-sch-table'>")
                        citaHtml.Append("<h2 class='text-center wow fadeIn'>" & local & "</h2>")
                        citaHtml.Append("<div class='de-separator'></div>")
                        citaHtml.Append("<div class='sc-wrap'>")
                        citaHtml.Append("<div class='def-list-dots'>")

                        ' Agregar la información de la cita
                        citaHtml.Append("<dl>")
                        citaHtml.Append("<dt><span style='color:#4ba581;font-weight: 600;'>Precio</span></dt>")
                        citaHtml.Append("<dd style='color: black;'>MXN " & precio & "</dd>")
                        citaHtml.Append("</dl>")


                        citaHtml.Append("<dl>")
                        citaHtml.Append("<dt><span style='color:#4ba581;font-weight: 600;'>Empleado</span></dt>")
                        citaHtml.Append("<dd style='color: black;'>" & empleado & "</dd>")
                        citaHtml.Append("</dl>")

                        citaHtml.Append("<dl>")
                        citaHtml.Append("<dt><span style='color:#4ba581;font-weight: 600;'>Fecha</span></dt>")
                        citaHtml.Append("<dd style='color: black;'>" & fecha.ToString("yyyy-MM-dd") & "</dd>")
                        citaHtml.Append("</dl>")

                        citaHtml.Append("<dl>")
                        citaHtml.Append("<dt><span style='color:#4ba581;font-weight: 600;'>Hora</span></dt>")
                        citaHtml.Append("<dd style='color: black;'>" & hora.ToString("hh\:mm") & "</dd>")
                        citaHtml.Append("</dl>")

                        If Not String.IsNullOrEmpty(calificacion) AndAlso estatusCita <> "1" Then
                            Dim calificacionInt As Integer = Convert.ToInt32(calificacion)
                            citaHtml.Append("<div class='ratings text-center'>")
                            For i As Integer = 1 To 5
                                If i <= calificacionInt Then
                                    citaHtml.Append("<i class='fas fa-star'></i>")
                                Else
                                    citaHtml.Append("<i class='far fa-star'></i>")
                                End If
                            Next
                            citaHtml.Append("</div>")
                        End If

                        citaHtml.Append("<h4 class='text-center wow fadeIn'>" & estatus & "</h4>")
                        citaHtml.Append("</div>") ' Cierre de def-list-dots
                        citaHtml.Append("</div>") ' Cierre de sc-wrap
                        citaHtml.Append("<div class='d-deco'></div>")
                        citaHtml.Append("</div>") ' Cierre de d-sch-table
                        citaHtml.Append("</div>") ' Cierre de col-lg-6
                        citaHtml.Append("</div>")
                        citaHtml.Append("<div class='spacer-double'></div>")


                        ' Cambiar la clase de offset para la siguiente cita
                        offsetClass = If(offsetClass = "offset-lg-2", "offset-lg-4", "offset-lg-2")

                        ' Agregar la información de la cita al div de citas
                        divCitas.InnerHtml &= citaHtml.ToString()
                    Next

                End If

            ElseIf Integer.TryParse(lbRol.Text, Nothing) AndAlso CInt(lbRol.Text) = 3 Then
                Dim dv1 As DataView = DirectCast(DS_CitasEmpleado.Select(DataSourceSelectArguments.Empty), DataView)
                If dv1 IsNot Nothing AndAlso dv1.Count <> 0 Then
                    Dim offsetClass As String = "offset-lg-2"

                    For Each row As DataRowView In dv1
                        ' Obtener los valores de cada fila (se omite para brevedad)
                        Dim local As String = row("NombreLocal").ToString()
                        Dim direccion As String = row("Direccion").ToString()
                        Dim estatus As String = row("Estatus").ToString()
                        Dim cliente As String = row("NombreUsuario").ToString() + " " + row("ApellidoPaterno").ToString() + " " + row("ApellidoMaterno").ToString()
                        Dim observacion As String = row("Comentario").ToString()
                        Dim calificacion As String = row("Calificacion").ToString()
                        Dim servicio As String = row("Servicio").ToString()
                        Dim precio As String = row("Precio").ToString()
                        Dim estatusCita As String = row("FK_Estatus").ToString()

                        Dim fechaHora As DateTime = Convert.ToDateTime(row("FechaHora"))
                        Dim fecha As DateTime = fechaHora.Date
                        Dim hora As TimeSpan = fechaHora.TimeOfDay

                        ' Crear controles HTML para mostrar la información de la cita
                        Dim citaHtml As New StringBuilder()

                        ' Agregar la estructura HTML deseada
                        citaHtml.Append("<div class='row'>") ' Cierre de col-lg-6
                        citaHtml.Append("<div class='col-lg-6 " & offsetClass & " mt-10'>")
                        citaHtml.Append("<div class='d-sch-table'>")
                        citaHtml.Append("<h2 class='text-center wow fadeIn'>" & cliente & "</h2>")
                        citaHtml.Append("<div class='de-separator'></div>")
                        citaHtml.Append("<div class='sc-wrap'>")
                        citaHtml.Append("<div class='def-list-dots'>")

                        ' Agregar la información de la cita
                        citaHtml.Append("<dl>")
                        citaHtml.Append("<dt><span style='color:#4ba581;font-weight: 600;'>Precio</span></dt>")
                        citaHtml.Append("<dd style='color: black;'>MXN " & precio & "</dd>")
                        citaHtml.Append("</dl>")

                        citaHtml.Append("<dl>")
                        citaHtml.Append("<dt><span style='color:#4ba581;font-weight: 600;'>Local</span></dt>")
                        citaHtml.Append("<dd style='color: black;'>" & local & "</dd>")
                        citaHtml.Append("</dl>")

                        citaHtml.Append("<dl>")
                        citaHtml.Append("<dt><span style='color:#4ba581;font-weight: 600;'>Fecha</span></dt>")
                        citaHtml.Append("<dd style='color: black;'>" & fecha.ToString("yyyy-MM-dd") & "</dd>")
                        citaHtml.Append("</dl>")

                        citaHtml.Append("<dl>")
                        citaHtml.Append("<dt><span style='color:#4ba581;font-weight: 600;'>Hora</span></dt>")
                        citaHtml.Append("<dd style='color: black;'>" & hora.ToString("hh\:mm") & "</dd>")
                        citaHtml.Append("</dl>")

                        If Not String.IsNullOrEmpty(calificacion) AndAlso estatusCita <> "1" Then
                            Dim calificacionInt As Integer = Convert.ToInt32(calificacion)
                            citaHtml.Append("<div class='ratings text-center'>")
                            For i As Integer = 1 To 5
                                If i <= calificacionInt Then
                                    citaHtml.Append("<i class='fas fa-star'></i>")
                                Else
                                    citaHtml.Append("<i class='far fa-star'></i>")
                                End If
                            Next
                            citaHtml.Append("</div>")
                        End If

                        citaHtml.Append("<h4 class='text-center wow fadeIn'>" & estatus & "</h4>")
                        citaHtml.Append("</div>") ' Cierre de def-list-dots
                        citaHtml.Append("</div>") ' Cierre de sc-wrap
                        citaHtml.Append("<div class='d-deco'></div>")
                        citaHtml.Append("</div>") ' Cierre de d-sch-table
                        citaHtml.Append("</div>") ' Cierre de col-lg-6
                        citaHtml.Append("</div>")
                        citaHtml.Append("<div class='spacer-double'></div>")


                        ' Cambiar la clase de offset para la siguiente cita
                        offsetClass = If(offsetClass = "offset-lg-2", "offset-lg-4", "offset-lg-2")

                        ' Agregar la información de la cita al div de citas
                        divCitas.InnerHtml &= citaHtml.ToString()
                    Next

                End If
            Else
                If Integer.TryParse(lbRol.Text, Nothing) AndAlso CInt(lbRol.Text) = 2 Then
                    Dim dv1 As DataView = DirectCast(DS_CitasLocal.Select(DataSourceSelectArguments.Empty), DataView)
                    If dv1 IsNot Nothing AndAlso dv1.Count <> 0 Then
                        Dim offsetClass As String = "offset-lg-2"

                        For Each row As DataRowView In dv1
                            ' Obtener los valores de cada fila (se omite para brevedad)
                            Dim direccion As String = row("Direccion").ToString()
                            Dim estatus As String = row("Estatus").ToString()
                            Dim cliente As String = row("NombreUsuario").ToString() + " " + row("ApellidoPaterno").ToString() + " " + row("ApellidoMaterno").ToString()
                            Dim empleado As String = row("Nombre").ToString() + " " + row("Paterno").ToString() + " " + row("Materno").ToString()
                            Dim observacion As String = row("Comentario").ToString()
                            Dim calificacion As String = row("Calificacion").ToString()
                            Dim servicio As String = row("Servicio").ToString()
                            Dim precio As String = row("Precio").ToString()
                            Dim estatusCita As String = row("FK_Estatus").ToString()

                            Dim fechaHora As DateTime = Convert.ToDateTime(row("FechaHora"))
                            Dim fecha As DateTime = fechaHora.Date
                            Dim hora As TimeSpan = fechaHora.TimeOfDay

                            ' Crear controles HTML para mostrar la información de la cita
                            Dim citaHtml As New StringBuilder()

                            ' Agregar la estructura HTML deseada
                            citaHtml.Append("<div class='row'>") ' Cierre de col-lg-6
                            citaHtml.Append("<div class='col-lg-6 " & offsetClass & " mt-10'>")
                            citaHtml.Append("<div class='d-sch-table'>")
                            citaHtml.Append("<h2 class='text-center wow fadeIn'>" & cliente & "</h2>")
                            citaHtml.Append("<div class='de-separator'></div>")
                            citaHtml.Append("<div class='sc-wrap'>")
                            citaHtml.Append("<div class='def-list-dots'>")

                            ' Agregar la información de la cita
                            citaHtml.Append("<dl>")
                            citaHtml.Append("<dt><span style='color:#4ba581;font-weight: 600;'>Precio</span></dt>")
                            citaHtml.Append("<dd style='color: black;'>MXN " & precio & "</dd>")
                            citaHtml.Append("</dl>")


                            citaHtml.Append("<dl>")
                            citaHtml.Append("<dt><span style='color:#4ba581;font-weight: 600;'>Empleado</span></dt>")
                            citaHtml.Append("<dd style='color: black;'>" & empleado & "</dd>")
                            citaHtml.Append("</dl>")

                            citaHtml.Append("<dl>")
                            citaHtml.Append("<dt><span style='color:#4ba581;font-weight: 600;'>Fecha</span></dt>")
                            citaHtml.Append("<dd style='color: black;'>" & fecha.ToString("yyyy-MM-dd") & "</dd>")
                            citaHtml.Append("</dl>")

                            citaHtml.Append("<dl>")
                            citaHtml.Append("<dt><span style='color:#4ba581;font-weight: 600;'>Hora</span></dt>")
                            citaHtml.Append("<dd style='color: black;'>" & hora.ToString("hh\:mm") & "</dd>")
                            citaHtml.Append("</dl>")

                            If Not String.IsNullOrEmpty(calificacion) AndAlso estatusCita <> "1" Then
                                Dim calificacionInt As Integer = Convert.ToInt32(calificacion)
                                citaHtml.Append("<div class='ratings text-center'>")
                                For i As Integer = 1 To 5
                                    If i <= calificacionInt Then
                                        citaHtml.Append("<i class='fas fa-star'></i>")
                                    Else
                                        citaHtml.Append("<i class='far fa-star'></i>")
                                    End If
                                Next
                                citaHtml.Append("</div>")
                            End If

                            citaHtml.Append("<h4 class='text-center wow fadeIn'>" & estatus & "</h4>")
                            citaHtml.Append("</div>") ' Cierre de def-list-dots
                            citaHtml.Append("</div>") ' Cierre de sc-wrap
                            citaHtml.Append("<div class='d-deco'></div>")
                            citaHtml.Append("</div>") ' Cierre de d-sch-table
                            citaHtml.Append("</div>") ' Cierre de col-lg-6
                            citaHtml.Append("</div>")
                            citaHtml.Append("<div class='spacer-double'></div>")


                            ' Cambiar la clase de offset para la siguiente cita
                            offsetClass = If(offsetClass = "offset-lg-2", "offset-lg-4", "offset-lg-2")

                            ' Agregar la información de la cita al div de citas
                            divCitas.InnerHtml &= citaHtml.ToString()
                        Next

                    End If
                End If

            End If

        End If

    End Sub

End Class