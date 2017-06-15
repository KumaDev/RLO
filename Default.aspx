<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>RLO</h1>
        <p class="lead">Recoge listados ordenadamente para Airweb demo</p>
    </div>

    <div class="row">
        <br />
        <asp:DropDownList ID="DropDownListUsuarios" runat="server" Height="45px" Width="264px">
            <asp:ListItem>UsuarioFinal1</asp:ListItem>
            <asp:ListItem>UsuarioFinal2</asp:ListItem>
            <asp:ListItem>Adm DHS</asp:ListItem>
            <asp:ListItem>Dept Medico DML</asp:ListItem>
            <asp:ListItem>Resp Acciones</asp:ListItem>
            <asp:ListItem>Informacion Gestion</asp:ListItem>
        </asp:DropDownList>
        <asp:Button ID="ButtonLogin" runat="server" BackColor="#0066FF" BorderColor="White" BorderStyle="Groove" ForeColor="White" Height="24px" Text="Login" Width="80px" />
&nbsp;
        <asp:Button ID="Button1" runat="server" Text="Button" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Content>
