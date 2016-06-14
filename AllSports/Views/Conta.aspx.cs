using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AllSports.Models;

namespace AllSports.Views
{
	public partial class Conta : System.Web.UI.Page
	{
        private int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["allsports"];

            if (cookie == null || cookie.Values["valor"].ToString() != "logado")
            {
                Response.Redirect("Home.aspx");
                return;
            }

            id = int.Parse(cookie.Values["id"]);

            if (!IsPostBack)
            {
                Jogador jogador = Jogador.ObterPorId(id);
                textBoxNome.Text = jogador.Nome;
                textBoxApelido.Text = jogador.Apelido;
                textBoxEmail.Text = jogador.Email;
            }

        }

        protected void buttonAlterarTudo_Click(object sender, EventArgs e)
        {
            string nome = textBoxNome.Text;
            String apelido = textBoxApelido.Text;
            String email = textBoxEmail.Text;

            Jogador jogador = new Jogador(id, nome, apelido, email);
            try
            {
                if (Jogador.AtualizarJogador(jogador) > 0)
                    labelResultado.Text = "Informações atualizadas com sucesso!";
            }
            catch (ValidationException ex)
            {
                labelResultado.Text = ex.Message;
            }
            catch (Exception ex)
            {
                labelResultado.Text = "Ocorreu um erro. Tente novamente." + ex.Message;
            }

        }

        protected void buttonAlterarSenha_Click(object sender, EventArgs e)
        {
            string senha = textBoxSenhaAtual.Text;
            string novaSenha = textBoxSenhaNova.Text;
            if (String.IsNullOrWhiteSpace(novaSenha))
            {
                labelResultado.Text = "Senha nova não pode ser vazia.";
                return;
            }

            Jogador jogador = Jogador.ObterPorId(id);
            Jogador.ChecarSenha(jogador.Email, senha);

            if (Jogador.AtualizarSenha(id, novaSenha, senha) == 1)
                labelResultado.Text = "Senha alterada.";
            else
                labelResultado.Text = "Ocorreu um erro. Verifique se sua senha atual está correta.";
        }

        protected void linkLogout_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["allsports"];
            cookie.Expires = DateTime.Now.AddYears(-1);
            Response.Cookies.Set(cookie);
            Response.Redirect("Home.aspx");
        }
    }
}