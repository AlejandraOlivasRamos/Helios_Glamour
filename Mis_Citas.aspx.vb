Imports System.Globalization

Public Class Mis_Citas
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Page.MaintainScrollPositionOnPostBack = True

        Dim dv As DataView = DirectCast(DS_Usuario.Select(DataSourceSelectArguments.Empty), DataView)
        If dv IsNot Nothing AndAlso dv.Count <> 0 Then
            Session("ID") = dv.Table.Rows(0)(0).ToString()
            lbUsuario.Text = 1

            Session("Rol") = dv.Table.Rows(0)(1).ToString()
            lbRol.Text = 1
            If Integer.TryParse(lbRol.Text, Nothing) AndAlso CInt(lbRol.Text) = 1 Then
                PanelCitasEmpleado.Visible = False
                Dim dv1 As DataView = DirectCast(DS_Citas.Select(DataSourceSelectArguments.Empty), DataView)
                If dv1 IsNot Nothing AndAlso dv1.Count <> 0 Then
                    For Each row As DataRowView In dv1
                        ' Obtener los valores de cada fila
                        Dim local As String = row("NombreLocal").ToString()
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
                        citaHtml.Append("<div class='cita'>")
                        citaHtml.Append("<div>Local: " & local & "</div>")
                        citaHtml.Append("<div>Dirección: " & direccion & "</div>")
                        citaHtml.Append("<div>Estatus: " & estatus & "</div>")
                        citaHtml.Append("<div>Cliente: " & cliente & "</div>")
                        citaHtml.Append("<div>Empleado: " & empleado & "</div>")
                        citaHtml.Append("<div>Observación: " & observacion & "</div>")
                        citaHtml.Append("<div>Servicio: " & servicio & "</div>")
                        citaHtml.Append("<div>Precio: " & precio & "</div>")
                        citaHtml.Append("<div>Fecha: " & fecha.ToString("yyyy-MM-dd") & "</div>")
                        citaHtml.Append("<div>Hora: " & hora.ToString("hh\:mm") & "</div>")

                        ' Mostrar estrellas de calificación si la cita tiene una calificación
                        If Not String.IsNullOrEmpty(calificacion) AndAlso estatusCita <> "1" Then
                            Dim calificacionInt As Integer = Convert.ToInt32(calificacion)
                            citaHtml.Append("<div class='rating'>")
                            For i As Integer = 1 To 5
                                If i <= calificacionInt Then
                                    ' Aquí cambiamos el color de las estrellas directamente en el HTML
                                    citaHtml.Append("<span class='star' style='color:gold'>&#9733;</span>")
                                Else
                                    citaHtml.Append("<span class='star' style='color:#ccc'>&#9733;</span>")
                                End If
                            Next
                            citaHtml.Append("</div>")
                        End If

                        citaHtml.Append("</div>")

                        ' Agregar la información de la cita al div de citas
                        divCitas.InnerHtml &= citaHtml.ToString()
                    Next
                End If

            ElseIf Integer.TryParse(lbRol.Text, Nothing) AndAlso CInt(lbRol.Text) = 3 Then

                PanelCitasEmpleado.Visible = True
                Dim dv4 As DataView = DirectCast(DS_CitasEmpleado.Select(DataSourceSelectArguments.Empty), DataView)
                If dv4 IsNot Nothing AndAlso dv4.Count <> 0 Then
                    For Each row As DataRowView In dv4
                        ' Obtener los valores de cada fila
                        Dim local As String = row("NombreLocal").ToString()
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
                        citaHtml.Append("<div class='cita'>")
                        citaHtml.Append("<div>Local: " & local & "</div>")
                        citaHtml.Append("<div>Dirección: " & direccion & "</div>")
                        citaHtml.Append("<div>Estatus: " & estatus & "</div>")
                        citaHtml.Append("<div>Cliente: " & cliente & "</div>")
                        citaHtml.Append("<div>Empleado: " & empleado & "</div>")
                        citaHtml.Append("<div>Observación: " & observacion & "</div>")
                        citaHtml.Append("<div>Servicio: " & servicio & "</div>")
                        citaHtml.Append("<div>Precio: " & precio & "</div>")
                        citaHtml.Append("<div>Fecha: " & fecha.ToString("yyyy-MM-dd") & "</div>")
                        citaHtml.Append("<div>Hora: " & hora.ToString("hh\:mm") & "</div>")

                        ' Mostrar estrellas de calificación si la cita tiene una calificación
                        If Not String.IsNullOrEmpty(calificacion) AndAlso estatusCita <> "1" Then
                            Dim calificacionInt As Integer = Convert.ToInt32(calificacion)
                            citaHtml.Append("<div class='rating'>")
                            For i As Integer = 1 To 5
                                If i <= calificacionInt Then
                                    ' Aquí cambiamos el color de las estrellas directamente en el HTML
                                    citaHtml.Append("<span class='star' style='color:gold'>&#9733;</span>")
                                Else
                                    citaHtml.Append("<span class='star' style='color:#ccc'>&#9733;</span>")
                                End If
                            Next
                            citaHtml.Append("</div>")
                        End If

                        citaHtml.Append("</div>")

                        ' Agregar la información de la cita al div de citas
                        divCitasEmpleado.InnerHtml &= citaHtml.ToString()
                    Next
                End If

            Else
                If lbRol.Text = 2 Then
                    PanelCitasLocal.Visible = True
                    Dim dv5 As DataView = DirectCast(DS_CitasLocal.Select(DataSourceSelectArguments.Empty), DataView)
                    If dv5 IsNot Nothing AndAlso dv5.Count <> 0 Then
                        For Each row As DataRowView In dv5
                            ' Obtener los valores de cada fila
                            Dim local As String = row("NombreLocal").ToString()
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
                            citaHtml.Append("<div class='cita'>")
                            citaHtml.Append("<div>Local: " & local & "</div>")
                            citaHtml.Append("<div>Dirección: " & direccion & "</div>")
                            citaHtml.Append("<div>Estatus: " & estatus & "</div>")
                            citaHtml.Append("<div>Cliente: " & cliente & "</div>")
                            citaHtml.Append("<div>Empleado: " & empleado & "</div>")
                            citaHtml.Append("<div>Observación: " & observacion & "</div>")
                            citaHtml.Append("<div>Servicio: " & servicio & "</div>")
                            citaHtml.Append("<div>Precio: " & precio & "</div>")
                            citaHtml.Append("<div>Fecha: " & fecha.ToString("yyyy-MM-dd") & "</div>")
                            citaHtml.Append("<div>Hora: " & hora.ToString("hh\:mm") & "</div>")

                            ' Mostrar estrellas de calificación si la cita tiene una calificación
                            If Not String.IsNullOrEmpty(calificacion) AndAlso estatusCita <> "1" Then
                                Dim calificacionInt As Integer = Convert.ToInt32(calificacion)
                                citaHtml.Append("<div class='rating'>")
                                For i As Integer = 1 To 5
                                    If i <= calificacionInt Then
                                        ' Aquí cambiamos el color de las estrellas directamente en el HTML
                                        citaHtml.Append("<span class='star' style='color:gold'>&#9733;</span>")
                                    Else
                                        citaHtml.Append("<span class='star' style='color:#ccc'>&#9733;</span>")
                                    End If
                                Next
                                citaHtml.Append("</div>")
                            End If

                            citaHtml.Append("</div>")

                            ' Agregar la información de la cita al div de citas
                            divCitasEmpleado.InnerHtml &= citaHtml.ToString()
                        Next
                    End If
                End If

            End If

        End If


    End Sub

End Class