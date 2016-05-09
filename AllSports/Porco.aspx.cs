using AllSports.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AllSports {
	public partial class Porco : System.Web.UI.Page {
		protected void Page_Load(object sender, EventArgs e) {

		}

		protected void Unnamed_Click(object sender, EventArgs e) {
			try {
				Jogador jogador = Jogador.Criar(txtNome.Text, txtApelido.Text, txtEmail.Text, "1234");

				lblMensagem.Text = "Jogador com id " + jogador.Id + " criado com sucesso!";
			} catch (ValidationException ex) {
				lblMensagem.Text = ex.Message;
			} catch (Exception ex) {
				lblMensagem.Text = "Erro ao criar o jogador: " + ex.Message;
			}
		}
	}
}