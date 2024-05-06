<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="WebForm1.aspx.vb" Inherits="Helios_Glamour.WebForm1" %>


<!DOCTYPE html>
<html lang="zxx">

    <head>
        <title>Blaxcut - Barbershop Website Template</title>
        <link rel="icon" href="images/icon.png" type="image/gif" sizes="16x16">
        <meta content="text/html;charset=utf-8" http-equiv="Content-Type">
        <meta content="width=device-width, initial-scale=1.0" name="viewport" >
        <meta content="Blaxcut - Barbershop Website Template" name="description" >
        <meta content="" name="keywords" >
        <meta content="" name="author" >
        <!-- CSS Files
        ================================================== -->
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" id="bootstrap">
        <link href="css/mdb.min.css" rel="stylesheet" type="text/css" id="mdb" >
        <link href="css/plugins.css" rel="stylesheet" type="text/css" >
        <link href="css/style.css" rel="stylesheet" type="text/css" >
        <link href="css/coloring.css" rel="stylesheet" type="text/css" >
        <!-- color scheme -->
        <link id="colors" href="css/colors/scheme-01.css" rel="stylesheet" type="text/css" >
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    
    </head>


<body class="dark-scheme">
    <form id="form1" runat="server">
    <div id="wrapper">
        
        <!-- page preloader begin -->
        <div id="de-loader"></div>
        <!-- page preloader close -->

        <!-- header begin -->
        <header class="transparent">            
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="de-flex sm-pt10">
                            <div class="de-flex-col">
                                <div class="de-flex-col">
                                    <!-- logo begin -->
                                    <div id="logo">
                                        <a href="index.html">
                                            <img class="logo-main" src="images/logo.png" alt="" >
                                            <img class="logo-mobile" src="images/logo-mobile.png" alt="" >
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
                     <asp:SqlDataSource ID="DS_Usuario" runat="server" ConnectionString="<%$ ConnectionStrings:AtlasConnectionString2 %>" SelectCommand="SELECT Usuarios.Id, Usuarios.Nombre, Usuarios.ApellidoPaterno, Usuarios.ApellidoMaterno, Local.Id AS IDLocal, Empleado.Id AS IDEmpleado, Empleado.Nombre AS NombreEmpleado, Empleado.Paterno, Empleado.Materno, Usuarios.FotoUsuario, Local.Foto, Local.Nombre AS NombreLocal, Rol.Id AS Rol, Usuarios.Usuario, Usuarios.Correo, Usuarios.Password, Empleado.Usuario AS UserEmpledo, Empleado.Password AS PassEmpleado, Local.Password AS PassLocal, Local.Usuario AS UserLocal FROM Rol LEFT OUTER JOIN Usuarios ON Rol.Id = Usuarios.FK_Rol LEFT OUTER JOIN Local ON Rol.Id = Local.FK_Rol LEFT OUTER JOIN Empleado ON Rol.Id = Empleado.FK_Rol"></asp:SqlDataSource>
                     <asp:SqlDataSource ID="DS_Empleado" runat="server" ConnectionString="<%$ ConnectionStrings:Atlas_CS %>" SelectCommand="SELECT Id, FK_Rol, Nombre, Paterno, Materno, NumeroEmpleado, Servicio FROM Empleado"></asp:SqlDataSource>
                     <asp:SqlDataSource ID="DS_Local" runat="server" ConnectionString="<%$ ConnectionStrings:Atlas_CS %>" SelectCommand="SELECT Id, FK_Rol, RFC, Direccion, Telefono, Observaciones, Foto, Latitud, Longitud, Categoria, Estatus FROM Local"></asp:SqlDataSource>
                                              <asp:Label ID="lbUsuario" runat="server" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="lbEmpleadoCita" runat="server" Visible="False"></asp:Label>
<asp:Label ID="lbLocalCita" runat="server" Visible="False"></asp:Label>
                 <asp:Label ID="LbEstatusCita" runat="server" Visible="False"></asp:Label>
                   <asp:Label ID="lbRol" runat="server" Visible="False"></asp:Label>
                                            </a>
                                    </div>
                                    <!-- logo close -->
                                </div>
                            </div>
                            <div class="de-flex-col header-col-mid">
                                <ul id="mainmenu" class="s2">
                                    <li><a class="menu-item" href="index.html">Inicio</a>
                                        <ul>
                                            <li><a class="menu-item" href="index.html">Home 1</a></li>
                                            <li><a class="menu-item" href="index-2.html">Home 2</a></li>
                                            <li><a class="menu-item" href="index-3.html">Home 3</a></li>
                                            <li><a class="menu-item" href="index-4.html">Home 4</a></li>
                                        </ul>
                                    </li>
                                    <li><a class="menu-item" href="services.html">Barberias</a></li>
                                    <li><a class="menu-item" href="about.html">Esteticas</a>
                                      
                                    </li>
                                    <li><a class="menu-item" href="book.html">Tatuajes</a></li>
                                    <li><a class="menu-item" href="blog.html">Servicios</a>
                                        <ul>
                                            <li><a class="menu-item" href="contact.html">Corte de pelo</a></li>
                                            <li><a class="menu-item" href="gallery.html">Tatuajes</a></li>
                                            <li><a class="menu-item" href="pricing.html">Peinados</a></li>
                                            <li><a class="menu-item" href="testimonials.html">Aseo facial</a></li>
                                            <li><a class="menu-item" href="testimonials.html">Teñida de pelo</a></li>
                                            <li><a class="menu-item" href="testimonials.html">Arreglo de Barba</a></li>
                                            <li><a class="menu-item" href="testimonials.html">Maquillaje</a></li>
                                            <li><a class="menu-item" href="testimonials.html">Tratamiento Facial</a></li>
                                          
                                        </ul>
                                    </li>
                                    <li><a class="menu-item" href="#"> Mi cuenta</a>
                                        <ul>
                                            <li><a class="menu-item" href="pricing.html">Mis citas</a></li>
                                            <li><a class="menu-item" href="Favoritos.html">Favoritos</a></li>
                                            <li><a class="menu-item" href="EditarPerfil.html">Editar Perfil</a></li>
                                            <li><a class="menu-item" href="contact.html">Ayuda</a></li>
                                            <li><a class="menu-item" href="testimonials.html">Cerrar Sesión</a></li>

                                        </ul>
                                    </li>

                                </ul>
                            </div>
                            <div class="de-flex-col">
                                <div class="menu_side_area">
                                    <a href="book.html" class="btn-main">Iniciar Sesión</a>
                                    <span id="menu-btn"></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- header close -->
        <!-- content begin -->
        <section id="subheader" class="jarallax">
            <img src="images/background/2.1.jpg" class="jarallax-img" alt="">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3 text-center">
                        <h1 style="color: white;">Mis Citas</h1>
                        <div class="de-separator"></div>
                    </div>
                </div>
            </div>
            <div class="de-gradient-edge-bottom"></div>
        </section>
        <div class="no-bottom no-top" id="content">
            <div id="top"></div>



            <section id="section-content" class="no-top" aria-label="section">

                <div class="container">
                    
                    <div id="divCitas" runat="server"></div>

  
                </div>                    
            </section>
            
        </div>
        <!-- content close -->
        <a href="#" id="back-to-top"></a>
        <!-- footer begin -->
     <footer>
            <div class="container">
                <div class="row g-4">
                    
                    <div class="col-lg-4 text-lg-start text-center">
                      <div class="social-icons">
                            <a href="#"><i class="fa-brands fa-facebook-f"></i></a>
                            <a href="#"><i class="fa-brands fa-twitter"></i></a>
                            <a href="#"><i class="fa-brands fa-linkedin-in"></i></a>
                            <a href="#"><i class="fa-brands fa-pinterest"></i></a>
                            <a href="#"><i class="fa-solid fa-rss"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-4 text-lg-center text-center">
                        <img src="images/logo.png" class="" alt="">
                    </div>
                    <div class="col-lg-4 text-lg-end text-center" style="color: black;">
                        Copyright 2023 - Blaxcut by Designesia
                    </div>
                </div>
            </div>
        </footer>
        <!-- footer close -->
    </div>
    
    <!-- Javascript Files
    ================================================== -->
    <script src="js/plugins.js"></script>
    <script src="js/designesia.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/designesia.js"></script>
 
    <script src="js/custom-marquee.js"></script>
    <script src="js/owl.carousel.js"></script>
    <!-- owl carousel -->

    <script src = "owl_carousel/owl.carousel.js"></script>
    <script src = "script.js"></script>

<!-- Owl Carousel CSS -->


<!-- Owl Carousel JavaScript -->
<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
    </form>
</body>

</html>