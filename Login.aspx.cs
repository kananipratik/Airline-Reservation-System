using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    public string s = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\prism infotech\Desktop\asp4-5\App_Data\111.mdf;Integrated Security=True;User Instance=True";
    private SqlConnection con = null;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpCookie user_login = new HttpCookie("data2");
        user_login["uname"] = TextBox1.Text;
        user_login.Expires = System.DateTime.Now.AddDays(28);
        Response.Cookies.Add(user_login);
        
        con = new SqlConnection();
        con.ConnectionString = s;
        con.Open();
        string checkuser = "select count(*) from user_tab where user_name='" + TextBox1.Text + "'";
        SqlCommand com = new SqlCommand(checkuser, con);
        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        con.Close();
        if (temp == 1)
        {
            con.Open();
            string checkpass = "select count(*) from user_tab where password='" + TextBox2.Text + "'";
            SqlCommand pass = new SqlCommand(checkpass, con);
            int temp1 = Convert.ToInt32(pass.ExecuteScalar().ToString());
            if (temp1 == 1)
            {
                string checkpass1 = "select password from user_tab where password='" + TextBox2.Text + "'";
                SqlCommand pass1 = new SqlCommand(checkpass1, con);
                string password = pass1.ExecuteScalar().ToString();
                if (password == TextBox2.Text)
                {
                    Session["user"] = TextBox1.Text;
                    Response.Write("Welcome");
                    Response.Redirect("User_page.aspx");
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