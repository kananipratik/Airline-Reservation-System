using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class book_tick : System.Web.UI.Page
{
    public string s = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\Users\prism infotech\Desktop\asp4-5\App_Data\111.mdf;Integrated Security=True;User Instance=True";
    private SqlConnection con= null;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;

        TextBox5.Visible = false;
        TextBox6.Visible = false;
        TextBox7.Visible = false;
        TextBox8.Visible = false;
        Button2.Visible = false;
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            con = new SqlConnection();
            con.ConnectionString = s;
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from flight WHERE fr_om='" + DropDownList1.SelectedItem + "' and t_o='" + DropDownList2.SelectedItem + "'", con);
            SqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            string s1 = dr["fr_om"].ToString();
            string s2 = dr["t_o"].ToString();
            string price = dr["price"].ToString();
            
            if (DropDownList1.SelectedValue == s1)
            {
                if (DropDownList2.SelectedValue == s2)
                {
                    int p1 = Convert.ToInt32(price) * Convert.ToInt32(TextBox4.Text);
                    Label8.Text = p1.ToString();
                 
                    Label7.Visible = true;
                    Label8.Visible = true;
                    Button2.Visible = true;
                    int a = Convert.ToInt32(TextBox4.Text);
                    if (a == 2)
                    {
                        Label1.Visible = true;
                        Label2.Visible = true;
                        TextBox5.Visible = true;
                    }
                    else if (a == 3)
                    {
                        Label1.Visible = true;
                        TextBox5.Visible = true;
                        TextBox6.Visible = true;
                        Label2.Visible = true; ;
                        Label3.Visible = true; ;

                    }
                    else if (a == 4)
                    {
                        Label1.Visible = true;
                        TextBox5.Visible = true;
                        TextBox6.Visible = true;
                        TextBox7.Visible = true;
                        Label2.Visible = true;
                        Label3.Visible = true;
                        Label4.Visible = true; ;

                    }
                    else if (a == 5)
                    {
                        Label1.Visible = true;
                        TextBox5.Visible = true;
                        TextBox6.Visible = true;
                        TextBox7.Visible = true;
                        TextBox8.Visible = true;
                        Label2.Visible = true;
                        Label3.Visible = true;
                        Label4.Visible = true;
                        Label5.Visible = true;
                    }
                }
                else
                {
                    Response.Write("error");
                    Response.Redirect("book_tick.aspx");
                }
            }
            else
            {
                Response.Write("error");
                Response.Redirect("book_tick.aspx");
            }
            con.Close();
        }
        catch (Exception)
        {
            Response.Write("error");
            Response.Redirect("book_tick.aspx");
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        HttpCookie retrive = Request.Cookies["data2"];
        Label6.Text = retrive["uname"].ToString();
        string s11 = Label6.Text;

        con = new SqlConnection();
        con.ConnectionString = s;
        con.Open();
        SqlCommand cmd1 = new SqlCommand("select * from flight WHERE fr_om='" + DropDownList1.SelectedItem + "' and t_o='" + DropDownList2.SelectedItem + "'", con);
        SqlDataReader dr = cmd1.ExecuteReader();
        dr.Read();
        //for update in flight table
        string s4 = dr["buss_tic"].ToString();
        int buss = Convert.ToInt32(s4);
        string s5 = dr["eco_tic"].ToString();
        int eco = Convert.ToInt32(s5);
        string s1 = DropDownList3.SelectedValue;
        string s2 = "Business";
        string s3 = "Economy";

        string f1 = dr["flight_no"].ToString();
        con.Close();
        int a = Convert.ToInt32(TextBox4.Text);
       
        if (a == 1)
        {
            con.Open();
            Guid bid = Guid.NewGuid();

            Guid pid1 = Guid.NewGuid();
            
            String query1 = "Insert into passenger(user_name,flight_no,p_id,p_name,p_email,p_phone,p_from,p_to,p_class,book_id) Values('"+s11+"','"+f1+"','" + pid1 + "','" + TextBox1.Text +"','"+TextBox2.Text+"','"+ TextBox3.Text +"','"+ DropDownList1.SelectedValue +"','"+DropDownList2.SelectedValue+"','"+DropDownList3.SelectedValue+"','"+bid+"')";
            SqlDataAdapter sda1 = new SqlDataAdapter(query1, con);
            sda1.SelectCommand.ExecuteNonQuery();
            con.Close();
        }
        else if (a == 2)
        {
            con.Open();
            Guid bid = Guid.NewGuid();

            Guid pid1 = Guid.NewGuid();
            Guid pid2 = Guid.NewGuid();
           
            String query1 = "Insert into passenger(user_name,flight_no,p_id,p_name,p_email,p_phone,p_from,p_to,p_class,book_id) Values('"+s11+"','"+f1+"','" + pid1 + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','"+bid+"')";
            String query2 = "Insert into passenger(user_name,flight_no,p_id,p_name,p_email,p_phone,p_from,p_to,p_class,book_id) Values('"+s11+"','"+f1+"','" + pid2 + "','" + TextBox5.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','"+bid+"')";
            
            SqlDataAdapter sda1 = new SqlDataAdapter(query1, con);
            SqlDataAdapter sda2 = new SqlDataAdapter(query2, con);

            sda1.SelectCommand.ExecuteNonQuery();
            sda2.SelectCommand.ExecuteNonQuery();
            con.Close();
        }
        else if (a == 3)
        {
            con.Open();
            Guid bid = Guid.NewGuid();

            Guid pid1 = Guid.NewGuid();
            Guid pid2 = Guid.NewGuid();
            Guid pid3 = Guid.NewGuid();

            String query1 = "Insert into passenger(user_name,flight_no,p_id,p_name,p_email,p_phone,p_from,p_to,p_class,book_id) Values('"+s11+"','"+f1+"','" + pid1 + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','"+bid+"')";
            String query2 = "Insert into passenger(user_name,flight_no,p_id,p_name,p_email,p_phone,p_from,p_to,p_class,book_id) Values('"+s11+"','"+f1+"','" + pid2 + "','" + TextBox5.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','"+bid+"')";
            String query3 = "Insert into passenger(user_name,flight_no,p_id,p_name,p_email,p_phone,p_from,p_to,p_class,book_id) Values('"+s11+"','"+f1+"','" + pid3 + "','" + TextBox6.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','"+bid+"')";
           
            SqlDataAdapter sda1 = new SqlDataAdapter(query1, con);
            SqlDataAdapter sda2 = new SqlDataAdapter(query2, con);
            SqlDataAdapter sda3 = new SqlDataAdapter(query3, con);

            sda1.SelectCommand.ExecuteNonQuery();
            sda2.SelectCommand.ExecuteNonQuery();
            sda3.SelectCommand.ExecuteNonQuery();
            con.Close();
        }
        else if (a == 4)
        {
            con.Open();
            Guid bid = Guid.NewGuid();

            Guid pid1 = Guid.NewGuid();
            Guid pid2 = Guid.NewGuid();
            Guid pid3 = Guid.NewGuid();
            Guid pid4 = Guid.NewGuid();

            String query1 = "Insert into passenger(user_name,flight_no,p_id,p_name,p_email,p_phone,p_from,p_to,p_class,book_id) Values('"+s11+"','"+f1+"','" + pid1 + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','"+bid+"')";
            String query2 = "Insert into passenger(user_name,flight_no,p_id,p_name,p_email,p_phone,p_from,p_to,p_class,book_id) Values('"+s11+"','"+f1+"','" + pid2 + "','" + TextBox5.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','"+bid+"')";
            String query3 = "Insert into passenger(user_name,flight_no,p_id,p_name,p_email,p_phone,p_from,p_to,p_class,book_id) Values('"+s11+"','"+f1+"','" + pid3 + "','" + TextBox6.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','"+bid+"')";
            String query4 = "Insert into passenger(user_name,flight_no,p_id,p_name,p_email,p_phone,p_from,p_to,p_class,book_id) Values('"+s11+"','"+f1+"','" + pid4 + "','" + TextBox7.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','"+bid+"')";
            
            SqlDataAdapter sda1 = new SqlDataAdapter(query1, con);
            SqlDataAdapter sda2 = new SqlDataAdapter(query2, con);
            SqlDataAdapter sda3 = new SqlDataAdapter(query3, con);
            SqlDataAdapter sda4 = new SqlDataAdapter(query4, con);

            sda1.SelectCommand.ExecuteNonQuery();
            sda2.SelectCommand.ExecuteNonQuery();
            sda3.SelectCommand.ExecuteNonQuery();
            sda4.SelectCommand.ExecuteNonQuery();
            con.Close();
        }
        else if (a == 5)
        {
            con.Open();
            Guid bid = Guid.NewGuid();

            Guid pid1 = Guid.NewGuid();
            Guid pid2 = Guid.NewGuid();
            Guid pid3 = Guid.NewGuid();
            Guid pid4 = Guid.NewGuid();
            Guid pid5 = Guid.NewGuid();

            String query1 = "Insert into passenger(user_name,flight_no,p_id,p_name,p_email,p_phone,p_from,p_to,p_class,book_id) Values('" + s11 + "','" + f1 +"','"  + pid1 + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + bid + "')";
            String query2 = "Insert into passenger(user_name,flight_no,p_id,p_name,p_email,p_phone,p_from,p_to,p_class,book_id) Values('" + s11 + "','" + f1 + "','" + pid2 + "','" + TextBox5.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + bid + "')";
            String query3 = "Insert into passenger(user_name,flight_no,p_id,p_name,p_email,p_phone,p_from,p_to,p_class,book_id) Values('" + s11 + "','" + f1 + "','" + pid3 + "','" + TextBox6.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + bid + "')";
            String query4 = "Insert into passenger(user_name,flight_no,p_id,p_name,p_email,p_phone,p_from,p_to,p_class,book_id) Values('" + s11 + "','" + f1 + "','" + pid4 + "','" + TextBox7.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + bid + "')";
            String query5 = "Insert into passenger(user_name,flight_no,p_id,p_name,p_email,p_phone,p_from,p_to,p_class,book_id) Values('" + s11 + "','" + f1 + "','" + pid5 + "','" + TextBox8.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + DropDownList3.SelectedValue + "','" + bid + "')";
            
            SqlDataAdapter sda1 = new SqlDataAdapter(query1, con);
            SqlDataAdapter sda2 = new SqlDataAdapter(query2, con);
            SqlDataAdapter sda3 = new SqlDataAdapter(query3, con);
            SqlDataAdapter sda4 = new SqlDataAdapter(query4, con);
            SqlDataAdapter sda5 = new SqlDataAdapter(query4, con);

            sda1.SelectCommand.ExecuteNonQuery();
            sda2.SelectCommand.ExecuteNonQuery();
            sda3.SelectCommand.ExecuteNonQuery();
            sda4.SelectCommand.ExecuteNonQuery();
            sda5.SelectCommand.ExecuteNonQuery();
            con.Close();
        }
       

        
        if (s1 ==s2 )
        {
            int temp = Convert.ToInt32(TextBox4.Text);
            int up_b = buss - temp;
            string update_buss = up_b.ToString();
            con.Open();
            String que = "update flight SET buss_tic='" + update_buss + "' WHERE fr_om='" + DropDownList1.SelectedValue + "'and t_o='" + DropDownList2.SelectedValue + "'";
            SqlDataAdapter sda11 = new SqlDataAdapter(que, con);
            sda11.SelectCommand.ExecuteNonQuery();
            con.Close();

        }
        else if(s1==s3)
        {
             int temp1 = Convert.ToInt32(TextBox4.Text);
            int up_eco = eco - temp1;
            string update_eco = up_eco.ToString();
            con.Open();
            String que1 = "update flight SET eco_tic='" + update_eco + "' WHERE fr_om='" + DropDownList1.SelectedValue + "'and t_o='" + DropDownList2.SelectedValue + "'";
            SqlDataAdapter sda12 = new SqlDataAdapter(que1, con);
            sda12.SelectCommand.ExecuteNonQuery();
            con.Close();
         }
        Response.Write("Ticket Booked");
        Response.Redirect("User_view_flight.aspx");
    }
}