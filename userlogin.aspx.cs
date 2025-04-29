using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace BeautySalon
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection sc;
        SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            sc = new SqlConnection();
            sc.ConnectionString = "Data Source=DESKTOP-HDRERC8\\SQLEXPRESS01;Initial Catalog=Salon;Integrated Security=True";
            sc.Open();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("select * from userreg where userid='" + TextBox1.Text.Trim() + "' AND Password='" + TextBox2.Text.Trim() + " ' ", sc);
                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script> alert('Hello" + dr.GetValue(0).ToString() + "');</script>");
                        Response.Redirect("appointment.aspx");

                    }
                }

                else
                {
                    Response.Write("<script> alert('Invalid Credentials');</script>");
                }
            }

            catch(Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }
    }
}