using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;

public partial class CargarEvento : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //show logged in user on page
        string Username = Request.QueryString["User"];
        LabelUsername.Text = "User: " + Username;
        string iduser = Request.QueryString["IdUsuario"];
        LabelUserID.Text = iduser;
        Debug.Print(iduser);

        //this event created by this user
        TextBox_LoggedinUser.Text = Username;
        

        //this event created at this time
        TextBox_FechaHoraIngresoEvento.Text = DateTime.Now.ToString("dd-MM-yyyy HH:mm:ss");

        //get random ID for event
        //discuss identity field on sql table,temp solution
        Random nroevento = new Random();
        TextBox_IDEvent.Text = nroevento.Next(1, 1000).ToString();

    }

    protected void Button_GuardarEvento_Click(object sender, EventArgs e)
    {
        //save this event

        //check if we have all the info we need first

        if(TextBox_DescrpResumida.Text.Length<1)
        {
            Label_DescrResumidaismissing.Visible = true;
            Label_DescrResumidaismissing.Text = "Este campo es obligatorio";
        }
        else
        {
            Label_DescrResumidaismissing.Visible = false;
            Label_DescrResumidaismissing.Text = "";
        }

        if (TextBox_DescrpDetallada.Text.Length < 1)
        {
            Label_DescrDetalladaismissing.Visible = true;
            Label_DescrDetalladaismissing.Text = "Este campo es obligatorio";
        }
        else
        {
            Label_DescrDetalladaismissing.Visible = false;
            Label_DescrDetalladaismissing.Text = "";
        }


        if (TextBox_AdjuntoArchivo.Text.Length < 1|| TextBox_AdjuntoComentarios.Text.Length < 1)
        {
            Label_Adjuntoismissing.Visible = true;
            Label_Adjuntoismissing.Text = "Este campo es obligatorio";
        }
        else
        {
            Label_Adjuntoismissing.Visible = false;
            Label_Adjuntoismissing.Text = "";
        }

        //get affected personnel
        //add check for at least one affected person
        foreach (ListItem persona in CheckBoxList_PersonasAfectadas.Items)
        {
            if (persona.Selected==true)
            {
                Debug.Print(persona.Text);
                Debug.Print(persona.Value);
            }
        }


        //everything ok write to tables
        
        SqlConnection con = new SqlConnection("Data Source = (localdb)\\MSSQLLocalDB; Initial Catalog = AirWeb; Integrated Security = True; Connect Timeout = 30; Encrypt = False; TrustServerCertificate = True; ApplicationIntent = ReadWrite; MultiSubnetFailover = False");
        con.Open();
        SqlCommand insertCommand = new SqlCommand("INSERT INTO Eventos (idEvento, NroEvento, FechaIngreso,Titulo,Descripcion,IdUsuario,IdOrigen,IDArea,AreaDetalle) VALUES (@0, @1, @2,@3, @4, @5,@6, @7, @8)", con);


        // In the command, there are some parameters denoted by @, you can 
        // change their value on a condition, in my code they're hardcoded.

        insertCommand.Parameters.Add(new SqlParameter("0", TextBox_IDEvent.Text));
        insertCommand.Parameters.Add(new SqlParameter("1", TextBox_IDEvent.Text));
        insertCommand.Parameters.Add(new SqlParameter("2", DateTime.Now));

        insertCommand.Parameters.Add(new SqlParameter("3", "hola"));//cual es el titulo
        insertCommand.Parameters.Add(new SqlParameter("4", TextBox_DescrpResumida.Text));
        insertCommand.Parameters.Add(new SqlParameter("5", LabelUserID.Text));

        insertCommand.Parameters.Add(new SqlParameter("6", 10));
        insertCommand.Parameters.Add(new SqlParameter("7", 8));
        insertCommand.Parameters.Add(new SqlParameter("8", TextBox_DetalleArea.Text));


        // Execute the command, and print the values of the columns affected through
        // the command executed.

        Debug.Print("Commands executed! Total rows affected are " + insertCommand.ExecuteNonQuery());

        con.Close();

    }


}