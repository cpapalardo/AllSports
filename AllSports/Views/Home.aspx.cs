using AllSports.Models;
using AllSports.Utils;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AllSports.Views
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["allsports"];

            if (cookie != null && cookie.Values["valor"].ToString() == "logado")
            {
                Response.Redirect("GerenciarCampeonato.aspx");
                return;
            }

            signupbox.Visible = false;
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                Jogador jogador = Jogador.ChecarSenha(loginEmail.Value, loginPassword.Value);

                if(jogador != null)
                {
					HttpCookie cookie = new HttpCookie("allsports");
					cookie.Expires = DateTime.Now.AddDays(10);
					cookie.Values.Set("valor", "logado");
					cookie.Values.Set("id", jogador.Id.ToString());

					Response.Cookies.Set(cookie);
                    Response.Redirect("GerenciarCampeonato.aspx");
                }
                else
                {
                    labelFeedback.Text = "E-mail ou senha errados. ";
                }
            }
            catch (ValidationException ex)
            {
                labelFeedback.Text = ex.Message;
            }
            catch (Exception ex)
            {
                // lblMensagem.Text = "Erro ao criar o jogador: " + ex.Message;
                labelFeedback.Text = "E-mail ou senha errados. " + ex.Message;
            }
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            try
            {
                Jogador jogador = Jogador.Criar(txtNome.Value, txtApelido.Value, txtEmail.Value, txtSenha.Value);

                labelCadastroOk.Text = "Cadastro efetuado com sucesso!";
            }
            catch (ValidationException ex)
            {
                labelCadastroErro.Text = ex.Message;
            }
            catch (Exception ex)
            {
                labelCadastroErro.Text = "Erro ao criar o jogador: " + ex.Message;
            }
            loginbox.Visible = false;
            signupbox.Visible = true;
        }

        public static void Cadastrar(string nome, string apelido, string email, string senha)
        {
            try
            {
                Jogador jogador = Jogador.Criar(nome, apelido, email, senha);
                
             //   labelFeedback.Text = "Jogador com id " + jogador.Id + " criado com sucesso!";
            }
            catch (ValidationException ex)
            {
            //    labelFeedback.Text = ex.Message;
            }
            catch (Exception ex)
            {
               // labelFeedback.Text = "Erro ao criar o jogador: " + ex.Message;
            }
        }

        protected void linkForms(object sender, EventArgs e)
        {
            if(loginbox.Visible == false)
            {
                loginbox.Visible = true;
                signupbox.Visible = false;
            }
            else
            {
                loginbox.Visible = false;
                signupbox.Visible = true;
            }

        }
    }
}