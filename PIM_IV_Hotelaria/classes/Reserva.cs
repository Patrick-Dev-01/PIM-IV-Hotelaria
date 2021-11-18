using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using Microsoft.Data.SqlClient;

namespace PIM_IV_Hotelaria.classes
{
    public class Reserva{
        readonly Conexao conexao = new Conexao();
        SqlCommand query = new SqlCommand();

        public DataTable quartosDisponiveis(int tipoQuarto) {
            query.CommandText = "SELECT id_quarto FROM Quartos WHERE id_TipoQuarto = @id_TipoQuarto AND status = 'disponivel';";
           
            query.Parameters.AddWithValue("@id_TipoQuarto", tipoQuarto);

            try
            {
                query.Connection = conexao.Conectar();
                query.ExecuteNonQuery();
                // Ler os resultados da query
                SqlDataAdapter quartos = new SqlDataAdapter(query);
                DataTable quartosLista = new DataTable();

                quartos.Fill(quartosLista);

                conexao.Desconectar();

                return quartosLista;
            }
            
            catch {
                throw;
            }
        }

        public void cadastrarReserva(string cpf, string nome, string email, string celular, int nQuarto, string pagamento, string checkIn, string checkOut) {

            query.CommandText = "INSERT INTO Reservas (cpf, nome, email, celular, nQuarto, checkIn, checkOut, pagamento) VALUES (@cpf, @nome, @email, @celular, @nQuarto, @checkIn, @checkOut, @pagamento)";

            query.Parameters.AddWithValue("@cpf", cpf);
            query.Parameters.AddWithValue("@nome", nome);
            query.Parameters.AddWithValue("@email", email);
            query.Parameters.AddWithValue("@celular", celular);
            query.Parameters.AddWithValue("@nQuarto", nQuarto);
            query.Parameters.AddWithValue("@checkIn", checkIn);
            query.Parameters.AddWithValue("@checkOut", checkOut);
            query.Parameters.AddWithValue("@pagamento", pagamento);

            try
            {
                query.Connection = conexao.Conectar();
                query.ExecuteNonQuery();
            }

            catch
            {
                throw;
            }
        }
    }
}