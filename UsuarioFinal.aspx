<%@ Page Title="Usuario Final" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="UsuarioFinal.aspx.cs" Inherits="UsuarioFinal"%>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>Accesos</h3>
    <p>
        <asp:HyperLink ID="HyperLink_CargaEventos" runat="server">Carga de Eventos</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink_MisEventos" runat="server">Mis Eventos</asp:HyperLink>
    </p>
    <p>
        <asp:Label ID="LabelUsername" runat="server" Font-Bold="True" Text="Label"></asp:Label>
    </p>
    <p>

  
</asp:Content>