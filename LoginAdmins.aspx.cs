using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;


public partial class LoginAdmins : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }

    protected void lblIngresar_Click(object sender, EventArgs e)
    {
        string User = txtUser.Text;
        string Pass = txtPass.Text;
        try
        {
            SqlConnection ConexionBD = new SqlConnection("Data Source=SQL5047.site4now.net;Initial Catalog=DB_A4F600_DataArduino;User Id=DB_A4F600_DataArduino_admin;Password=_@8r6zyGw!GA_nS");


            SqlCommand Login = new SqlCommand("Select idAdmin, passAdmin from Administradores where idAdmin ='" + User + "' and passAdmin = '" + Pass + "' ", ConexionBD);
            ConexionBD.Open();
            SqlDataReader Validador = Login.ExecuteReader();

            if (Validador.Read())
            {
                Response.Redirect("Administracion.aspx");
                ConexionBD.Close();
            }
            else
            {
                lblprueba.Text = "Datos incorrectos.";
                ConexionBD.Close();
            }

        }
        catch (Exception ex)
        {

            lblprueba.Text = ex.ToString();
        }
        
    } 
}