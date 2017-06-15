<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>RLO (Recoge Listados Ordenadamente)-The AirWeb demo</h3>
    <p>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" Text="idMenu 1 - Usuario Final 2- Adm EHS 3 - DML 4- Resp Acciones 5- Cons Gestion"></asp:Label>
    </p>
    <p>
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Idusuario" HeaderText="Idusuario" SortExpression="Idusuario" />
                <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Apellido" HeaderText="Apellido" SortExpression="Apellido" />
                <asp:BoundField DataField="IdMenu" HeaderText="IdMenu" SortExpression="IdMenu" />
            </Columns>
        </asp:GridView>
    </p>
    <p>&nbsp;</p>
<p>
        <asp:DropDownList ID="DropDownListUsers" runat="server" Height="17px" Width="187px" DataSourceID="SqlDataSource1" DataTextField="Usuario" DataValueField="Usuario">
            <asp:ListItem>UsuarioFinal</asp:ListItem>
            <asp:ListItem>Adm EHS</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AirWebConnectionString %>" SelectCommand="SELECT [Usuario], [Nombre], [Apellido], [IdMenu], [Idusuario] FROM [Usuarios]"></asp:SqlDataSource>
    <asp:Button ID="ButtonLoginUser" OnClick="ButtonLoginUser_Click" runat="server" Text="Login" />
    </p>
    <p>&nbsp;</p>
    <p>
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/CargarEvento.aspx">Cargar Evento</asp:HyperLink>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">Back Home for you son</asp:HyperLink>
    </p>
</asp:Content>
