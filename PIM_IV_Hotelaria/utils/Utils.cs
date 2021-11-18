using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Diagnostics;

namespace PIM_IV_Hotelaria.utils
{

    public class Utils
    {

        public string RemoverMascara(String campo) {
            return campo.Replace(" ", "").Replace(".", "").Replace("-", "").Replace("(", "").Replace(")", "").Trim(); ;
        }

        public string DescricaoQuarto(string tipoQuarto) {
            Debug.WriteLine("recebeu: " + tipoQuarto);

            string descricao_quarto = "";

            switch (tipoQuarto) {
                case "1":
                    descricao_quarto = "1 Cama de Solteiro";
                    break;

                case "2":
                    descricao_quarto = "2 Camas de Solteiro";
                    break;

                case "3":
                    descricao_quarto = "3 Camas de Solteiro";
                    break;

                case "4":
                    descricao_quarto = "1 Cama de Casal";
                    break;

                case "5":
                    descricao_quarto = "2 Camas de Casal";
                    break;

                case "6":
                     descricao_quarto = "1 Cama de Casal e 2 Camas de Solteiro";
                     break;

                case "7":
                    descricao_quarto = "1 Cama de Casal e 2 Camas de Solteir    o";
                    break;
            }

            return descricao_quarto;
        }
    }
}