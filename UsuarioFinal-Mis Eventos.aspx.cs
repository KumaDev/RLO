using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;

public partial class UsuarioFinalMisEventos :Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string Username = Request.QueryString["User"];
        LabelUsername.Text = "User: "+Username;

        string iduser = Request.QueryString["IdUsuario"];
        Debug.Print(iduser);

        //display my events on grid
        //fill grid view with Sql Query
        SqlConnection con = new SqlConnection("Data Source = (localdb)\\MSSQLLocalDB; Initial Catalog = AirWeb; Integrated Security = True; Connect Timeout = 30; Encrypt = False; TrustServerCertificate = True; ApplicationIntent = ReadWrite; MultiSubnetFailover = False");
        SqlCommand sqlCmd = new SqlCommand();
        sqlCmd.Connection = con;
        sqlCmd.CommandType = CommandType.Text;
        sqlCmd.CommandText = "Select idEvento, NroEvento, FechaIngreso,Titulo,Descripcion,IdUsuario,IdOrigen,IDArea,AreaDetalle from Eventos WHERE idUsuario=" + "'"+iduser +"'";
        SqlDataAdapter sqlDataAdap = new SqlDataAdapter(sqlCmd);

        DataTable dtRecord = new DataTable();
        sqlDataAdap.Fill(dtRecord);
        GridView_MisEventos.DataSource = dtRecord;
        GridView_MisEventos.DataBind();
        con.Close();

    }

    
}