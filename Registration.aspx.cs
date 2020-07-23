using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    public string s = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\prism infotech\Desktop\asp4-5\App_Data\111.mdf;Integrated Security=True;User Instance=True";
    private SqlConnection con11 = null;    
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con11 = new SqlConnection();
        con11.ConnectionString = s;
        con11.Open();
        String query11 = "Insert into user_tab(user_name,e_mail,password) Values ('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"')";
        SqlDataAdapter sda11 = new SqlDataAdapter(query11, con11);
        sda11.SelectCommand.ExecuteNonQuery();
        con11.Close();
        Response.Write("User Registred Successfuly");
        Response.Redirect("Login.aspx");
    }
}