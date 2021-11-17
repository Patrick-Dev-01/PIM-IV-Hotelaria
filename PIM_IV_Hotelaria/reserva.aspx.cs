using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PIM_IV_Hotelaria.utils;

namespace PIM_IV_Hotelaria
{

    public partial class Reserva : System.Web.UI.Page
    {
        Mascaras mascara = new Mascaras();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Enviar(object sender, EventArgs e)
        {
            if (mascara.RemoverMascara(cpf.Value).Length != 11)
            {
                msg_erro_cpf.InnerText = "CPF inválido";
            }

            else {
                msg_erro_cpf.InnerText = "";
            }

            if (nome.Value.Length <= 0) {
                msg_erro_nome.InnerText = "Informe seu Nome";   
            }

            else
            {
                msg_erro_nome.InnerText = "";
            }

            if (sobrenome.Value.Length <= 0)
            {
                msg_erro_sobrenome.InnerText = "Informe seu Sobrenome";
            }

            else
            {
                msg_erro_sobrenome.InnerText = "";
            }

            if (email.Value.Length <= 0)
            {
                msg_erro_email.InnerText = "Informe seu E-mail";
            }

            else
            {
                msg_erro_email.InnerText = "";
            }

            if (mascara.RemoverMascara(celular.Value).Length != 11)
            {
                msg_erro_celular.InnerText = "Número de Celular inválido";
            }

            else
            {
                msg_erro_celular.InnerText = "";
            }

            if (quarto.Value == "") {
                msg_erro_celular.InnerText = "Escolha um tipo de quarto";
            }

            else
            {
                msg_erro_celular.InnerText = "";
            }

            if (pagamento.Value == "")
            {
                msg_erro_pagamento.InnerText = "Escolha uma forma de pagamento";
            }

            else
            {
                msg_erro_pagamento.InnerText = "";
            }
        }
    }
}