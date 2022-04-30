using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net;
using System.Net.Mail;
public partial class fogotpassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void rstpass_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["shop 2 door"].ConnectionString))
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("select*from userids where email=@email", conn);
            cmd.Parameters.AddWithValue("@email", fgemail.Text);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                string myguid = Guid.NewGuid().ToString();
                int uid = Convert.ToInt32(dt.Rows[0][0]);
                SqlCommand cmd1 = new SqlCommand("insert into forgotpass(id,uid,requestdatatime) values('" + myguid+"','"+uid+ "',GETDATE())", conn);
                cmd1.ExecuteNonQuery();
                //send reset link
                String ToEmailAddress = dt.Rows[0][3].ToString();
                String username = dt.Rows[0][1].ToString();
                String Emailbody = "hi," + username + ",<br/><br/>click the link below to reset your password<br/>http://localhost:53265/resetpassword.aspx?id="+myguid ;
                MailMessage passrecmail=new MailMessage("chandchaudhary41@gmail.com", ToEmailAddress);
                passrecmail.Body = Emailbody;
                passrecmail.IsBodyHtml =true;
                passrecmail.Subject = "reset password";
                SmtpClient smtp = new SmtpClient("Smtp.gmail.com", 587);
                smtp.Credentials = new NetworkCredential()
                {
                    UserName = "chandchaudhary41@gmail.com",
                    Password ="Knight11@."
                };
                smtp.EnableSsl = true;
                smtp.Send(passrecmail);
                //send reset link end
                Response.Write("<script> alert('link send successfully');</script>");
            }
            else
            {
                Response.Write("<script> alert('link send failed');</script>");
            }
            conn.Close();
        }
    
    }
}