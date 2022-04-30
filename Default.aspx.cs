using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        bindcartnumber();
    }
    public void bindcartnumber()
    {
        if (Request.Cookies["cartpid"]!=null)
        {
            string cookiepid = Request.Cookies["cartpid"].Value.Split('=')[1];
            string[] ProductArray= cookiepid.Split(',');
            int productcount = ProductArray.Length;
            pcount.InnerText = productcount.ToString();
        }
        else
        {
            pcount.InnerText = 0.ToString(); 
        }
    }

    protected void searchbtn_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["shop 2 door"].ConnectionString))
        {
            using (SqlCommand cmd = new SqlCommand("SELECT * FROM category where catname='" + searchbtn.Text + "'", conn))
            {
               
                cmd.CommandType=CommandType.Text;
                cmd.Connection = conn;
               
                DataTable dt = new DataTable();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                sda.Fill(dt);
                search.DataSource = dt;
                search.DataBind();
                
            }
        }
    }
}