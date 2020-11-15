using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class IndexSite : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string valor = Request.QueryString["key"].ToString();
        string valor2 = Request.QueryString["key2"].ToString();

        if (valor != "")
        {
            txtCarnet.Text = valor;
            lblLab.Text = Convert.ToString(valor2);

            string Direccion = @"Data Source = SQL5047.site4now.net; Initial Catalog = DB_A4F600_DataArduino; User Id = DB_A4F600_DataArduino_admin; Password = _@8r6zyGw!GA_nS";
            SqlConnection Conexion = new SqlConnection();
            Conexion.ConnectionString = Direccion;

            SqlCommand ConsultaCarnet = new SqlCommand("select * from Alumno where Carnet =" + valor, Conexion);
            Conexion.Open();

            SqlDataReader registro = ConsultaCarnet.ExecuteReader();
            if (registro.Read())
            {
                Conexion.Close();

                SqlCommand MarcarAsistencia = new SqlCommand("exec Marca_Asistencia "+valor+","+valor2, Conexion);
                Conexion.Open();

                MarcarAsistencia.ExecuteNonQuery();

                Conexion.Close();
            }        
        }
    }

    protected void btnEntrar_Click(object sender, EventArgs e)
    {
        Response.Redirect("LoginAdmins.aspx");
    }

    protected void txtCarnet_TextChanged(object sender, EventArgs e)
    {
    }

    protected void txtCarnet_TextChanged1(object sender, EventArgs e)
    {  
    }
}