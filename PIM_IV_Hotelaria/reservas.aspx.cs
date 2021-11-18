using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Diagnostics;
using PIM_IV_Hotelaria.utils;
using PIM_IV_Hotelaria.classes;
using System.Data;

namespace PIM_IV_Hotelaria
{

    public partial class Reservas : System.Web.UI.Page
    {
        Utils utils = new Utils();
        Reserva reserva = new Reserva();

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button_Enviar(object sender, EventArgs e)
        {
            string cpf = name_cpf.Value;
            string nome = name_nome.Value;
            string email = name_email.Value;
            string celular = name_celular.Value;
            string tipo_quarto = name_quarto.Value;
            string checkIn = name_checkIn.Value;
            string checkOut = name_checkOut.Value;
            string pagamento = name_pagamento.Value;

            if (utils.RemoverMascara(cpf).Length != 11)
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

            if (utils.RemoverMascara(celular).Length != 11)
            {
                msg_erro_celular.InnerText = "Número de Celular inválido";
            }

            else
            {
                msg_erro_celular.InnerText = "";
            }

            if (tipo_quarto == "") {
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

            /* Consultar quartos disponíveis */
            
            var quartosDisponiveis = reserva.quartosDisponiveis(1);
            int[] quartos = new int[quartosDisponiveis.Rows.Count];
            int indice = 0;

            foreach (DataRow quartoDisponivel in quartosDisponiveis.Rows)
            {
                foreach (int item in quartoDisponivel.ItemArray)
                {
                    quartos[indice] = item;
                    indice ++;
                }
            }

            
                Random randQuarto = new Random();
                reserva.cadastrarReserva(cpf, nome, email, celular, randQuarto.Next(quartos[quartos.Length]), pagamento, checkIn, checkOut);

                Session["nome"] = nome;
                Session["email"] = email;
                Session["celular"] = celular;
                Session["numero_quarto"] = quartos[randQuarto.Next(quartos.Length)]; 
                Session["descricao_quarto"] = utils.DescricaoQuarto(tipo_quarto);
                Session["checkIn"] = checkIn;
                Session["checkOut"] = checkOut;
                Session["concluiuReserva"] = "true";
                Response.Redirect("ticket.aspx");

        }
    }
}