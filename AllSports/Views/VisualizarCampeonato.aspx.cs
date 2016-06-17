using AllSports.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AllSports.Views
{
    public partial class VisualizarCampeonato : System.Web.UI.Page
    {
        public bool logado;
        public int idCampeonato, id;
        public List<Partida> partidas = new List<Partida>();
        public List<Time> times = new List<Time>();

        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["allsports"];

            if (cookie != null || cookie.Values["valor"].ToString() == "logado")
            {
                id = int.Parse(cookie.Values["id"]);
                logado = true;
            }

            if (int.TryParse(Request.QueryString["id"], out idCampeonato))
            {
                CarregarPartidas();
                CarregaInformacoesCampeonato();
            }
            else
            {
                //Tratamento para página sem o ID
                Response.Redirect("Home.aspx");
                return;
            }
        }

        public List<Partida> CarregarPartidas()
        {
            if (int.TryParse(Request.QueryString["id"], out idCampeonato))
            {
                partidas = Partida.ObterPorCampeonato(idCampeonato);
                //Partida 1
                lblPartida1Time01Nome.Text = partidas[0].TimeCasa.Nome;
                lblPartida1Time01Pontos.Text = partidas[0].GolCasa.ToString();

                lblPartida1Time02Nome.Text = partidas[0].TimeVisitante.Nome;
                lblPartida1Time02Pontos.Text = partidas[0].GolVisitante.ToString();

                textBoxTimeCasa01.Text = partidas[0].TimeCasa.Nome;
                textBoxTimeCasaGols01.Text = partidas[0].GolCasa.ToString();
                textBoxTimeVisitante01.Text = partidas[0].TimeVisitante.Nome;
                textBoxTimeVisitanteGols01.Text = partidas[0].GolVisitante.ToString();
                textBoxEndereco01.Text = partidas[0].Endereco;
                textBoxDataPartida01.Text = partidas[0].Data.ToString("d");
                chkFinalizada01.Checked = partidas[0].Finalizada;

                //Partida 2
                lblPartida2Time01Nome.Text = partidas[1].TimeCasa.Nome;
                lblPartida2Time01Pontos.Text = partidas[1].GolCasa.ToString();

                lblPartida2Time02Nome.Text = partidas[1].TimeVisitante.Nome;
                lblPartida2Time02Pontos.Text = partidas[1].GolVisitante.ToString();

                textBoxTimeCasa02.Text = partidas[1].TimeCasa.Nome;
                textBoxTimeCasaGols02.Text = partidas[1].GolCasa.ToString();
                textBoxTimeVisitante02.Text = partidas[1].TimeVisitante.Nome;
                textBoxTimeVisitanteGols02.Text = partidas[1].GolVisitante.ToString();
                textBoxEndereco02.Text = partidas[1].Endereco;
                textBoxDataPartida02.Text = partidas[1].Data.ToString("d");
                chkFinalizada02.Checked = partidas[1].Finalizada;

                //Partida 3
                lblPartida3Time01Nome.Text = partidas[2].TimeCasa.Nome;
                lblPartida3Time01Pontos.Text = partidas[2].GolCasa.ToString();

                lblPartida3Time02Nome.Text = partidas[2].TimeVisitante.Nome;
                lblPartida3Time02Pontos.Text = partidas[2].GolVisitante.ToString();

                textBoxTimeCasa03.Text = partidas[2].TimeCasa.Nome;
                textBoxTimeCasaGols03.Text = partidas[2].GolCasa.ToString();
                textBoxTimeVisitante03.Text = partidas[2].TimeVisitante.Nome;
                textBoxTimeVisitanteGols03.Text = partidas[2].GolVisitante.ToString();
                textBoxEndereco03.Text = partidas[2].Endereco;
                textBoxDataPartida03.Text = partidas[2].Data.ToString("d");
                chkFinalizada03.Checked = partidas[2].Finalizada;

                //Partida 4
                lblPartida4Time01Nome.Text = partidas[3].TimeCasa.Nome;
                lblPartida4Time01Pontos.Text = partidas[3].GolCasa.ToString();

                lblPartida4Time02Nome.Text = partidas[3].TimeVisitante.Nome;
                lblPartida4Time02Pontos.Text = partidas[3].GolVisitante.ToString();

                textBoxTimeCasa04.Text = partidas[3].TimeCasa.Nome;
                textBoxTimeCasaGols04.Text = partidas[3].GolCasa.ToString();
                textBoxTimeVisitante04.Text = partidas[3].TimeVisitante.Nome;
                textBoxTimeVisitanteGols04.Text = partidas[3].GolVisitante.ToString();
                textBoxEndereco04.Text = partidas[3].Endereco;
                textBoxDataPartida04.Text = partidas[3].Data.ToString("d");
                chkFinalizada04.Checked = partidas[3].Finalizada;

                if (partidas.Count > 4)
                {
                    bool editavel05 = true;
                    //Partida 5
                    if (partidas[4].TimeCasa != null)
                    {
                        lblPartida5Time01Nome.Text = partidas[4].TimeCasa.Nome;
                        lblPartida5Time01Pontos.Text = partidas[4].GolCasa.ToString();

                        textBoxTimeCasa05.Text = partidas[4].TimeCasa.Nome;
                        textBoxTimeCasaGols05.Text = partidas[4].GolCasa.ToString();
                    }
                    else
                    {
                        editavel05 = false;
                    }

                    if (partidas[4].TimeVisitante != null)
                    {
                        lblPartida5Time02Nome.Text = partidas[4].TimeVisitante.Nome;
                        lblPartida5Time02Pontos.Text = partidas[4].GolVisitante.ToString();

                        textBoxTimeVisitante05.Text = partidas[4].TimeVisitante.Nome;
                        textBoxTimeVisitanteGols05.Text = partidas[4].GolVisitante.ToString();
                    }
                    else
                    {
                        editavel05 = false;
                    }

                    textBoxEndereco05.Text = partidas[4].Endereco;
                    textBoxDataPartida05.Text = partidas[4].Data.ToString();
                    chkFinalizada05.Checked = partidas[4].Finalizada;

                    if (editavel05 == true)
                    {
                        tabelaPartida5.Attributes["class"] = "competitorPerMatch to-hover to-link";
                    }
                }

                if (partidas.Count >= 6)
                {
                    bool partida06 = true;
                    //Partida 6

                    if (partidas[5].TimeCasa != null)
                    {
                        lblPartida6Time01Nome.Text = partidas[5].TimeCasa.Nome;
                        lblPartida6Time01Pontos.Text = partidas[5].GolCasa.ToString();

                        textBoxTimeCasa06.Text = partidas[5].TimeCasa.Nome;
                    }
                    else
                    {
                        partida06 = false;
                    }

                    if (partidas[5].TimeVisitante != null)
                    {
                        lblPartida6Time02Nome.Text = partidas[5].TimeVisitante.Nome;
                        lblPartida6Time02Pontos.Text = partidas[5].GolVisitante.ToString();

                        textBoxTimeVisitante06.Text = partidas[5].TimeVisitante.Nome;
                    }
                    else
                    {
                        partida06 = false;
                    }

                    textBoxTimeCasaGols06.Text = partidas[5].GolCasa.ToString();
                    textBoxTimeVisitanteGols06.Text = partidas[5].GolVisitante.ToString();
                    textBoxEndereco06.Text = partidas[5].Endereco;
                    textBoxDataPartida06.Text = partidas[5].Data.ToString();
                    chkFinalizada06.Checked = partidas[5].Finalizada;

                    if (partida06 == true)
                    {
                        tabelaPartida6.Attributes["class"] = "competitorPerMatch to-hover to-link";
                    }
                }

                if (partidas.Count == 7)
                {
                    bool partida07 = true;
                    //Partida 7
                    if (partidas[6].TimeCasa != null)
                    {
                        lblPartida7Time01Nome.Text = partidas[6].TimeCasa.Nome;
                        lblPartida7Time01Pontos.Text = partidas[6].GolCasa.ToString();

                        textBoxTimeCasa07.Text = partidas[6].TimeCasa.Nome;
                    }
                    else
                    {
                        partida07 = false;
                    }

                    if (partidas[6].TimeVisitante != null)
                    {
                        lblPartida7Time02Nome.Text = partidas[6].TimeVisitante.Nome;
                        lblPartida7Time02Pontos.Text = partidas[6].GolVisitante.ToString();

                        textBoxTimeVisitante07.Text = partidas[6].TimeVisitante.Nome;
                    }
                    else
                    {
                        partida07 = false;
                    }

                    textBoxTimeCasaGols07.Text = partidas[6].GolCasa.ToString();
                    textBoxTimeVisitanteGols07.Text = partidas[6].GolVisitante.ToString();
                    textBoxEndereco07.Text = partidas[6].Endereco;
                    textBoxDataPartida07.Text = partidas[6].Data.ToString();
                    chkFinalizada07.Checked = partidas[6].Finalizada;

                    if (partida07 == true)
                    {
                        tabelaPartida7.Attributes["class"] = "competitorPerMatch to-hover to-link";
                    }

                    if (partidas[6].Finalizada == true && partidas[6].TimeCasa != null && partidas[6].TimeVisitante != null)
                    {
                        if (partidas[6].GolCasa > partidas[6].GolVisitante)
                        {
                            labelVencedor.Text = "Vencedor: " + partidas[6].TimeCasa.Nome;
                        }
                        else
                        {
                            labelVencedor.Text = "Vencedor: " + partidas[6].TimeVisitante.Nome;
                        }

                        labelVencedor.Visible = true;
                    }
                }
                return partidas;
            }
            return partidas = null;
        }

        public void CarregaInformacoesCampeonato()
        {
            if (int.TryParse(Request.QueryString["id"], out idCampeonato))
            {
                Campeonato campeonato = Campeonato.ObterPorId(idCampeonato);
                times = Time.ObterPorCampeonato(idCampeonato);

                string teste = campeonato.Data_Inicio.Date.ToString();

                //labelGerente.Text = Jogador.ObterPorId(id).Nome;
                //labelGerente.Text = campeonato.Gerente.Nome.ToString();

                textBoxNomeCampeonato.Text = campeonato.Nome.ToString();
                textBoxDataInicio.Text = campeonato.Data_Inicio.ToString("d");
                textBoxDataFim.Text = campeonato.Data_Fim.ToString("d");

                textBoxTime01.Text = times[0].Nome;
                textBoxTime02.Text = times[1].Nome;
                textBoxTime03.Text = times[2].Nome;
                textBoxTime04.Text = times[3].Nome;
                textBoxTime05.Text = times[4].Nome;
                textBoxTime06.Text = times[5].Nome;
                textBoxTime07.Text = times[6].Nome;
                textBoxTime08.Text = times[7].Nome;
            }
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