using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user"] != null)
        {
            HyperLink1.Visible = true;
            HyperLink2.Visible = false;
            HyperLink3.Visible = true;
            HyperLink4.Visible = true;
        }
        else
        {
            HyperLink1.Visible = true;
            HyperLink2.Visible = true;
            HyperLink3.Visible = false;
            HyperLink4.Visible = false;
        }
    }
}
