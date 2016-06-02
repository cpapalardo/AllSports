using System;
using System.Collections.Generic;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using AllSports.Utils;

namespace AllSports.Models
{
    public class Jogador
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public string Apelido { get; set; }
        public string Email { get; set; }

        public Jogador(int id, string nome, string apelido, string email)
        {
            Id = id;
            Nome = nome;
            Apelido = apelido;
            Email = email;
        }

        public override string ToString()
        {
            return Nome;
        }

        private static void Validar(ref string nome, ref string apelido, ref string email)
        {
            RegexUtilities regex = new RegexUtilities();
            if (string.IsNullOrWhiteSpace(nome))
                throw new ValidationException("Nome vazio");

            if (string.IsNullOrWhiteSpace(apelido))
                throw new ValidationException("Apelido vazio");

            if (string.IsNullOrWhiteSpace(email))
                throw new ValidationException("Email vazio");

            nome = nome.Trim();
            if (nome.Length > 52)
                throw new ValidationException("Nome muito longo");

            apelido = apelido.Trim();
            if (apelido.Length > 52)
                throw new ValidationException("Apelido muito longo");

            email = email.Trim();
            if (email.Length > 52)
                throw new ValidationException("Email muito longo");

            if (!regex.IsValidEmail(email))
                throw new ValidationException("Email inválido.");
        }

        public static int AtualizarJogador(Jogador jogador)
        {
            string nome = jogador.Nome;
            string apelido = jogador.Apelido;
            string email = jogador.Email;

            Validar(ref nome, ref apelido, ref email);
            using (SqlConnection conn = Sql.Open())
            {
                using (SqlCommand cmd = new SqlCommand("UPDATE tbJogador SET nome=@nome, apelido=@apelido, email=@email where id=@id", conn))
                {
                    cmd.Parameters.AddWithValue("@nome", nome);
                    cmd.Parameters.AddWithValue("@apelido", apelido);
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@id", jogador.Id);

                    return cmd.ExecuteNonQuery();
                }
            }
        }

        public static int AtualizarSenha(int id, string novaSenha, string senhaAtual)
        {
            string senhaBanco = "";
            using (SqlConnection conn = Sql.Open())
            {
                using (SqlCommand cmd = new SqlCommand("SELECT senha from tbJogador where id=@id", conn))
                {
                    cmd.Parameters.AddWithValue("@id", id);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.Read())
                            senhaBanco = reader.GetString(0);
                    }
                }

                if (senhaBanco != senhaAtual)
                    return -1;

                using (SqlCommand cmd = new SqlCommand("UPDATE tbJogador SET senha=@senha where id=@id", conn))
                {
                    cmd.Parameters.AddWithValue("@senha", novaSenha);
                    cmd.Parameters.AddWithValue("@id", id);

                    return cmd.ExecuteNonQuery();
                }
            }
        }

        public static Jogador ObterPorId(int id, SqlConnection conn)
        {
            using (SqlCommand cmd = new SqlCommand("SELECT nome, apelido, email FROM tbJogador WHERE id=@id", conn))
            {
                cmd.Parameters.AddWithValue("@id", id);
                //return new Jogador(id, leitor.GetString(0), leitor.GetString(1), leitor.GetString(2));

                using (SqlDataReader leitor = cmd.ExecuteReader())
                {
                    if (leitor.Read() == false)
                    {
                        return null;
                    }
                    return new Jogador(id, leitor.GetString(0), leitor.GetString(1), leitor.GetString(2));
                }
            }

        }

        public static Jogador ObterPorId(int id)
        {
            using (SqlConnection conn = Sql.Open())
            {
                return ObterPorId(id, conn);
            }
        }

        public static Jogador ObterPorEmail(string email, SqlConnection conn)
        {
            using (SqlCommand cmd = new SqlCommand("SELECT id, nome, apelido, email FROM tbJogador WHERE email=@email", conn))
            {
                cmd.Parameters.AddWithValue("@email", email);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read() == false)
                    {
                        return null;
                    }
                    return new Jogador(reader.GetInt32(0), reader.GetString(1), reader.GetString(2), reader.GetString(3));
                }
            }
        }

        public static Jogador ObterPorEmail(string email)
        {
            using (SqlConnection conn = Sql.Open())
            {
                return ObterPorEmail(email, conn);
            }
        }

        public static Jogador ChecarSenha(string email, string senha)
        {
            using (SqlConnection conn = Sql.Open())
            {
                return ChecarSenha(email, senha, conn);
            }
        }

        public static Jogador ChecarSenha(string email, string senha, SqlConnection conn)
        {
            using (SqlCommand cmd = new SqlCommand("SELECT id, nome, apelido, email FROM tbJogador WHERE email=@email and senha=@senha", conn))
            {
                cmd.Parameters.AddWithValue("@email", email);
                cmd.Parameters.AddWithValue("@senha", senha);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.Read() == false)
                    {
                        return null;
                    }
                    return new Jogador(reader.GetInt32(0), reader.GetString(1), reader.GetString(2), reader.GetString(3));
                }
            }
        }

        public static List<Jogador> ObterTodos()
        {
            using (SqlConnection conn = Sql.Open())
            {
                using (SqlCommand cmd = new SqlCommand("SELECT id, nome, apelido, email, senha FROM tbJogador ORDER BY nome ASC", conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        List<Jogador> jogadores = new List<Jogador>();

                        while (reader.Read() == true)
                        {
                            jogadores.Add(new Jogador(reader.GetInt32(0), reader.GetString(1), reader.GetString(2), reader.GetString(3)));
                        }
                        return jogadores;
                    }
                }
            }
        }

        public static Jogador Criar(string nome, string apelido, string email, string senha)
        {
            Validar(ref nome, ref apelido, ref email);

            using (SqlConnection conn = Sql.Open())
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO tbJogador (nome, apelido, email, senha) OUTPUT INSERTED.id VALUES (@nome, @apelido, @email, @senha)", conn))
                {
                    cmd.Parameters.AddWithValue("@nome", nome);
                    cmd.Parameters.AddWithValue("@apelido", apelido);
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@senha", senha);

                    int id = (int)cmd.ExecuteScalar();

                    return new Jogador(id, nome, apelido, email);
                }
            }
        }

        public void Alterar(string nome, string apelido, string email)
        {
            Validar(ref nome, ref apelido, ref email);

            using (SqlConnection conn = Sql.Open())
            {
                using (SqlCommand cmd = new SqlCommand("UPDATE tbJogador SET nome=@nome, apelido=@apelido, email=@email WHERE id=@id", conn))
                {
                    cmd.Parameters.AddWithValue("@nome", nome);
                    cmd.Parameters.AddWithValue("@apelido", apelido);
                    cmd.Parameters.AddWithValue("@email", email);
                    cmd.Parameters.AddWithValue("@id", Id);

                    if (cmd.ExecuteNonQuery() == 0)
                        throw new ValidationException("Jogador inexistente");

                    Nome = nome;
                    Apelido = apelido;
                    Email = email;
                }
            }
        }

        public void Excluir()
        {
            using (SqlConnection conn = Sql.Open())
            {
                using (SqlCommand cmd = new SqlCommand("DELETE FROM tbJogador WHERE id=@id", conn))
                {
                    cmd.Parameters.AddWithValue("@id", Id);

                    if (cmd.ExecuteNonQuery() == 0)
                        throw new ValidationException("Jogador inexistente");
                }
            }
        }

        public static string RecuperarSenha(string email)
        {
            using (SqlConnection conn = Sql.Open())
            {
                using (SqlCommand cmd = new SqlCommand("SELECT senha from tbJogador where email=@email", conn))
                {
                    cmd.Parameters.AddWithValue("@email", email);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read() == true)
                        {
                            return reader.GetString(0);
                        }
                        return null;
                    }
                }
            }
        }
    }
}
