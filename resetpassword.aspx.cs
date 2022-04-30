using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;


public partial class resetpassword : System.Web.UI.Page
{
    String GUIDvalue;
    int uid;
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["shop 2 door"].ConnectionString))
        {

            GUIDvalue = Request.QueryString["id"];
            if (GUIDvalue != null)
            {

                SqlCommand cmd = new SqlCommand("select * from forgotpass where id=@id", conn);
                conn.Open();
                cmd.Parameters.AddWithValue("@id", GUIDvalue);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                if (dt.Rows.Count != 0)
                {
                    uid = Convert.ToInt32(dt.Rows[0][1]);

                }
                else
                {
                    Label1.Text = "your password reset has expired or invalid";
                }
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }
        if (!IsPostBack)
        {
            if (dt.Rows.Count != 0)
            {
                lbnewpass.Visible = true;
                newpass.Visible = true;
                lbcpass.Visible = true;
                newcpass.Visible = true;
                changepass.Visible = true;
            }
            else
            {
                Label1.Text = "your password reset has expired";
            }
        }
    }

    protected void changepass_Click(object sender, EventArgs e)
    {
        if (newpass.Text != "" && newcpass.Text != "" && newpass.Text == newcpass.Text)
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["shop 2 door"].ConnectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("Update userids set password=@p where Uid=@uid", conn);
                cmd.Parameters.AddWithValue("@p", newpass.Text);
                cmd.Parameters.AddWithValue("@uid", uid);
                cmd.ExecuteNonQuery();

                SqlCommand cmd2 = new SqlCommand("DELETE FROM forgotpass WHERE uid='"+uid+"'", conn);
                
                cmd2.ExecuteNonQuery();
                Response.Write("<script> alert('Password Reset Successfully done');  </script>");
                Response.Redirect("~/sign in.aspx");

            }
        }
    }
}