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
                    descricao_quarto = "1 Cama de Casal e 2 Camas de Solteiro";
                    break;
            }

            return descricao_quarto;
        }

        public string quartoAndar(int numero_quarto) {
            string andar = "";

            if (numero_quarto > 0 && numero_quarto <= 4)
            {
                andar = "1°";
            }

            if (numero_quarto > 4 && numero_quarto <= 8)
            {
                andar = "2°";
            }

            if (numero_quarto > 8 && numero_quarto <= 12)
            {
                andar = "3°";
            }

            if (numero_quarto > 12 && numero_quarto <= 16)
            {
                andar = "4°";
            }

            if (numero_quarto > 16 && numero_quarto <= 20)
            {
                andar = "5°";
            }

            if (numero_quarto > 20 && numero_quarto <= 24)
            {
                andar = "6°";
            }

            return andar;
        }

         public string ValorDiaria(string tipoQuarto) {
            string diaria = "";

            switch (tipoQuarto)
            {
                case "1":
                    diaria = "R$ 100,00";
                    break;

                case "2":
                    diaria = "R$ 150,00";
                    break;

                case "3":
                    diaria = "R$ 200,00";
                    break;

                case "4":
                    diaria = "R$ 250,00";
                    break;

                case "5":
                    diaria = "R$ 350,00";
                    break;

                case "6":
                    diaria = "R$ 400,00";
                    break;

                case "7":
                    diaria = "R$ 520,00";
                    break;
            }

            return diaria;
        }
    }
}