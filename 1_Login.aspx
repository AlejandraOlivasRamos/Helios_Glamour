<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="1_Login.aspx.vb" Inherits="Helios_Glamour._1_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
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
<body>
    <form runat="server">
    <%--Login--%>
    <section>
        <div>
            <%--Lado izquierda fondo--%>
            <div class="login-izq">
                
            </div>

            <%--Lado derecha Login--%>
            <div class="login-der">
                <div style="margin-top:10px; margin-left:10px;">
                    <h2 class="welcome">Hola!</h2>
                    <h2 class="welcome" style="font-weight:bold;">Bienvenido</h2>
                </div>

                <%--Tabla insertar--%>
                <div>
                    <%--Textbox usuario--%>
                    <div>
                        <h5>Usuario</h5>
                        <div>
                            <asp:TextBox runat="server" ID="Usuario" ></asp:TextBox>
                        </div>
                    </div>
                    <%--Textbox password--%>
                    <div>
                        <h5>Password</h5>
                        <div class="text-center">
                            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>

                    <%--Checkbox privacidad y politica--%>
                    <div>
                        <asp:CheckBox ID="Check" runat="server" />
                        He leído y acepto el
                        <a href="acuerdo">acuerdo de usuario</a>
                        y la
                        <a href="politica">política de privacidad</a>.
                    </div>

                    <%--Boton login--%>
                    <div>
                        <asp:Button ID="Btnlogin" runat="server" Text="Inicia Sesion" />
                    </div>

                    <%--Linea Or--%>
                    <div>
                        <div></div>
                        <div>O seguir con</div>
                        <div></div>
                    </div>
                    

                    <%--Iniciacion session con gmail y fb--%>
                    <div>
                        <asp:ImageButton CssClass="marco" ID="BtnGmail" ImageUrl="Iconos/Login/google.png" runat="server" />
                        <asp:ImageButton CssClass="marco" ID="BtnFacebook" ImageUrl="Iconos/Login/facebook.png" runat="server" />
                    </div>
                </div>
            </div>
        </div>
    </section>
    </form>
    <div></div>
    <asp:SqlDataSource ID="DDS_IniciaSession" runat="server"></asp:SqlDataSource>
</body>
</html>
