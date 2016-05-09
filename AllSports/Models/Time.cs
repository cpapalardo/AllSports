using System;
using System.Collections.Generic;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using AllSports.Utils;

namespace AllSports.Models {
	public class Time {
		public int Id { get; set; }
		public Jogador Coordenador { get; set; }
		public string Nome { get; set; }

		public Time(int id, Jogador coordenador, string nome) {
			Id = id;
			Coordenador = coordenador;
			Nome = nome;
		}

		public override string ToString() {
			return Nome;
		}

		private static void Validar(Jogador coordenador, ref string nome) {
			if (coordenador == null)
				throw new ValidationException("coordenador inexistente");

			if (string.IsNullOrWhiteSpace(nome))
				throw new ValidationException("nome vazio");

			nome = nome.Trim();
			if (nome.Length > 52)
				throw new ValidationException("nome muito longo");
		}

		public static Time ObterPorId(int id, SqlConnection conn) {
			using (SqlCommand cmd = new SqlCommand("SELECT id_coordenador, nome FROM tbTime WHERE id=@id", conn)) {
				cmd.Parameters.AddWithValue("@id", id);

				using (SqlDataReader reader = cmd.ExecuteReader()) {
					if (reader.Read() == false) {
						return null;
					}

					return new Time(id, Jogador.ObterPorId(reader.GetInt32(0), conn), reader.GetString(1));
				}
			}
		}

		public static Time ObterPorId(int id) {
			using (SqlConnection conn = Sql.Open()) {
				return ObterPorId(id, conn);
			}
		}

		public static List<Time> ObterPorCampeonato(int id) {
			using (SqlConnection conn = Sql.Open()) {
				using (SqlCommand cmd = new SqlCommand(
					"SELECT DISTINCT Time.id, Time.id_coordenador, Time.nome, Time.fundacao FROM Campeonato " +
					"INNER JOIN Rodada ON Campeonato.id = Rodada.id_campeonato " +
					"INNER JOIN PartidaRodada ON Rodada.id = PartidaRodada.id_rodada " +
					"INNER JOIN Partida ON Partida.id = PartidaRodada.id_partida " +
					"INNER JOIN Time ON Time.id = Partida.id_time_casa OR Time.id = Partida.id_time_visitante " +
					"WHERE Campeonato.id=@id " +
					"ORDER BY Time.nome ASC",
					conn)) {
                    cmd.Parameters.AddWithValue("@id", id);
                    using (SqlDataReader reader = cmd.ExecuteReader()) {
						List<Time> times = new List<Time>();

						while (reader.Read() == true) {
							times.Add(new Time(reader.GetInt32(0), Jogador.ObterPorId(reader.GetInt32(1), conn), reader.GetString(2)));
						}

						return times;
					}
				}
			}
		}

		public static Time Criar(Jogador coordenador, string nome) {
			Validar(coordenador, ref nome);

			using (SqlConnection conn = Sql.Open()) {
				using (SqlCommand cmd = new SqlCommand("INSERT INTO tbTime (id_coordenador, nome) OUTPUT INSERTED.id VALUES (@id_coordenador, @nome)", conn)) {
					cmd.Parameters.AddWithValue("@id_coordenador", coordenador.Id);
					cmd.Parameters.AddWithValue("@nome", nome);

					int id = (int)cmd.ExecuteScalar();

					return new Time(id, coordenador, nome);
				}
			}
		}

        public static void AdicionarJogadores(List<Jogador> jogadores, int id)
        {
            using (SqlConnection conn = Sql.Open())
            {
                foreach (Jogador jogador in jogadores)
                {
                    using (SqlCommand cmd = new SqlCommand("INSERT INTO tbJogadorTime (id_jogador, id_time) OUTPUT INSERTED.id VALUES (@id_jogador, @id_time)", conn))
                    {
                        cmd.Parameters.AddWithValue("@id_jogador", jogador.Id);
                        cmd.Parameters.AddWithValue("@id_time", ObterPorId(id));

                        cmd.ExecuteScalar();
                    }
                }
            }
        }
	}
}