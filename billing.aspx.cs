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
    public partial class billing : System.Web.UI.Page
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
            if (DropDownList1.Text == "Highlights")
            {
                TextBox5.Text = "2000";
                
            }

            else if (DropDownList1.Text == "Lowlights")
            {
                TextBox5.Text = "3200";
                
            }
            else if (DropDownList1.Text == "Ombre")
            {
                TextBox5.Text = "4000";
                
            }
            else if (DropDownList1.Text == "OmbreHighlights") 
            {
                TextBox5.Text = "5000";
                
            }
            else if (DropDownList1.Text == "Aroma therapy")
            {
                TextBox5.Text = "7000";

            }
            else if (DropDownList1.Text == "Body Massage")
            {
                TextBox5.Text = "5000";

            }
            else if (DropDownList1.Text == "Hair Spa")
            {
                TextBox5.Text = "4000";

            }
            else if (DropDownList1.Text == "Thai Foot Massage")
            {
                TextBox5.Text = "2500";

            }
            else if (DropDownList1.Text == "Facial")
            {
                TextBox5.Text = "800";

            }
            else if (DropDownList1.Text == "Waxing")
            {
                TextBox5.Text = "400";

            }
            else if (DropDownList1.Text == "Threading")
            {
                TextBox5.Text = "100";

            }
            else if (DropDownList1.Text == "Festive Make-up")
            {
                TextBox5.Text = "3000";

            }
            else if (DropDownList1.Text == "Soft Make-up")
            {
                TextBox5.Text = "2000";

            }
            else if (DropDownList1.Text == "Bridal Make-up")
            {
                TextBox5.Text = "6000";

            }


            else
            {
                TextBox5.Text = "Not Selected any"; ;
            }

            try
            {
                

                Panel1.Visible = true;
                Label1.Text = "Your Service: " + DropDownList1.Text;
                Label2.Text = "Your Service Amount is Rs." + TextBox5.Text;
                SqlCommand cmd = new SqlCommand("insert into billing(name, doa, contact, email,service,price,time) values(@name, @doa, @contact, @email,@service,@price,@time)", sc);

                cmd.Parameters.AddWithValue("@name", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@doa", TextBox2.Text);
                cmd.Parameters.AddWithValue("@contact",TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@service",DropDownList1.Text.Trim());
                cmd.Parameters.AddWithValue("@price", TextBox5.Text.Trim());
                cmd.Parameters.AddWithValue("@time", TextBox6.Text.Trim());
                cmd.ExecuteNonQuery();
                sc.Close();
            }


            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}