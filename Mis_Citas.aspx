<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Mis_Citas.aspx.vb" Inherits="Helios_Glamour.Mis_Citas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server">
   
       

    <%--    bostrap con iconos--%>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
       <%-- script de java para las estrellas--%>
        <script src="Scripts/Star.js"></script>
            <div class="row">
                 <div  class="col-md-12 CentrarContenido">
                     <asp:SqlDataSource ID="DS_Citas" runat="server" ConnectionString="<%$ ConnectionStrings:Atlas_CS %>" SelectCommand="SELECT Citas.Id, Citas.FK_Usuario, Citas.FK_Local, Citas.FK_Empleado, Citas.FechaHora, Citas.FK_Estatus, Citas.FechaRegistro, Citas.FK_Servicio, Citas.Calificacion, Citas.Comentario, Empleado.Nombre, Empleado.Paterno, Empleado.Materno, Usuarios.Nombre AS NombreUsuario, Usuarios.ApellidoPaterno, Usuarios.ApellidoMaterno, Local.Nombre AS NombreLocal, Estatus.Estatus, Servicios.Servicio, Local.Direccion, Servicio_Local.Precio FROM Citas INNER JOIN Empleado ON Citas.FK_Empleado = Empleado.Id INNER JOIN Usuarios ON Citas.FK_Usuario = Usuarios.Id INNER JOIN Local ON Citas.FK_Local = Local.Id INNER JOIN Estatus ON Citas.FK_Estatus = Estatus.Id INNER JOIN Servicios ON Citas.FK_Servicio = Servicios.Id INNER JOIN Local_Empleado ON Empleado.Id = Local_Empleado.FK_Empleado AND Local.Id = Local_Empleado.FK_Local INNER JOIN Servicio_Local ON Local.Id = Servicio_Local.FK_Local AND Servicios.Id = Servicio_Local.FK_Servicio AND Servicios.Id = Servicio_Local.FK_Servicio WHERE (Citas.FK_Usuario = @user )">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="lbUsuario" Name="user" PropertyName="Text" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                     <asp:SqlDataSource ID="DS_CitasEmpleado" runat="server" ConnectionString="<%$ ConnectionStrings:Atlas_CS %>" SelectCommand="SELECT Citas.Id, Citas.FK_Usuario, Citas.FK_Local, Citas.FK_Empleado, Citas.FechaHora, Citas.FK_Estatus, Citas.FechaRegistro, Citas.FK_Servicio, Citas.Calificacion, Citas.Comentario, Empleado.Nombre, Empleado.Paterno, Empleado.Materno, Usuarios.Nombre AS NombreUsuario, Usuarios.ApellidoPaterno, Usuarios.ApellidoMaterno, Local.Nombre AS NombreLocal, Estatus.Estatus, Servicios.Servicio, Local.Direccion, Servicio_Local.Precio FROM Citas INNER JOIN Empleado ON Citas.FK_Empleado = Empleado.Id INNER JOIN Usuarios ON Citas.FK_Usuario = Usuarios.Id INNER JOIN Local ON Citas.FK_Local = Local.Id INNER JOIN Estatus ON Citas.FK_Estatus = Estatus.Id INNER JOIN Servicios ON Citas.FK_Servicio = Servicios.Id INNER JOIN Local_Empleado ON Empleado.Id = Local_Empleado.FK_Empleado AND Local.Id = Local_Empleado.FK_Local INNER JOIN Servicio_Local ON Local.Id = Servicio_Local.FK_Local AND Servicios.Id = Servicio_Local.FK_Servicio AND Servicios.Id = Servicio_Local.FK_Servicio WHERE (Citas.FK_Empleado = @empleado)">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="lbUsuario" Name="empleado" PropertyName="Text" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                     <asp:SqlDataSource ID="DS_CitasLocal" runat="server" ConnectionString="<%$ ConnectionStrings:Atlas_CS %>" SelectCommand="SELECT Citas.Id, Citas.FK_Usuario, Citas.FK_Local, Citas.FK_Empleado, Citas.FechaHora, Citas.FK_Estatus, Citas.FechaRegistro, Citas.FK_Servicio, Citas.Calificacion, Citas.Comentario, Empleado.Nombre, Empleado.Paterno, Empleado.Materno, Usuarios.Nombre AS NombreUsuario, Usuarios.ApellidoPaterno, Usuarios.ApellidoMaterno, Local.Nombre AS NombreLocal, Estatus.Estatus, Servicios.Servicio, Local.Direccion, Servicio_Local.Precio FROM Citas INNER JOIN Empleado ON Citas.FK_Empleado = Empleado.Id INNER JOIN Usuarios ON Citas.FK_Usuario = Usuarios.Id INNER JOIN Local ON Citas.FK_Local = Local.Id INNER JOIN Estatus ON Citas.FK_Estatus = Estatus.Id INNER JOIN Servicios ON Citas.FK_Servicio = Servicios.Id INNER JOIN Local_Empleado ON Empleado.Id = Local_Empleado.FK_Empleado AND Local.Id = Local_Empleado.FK_Local INNER JOIN Servicio_Local ON Local.Id = Servicio_Local.FK_Local AND Servicios.Id = Servicio_Local.FK_Servicio AND Servicios.Id = Servicio_Local.FK_Servicio WHERE (Citas.FK_Local = @local)">
                         <SelectParameters>
                             <asp:ControlParameter ControlID="lbUsuario" Name="local" PropertyName="Text" />
                         </SelectParameters>
                     </asp:SqlDataSource>
                     <br />
                     <asp:SqlDataSource ID="DS_Usuario" runat="server" ConnectionString="<%$ ConnectionStrings:AtlasConnectionString2 %>" SelectCommand="SELECT Usuarios.Id, Usuarios.Nombre, Usuarios.ApellidoPaterno, Usuarios.ApellidoMaterno, Local.Id AS IDLocal, Empleado.Id AS IDEmpleado, Empleado.Nombre AS NombreEmpleado, Empleado.Paterno, Empleado.Materno, Usuarios.FotoUsuario, Local.Foto, Local.Nombre AS NombreLocal, Rol.Id AS Rol, Usuarios.Usuario, Usuarios.Correo, Usuarios.Password, Empleado.Usuario AS UserEmpledo, Empleado.Password AS PassEmpleado, Local.Password AS PassLocal, Local.Usuario AS UserLocal FROM Rol LEFT OUTER JOIN Usuarios ON Rol.Id = Usuarios.FK_Rol LEFT OUTER JOIN Local ON Rol.Id = Local.FK_Rol LEFT OUTER JOIN Empleado ON Rol.Id = Empleado.FK_Rol"></asp:SqlDataSource>
                     <br />
                     <asp:SqlDataSource ID="DS_Empleado" runat="server" ConnectionString="<%$ ConnectionStrings:Atlas_CS %>" SelectCommand="SELECT Id, FK_Rol, Nombre, Paterno, Materno, NumeroEmpleado, Servicio FROM Empleado"></asp:SqlDataSource>
                     <asp:SqlDataSource ID="DS_Local" runat="server" ConnectionString="<%$ ConnectionStrings:Atlas_CS %>" SelectCommand="SELECT Id, FK_Rol, RFC, Direccion, Telefono, Observaciones, Foto, Latitud, Longitud, Categoria, Estatus FROM Local"></asp:SqlDataSource>
                     <asp:Label ID="lbcitas" runat="server" Text="Mis Citas"></asp:Label>
                </div>
            </div>
             <asp:Label ID="lbUsuario" runat="server" Visible="False"></asp:Label>
     &nbsp;<asp:Label ID="lbEmpleadoCita" runat="server" Visible="False"></asp:Label>
     <asp:Label ID="lbLocalCita" runat="server" Visible="False"></asp:Label>
                      <asp:Label ID="LbEstatusCita" runat="server" Visible="False"></asp:Label>
                        <asp:Label ID="lbRol" runat="server" Visible="False"></asp:Label>

            <asp:Panel ID="PanelCita" runat="server">
    <div class="row">
        <div class="col-md-12 CentrarContenido">
            <div id="divCitas" runat="server"></div>

            <asp:Label ID="lbLocal" runat="server"></asp:Label>
            <asp:Label ID="lbFecha" runat="server"></asp:Label>
            <asp:Label ID="lbHora" runat="server"></asp:Label>
            <asp:Label ID="lbdireccion" runat="server"></asp:Label>
            <asp:Label ID="lbServicio" runat="server"></asp:Label>
            <asp:Label ID="lbEstatus" runat="server"></asp:Label>
            <asp:Label ID="lbObservacion" runat="server"></asp:Label>
                <asp:Label ID="lbEmpleado" runat="server"></asp:Label>           
                            <asp:Label ID="Calificacion" runat="server" Visible="False"></asp:Label>

            <asp:Panel ID="PanelCalificacion" runat="server" Visible="False">
                <div class="rating">
                    <input type="radio" id="star5" name="rating" value="5" />
                    <label for="star5">&#9733;</label>
                    <input type="radio" id="star4" name="rating" value="4" />
                    <label for="star4">&#9733;</label>
                    <input type="radio" id="star3" name="rating" value="3" />
                    <label for="star3">&#9733;</label>
                    <input type="radio" id="star2" name="rating" value="2" />
                    <label for="star2">&#9733;</label>
                    <input type="radio" id="star1" name="rating" value="1" />
                    <label for="star1">&#9733;</label>
                </div>
            </asp:Panel>
            <asp:Label ID="lbprecio" runat="server"></asp:Label>
            <script>
                document.addEventListener('DOMContentLoaded', function () {
                    var calificacion = parseInt('<%= Calificacion.Text %>');

                    var stars = document.querySelectorAll('.rating input');

                    stars.forEach(function (star, index) {
                        if (index + 1 <= calificacion) {
                            star.checked = true;
                        }
                    });

                    // Deshabilitar las estrellas para que no se puedan editar
                    stars.forEach(function (star) {
                        star.disabled = true;
                    });
                });
            </script>
        </div>
    </div>
</asp:Panel>
</div>
                </div>
                    <asp:Panel ID="PanelCitasEmpleado" runat="server">
    <div class="row">
        <div class="col-md-12 CentrarContenido">
            <div id="divCitasEmpleado" runat="server"></div>

            <asp:Label ID="lbLocalE" runat="server"></asp:Label>
            <asp:Label ID="lbFechaE" runat="server"></asp:Label>
            <asp:Label ID="LBbHoraE" runat="server"></asp:Label>
            <asp:Label ID="LBDireccionE" runat="server"></asp:Label>
            <asp:Label ID="lbServicioE" runat="server"></asp:Label>
            <asp:Label ID="LbCliente" runat="server"></asp:Label>
            <asp:Label ID="LbEstatusE" runat="server"></asp:Label>
                <asp:Label ID="LbObservacionE" runat="server"></asp:Label>
                            <asp:Label ID="CalificacionE" runat="server" Visible="False"></asp:Label>

            <asp:Panel ID="PanelCalificacionE" runat="server" Visible="False">
                <div class="rating">
                    <input type="radio" id="star5" name="rating" value="5" />
                    <label for="star5">&#9733;</label>
                    <input type="radio" id="star4" name="rating" value="4" />
                    <label for="star4">&#9733;</label>
                    <input type="radio" id="star3" name="rating" value="3" />
                    <label for="star3">&#9733;</label>
                    <input type="radio" id="star2" name="rating" value="2" />
                    <label for="star2">&#9733;</label>
                    <input type="radio" id="star1" name="rating" value="1" />
                    <label for="star1">&#9733;</label>
                </div>
            </asp:Panel>
            <asp:Label ID="lbprecioE" runat="server"></asp:Label>
            <script>
                document.addEventListener('DOMContentLoaded', function () {
                    var calificacion = parseInt('<%= Calificacion.Text %>');

                    var stars = document.querySelectorAll('.rating input');

                    stars.forEach(function (star, index) {
                        if (index + 1 <= calificacion) {
                            star.checked = true;
                        }
                    });

                    // Deshabilitar las estrellas para que no se puedan editar
                    stars.forEach(function (star) {
                        star.disabled = true;
                    });
                });
            </script>
        </div>
    </div>
</asp:Panel>

<%--        ******************************--%>
                            <asp:Panel ID="PanelCitasLocal" runat="server">
    <div class="row">
        <div class="col-md-12 CentrarContenido">
            <div id="divCitasLocal" runat="server"></div>

            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:Label ID="Label2" runat="server"></asp:Label>
            <asp:Label ID="Label3" runat="server"></asp:Label>
            <asp:Label ID="Label4" runat="server"></asp:Label>
            <asp:Label ID="Label5" runat="server"></asp:Label>
            <asp:Label ID="Label6" runat="server"></asp:Label>
            <asp:Label ID="Label7" runat="server"></asp:Label>
                <asp:Label ID="Label8" runat="server"></asp:Label>
                            <asp:Label ID="Label9" runat="server" Visible="False"></asp:Label>

            <asp:Panel ID="PanelCalificacionL" runat="server" Visible="False">
                <div class="rating">
                    <input type="radio" id="star5" name="rating" value="5" />
                    <label for="star5">&#9733;</label>
                    <input type="radio" id="star4" name="rating" value="4" />
                    <label for="star4">&#9733;</label>
                    <input type="radio" id="star3" name="rating" value="3" />
                    <label for="star3">&#9733;</label>
                    <input type="radio" id="star2" name="rating" value="2" />
                    <label for="star2">&#9733;</label>
                    <input type="radio" id="star1" name="rating" value="1" />
                    <label for="star1">&#9733;</label>
                </div>
            </asp:Panel>
            <asp:Label ID="Label10" runat="server"></asp:Label>
            <script>
                document.addEventListener('DOMContentLoaded', function () {
                    var calificacion = parseInt('<%= Calificacion.Text %>');

                    var stars = document.querySelectorAll('.rating input');

                    stars.forEach(function (star, index) {
                        if (index + 1 <= calificacion) {
                            star.checked = true;
                        }
                    });

                    // Deshabilitar las estrellas para que no se puedan editar
                    stars.forEach(function (star) {
                        star.disabled = true;
                    });
                });
            </script>
        </div>
    </div>
</asp:Panel>

    </asp:Panel>
</asp:Content>
