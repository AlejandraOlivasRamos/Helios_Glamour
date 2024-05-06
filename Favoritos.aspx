<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Favoritos.aspx.vb" Inherits="Helios_Glamour.Favoritos" %>

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
    <link href="css/style2.css" rel="stylesheet" type="text/css" id="bootstrap">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />
    <!-- color scheme -->
    <link id="colors" href="css/colors/scheme-01.css" rel="stylesheet" type="text/css" >
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" integrity="sha512-Fo3rlrZj/k7ujTnHg4CGR2D7kSs0v4LLanw2qksYuRlEzO+tcaEPQogQ0KaoGN26/zrn20ImR1DfuLWnOo7aBA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

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
            <img src="images/background/2.jpg" class="jarallax-img" alt="">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 offset-lg-3 text-center">
                        <h1 style="color: white;">Mis Favoritos</h1>
                        <div class="de-separator"></div>
                    </div>
                </div>
            </div>
            <div class="de-gradient-edge-bottom"></div>
        </section>
        <div class="no-bottom no-top" id="content">
            <div id="top"></div>

            <section>
                <div class="container swiper mySwiper">
                    <div class="swiper-wrapper content">
                        <div class="swiper-slide card">
                            <div class="card-content">
                                <div class="image">
                                    <img src="images/services/1.jpg" alt="">
                                
                       </div>
                      <div class="name-profession">
        <span class="name">Nombre del local</span>
        <span class="profession">Servicios del local</span>
                      </div>
                      <div class="rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>

                        <i class="far fa-star"></i>
        
                      </div>
                      <div class="button">
                        <button class="AboutMe"><i class="fa-regular fa-heart"></i></button>

                        <button class="hirMe">Hir Me</button>
                      </div>
        
                            </div>
        
                        </div>  <div class="swiper-slide card">
                            <div class="card-content">
                                <div class="image">
                                    <img src="images/services/1.jpg" alt="">
                                
                       </div>
                      <div class="name-profession">
        <span class="name">Nombre del local</span>
        <span class="profession">Servicios del local</span>
                      </div>
                      <div class="rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>

                        <i class="far fa-star"></i>
        
                      </div>
                      <div class="button">
                        <button class="AboutMe"><i class="fa-regular fa-heart"></i></button>
                        <button class="hirMe">Hir Me</button>
                      </div>
        
                            </div>
        
                        </div>  <div class="swiper-slide card">
                            <div class="card-content">
                                <div class="image">
                                    <img src="images/services/1.jpg" alt="">
                                
                       </div>
                      <div class="name-profession">
        <span class="name">Nombre del local</span>
        <span class="profession">Servicios del local</span>
                      </div>
                      <div class="rating">
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>
                        <i class="fas fa-star"></i>

                        <i class="far fa-star"></i>
        
                      </div>
                      <div class="button">
                        <button class="AboutMe"><i class="fa-regular fa-heart"></i></button>
                            <button class="hirMe">Hir Me</button>
                      </div>
        
                            </div>
        
                        </div>
                        
                    </div>
        
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-pagination"></div>
            </section>
            
            <!-- Javascript Files
            ================================================== -->
            <script src="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.js"></script>
            <script>
                var swiper = new Swiper(".mySwiper", {
                  slidesPerView: 1,
                  centeredSlides: false,
                  slidesPerGroupSkip: 1,
                  grabCursor: true,
                  keyboard: {
                    enabled: true,
                  },
                  breakpoints: {
                    769: {
                      slidesPerView: 2,
                      slidesPerGroup: 2,
                    },
                  },
                  scrollbar: {
                    el: ".swiper-scrollbar",
                  },
                  navigation: {
                    nextEl: ".swiper-button-next",
                    prevEl: ".swiper-button-prev",
                  },
                  pagination: {
                    el: ".swiper-pagination",
                    clickable: true,
                  },
                });
            </script>
        
            
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
</body>

</html>
