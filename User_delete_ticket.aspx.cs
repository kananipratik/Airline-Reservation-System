using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class User_delete_ticket : System.Web.UI.Page
{
    public string s = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\prism infotech\Desktop\asp4-5\App_Data\111.mdf;Integrated Security=True;User Instance=True";
    private SqlConnection con = null;

    protected void Page_Load(object sender, EventArgs e)
    {
        HttpCookie retrive = Request.Cookies["data2"];
        string s1= retrive["uname"].ToString();

        con = new SqlConnection();
        con.ConnectionString = s;
        con.Open();
        SqlCommand cmd = con.CreateCommand();
        cmd.CommandType = CommandType.Text;
        cmd.CommandText = "select * from passenger where user_name='" + s1 + "'";
        cmd.ExecuteNonQuery();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(dt);
        GridView1.DataSource = dt;
        GridView1.DataBind();
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection();
        con.ConnectionString = s;
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select * from passenger where p_id='" + TextBox1.Text + "'", con);
        SqlDataReader dr = cmd1.ExecuteReader();
        dr.Read();
        string s1 = dr["flight_no"].ToString();
        string s2 = dr["p_class"].ToString();
        con.Close();

        string s3 = "Business";
        string s4 = "Economy";
        if (s2 == s3)
        {
            con.Open();
            SqlCommand cmd11 = new SqlCommand("select * from flight where flight_no ='" + s1 + "'", con);
            SqlDataReader dr1 = cmd11.ExecuteReader();
            dr1.Read();
            string s11 = dr1["buss_tic"].ToString();
            int a=1;
            int buss = Convert.ToInt32(s11)+a;
            s11 = buss.ToString();
            con.Close();

            con.Open();
            String query = "UPDATE flight SET buss_tic='" + s11 + "'";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            sda.SelectCommand.ExecuteNonQuery();
            con.Close();
        }
        else if (s2 == s4)
        {
            con.Open();
            SqlCommand cmd11 = new SqlCommand("select * from flight where flight_no ='" + s1 + "'", con);
            SqlDataReader dr1 = cmd11.ExecuteReader();
            dr1.Read();
            string s11 = dr1["eco_tic"].ToString();
            int a = 1;
            int eco = Convert.ToInt32(s11) + a;
            s11 = eco.ToString();
            con.Close();

            con.Open();
            String query = "UPDATE flight SET eco_tic='" + s11 + "'";
            SqlDataAdapter sda = new SqlDataAdapter(query, con);
            sda.SelectCommand.ExecuteNonQuery();
            con.Close();
        }

       

        con.Open();
        String query11 = "Delete from passenger where p_id='" + TextBox1.Text + "'";
        SqlDataAdapter sda11 = new SqlDataAdapter(query11, con);
        sda11.SelectCommand.ExecuteNonQuery();
        con.Close();
        Response.Redirect("User_delete_ticket.aspx");
   
        
    }
}