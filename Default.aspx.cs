using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void ButtonLogin_Click(object sender, EventArgs e)
    {
        //click
        Debug.Print("peko>");

        //show me those textboxes
        Debug.Print(DropDownListUsuarios.SelectedValue.ToString());
        Label1.Text = "OAAA!";
        

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //click
        Debug.Print("peko>");

        //show me those textboxes
        Debug.Print(DropDownListUsuarios.SelectedValue.ToString());
        Label1.Text = "OAAA!";


    }
}