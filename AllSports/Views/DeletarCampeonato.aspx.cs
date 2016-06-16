using AllSports.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AllSports.Views
{
    public partial class DeletarCampeonato : System.Web.UI.Page
    {
        public bool logado;
        public Campeonato campeonato;

        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["allsports"];

            if (cookie == null || cookie.Values["valor"].ToString() != "logado")
            {
                Response.Redirect("Home.aspx");
                return;
            }
            logado = true;
            DeletarCampeonatoPorId();
        }

        public void DeletarCampeonatoPorId()
        {

            int id;

            if (!int.TryParse(Request.QueryString["id"], out id))
            {
                labelResult.Text = "Nenhum campeonato encontrado. Tente novamente.";
                return;
            }
            campeonato = Campeonato.ObterPorId(id);
            if (campeonato == null)
            {
                labelResult.Text = "Nenhum campeonato encontrado. Tente novamente.";
                return;
            }
            else
            {
                labelResult.Text = "Excluindo o campeonato " + campeonato.Nome;
                List<Time> times = Time.ObterPorCampeonato(id);
                List<Partida> partidas = Partida.ObterPorCampeonato(id);

                Partida.DeletarTodasPartidasPorCampeonato(id);

                foreach (Time time in times)
                    Time.DeletarTime(time.Id);

                Campeonato.DeletarCampeonato(id);

                Response.Redirect("GerenciarCampeonato.aspx");
            }


        }
    }
}