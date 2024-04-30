<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Favoritos.aspx.vb" Inherits="Helios_Glamour.Favoritos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="PanelFavoritos" runat="server">
        <div class="row">
            <div  class="col-md-12 CentrarContenido">
                <asp:SqlDataSource ID="DS_Favoritos" runat="server" ConnectionString="<%$ ConnectionStrings:Atlas_CS %>" SelectCommand="SELECT * FROM [Favoritos]"></asp:SqlDataSource>
                <asp:Label ID="lbFavoritos" runat="server" Text="Mis Favoritos"></asp:Label>
             </div>
        </div>
            <div class="row">
                <div  class="col-md-12 CentrarContenido">
                    <asp:Label ID="lbFav" runat="server" Text="Label"></asp:Label>
                    <div class="back-img">
                        <asp:ImageButton ID="imgboton" runat="server" />
                        <asp:Image ID="ImgFav" runat="server" />

                    </div>
                </div>
            </div>
    </asp:Panel>
</asp:Content>
