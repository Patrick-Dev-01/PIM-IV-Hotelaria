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
            int erros = 0; 
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
                erros++;
            }

            else {
                msg_erro_cpf.InnerText = "";
                erros = 0;
            }

            if (nome.Length <= 0) {
                msg_erro_nome.InnerText = "Informe seu Nome";
                erros++;
            }

            else
            {
                msg_erro_nome.InnerText = "";
                erros = 0;
            }

            if (email.Length <= 0)
            {
                msg_erro_email.InnerText = "Informe seu E-mail";
                erros++;
            }

            else
            {
                msg_erro_email.InnerText = "";
                erros = 0;
            }

            if (utils.RemoverMascara(celular).Length != 11)
            {
                msg_erro_celular.InnerText = "Número de Celular inválido";
                erros++;
            }

            else
            {
                msg_erro_celular.InnerText = "";
                erros = 0;
            }

            if (tipo_quarto == "") {
                msg_erro_quarto.InnerText = "Escolha um tipo de quarto";
                erros++;
            }

            else
            {
                msg_erro_quarto.InnerText = "";
                erros = 0;
            }

            if (pagamento == "")
            {
                msg_erro_pagamento.InnerText = "Escolha uma forma de pagamento";
                erros++;
            }

            else
            {
                msg_erro_pagamento.InnerText = "";
                erros = 0;
            }

            if (checkIn == "" || Convert.ToDateTime(checkIn) < Convert.ToDateTime(DateTime.Now))
            {
                msg_erro_checkIn.InnerText = "Insira um Check In válido";
                erros++;
            }

            else {
               msg_erro_checkIn.InnerText = "";
               erros = 0;
            }

            if (checkOut == "" || Convert.ToDateTime(checkOut) < Convert.ToDateTime(DateTime.Now) || Convert.ToDateTime(checkOut) < Convert.ToDateTime(checkIn))
            {
                msg_erro_checkOut.InnerText = "Insira um Check Out válido";
                erros++;
            }

            else
            {
                msg_erro_checkOut.InnerText = "";
                erros = 0;
            }

            if (erros == 0) {
                

                var quartosDisponiveis = reserva.QuartosDisponiveis(tipo_quarto);
                int[] quartos = new int[quartosDisponiveis.Rows.Count];
                int indice = 0;

                foreach (DataRow quartoDisponivel in quartosDisponiveis.Rows)
                {
                    foreach (int item in quartoDisponivel.ItemArray)
                    {
                        quartos[indice] = item;
                        indice++;
                    }
                }

                Random randQuarto = new Random();
                Random randProtocolo = new Random();

                int numero_quarto = quartos[randQuarto.Next(quartos.Length)];
                string protocolo = "";

                for (int i = 1; i <= 10; i++)
                {
                    protocolo = randProtocolo.Next().ToString();
                }

                reserva.cadastrarReserva(cpf, nome, email, celular, numero_quarto, pagamento, checkIn, checkOut, protocolo);

                Session["nome"] = nome;
                Session["email"] = email;
                Session["celular"] = celular;
                Session["numero_quarto"] = numero_quarto;
                Session["descricao_quarto"] = utils.DescricaoQuarto(tipo_quarto);
                Session["andar"] = utils.quartoAndar(numero_quarto);
                Session["checkIn"] = checkIn;
                Session["checkOut"] = checkOut;
                Session["diaria"] = utils.ValorDiaria(tipo_quarto);
                Session["protocolo"] = protocolo;
                Session["concluiuReserva"] = "true";
                Response.Redirect("ticket.aspx");
            }
        }
    }
}