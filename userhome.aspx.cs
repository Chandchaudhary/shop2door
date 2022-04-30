using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class userhome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"]!=null)
        {
            Button1.Visible = true;
            Button2.Visible = false;
            Label1.Text = "login successfully,welcome "+Session["username"].ToString();
        }
        else
        {
            Button1.Visible = false;
            Button2.Visible = true;
            Response.Redirect("~/sign in.aspx");
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["username"] = null;
        Response.Redirect("~/Default.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/sign in.aspx");
    }
}