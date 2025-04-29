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
    public partial class stafflogin : System.Web.UI.Page
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
                SqlCommand cmd = new SqlCommand("insert into staffreg(name, dob, contact, email, state, city, pincode, address, userid, password) values(@Name, @dob, @contact, @email, @state, @city, @pincode, @address, @userid, @password)", sc);

                cmd.Parameters.AddWithValue("@Name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@dob", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@contact", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@city", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@address", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@userid", TextBox8.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox9.Text.Trim());

                cmd.ExecuteNonQuery();
                sc.Close();

                Response.Write("<script>alert('ADDED SUCESSFULLY!!!!');</script>");

            }

            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}