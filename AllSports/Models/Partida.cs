using AllSports.Utils;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace AllSports.Models
{
	public class Partida
	{
		private int Id { get; set; }
		private Campeonato Campeonato { get; set; }
		public Time TimeCasa { get; set; }
		public Time TimeVisitante { get; set; }
		public int GolCasa { get; set; }
		public int GolVisitante { get; set; }
		public string Endereco { get; set; }
		public DateTime Data { get; set; }
		public bool Finalizada { get; set; }

		public Partida(int id, Campeonato campeonato, Time timeCasa, Time timeVisitante, int golCasa, int golVisitante, string endereco,
			DateTime data, bool finalizada)
		{
			Id = id;
			Campeonato = campeonato;
			TimeCasa = timeCasa;
			TimeVisitante = timeVisitante;
			GolCasa = golCasa;
			GolVisitante = golVisitante;
			Endereco = endereco;
			Data = data;
			Finalizada = finalizada;
		}

		private static void Validar(Campeonato campeonato, Time timeCasa, Time timeVisitante, ref int golCasa,
			ref int golVisitante, ref string endereco, ref DateTime data)
		{
			if (campeonato == null)
				throw new ValidationException("Campeonato inexistente");

			if (string.IsNullOrWhiteSpace(endereco))
				throw new ValidationException("Endereço vazio");

			endereco = endereco.Trim();
			if (endereco.Length > 52)
				throw new ValidationException("Nome muito longo");

			if (data < new DateTime(1900, 1, 1))
				throw new ValidationException("data_inicio muito antiga");

			if (data > DateTime.Now.AddYears(1))
				throw new ValidationException("data_inicio muito futurista");

		}

		private static Partida ObterPorId(int id, SqlConnection conn)
		{
			using (SqlCommand cmd = new SqlCommand("SELECT id_campeonato, id_time_casa, id_time_visitante, gol_casa, gol_visitante,"
				   + "endereco, data, finalizada FROM tbPartida WHERE id=@id", conn))
			{
				cmd.Parameters.AddWithValue("@id", id);

				using (SqlDataReader reader = cmd.ExecuteReader())
				{
					if (reader.Read() == false)
					{
						return null;
					}
					return new Partida(id, Campeonato.ObterPorId(reader.GetInt32(0), conn), Time.ObterPorId(reader.GetInt32(1)),
						Time.ObterPorId(reader.GetInt32(2)), reader.GetInt32(3), reader.GetInt32(4), reader.GetString(5),
						reader.GetDateTime(6), reader.GetBoolean(7));
				}
			}
		}

		public static List<Partida> ObterPorCampeonato(int id)
		{
			using (SqlConnection conn = Sql.Open())
			{
				Time time_casa = null, time_visitante = null;
				Campeonato campeonato = Campeonato.ObterPorId(id, conn);
				List<Time> times = Time.ObterPorCampeonato(id);

				using (SqlCommand cmd = new SqlCommand(
					"select id, id_campeonato, id_time_casa, id_time_visitante, gol_casa, gol_visitante, endereco, data, finalizada " +
					"from tbPartida where id_campeonato = @id order by id", conn))
				{
					cmd.Parameters.AddWithValue("@id", id);
					using (SqlDataReader reader = cmd.ExecuteReader())
					{
						List<Partida> partidas = new List<Partida>();

						while (reader.Read() == true)
						{
							for (int i = 0; i < times.Count; i++)
							{
								if (times[i].Id == reader.GetInt32(2))
								{
									time_casa = times[i];
								}

								if (times[i].Id == reader.GetInt32(3))
								{
									time_visitante = times[i];
								}
							}

							partidas.Add(new Partida(reader.GetInt32(0), campeonato, time_casa, time_visitante, reader.GetInt32(4), reader.GetInt32(5), reader.GetString(6), reader.GetDateTime(7), reader.GetBoolean(8)));
							time_casa = null;
							time_visitante = null;
						}

						return partidas;
					}
				}
			}

		}


		public static Partida Criar(Campeonato campeonato, Time timeCasa, Time timeVisitante,
									int golCasa, int golVisitante, string endereco, DateTime data, bool finalizada)
		{
			Validar(campeonato, timeCasa, timeVisitante, ref golCasa, ref golVisitante, ref endereco, ref data);

			using (SqlConnection conn = Sql.Open())
			{
				using (SqlCommand cmd = new SqlCommand("INSERT INTO tbPartida (id_campeonato, id_time_casa, id_time_visitante, gol_casa,"
					+ " gol_visitante, endereco, data, finalizada) OUTPUT INSERTED.id VALUES (@id_campeonato, @id_time_casa, @id_time_visitante,"
					+ "@data_fim)", conn))
				{
					cmd.Parameters.AddWithValue("@id_campeonato", campeonato.Id);
					cmd.Parameters.AddWithValue("@id_time_casa", timeCasa.Id);
					cmd.Parameters.AddWithValue("@id_time_visitante", timeVisitante.Id);
					cmd.Parameters.AddWithValue("@gol_casa", golCasa);
					cmd.Parameters.AddWithValue("@gol_visitante", golVisitante);
					cmd.Parameters.AddWithValue("@endereco", endereco);
					cmd.Parameters.AddWithValue("@data", data);

					int id = (int)cmd.ExecuteScalar();

					return new Partida(id, campeonato, timeCasa, timeVisitante, golCasa, golVisitante, endereco, data, finalizada);
				}
			}
		}

		public static void SortearPartidas(int id, int[] id_times)
		{
			Random rnd = new Random();

			for (int i = 0; i < id_times.Length; i++)
			{
				int a = rnd.Next(id_times.Length);
				int temp = id_times[i];
				id_times[i] = id_times[a];
				id_times[a] = temp;
			}

			List<Partida> partidas = ObterPorCampeonato(id);

			if (partidas.Count == 0)
			{
				using (SqlConnection conn = Sql.Open())
				{
					for (int i = 0; i < id_times.Length; i++)
					{
						using (SqlCommand cmd = new SqlCommand("INSERT INTO tbPartida (id_campeonato, id_time_casa, id_time_visitante, gol_casa,"
						+ " gol_visitante, endereco, data, finalizada) VALUES (@id_campeonato, @id_time_casa, @id_time_visitante, @gol_casa,"
						+ " @gol_visitante, @endereco, @data, @finalizada)", conn))
						{
							cmd.Parameters.AddWithValue("@id_campeonato", id);
							cmd.Parameters.AddWithValue("@id_time_casa", id_times[i]);
							cmd.Parameters.AddWithValue("@id_time_visitante", id_times[++i]);
							cmd.Parameters.AddWithValue("@gol_casa", 0);
							cmd.Parameters.AddWithValue("@gol_visitante", 0);
							cmd.Parameters.AddWithValue("@endereco", "");
							cmd.Parameters.AddWithValue("@data", DateTime.Now);
							cmd.Parameters.AddWithValue("@finalizada", false);

							cmd.ExecuteNonQuery();
						}
					}
				}
			}
			else
			{
				using (SqlConnection conn = Sql.Open())
				{
					int i = 0;

					foreach (Partida item in partidas)
					{
						using (SqlCommand cmd = new SqlCommand("UPDATE tbPartida SET "
						+ "id_time_casa = @id_time_casa,"
						+ "id_time_visitante = @id_time_visitante,"
						+ "data = @data,"
						+ "finalizada = @finalizada "
						+ "where id = @id", conn))
						{
							cmd.Parameters.AddWithValue("@id", item.Id);
							cmd.Parameters.AddWithValue("@id_time_casa", id_times[i]);
							cmd.Parameters.AddWithValue("@id_time_visitante", id_times[++i]);
							cmd.Parameters.AddWithValue("@gol_visitante", 0);
							cmd.Parameters.AddWithValue("@data", DateTime.Now);
							cmd.Parameters.AddWithValue("@finalizada", false);

							cmd.ExecuteNonQuery();
						}

						i++;
					}
				}
			}
		}
	}
}