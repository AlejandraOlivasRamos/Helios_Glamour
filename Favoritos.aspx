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
    <form id="form1" runat="server">
    <div id="wrapper">
          <asp:SqlDataSource ID="DS_Favoritos" runat="server" ConnectionString="<%$ ConnectionStrings:CS_ATLAS3 %>" SelectCommand="SELECT Favoritos.Id, Favoritos.FK_Usuario, Local.Foto, Local.Nombre, Local.Id AS IDLocal FROM Favoritos INNER JOIN Local ON Favoritos.FK_Local = Local.Id WHERE (Favoritos.FK_Usuario = @user )" DeleteCommand="DELETE FROM Favoritos WHERE (FK_Local = @local) AND (FK_Usuario = @user )">
              <DeleteParameters>
                  <asp:ControlParameter ControlID="lbFav" Name="local" PropertyName="Text" />
                  <asp:ControlParameter ControlID="lbUsuario" Name="user" PropertyName="Text" />
              </DeleteParameters>
      <SelectParameters>
          <asp:ControlParameter Name="user" ControlID="lbUsuario" PropertyName="Text" />
      </SelectParameters>
  </asp:SqlDataSource>
                                        <a href="index.html">
                     <asp:SqlDataSource ID="DS_Usuario" runat="server" ConnectionString="<%$ ConnectionStrings:AtlasConnectionString2 %>" SelectCommand="SELECT Id, Nombre, ApellidoPaterno, ApellidoMaterno, FotoUsuario, Usuario, Correo, Password FROM Usuarios"></asp:SqlDataSource>
                                            </a>
                                            <br />
          <asp:SqlDataSource ID="DS_Servicios" runat="server" ConnectionString="<%$ ConnectionStrings:CS_ATLAS3 %>" SelectCommand="SELECT Local.Foto, Local.Nombre, Servicios.Servicio, Servicio_Local.FK_Local, Servicio_Local.FK_Servicio FROM Local INNER JOIN Servicio_Local ON Local.Id = Servicio_Local.FK_Local INNER JOIN Servicios ON Servicio_Local.FK_Servicio = Servicios.Id AND Servicio_Local.FK_Servicio = Servicios.Id WHERE (Servicio_Local.FK_Local = @local)">
      <SelectParameters>
          <asp:ControlParameter Name="user" ControlID="lbUsuario" PropertyName="Text" />
          <asp:ControlParameter ControlID="lbLocal" Name="local" PropertyName="Text" />
      </SelectParameters>
  </asp:SqlDataSource>
                                            <asp:Label ID="lbUsuario" runat="server" Visible="False"></asp:Label>
                                                    <asp:Label ID="lbLocal" runat="server" Visible="False"></asp:Label>
                                                            <asp:Label ID="lbFav" runat="server" Visible="True"></asp:Label>


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
         <asp:Literal runat="server" ID="litCarrusel"></asp:Literal>

                        

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
        
            <script>
                var heartButtons = document.getElementsByClassName('AboutMe');
                for (var i = 0; i < heartButtons.length; i++) {
                    heartButtons[i].addEventListener('mouseover', function () {
                        this.innerHTML = '<i class="fa-regular fa-heart"></i>';
                    });
                    heartButtons[i].addEventListener('mouseout', function () {
                        this.innerHTML = '<i class="fa-solid fa-heart"></i>';
                    });
                }
            </script>
          

          <script>
              function eliminarFavorito(button) {
                  var favoritoId = button.getAttribute("data-favorito-id");
                  // Utilizar un valor por defecto si favoritoId es null o undefined
                  if (!favoritoId) {
                      favoritoId = 2; // Cambia este valor por el número que deseas utilizar por defecto
                  }

                  var userId = obtenerUserId(); // Obtener el ID del usuario de alguna manera, por ejemplo, a través de una función o una variable de sesión

                  // Enviar el ID del favorito y el ID del usuario como parte de la solicitud POST
                  fetch('Favoritos.aspx/EliminarFavorito', {
                      method: 'POST',
                      body: JSON.stringify({ favoritoId: favoritoId, userId: userId }), // Enviar el ID del favorito y el ID del usuario como parte del cuerpo de la solicitud
                      headers: {
                          'Content-Type': 'application/json'
                      }
                  })
                      .then(response => {
                          if (!response.ok) {
                              throw new Error('Ocurrió un error al eliminar el favorito.');
                          }
                          return response.json();
                      })
                      .then(data => {
                          console.log('Favorito eliminado correctamente.');
                          // Si es necesario realizar alguna acción adicional después de eliminar el favorito, puedes hacerlo aquí
                      })
                      .catch(error => {
                          console.error('Error:', error);
                      });
              }

              // Función para obtener el ID del usuario
              function obtenerUserId() {
                  // Implementa esta función para obtener el ID del usuario de alguna manera, por ejemplo, a través de una función o una variable de sesión
                  // Por ejemplo, podrías retornar el valor de una variable de sesión de JavaScript o de algún campo oculto en tu página
                  return lbUsuario.textContent;
              }
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
    </form>
</body>

</html>
