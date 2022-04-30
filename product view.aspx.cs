using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class product_view : System.Web.UI.Page
{


    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request.QueryString["pid"] != null)
        { 
            if (!IsPostBack)
            {
                BindProductRepter();
                BindProductDetail(); 
            }
        }
        else
        {
            Response.Redirect("~/Product display.aspx");
        }
    }

    private void BindProductDetail()
    {
        Int64 pid = Convert.ToInt64(Request.QueryString["pid"]);
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["shop 2 door"].ConnectionString))
        {

            using (SqlCommand cmd = new SqlCommand("SELECT * FROM product where pid='" + pid + "'", conn))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    Session["hdCartAmount"] = dt.Rows[0]["psprice"].ToString();
                    Session["hdTotalPayed"] = dt.Rows[0]["pprice"].ToString();
                    Session["id"] = dt.Rows[0]["pid"].ToString();
                    Repeater2.DataSource = dt;
                    Repeater2.DataBind();

                }
            }
        }
    }

    private void BindProductRepter()
    {
        Int64 pid = Convert.ToInt64(Request.QueryString["pid"]);
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["shop 2 door"].ConnectionString))
        {

            using (SqlCommand cmd = new SqlCommand("SELECT * FROM productimg where pimg='"+pid+"'", conn))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);

                    Repeater1.DataSource = dt;
                    Repeater1.DataBind();

                }
            }
        }
    }

    protected void addtocart_Click(object sender, EventArgs e)
    {
        Int64 pid = Convert.ToInt64(Request.QueryString["pid"]);
        if (Request.Cookies["CartPID"] != null)
        {
            string CookiePID = Request.Cookies["CartPID"].Value.Split('=')[1];
            CookiePID = CookiePID + "," + pid;
            HttpCookie CartProducts = new HttpCookie("CartPID");
            CartProducts.Values["CartPID"] = CookiePID;
            CartProducts.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(CartProducts);
        }
        else
        {
            HttpCookie CartProducts = new HttpCookie("CartPID");
            CartProducts.Values["CartPID"] = pid.ToString();
            CartProducts.Expires = DateTime.Now.AddDays(30);
            Response.Cookies.Add(CartProducts);
        }

    }

    

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Int64 pid = Convert.ToInt64(Request.QueryString["pid"]);
            Response.Redirect("~/payment.aspx?pmt="+pid+ "");
        }
        else
        {
            Response.Redirect("~/sign in.aspx");
        }
    }

    protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
    {

    }
}
    