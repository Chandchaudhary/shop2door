using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class sign_up : System.Web.UI.Page
{
    protected void txtsignup_Click(object sender, EventArgs e)
    {
        if(isfoemvailid())
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["shop 2 door"].ConnectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("insert into userids(username,password,email,name,usertype) values('" + txtusername.Text + "','" + Txtpass.Text + "','" + txtemail.Text + "','" + txtname.Text + "','user')", conn);
                cmd.ExecuteNonQuery();
                Response.Write("<script> alert('data has been saved');</script>");
                clr();
                Label1.Text = "registration done";
                Label1.ForeColor = System.Drawing.Color.AliceBlue;
                conn.Close();

            }
            Response.Redirect("~/sign in.aspx");
        }
        else
        {
            Response.Write("<script> alert('registration failed');</script>");
            Label1.Text = "registration failed";
            Label1.ForeColor = System.Drawing.Color.Red;
            clr();
        }
    }

    private bool isfoemvailid()
    {
        if(txtusername.Text =="")
        {
            Response.Write("<script>alert('username is empty');</script>");
            txtusername.Focus();
            return false;
        }
        else if (Txtpass.Text =="")
        {
            Response.Write("<script>alert('password is empty');</script>");
            Txtpass.Focus();
            return false;
        }
        else if (Txtcpass.Text != Txtpass.Text)
        {
            Response.Write("<script>alert('password dont match');</script>");
            Txtcpass.Focus();
            return false;
        }
        else if (txtemail.Text == "")
        {
            Response.Write("<script>alert('email is empty');</script>");
            txtemail.Focus();
            return false;
        }
        else if (txtname.Text == "")
        {
            Response.Write("<script>alert('name is empty');</script>");
            txtname.Focus();
            return false;
        }
        return true;

    }
    private void clr()
    {
        txtusername.Text = string.Empty;
        Txtpass.Text = string.Empty;
        Txtcpass.Text = string.Empty;
        txtemail.Text = string.Empty;
        txtname.Text = string.Empty;    
    }

    protected void txtsignin_Click(object sender, EventArgs e)
    {

    }
}
     

