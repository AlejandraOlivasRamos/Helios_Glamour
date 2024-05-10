<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="EditarPerfil.aspx.vb" Inherits="Helios_Glamour.EditarPerfil" %>

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
    <link href="css/plugins.css" rel="stylesheet" type="text/css" >
    <link href="css/style.css" rel="stylesheet" type="text/css" >
    <link href="css/coloring.css" rel="stylesheet" type="text/css" >
    <!-- color scheme -->
    <link id="colors" href="css/colors/scheme-01.css" rel="stylesheet" type="text/css" >
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">    <link href="css/mdb.min.css" rel="stylesheet" type="text/css" id="mdb" >


</head>

<body class="dark-scheme">
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
                                        </a>
                                    </div>
                                    <!-- logo close -->
                                </div>
                            </div>
                            <div class="de-flex-col header-col-mid">
                                <ul id="mainmenu" class="s2">
                             
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
                                               <li><a class="menu-item" href="MisCitas.aspx">Mis citas</a></li>
      <li><a class="menu-item" href="Favoritos.aspx">Favoritos</a></li>
      <li><a class="menu-item" href="EditarPerfil.aspx">Editar Perfil</a></li>
      <li><a class="menu-item" href="Ayuda.aspx">Ayuda</a></li>
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
                        <h1 style="color: white;">Mi Perfil</h1>
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
                    <div class="row">
                        <div class="col-lg-6 offset-lg-3 mt-10">
                            <div class="d-sch-table">
                                <h2 class="text-center wow fadeIn">Datos</h2>
                                <div class="de-separator"></div>
                                <div class="sc-wrap">
                                    <div class="def-list-dots">

                                      <dl>
                                        <dt>
                                            <span style="color:#4ba581;">Nombre</span>
                                        </dt>
                                        <dd> <button class="btn-Icon"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-double-right" viewBox="0 0 16 16">
                                            <path fill-rule="evenodd" d="M3.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L9.293 8 3.646 2.354a.5.5 0 0 1 0-.708"/>
                                            <path fill-rule="evenodd" d="M7.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L13.293 8 7.646 2.354a.5.5 0 0 1 0-.708"/>
                                          </svg></button></dd>
                                      </dl>

                                      <dl>
                                        <dt>
                                            <span style="color:#4ba581;">Apellido Paterno</span>
                                        </dt>
                                        <dd> <button class="btn-Icon"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-double-right" viewBox="0 0 16 16">
                                            <path fill-rule="evenodd" d="M3.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L9.293 8 3.646 2.354a.5.5 0 0 1 0-.708"/>
                                            <path fill-rule="evenodd" d="M7.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L13.293 8 7.646 2.354a.5.5 0 0 1 0-.708"/>
                                          </svg></button></dd>
                                      </dl>
                                      <dl>
                                        <dt>
                                            <span style="color:#4ba581;">Apellido Materno</span>
                                        </dt>
                                        <dd> <button class="btn-Icon"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-double-right" viewBox="0 0 16 16">
                                            <path fill-rule="evenodd" d="M3.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L9.293 8 3.646 2.354a.5.5 0 0 1 0-.708"/>
                                            <path fill-rule="evenodd" d="M7.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L13.293 8 7.646 2.354a.5.5 0 0 1 0-.708"/>
                                          </svg></button></dd>
                                      </dl>

                                      <dl>
                                        <dt>
                                            <span style="color:#4ba581;">Correo</span>
                                        </dt>
                                        <dd> <button class="btn-Icon"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chevron-double-right" viewBox="0 0 16 16">
                                            <path fill-rule="evenodd" d="M3.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L9.293 8 3.646 2.354a.5.5 0 0 1 0-.708"/>
                                            <path fill-rule="evenodd" d="M7.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L13.293 8 7.646 2.354a.5.5 0 0 1 0-.708"/>
                                          </svg></button></dd>
                                      </dl>
                                      <div class="text-center">
                                        <a href="book.html" class="btn-main">Cerrar Sesión</a>
                                    </div>
                                    </div>
                                </div>
                                <div class="d-deco"></div>
                            </div>
                        </div>
                    </div>
                    
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
                            <a href="#"><i class="fa fa-facebook fa-lg"></i></a>
                            <a href="#"><i class="fa fa-twitter fa-lg"></i></a>
                            <a href="#"><i class="fa fa-linkedin fa-lg"></i></a>
                            <a href="#"><i class="fa fa-pinterest fa-lg"></i></a>
                            <a href="#"><i class="fa fa-rss fa-lg"></i></a>
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>