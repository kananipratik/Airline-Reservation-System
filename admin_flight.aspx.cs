using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class admin_flight : System.Web.UI.Page
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
       String query="Insert into flight(flight_no,fr_om,t_o,buss_tic,eco_tic,type,date,time,price) Values ('"+TextBox1.Text+"','"+DropDownList1.SelectedItem+"','"+DropDownList2.SelectedItem+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+DropDownList3.SelectedItem+"','"+TextBox4.Text+"','"+TextBox5.Text+"','"+TextBox6.Text+"')";
       SqlDataAdapter sda = new SqlDataAdapter(query, con);
       sda.SelectCommand.ExecuteNonQuery();
       con.Close();
       Response.Write("Inserted successfully");
       Response.Redirect("admin_flight.aspx");
    }
}