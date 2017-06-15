using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Threading.Tasks;
using System.Diagnostics;


public partial class About : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      

    }

   protected void ButtonLoginUser_Click (object sender, EventArgs e)
   {
        //funciona esto?
        //Debug.Print("iei?");

        switch(DropDownListUsers.SelectedItem.Text)
        {
            case "malaise":
                Debug.Print("Usuario Final");
                Response.Redirect("UsuarioFinal?User=malaise&IdUsuario=0");
                break;
            case "jfricson":
                Debug.Print("Usuario Final");
                Response.Redirect("UsuarioFinal?User=jfricson&IdUsuario=1");
                break;
            case "guillecero":
                Debug.Print("Usuario Final");
                Response.Redirect("UsuarioFinal?User=guillecero&IdUsuario=2");
                break;
            case "mariobros":
                Debug.Print("Usuario Final");
                Response.Redirect("UsuarioFinal?User=mariobros&IdUsuario=3");
                break;
            case "sf2ken":
                Debug.Print("Adm EHS");
                Response.Redirect("AdminDHS?User=sf2ken&IdUsuario=4");
                break;
            case "sf2ryu":
                Debug.Print("Adm EHS");
                Response.Redirect("AdminDHS?User=sf2ryu&IdUsuario=5");
                break;
            case "favaloro":
                Debug.Print("DML");
                break;
            case "pasteur":
                Debug.Print("DML");
                break;
            case "dtrump":
                Debug.Print("Resp Acciones");
                break;
            case "amerkel":
                Debug.Print("Resp Acciones");
                break;
            case "lvader":
                Debug.Print("Cons Gestion");
                break;
            case "emperor":
                Debug.Print("Cons Gestion");
                break;


        }


   }


   
}