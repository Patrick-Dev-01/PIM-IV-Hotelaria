using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.Data.SqlClient;

namespace PIM_IV_Hotelaria.classes
{
    public class Conexao
    {
        readonly SqlConnection connection = new SqlConnection();

        public Conexao()
        {
            connection.ConnectionString = @"Data Source=DESKTOP-BS2L6RM\MSSQLSERVER01; integrated security=SSPI;initial catalog=Imperador";
        }

        public SqlConnection Conectar()
        {
            connection.Open();

            return connection;
        }

        public void Desconectar()
        {
            connection.Close();
        }
    }
}