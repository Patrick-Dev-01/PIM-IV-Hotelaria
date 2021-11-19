using System;
using System.Collections.Generic;
using System.Globalization;
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
            if (Session["concluiuReserva"].ToString() != "true") {
                Response.Redirect("index.aspx");
            }

            else {
                nome.InnerText = Session["nome"].ToString();
                celular.InnerText = Session["celular"].ToString();
                email.InnerText = Session["email"].ToString();
                quarto.InnerText = Session["descricao_quarto"].ToString();
                numero_quarto.InnerText = Session["numero_quarto"].ToString();
                andar.InnerText = Session["andar"].ToString();
                checkIn.InnerText = Session["checkIn"].ToString();
                checkOut.InnerText = Session["checkOut"].ToString();
                protocolo.InnerText = Session["protocolo"].ToString();
                diaria.InnerText = Session["diaria"].ToString();
            }
            
        }
    }
}