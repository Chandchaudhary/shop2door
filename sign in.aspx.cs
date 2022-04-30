using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class sign_in : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void txtsignin_Click(object sender, EventArgs e)
    {
        
        {
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["shop 2 door"].ConnectionString))
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("select*from userids where username=@name and password=@password", conn);
                cmd.Parameters.AddWithValue("@name", name.Text);
                cmd.Parameters.AddWithValue("@password", password.Text);
                SqlDataAdapter sda= new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                if (dt.Rows .Count != 0)
                {
                    Session["name"] = dt.Rows[0]["username"].ToString();
                    Session["USERID"]=dt.Rows [0]["Uid"].ToString();
                    Session["USEREMAIL"] = dt.Rows [0]["email"].ToString();
                    if (pass.Checked)
                    {
                        Response.Cookies["cusername"].Value=name.Text;
                        Response.Cookies["cpass"].Value=password.Text;
                        Response.Cookies["cusername"].Expires=DateTime.Now.AddDays(10);
                        Response.Cookies["cpass"].Expires= DateTime.Now.AddDays(10);
                    }
                    else
                    {
                        Response.Cookies["cusername"].Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies["cpass"].Expires = DateTime.Now.AddDays(-1);
                    }
                    string utype;
                    utype = dt.Rows [0][5].ToString().Trim();
                    if (utype == "user")
                    {
                        Session["username"] = name.Text;
                        Response.Redirect("~/Product display.aspx");
                    }
                    if (utype == "admin")
                    {
                        Session["username"] = name.Text;
                        Response.Redirect("~/admin home page.aspx");
                    }
                    Response.Write("<script> alert('login successfully');</script>");
                }
                else
                {
                    Response.Write("<script> alert('login failed');</script>");

                    clr();
                }
                //Label1.Text = "registration done";
                //Label1.ForeColor = System.Drawing.Color.AliceBlue;
                conn.Close();

            }
            
        }
    }
    private void clr()
    {
        name.Text = string.Empty;
        password.Text = string.Empty;
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }
}