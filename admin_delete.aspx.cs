using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class admin_delete : System.Web.UI.Page
{
    public string s = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\prism infotech\Desktop\asp4-5\App_Data\111.mdf;Integrated Security=True;User Instance=True";
    private SqlConnection con = null;
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection();
        con.ConnectionString = s;
        con.Open();
    String query = "Delete from flight where flight_no='" + TextBox1.Text +"'";
    SqlDataAdapter sda = new SqlDataAdapter(query, con);
    sda.SelectCommand.ExecuteNonQuery();
    con.Close();
    Response.Redirect("admin_delete.aspx");
    
    }
}