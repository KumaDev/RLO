using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminDHS :Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string Username = Request.QueryString["User"];
        LabelUsername.Text = "User: " + Username;

        //add user info to hyperlinks
        HyperLink_AnalizarEvento.NavigateUrl = "" + Username;
        HyperLink_VerificarAccion.NavigateUrl = "" + Username;
        HyperLink_CerrarEvento.NavigateUrl = "" + Username;
        HyperLink_Eventossinacciones.NavigateUrl = "" + Username;
        HyperLink_Eventosaccionescerradas.NavigateUrl = "" + Username;
        HyperLink_Misacccionespendientesrevision.NavigateUrl = "" + Username;

    }
}