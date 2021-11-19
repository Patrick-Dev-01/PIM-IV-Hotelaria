using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Diagnostics;
using Microsoft.Data.SqlClient;
using PIM_IV_Hotelaria.utils;

namespace PIM_IV_Hotelaria.classes
{
    public class Reserva{
        readonly Conexao conexao = new Conexao();
        readonly Utils utils = new Utils();
        SqlCommand query = new SqlCommand();
        
        public DataTable QuartosDisponiveis(string tipoQuarto) {
        
            int tipo_Quarto = Convert.ToInt32(tipoQuarto);

            query.CommandText = "SELECT id_quarto FROM Quartos WHERE id_TipoQuarto = @id_TipoQuarto AND status = 'disponivel';";

            query.Parameters.AddWithValue("@id_TipoQuarto", tipo_Quarto);

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

            catch
            {
                throw;
            }
        }

        public void AtualizarStatus(int id_quarto, string status)
        {
            query.CommandText = "UPDATE Quartos SET status = @status WHERE id_quarto = @id_quarto";

            query.Parameters.AddWithValue("@status", status);
            query.Parameters.AddWithValue("@id_quarto", id_quarto);

            try
            {
                query.Connection = conexao.Conectar();
                query.ExecuteNonQuery();

                conexao.Desconectar();
            }

            catch (SqlException e)
            {
                Debug.WriteLine("status: " + e);
            }
        }

        public void cadastrarReserva(string cpf, string nome, string email, string celular, int nQuarto, string pagamento, string checkIn, string checkOut, string protocolo) {

            query.CommandText = "INSERT INTO Reservas (cpf, nome, email, celular, nQuarto, checkIn, checkOut, pagamento, protocolo) VALUES (@cpf, @nome, @email, @celular, @nQuarto, @checkIn, @checkOut, @pagamento, @protocolo)";

            query.Parameters.AddWithValue("@cpf", utils.RemoverMascara(cpf));
            query.Parameters.AddWithValue("@nome", nome);
            query.Parameters.AddWithValue("@email", email);
            query.Parameters.AddWithValue("@celular", utils.RemoverMascara(celular));
            query.Parameters.AddWithValue("@nQuarto", nQuarto);
            query.Parameters.AddWithValue("@checkIn", checkIn);
            query.Parameters.AddWithValue("@checkOut", checkOut);
            query.Parameters.AddWithValue("@pagamento", pagamento);
            query.Parameters.AddWithValue("@protocolo", protocolo);

            try
            {
                query.Connection = conexao.Conectar();
                query.ExecuteNonQuery();

                conexao.Desconectar();

                AtualizarStatus(nQuarto, "ocupado");
            }

            catch(SqlException e)
            {
                Debug.WriteLine("reserva: " + e);
            }
        }

        public void CancelarReserva(string cpf, string protocolo) {
            SqlCommand query_2 = new SqlCommand();
            int numero_quarto = 0;

            query.CommandText = "SELECT nQuarto FROM Reservas WHERE cpf = @cpf;";
            query.Parameters.AddWithValue("@cpf", utils.RemoverMascara(cpf));
            
            try
            {
                query.Connection = conexao.Conectar();
                query.ExecuteNonQuery();
                // Ler os resultados da query
                SqlDataAdapter quarto = new SqlDataAdapter(query);
                DataTable quarto_resultado = new DataTable();

                quarto.Fill(quarto_resultado);

                foreach (DataRow quarto_lista in quarto_resultado.Rows)
                {
                    foreach (int item in quarto_lista.ItemArray)
                    {
                        numero_quarto = item;
                    }
                }

                conexao.Desconectar();
            }

            catch (SqlException e)
            {
                Debug.WriteLine("reserva: " + e);
            }

            query_2.CommandText = "DELETE FROM Reservas WHERE cpf = @cpf AND protocolo = @protocolo";
            query_2.Parameters.AddWithValue("@cpf", utils.RemoverMascara(cpf));
            query_2.Parameters.AddWithValue("@protocolo", protocolo);

            try
            {
                query_2.Connection = conexao.Conectar();
                query_2.ExecuteNonQuery();

                conexao.Desconectar();

                AtualizarStatus(numero_quarto, "disponivel");
            }

            catch (SqlException e)
            {
                Debug.WriteLine("status: " + e);
            }
        }
    }
}