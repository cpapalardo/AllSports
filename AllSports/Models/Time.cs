using System;
using System.Collections.Generic;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using AllSports.Utils;

namespace AllSports.Models {
	public class Time {
		public int Id { get; set; }
		public Campeonato Campeonato { get; set; }
		public string Nome { get; set; }

		public Time(int id, Campeonato campeonato, string nome)
		{
			Id = id;
			Campeonato = campeonato;
			Nome = nome;
		}

		public override string ToString() {
			return Nome;
		}

		private static void Validar(Campeonato campeonato, ref string nome) {
			if (campeonato == null)
				throw new ValidationException("campeonato inexistente");

			if (string.IsNullOrWhiteSpace(nome))
				throw new ValidationException("nome vazio");

			nome = nome.Trim();
			if (nome.Length > 52)
				throw new ValidationException("nome muito longo");
		}

		public static Time ObterPorId(int id, SqlConnection conn) {
			using (SqlCommand cmd = new SqlCommand("SELECT id_campeonato, nome FROM tbTime WHERE id=@id", conn)) {
				cmd.Parameters.AddWithValue("@id", id);

				using (SqlDataReader reader = cmd.ExecuteReader()) {
					if (reader.Read() == false) {
						return null;
					}

					return new Time(id, Campeonato.ObterPorId(reader.GetInt32(0), conn), reader.GetString(1));
				}
			}
		}

		public static Time ObterPorId(int id) {
			using (SqlConnection conn = Sql.Open()) {
				return ObterPorId(id, conn);
			}
		}

        public static List<Time> ObterPorCampeonato(int id)
        {
            using (SqlConnection conn = Sql.Open())
            {
                Campeonato campeonato = Campeonato.ObterPorId(id, conn);

                using (SqlCommand cmd = new SqlCommand(@"
                    SELECT DISTINCT id, id_campeonato, nome FROM tbTime
                    WHERE id_campeonato = @id_campeonato
                    ORDER BY tbTime.nome ASC
					", conn))
                {
					cmd.CommandTimeout = 300;
                    cmd.Parameters.AddWithValue("@id_campeonato", id);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        List<Time> times = new List<Time>();

                        while (reader.Read() == true)
                        {
                            times.Add(new Time(reader.GetInt32(0), campeonato, reader.GetString(2)));
                        }

                        return times;
                    }
                }
            }
        }

		public static Time Criar(Campeonato campeonato, string nome) {
			Validar(campeonato, ref nome);

			using (SqlConnection conn = Sql.Open()) {
				using (SqlCommand cmd = new SqlCommand("INSERT INTO tbTime (id_campeonato, nome) OUTPUT INSERTED.id VALUES (@id_campeonato, @nome)", conn)) {
					cmd.Parameters.AddWithValue("@id_campeonato", campeonato.Id);
					cmd.Parameters.AddWithValue("@nome", nome);

					int id = (int)cmd.ExecuteScalar();

					return new Time(id, campeonato, nome);
				}
			}
		}

		public static void Alterar(int id, string nome)
		{
			using (SqlConnection conn = Sql.Open())
			{
				using (SqlCommand cmd = new SqlCommand(@"update tbTime set nome = @nome where id = @id", conn))
				{
					cmd.Parameters.AddWithValue("@nome", nome);
					cmd.Parameters.AddWithValue("@id", id);

					cmd.ExecuteNonQuery();
				}
			}
		}

        public static void AdicionarJogadores(List<Jogador> jogadores, int id)
        {
            using (SqlConnection conn = Sql.Open())
            {
                foreach (Jogador jogador in jogadores)
                {
                    using (SqlCommand cmd = new SqlCommand(@"INSERT INTO tbJogadorTime (id_jogador, id_time) OUTPUT INSERTED.id VALUES (@id_jogador, @id_time)", conn))
                    {
                        cmd.Parameters.AddWithValue("@id_jogador", jogador.Id);
                        cmd.Parameters.AddWithValue("@id_time", ObterPorId(id));

                        cmd.ExecuteScalar();
                    }
                }
            }
        }

        public static int DeletarTime(int id)
        {
            using (SqlConnection conn = Sql.Open())
            {
                using (SqlCommand cmd = new SqlCommand("DELETE from tbTime where id=@id", conn))
                {
                    cmd.Parameters.AddWithValue("@id", id);
                    return cmd.ExecuteNonQuery();
                }
            }
        }
	}
}