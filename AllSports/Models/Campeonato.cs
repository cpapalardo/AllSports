using AllSports.Utils;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AllSports.Models
{
    public class Campeonato
    {
        public int Id { get; set; }
        public Jogador Gerente { get; set; }
        public string Nome { get; set; }
        public DateTime Data_Inicio { get; set; }
        public DateTime Data_Fim { get; set; }

        public Campeonato(int id, Jogador gerente, string nome, DateTime data_inicio, DateTime data_fim)
        {
            Id = id;
            Gerente = gerente;
            Nome = nome;
            Data_Inicio = data_inicio;
            Data_Fim = data_fim;
        }

        public override string ToString()
        {
            return Nome;
        }

        private static void Validar(Jogador gerente, ref string nome, ref DateTime data_inicio, ref DateTime data_fim)
        {
            if (gerente == null)
                throw new ValidationException("Gerente inexistente");

            if (string.IsNullOrWhiteSpace(nome))
                throw new ValidationException("Nome vazio");

            nome = nome.Trim();
            if (nome.Length > 52)
                throw new ValidationException("Nome muito longo");

            if (data_inicio < new DateTime(1900, 1, 1))
                throw new ValidationException("data_inicio muito antiga");

            if (data_inicio > DateTime.Now.AddDays(1))
                throw new ValidationException("data_inicio no futuro");

            if (data_fim < new DateTime(1900, 1, 1))
                throw new ValidationException("data_fim muito antiga");

        }

        public static Campeonato ObterPorId(int id, SqlConnection conn)
        {
            Jogador jogador = Jogador.ObterPorId(id, conn);

            using (SqlCommand cmd = new SqlCommand("SELECT id_gerente, nome, data_inicio, data_fim FROM tbCampeonato WHERE id=@id", conn))
            {
                cmd.Parameters.AddWithValue("@id", id);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read() == false)
                    {
                        return null;
                    }
                    return new Campeonato(id, jogador, reader.GetString(1), reader.GetDateTime(2), reader.GetDateTime(3));
                }
            }
        }

        public static Campeonato ObterPorId(int id)
        {
            using (SqlConnection conn = Sql.Open())
            {
                return ObterPorId(id, conn);
            }
        }


        public static List<Campeonato> ObterPorGerente(int id)
        {
            using (SqlConnection conn = Sql.Open())
            {
                Jogador jogador = Jogador.ObterPorId(id, conn);

                using (SqlCommand cmd = new SqlCommand(
                    "select id, id_gerente, nome, data_inicio, data_fim " +
                    "from tbCampeonato where id_gerente = @id order by nome",
                    conn))
                {

                    cmd.Parameters.AddWithValue("@id", id);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        List<Campeonato> campeonatos = new List<Campeonato>();

                        while (reader.Read() == true)
                        {
                            campeonatos.Add(new Campeonato(reader.GetInt32(0), jogador, reader.GetString(2), reader.GetDateTime(3), reader.GetDateTime(4)));
                        }
                        return campeonatos;
                    }
                }
            }

        }

        public static Campeonato Criar(Jogador gerente, string nome, DateTime data_inicio, DateTime data_fim)
        {
            Validar(gerente, ref nome, ref data_inicio, ref data_fim);

            using (SqlConnection conn = Sql.Open())
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO tbCampeonato (id_gerente, nome, data_inicio, data_fim) OUTPUT INSERTED.id VALUES (@id_gerente, @nome, @data_inicio, @data_fim)", conn))
                {
                    cmd.Parameters.AddWithValue("@id_gerente", gerente.Id);
                    cmd.Parameters.AddWithValue("@nome", nome);
                    cmd.Parameters.AddWithValue("@data_inicio", data_inicio);
                    cmd.Parameters.AddWithValue("@data_fim", data_fim);

                    int id = (int)cmd.ExecuteScalar();

                    return new Campeonato(id, gerente, nome, data_inicio, data_fim);
                }
            }
        }

    }
}