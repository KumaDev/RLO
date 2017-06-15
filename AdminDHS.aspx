<%@ Page Title="Administrador de DHS" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="AdminDHS.aspx.cs" Inherits="AdminDHS" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
    <h3>Accesos</h3>
    <p>
        <asp:HyperLink ID="HyperLink_AnalizarEvento" runat="server">Analizar Evento</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink_VerificarAccion" runat="server">Verificar Accion</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink_CerrarEvento" runat="server">Cerrar Evento</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink_Eventossinacciones" runat="server">Eventos sin Acciones</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink_Eventosaccionescerradas" runat="server">Eventos con todas las acciones cerradas</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink_Misacccionespendientesrevision" runat="server">Mis Acciones Completadas Pendientes de Revision EHS</asp:HyperLink>
    </p>
    <p>
        <br />
    </p>
    <p>
        <asp:Label ID="LabelUsername" runat="server" Font-Bold="True" Text="Label"></asp:Label>
    </p>
</asp:Content>

