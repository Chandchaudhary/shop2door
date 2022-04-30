using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class addcategory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    

    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["shop 2 door"].ConnectionString))
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("insert into category(catname) values('" + TextBox1.Text + "')", conn);
            cmd.ExecuteNonQuery();
            Response.Write("<script> alert('data has been saved');</script>");
            TextBox1.Text = String.Empty;

            //Label1.Text = "registration done";
            //Label1.ForeColor = System.Drawing.Color.AliceBlue;
            conn.Close();
            TextBox1.Focus();
        }
    }
}