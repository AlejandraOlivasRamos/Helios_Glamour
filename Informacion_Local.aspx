<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site.Master" CodeBehind="Informacion_Local.aspx.vb" Inherits="Helios_Glamour.Informacion_Local" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="row">
      <div class="col-md-12 CentrarContenido">
          <asp:SqlDataSource ID="DS_Local" runat="server" ConnectionString="<%$ ConnectionStrings:CS_ATLAS3 %>" SelectCommand="SELECT * FROM [Local]"></asp:SqlDataSource>
          <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
          <asp:Label ID="lbTituloLocal" runat="server"></asp:Label>
          </div>
          </div>
      <div class="row">
  <div class="col-md-12 CentrarContenido">
      <asp:Label ID="lbDescripcion" runat="server" ></asp:Label>
      </div>
          </div>
          <div class="row">
  <div class="col-md-6 CentrarContenido">
      <asp:Label ID="lbTelefono" runat="server" ></asp:Label>
      </div>
               <div class="col-md-6 CentrarContenido">
      <asp:Label ID="lbServicios" runat="server"></asp:Label>
      </div>
              `</div>
              <div class="row">
<div class="col-md-6 CentrarContenido">
                   <asp:Label ID="lbDireccion" runat="server"></asp:Label>
    </div>
                          <div class="col-md-6 CentrarContenido">

    <asp:Label ID="lbHorario" runat="server"></asp:Label>
  </div></div>
                  <div class="row">
<div class="col-md-12 CentrarContenido">
    <asp:Button ID="btnReserva" runat="server" Text="Reservar" />
    </div>                  
                      </div>
</asp:Content>
