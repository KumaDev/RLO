using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

public partial class UsuarioFinal :Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string Username = Request.QueryString["User"];
        LabelUsername.Text = "User: "+Username;
        string iduser= Request.QueryString["IdUsuario"];
        Debug.Print(iduser);

        //add user info to hyperlinks
        HyperLink_CargaEventos.NavigateUrl = "~/CargarEvento.aspx?User=" + Username+"&IdUsuario="+iduser;
        HyperLink_MisEventos.NavigateUrl= "~/UsuarioFinal-Mis Eventos.aspx?User=" + Username + "&IdUsuario=" + iduser;

        
    }
}