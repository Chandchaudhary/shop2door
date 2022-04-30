using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindProductcart();
        }
    }

    private void BindProductcart()
    {
        if (Request.Cookies["CartPID"] != null)
        {
            
            string CookieData = Request.Cookies["CartPID"].Value.Split('=')[1];
            string[] CookieDataArray=CookieData.Split(',');
            if(CookieDataArray.Length > 0)
            {
                headerid.InnerText="my cart("+CookieDataArray.Length+" items)";
                
                Int64 carttotal = 0;
                Int64 total = 0;
                for (int i = 0; i < CookieDataArray.Length; i++)
                {
                    string pid = CookieDataArray[i].ToString().Split('-')[0];
                    Int64 pid1 = Convert.ToInt64(Request.QueryString["pid"]);
                    using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["shop 2 door"].ConnectionString))
                    {

                        using (SqlCommand cmd = new SqlCommand("SELECT * FROM productimg where pimgid='" + pid1 + "'", conn))
                        {
                            cmd.CommandType = CommandType.Text;
                            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                            {
                                DataTable dt = new DataTable();
                                sda.Fill(dt);
                                repeater.DataSource = dt;
                                repeater.DataBind();
                            }
                        }
                        using (SqlCommand cmd = new SqlCommand("SELECT * FROM product where pid='" + pid1 + "'", conn))
                        {
                            cmd.CommandType = CommandType.Text;
                            using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                            {
                                DataTable dt = new DataTable();
                                sda.Fill(dt);
                                repeater1.DataSource = dt;
                                repeater1.DataBind();


                            }
                        }
                    }
                    
                }
            }

           
        }
    }
    protected void removecart_Click(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        if(Session["username"]!=null)
        { 
            Response.Redirect("~/payment.aspx");
        } 
        else
        {
            Response.Redirect("~/sign in.aspx");
        }
    }
}