using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class user : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindcartnumber();
        if (Session["username"] != null)
        {
            Button1.Visible = true;
            //Label1.Text = "login successfully,welcome " + Session["username"].ToString();
            Button2.Visible = false;
        }
        else
        {
            Button2.Visible = true;
            Button1.Visible=false;
            
            Response.Redirect("~/sign in.aspx");
           
        }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session["username"] = null;
        Response.Redirect("~/Default.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/sign in.aspx");
    }
    public void bindcartnumber()
    {
        if (Request.Cookies["CartPID"] != null)
        {
            string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
            string[] ProductArray = CookiePID.Split(',');
            int productcount = ProductArray.Length;
            pcount.InnerText =productcount.ToString();
        }
        else
        {
            pcount.InnerText = 0.ToString();
        }
    }

    protected void searchbtn_Click(object sender, EventArgs e)
    {
        
    }
}
