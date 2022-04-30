using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;

public partial class payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            if (!IsPostBack)
            {
                BindProductRepter();
            }

        }
        else
        {
            Response.Redirect("~/sign in.aspx");

        }
    }

    private void BindProductRepter()
    {
        Int64 pid = Convert.ToInt64(Request.QueryString["pmt"]);
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["shop 2 door"].ConnectionString))
        {

            using (SqlCommand cmd = new SqlCommand("SELECT * FROM product where pid='" + pid + "'", conn))
            {
                cmd.CommandType = CommandType.Text;
                using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    sda.Fill(dt);
                    Repeater.DataSource = dt;
                    Repeater.DataBind();
                    
                    //CartTotal += Convert.ToInt64(dt.Rows[0]["pprice"]);
                    //Total += Convert.ToInt64(dt.Rows[0]["psprice"]);
                }
            }
        }
    }

    protected void btnCart2_ServerClick(object sender, EventArgs e)
    {

    }

    protected void btnPaytm_Click(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            Int64 pid = Convert.ToInt64(Request.QueryString["pmt"]);
            using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["shop 2 door"].ConnectionString))
            {



                string USERID = Session["USERID"].ToString();
                string PaymentType = "Paytm";
                string PaymentStatus = "NotPaid";
                string id = Session["id"].ToString();
                string hdTotalPayed = Session["hdTotalPayed"].ToString();
                string hdCartAmount = Session["hdCartAmount"].ToString();
                string hdCartDiscount = "discount";
                string EMAILID = Session["USEREMAIL"].ToString();
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["shop 2 door"].ConnectionString))
                {
                    SqlCommand cmd1 = new SqlCommand("insert into tblPurchase values('" + USERID + "','" + id + "','" + hdTotalPayed  + "','" + 0 + "','" + hdCartAmount + "','" + PaymentType + "','" + PaymentStatus + "',getdate(),'"
                    + txtName.Text + "','" + txtAddress.Text + "','" + txtPinCode.Text + "','" + txtMobileNumber.Text + "')", con);
                    con.Open();
                    cmd1.ExecuteNonQuery();
                    Response.Write("<script> alert('successfully');</script>");
                    con.Close();
                    String ToEmailAddress = Session["USEREMAIL"].ToString();
                    String username = txtName.Text;
                    String Emailbody = "hi," + username + ",<br/><br/>Your oder has been place successfully and will be dilever whthin 3 to 4 hours.your total bill amount is Rs."+hdTotalPayed+"<br/>for any query contact us by clicking this link<br/>http://localhost:53265/Contact%20us.aspx";
                    MailMessage passrecmail = new MailMessage("chandchaudhary41@gmail.com", ToEmailAddress);
                    passrecmail.Body = Emailbody;
                    passrecmail.IsBodyHtml = true;
                    passrecmail.Subject = "Order Succesful";
                    SmtpClient smtp = new SmtpClient("Smtp.gmail.com", 587);
                    smtp.Credentials = new NetworkCredential()
                    {
                        UserName = "chandchaudhary41@gmail.com",
                        Password = "Knight11@."
                    };
                    smtp.EnableSsl = true;
                    smtp.Send(passrecmail);

                }
            }

        }
        else
        {
            Response.Redirect("~/sign in.aspx");

        }
    }

    protected void BtnPlaceNPay_Click(object sender, EventArgs e)
    {

    }
}