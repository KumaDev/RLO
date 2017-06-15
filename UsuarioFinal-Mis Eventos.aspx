<%@ Page Title="Usuario Final - Mis Eventos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="UsuarioFinal-Mis Eventos.aspx.cs" Inherits="UsuarioFinalMisEventos"%>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>
        <asp:GridView ID="GridView_MisEventos" runat="server" AllowPaging="True" AutoGenerateEditButton="True" AutoGenerateSelectButton="True">
        </asp:GridView>
    </h3>
    <p>
        <asp:Label ID="LabelUsername" runat="server" Font-Bold="True" Text="Label"></asp:Label>
    </p>
    <p>

  
</asp:Content>