using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using PIM_IV_Hotelaria.classes;
using System.Data;

namespace PIM_IV_Hotelaria
{
    public partial class Index : System.Web.UI.Page
    {
        Reserva reserva = new Reserva();
        Random randCaracteres = new Random();

        protected void Page_Load(object sender, EventArgs e)
        {
            Session["concluiuReserva"] = "false";
            string teste = "";

           

            Debug.WriteLine(teste);
        }
    }
}