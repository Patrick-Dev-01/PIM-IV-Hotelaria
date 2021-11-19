using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PIM_IV_Hotelaria.utils;
using PIM_IV_Hotelaria.classes;

namespace PIM_IV_Hotelaria
{
    public partial class cancelamento : System.Web.UI.Page
    {
        Utils utils = new Utils();
        Reserva reserva = new Reserva();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Cancelar_Click(object sender, EventArgs e)
        {
            int erros = 0;
            string cpf = utils.RemoverMascara(name_cpf.Value);
            string protocolo = name_protocolo.Value;

            if (cpf.Length != 11)
            {
                msg_erro_cpf.InnerText = "Digite o CPF Corretamente";
                erros++;
            }

            else {
                msg_erro_cpf.InnerText = "";
                erros = 0;
            }

            if (protocolo == "")
            {
                msg_erro_protocolo.InnerText = "Digite seu protocolo";
                erros++;
            }

            else
            {
                msg_erro_protocolo.InnerText = "";
                erros = 0;
            }

            if (erros == 0) {
                try
                {
                    reserva.CancelarReserva(cpf, protocolo);

                    msg_server.Text = "Reserva Cancelada com Sucesso!";
                }

                catch
                {
                    msg_server_erro.Text = "Infelizmente não foi possivel efetuar o cancelamento da sua Reserva";
                }
            }
        }
    }
}