using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BeautySalon
{
    public partial class appointment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Image2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("hairoffer.aspx");
            
        }

    }
}