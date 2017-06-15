<%@ Page Title="Carga de Eventos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="CargarEvento.aspx.cs" Inherits="CargarEvento"%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>Nuevo Evento</h3>
    <p>&nbsp;</p>
    <p>
        <asp:Label ID="Label1" runat="server" Text="Nro Evento" Font-Bold="True"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox_IDEvent" runat="server" Enabled="False" Width="78px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Fecha de Ingreso  " Font-Bold="True"></asp:Label>
        <asp:TextBox ID="TextBox_FechaHoraIngresoEvento" runat="server" Enabled="False"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label3" runat="server" Text="Area  " Font-Bold="True"></asp:Label>
        <asp:DropDownList ID="DropDownList_AreaEvento" runat="server" DataSourceID="SqlDataSource1" DataTextField="Area" DataValueField="Area">
            <asp:ListItem>Fabrica</asp:ListItem>
            <asp:ListItem>Sistemas</asp:ListItem>
            <asp:ListItem>Recepcion</asp:ListItem>
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AirWebConnectionString %>" SelectCommand="SELECT [Area] FROM [Areas] WHERE ([Activo] = @Activo)">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="Activo" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="Label4" runat="server" Text="Detalle del Area" Font-Bold="True"></asp:Label>
        <asp:TextBox ID="TextBox_DetalleArea" runat="server" Width="352px"></asp:TextBox>
    </p>
    <p>
        <asp:Label ID="Label5" runat="server" Text="Descripcion Resumida" Font-Bold="True"></asp:Label>
        <asp:TextBox ID="TextBox_DescrpResumida" runat="server" Width="453px"></asp:TextBox>
        *<asp:Label ID="Label_DescrResumidaismissing" runat="server" Visible="False"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label6" runat="server" Text="Descripcion Detallada" Font-Bold="True"></asp:Label>
        <asp:TextBox ID="TextBox_DescrpDetallada" runat="server" Width="571px"></asp:TextBox>
        *<asp:Label ID="Label_DescrDetalladaismissing" runat="server" Visible="False"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label7" runat="server" Text="Personas Afectadas" Font-Bold="True"></asp:Label>
        <asp:CheckBoxList ID="CheckBoxList_PersonasAfectadas" runat="server" DataSourceID="SqlDataSource2" DataTextField="Usuario" DataValueField="Idusuario">
        </asp:CheckBoxList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AirWebConnectionString %>" SelectCommand="SELECT [Usuario], [Idusuario] FROM [Usuarios] WHERE ([Activo] = @Activo)">
            <SelectParameters>
                <asp:Parameter DefaultValue="1" Name="Activo" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:Label ID="Label9" runat="server" Font-Bold="True" Text="Adjuntos"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label10" runat="server" Text="Archivo  "></asp:Label>
        <asp:TextBox ID="TextBox_AdjuntoArchivo" runat="server" Width="214px"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label11" runat="server" Text="Comentarios    "></asp:Label>
        <asp:TextBox ID="TextBox_AdjuntoComentarios" runat="server" Width="473px"></asp:TextBox>
&nbsp;&nbsp; <asp:Label ID="Label_Adjuntoismissing" runat="server" Visible="False"></asp:Label>
    </p>
    <p>
        <asp:Label ID="Label8" runat="server" Text="Usuario que reporta:  " Font-Bold="True"></asp:Label>
        <asp:TextBox ID="TextBox_LoggedinUser" runat="server" Enabled="False">ThisUser</asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <asp:Button ID="Button_GuardarEvento" runat="server" OnClick="Button_GuardarEvento_Click" Text="Guardar Evento" />
    </p>
    <p>
        <asp:Label ID="LabelUsername" runat="server" Font-Bold="True" Text="Label"></asp:Label>
    </p>
    <p>
        <asp:Label ID="LabelUserID" runat="server" Font-Bold="True"></asp:Label>
    </p> 
  
</asp:Content>
