using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_view_flight : System.Web.UI.Page
{
    public string s = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\prism infotech\Desktop\asp4-5\App_Data\111.mdf;Integrated Security=True;User Instance=True";
    private SqlConnection con = null;
    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie retrive = Request.Cookies["data2"];
        Label1.Text = retrive["uname"].ToString();
        string s1 = Label1.Text;
        Label1.Visible = false;

        con = new SqlConnection();
        con.ConnectionString = s;
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from passenger where user_name='"+s1+"'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }
}