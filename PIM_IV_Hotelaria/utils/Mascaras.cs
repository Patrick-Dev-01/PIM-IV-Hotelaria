using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

namespace PIM_IV_Hotelaria.utils
{

    public class Mascaras
    {
        public string RemoverMascara(String campo) {
            return campo.Replace(" ", "").Replace(".", "").Replace("-", "").Replace("(", "").Replace(")", "").Trim(); ;
        }
    }
}