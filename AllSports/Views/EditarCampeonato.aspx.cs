using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AllSports.Models;

namespace AllSports.Views
{
    public partial class EditarCampeonato : System.Web.UI.Page
    {
        public int id;

        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["allsports"];

            if (cookie == null || cookie.Values["valor"].ToString() != "logado")
            {
                Response.Redirect("Home.aspx");
                return;
            }
            id = int.Parse(cookie.Values["id"]);

            labelGerente.Text = Jogador.ObterPorId(id).Nome;
            CarregaInformacoesCampeonato();
            CarregarPartidas();
        }

        public void CarregarPartidas()
        {
            int id;

            if (int.TryParse(Request.QueryString["id"], out id))
            {
                List<Partida> partidas = Partida.ObterPorCampeonato(id);
                if(partidas.Count == 0)
                {
                    labelWarning.Text = "Você ainda não criou nenhuma partida. Clique em Sortear Partidas.";
                    return;
                }
                //Partida 1
                lblPartida1Time01Id.Text = partidas[0].TimeCasa.Id.ToString();
                lblPartida1Time01Nome.Text = partidas[0].TimeCasa.Nome;
                lblPartida1Time01Pontos.Text = partidas[0].GolCasa.ToString();

                lblPartida1Time02Id.Text = partidas[0].TimeVisitante.Id.ToString();
                lblPartida1Time02Nome.Text = partidas[0].TimeVisitante.Nome;
                lblPartida1Time02Pontos.Text = partidas[0].GolVisitante.ToString();

                //Partida 2
                lblPartida2Time01Id.Text = partidas[1].TimeCasa.Id.ToString();
                lblPartida2Time01Nome.Text = partidas[1].TimeCasa.Nome;
                lblPartida2Time01Pontos.Text = partidas[1].GolCasa.ToString();

                lblPartida2Time02Id.Text = partidas[1].TimeVisitante.Id.ToString();
                lblPartida2Time02Nome.Text = partidas[1].TimeVisitante.Nome;
                lblPartida2Time02Pontos.Text = partidas[1].GolVisitante.ToString();

                //Partida 3
                lblPartida3Time01Id.Text = partidas[2].TimeCasa.Id.ToString();
                lblPartida3Time01Nome.Text = partidas[2].TimeCasa.Nome;
                lblPartida3Time01Pontos.Text = partidas[2].GolCasa.ToString();

                lblPartida3Time02Id.Text = partidas[2].TimeVisitante.Id.ToString();
                lblPartida3Time02Nome.Text = partidas[2].TimeVisitante.Nome;
                lblPartida3Time02Pontos.Text = partidas[2].GolVisitante.ToString();

                //Partida 4
                lblPartida4Time01Id.Text = partidas[3].TimeCasa.Id.ToString();
                lblPartida4Time01Nome.Text = partidas[3].TimeCasa.Nome;
                lblPartida4Time01Pontos.Text = partidas[3].GolCasa.ToString();

                lblPartida4Time02Id.Text = partidas[3].TimeVisitante.Id.ToString();
                lblPartida4Time02Nome.Text = partidas[3].TimeVisitante.Nome;
                lblPartida4Time02Pontos.Text = partidas[3].GolVisitante.ToString();

                //Partida 5
                lblPartida5Time01Id.Text = partidas[4].TimeCasa.Id.ToString();
                lblPartida5Time01Nome.Text = partidas[4].TimeCasa.Nome;
                lblPartida5Time01Pontos.Text = partidas[4].GolCasa.ToString();

                lblPartida5Time02Id.Text = partidas[4].TimeVisitante.Id.ToString();
                lblPartida5Time02Nome.Text = partidas[4].TimeVisitante.Nome;
                lblPartida5Time02Pontos.Text = partidas[4].GolVisitante.ToString();

                //Partida 6
                lblPartida6Time01Id.Text = partidas[5].TimeCasa.Id.ToString();
                lblPartida6Time01Nome.Text = partidas[5].TimeCasa.Nome;
                lblPartida6Time01Pontos.Text = partidas[5].GolCasa.ToString();

                lblPartida6Time02Id.Text = partidas[5].TimeVisitante.Id.ToString();
                lblPartida6Time02Nome.Text = partidas[5].TimeVisitante.Nome;
                lblPartida6Time02Pontos.Text = partidas[5].GolVisitante.ToString();

                //Partida 7
                lblPartida7Time01Id.Text = partidas[6].TimeCasa.Id.ToString();
                lblPartida7Time01Nome.Text = partidas[6].TimeCasa.Nome;
                lblPartida7Time01Pontos.Text = partidas[6].GolCasa.ToString();

                lblPartida7Time02Id.Text = partidas[6].TimeVisitante.Id.ToString();
                lblPartida7Time02Nome.Text = partidas[6].TimeVisitante.Nome;
                lblPartida7Time02Pontos.Text = partidas[6].GolVisitante.ToString();
            }
        }

        public void CarregaInformacoesCampeonato()
        {
            int id;

            if (int.TryParse(Request.QueryString["id"], out id))
            {
                Campeonato campeonato = Campeonato.ObterPorId(id);
                List<Time> times = Time.ObterPorCampeonato(id);

                string teste = campeonato.Data_Inicio.Date.ToString();

                textBoxNomeCampeonato.Text = campeonato.Nome.ToString();
                textBoxDataInicio.Text = campeonato.Data_Inicio.ToShortDateString();
                textBoxDataFim.Text = campeonato.Data_Fim.ToShortDateString();

                textBoxTime01.Text = times[0].Nome;
                textBoxTime02.Text = times[1].Nome;
                textBoxTime03.Text = times[2].Nome;
                textBoxTime04.Text = times[3].Nome;
                textBoxTime05.Text = times[4].Nome;
                textBoxTime06.Text = times[5].Nome;
                textBoxTime07.Text = times[6].Nome;
                textBoxTime08.Text = times[7].Nome;
            }

            //Time.ObterPorCampeonato
        }


        protected void linkLogout_Click(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["allsports"];
            cookie.Expires = DateTime.Now.AddYears(-1);
            Response.Cookies.Set(cookie);
            Response.Redirect("Home.aspx");
        }

        protected void btnSalvarPartida_Click(object sender, EventArgs e)
        {

        }

        protected void buttonSortearPartidas_Click(object sender, EventArgs e)
        {
            int id;

            if (int.TryParse(Request.QueryString["id"], out id))
            {
                List<Time> times = Time.ObterPorCampeonato(id);
                int[] id_times = new int[times.Count];

                for (int i = 0; i < times.Count; i++)
                {
                    id_times[i] = times[i].Id;
                }

                Partida.SortearPartidas(id, id_times);
            }
        }
    }
}
