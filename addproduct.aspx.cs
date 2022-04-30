using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
public partial class addproduct : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
        {
            Bindcategory();
        }
    }
    private void Bindcategory()
    {
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["shop 2 door"].ConnectionString))
        {
            conn.Open();
            SqlCommand cmd = new SqlCommand("SELECT*FROM category", conn);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);  
            if(dt.Rows.Count != 0)
            {
                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "catname";
                DropDownList1.DataValueField = "catid";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("--select--", "0"));
            }
            cmd.ExecuteNonQuery();
            conn.Close();
            
        }
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        using (SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["shop 2 door"].ConnectionString))
        {
            SqlCommand cmd = new SqlCommand("sp_InsertProduct",conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@pname",TextBox1.Text);
            cmd.Parameters.AddWithValue("@pprice",TextBox2.Text);
            cmd.Parameters.AddWithValue("@psprice",TextBox3.Text);
            cmd.Parameters.AddWithValue("@pcategory", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@pamount",TextBox5.Text);
            cmd.Parameters.AddWithValue("@pdetail",TextBox6.Text);
            if(CheckBox1.Checked==true)
            {
                cmd.Parameters.AddWithValue("@pfdelivery",1.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@pfdelivery", 0.ToString());   
            }
            if (CheckBox2.Checked == true)
            {
                cmd.Parameters.AddWithValue("@preturn", 1.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@preturn", 0.ToString());
            }
            if (CheckBox3.Checked == true)
            {
                cmd.Parameters.AddWithValue("@pcod", 1.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@pcod", 0.ToString());
            }
            conn.Open();
           
            Int64 pid = Convert.ToInt64(cmd.ExecuteScalar());
            if (FileUpload1.HasFile)
            {
                string Extention = Path.GetExtension(FileUpload1.PostedFile.FileName);
                SqlCommand cmd1 = new SqlCommand("insert into productimg values('" + pid + "','" + TextBox1.Text.ToString().Trim() + "01" + "','" + Extention + "') ", conn);
                cmd1.ExecuteNonQuery();
                string SavePath = Server.MapPath("~/image/product img/")+pid;
                if(!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                
                string name = (TextBox1.Text+"01"+ Path.GetExtension(FileUpload1.PostedFile.FileName)).Trim().ToString();
                FileUpload1.SaveAs(SavePath+"\\"+name);
                //FileUpload1.SaveAs(SavePath+"\\"+TextBox1.Text.ToString().Trim()+"01"+Extention);
                 SavePath = string.Empty;
                name = string.Empty;
                Extention = string.Empty;
                TextBox1.Text = string.Empty;
                TextBox2.Text = string.Empty;
                TextBox3.Text = string.Empty;
                DropDownList1.SelectedItem.Value= string.Empty;
                TextBox5.Text = string.Empty;
                TextBox6.Text = string.Empty;
                Response.Write("<script> alert('Product Add Successfully');</script>");
            }
            else
            {
                Response.Write("<script> alert('input proper img');</script>");
            }
        }
    }
}