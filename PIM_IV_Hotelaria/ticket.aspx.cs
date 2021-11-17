using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PIM_IV_Hotelaria
{
    public partial class ticket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["concluiuReserva"] != "true")
            {
                Response.Redirect("index.aspx");
            }

            else
            {
                cookie.InnerText = "Welcome to ASP.NET";
            }
        }
    }
}