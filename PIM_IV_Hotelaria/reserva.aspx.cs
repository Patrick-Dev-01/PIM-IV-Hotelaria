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
            string cpf = name_cpf.Value;
            string nome = name_nome.Value;
            string email = name_email.Value;
            string celular = name_celular.Value;
            string quarto = name_quarto.Value;
            string descricao = name_descricao.Value;
            string pagamento = name_pagamento.Value;
            string checkIn = name_checkIn.Value;
            string checkOut = name_checkOut.Value;

            if (mascara.RemoverMascara(cpf).Length != 11)
            {
                msg_erro_cpf.InnerText = "CPF inválido";
            }

            else {
                msg_erro_cpf.InnerText = "";
            }

            if (nome.Length <= 0) {
                msg_erro_nome.InnerText = "Informe seu Nome";   
            }

            else
            {
                msg_erro_nome.InnerText = "";
            }

            if (email.Length <= 0)
            {
                msg_erro_email.InnerText = "Informe seu E-mail";
            }

            else
            {
                msg_erro_email.InnerText = "";
            }

            if (mascara.RemoverMascara(celular).Length != 11)
            {
                msg_erro_celular.InnerText = "Número de Celular inválido";
            }

            else
            {
                msg_erro_celular.InnerText = "";
            }

            if (quarto == "") {
                msg_erro_quarto.InnerText = "Escolha um tipo de quarto";
            }

            else
            {
                msg_erro_quarto.InnerText = "";
            }

            if (pagamento == "")
            {
                msg_erro_pagamento.InnerText = "Escolha uma forma de pagamento";
            }

            else
            {
                msg_erro_pagamento.InnerText = "";
            }

            if (checkIn == "" || Convert.ToDateTime(checkIn) < Convert.ToDateTime(DateTime.Now))
            {
                msg_erro_checkIn.InnerText = "Insira um Check In válido";
            }

            else {
               msg_erro_checkIn.InnerText = "";
            }

            if (checkOut == "" || Convert.ToDateTime(checkOut) < Convert.ToDateTime(DateTime.Now))
            {
                msg_erro_checkOut.InnerText = "Insira um Check Out válido";
            }

            else
            {
                msg_erro_checkOut.InnerText = "";
            }

            Session["concluiuReserva"] = "true";
            Response.Redirect("ticket.aspx");
        }
    }
}