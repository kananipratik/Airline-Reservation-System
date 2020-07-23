using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class _Default : System.Web.UI.Page
{
    public string s = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\prism infotech\Desktop\asp4-5\App_Data\111.mdf;Integrated Security=True;User Instance=True";
    private SqlConnection con = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin"] != null)
        {
            Button1.Visible = false;
        }
        else if (Session["user"] != null)
        {
            Button1.Visible = false;
        }
        else
        {
            Button1.Visible = true;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection();
        con.ConnectionString = s;
        con.Open();
        string checkuser = "select count(*) from admin where Username='" + TextBox1.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, con);
         int temp  = Convert.ToInt32(com.ExecuteScalar().ToString());
         con.Close();
         if (temp == 1)
         {
             con.Open();
             string checkpass = "select count(*) from admin where password='" + TextBox2.Text + "'";
             SqlCommand pass = new SqlCommand(checkpass, con);
             int temp1 = Convert.ToInt32(pass.ExecuteScalar().ToString());
             if (temp1 == 1)
             {
                 string checkpass1 = "select password from admin where password='" + TextBox2.Text + "'";
                 SqlCommand pass1 = new SqlCommand(checkpass1, con);
                 string password = pass1.ExecuteScalar().ToString();
                 if (password == TextBox2.Text)
                 {
                     Session["admin"] = TextBox1.Text;
                     Response.Write("welcome");
                     Response.Redirect("admin.aspx");
                 }
                 else
                 {
                     Response.Write("password not correct");
                 }
             }
             else
             {
                 Response.Write("password not matched");
             }
         }  
         else
         {
             Response.Write("username not correct");
         }
    }
}