using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AllSports.Models;
using AllSports.Utils;

namespace AllSports.Views
{
	public partial class Criacao : System.Web.UI.Page
	{
		int id;
		protected void Page_Load(object sender, EventArgs e)
		{
			HttpCookie cookie = Request.Cookies["allsports"];

			if (cookie == null || cookie.Values["valor"].ToString() != "logado")
			{
				Response.Redirect("Home.aspx");
				return;
			}
			id = int.Parse(cookie.Values["id"]);
		}


        public void sortearRodada()
        {

        }


		protected void buttonCriar_Click(object sender, EventArgs e)
		{
            string time1 = textBoxTime01.Text;
            string time2 = textBoxTime02.Text;
            string time3 = textBoxTime03.Text;
            string time4 = textBoxTime04.Text;
            string time5 = textBoxTime05.Text;
            string time6 = textBoxTime06.Text;
            string time7 = textBoxTime07.Text;
            string time8 = textBoxTime08.Text;

            try {
                Jogador jogador = Jogador.ObterPorId(id);

                Campeonato campeonato = Campeonato.Criar(jogador, txtNomeCampeonato.Text, DateTime.Parse(txtDt_Inicio.Text),
                    DateTime.Parse(txtDt_Fim.Text));

                Time.Criar(campeonato, time1);
                Time.Criar(campeonato, time2);
                Time.Criar(campeonato, time3);
                Time.Criar(campeonato, time4);
                Time.Criar(campeonato, time5);
                Time.Criar(campeonato, time6);
                Time.Criar(campeonato, time7);
                Time.Criar(campeonato, time8);

                Response.Redirect("EditarCampeonato.aspx");
             
            }
            catch(ValidationException ex)
            {
                labelErro.Text = ex.ToString();
            }
            catch (Exception ex)
            {
                labelErro.Text = "Erro ao criar o time: " + ex.Message;
            }

        }

        public void resetar_TextBoxes()
        {
            foreach (var item in Page.Controls)
            {
                if (item is TextBox)
                {
                    ((TextBox)item).Text = "";
                }
            }
        }
    }
}