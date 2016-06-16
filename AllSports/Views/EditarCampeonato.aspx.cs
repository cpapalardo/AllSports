﻿using System;
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
        public bool logado;
        public int id;
        public int idCampeonato;
        public List<Partida> partidas = new List<Partida>();
        public List<Time> times = new List<Time>();

        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["allsports"];

            if (cookie == null || cookie.Values["valor"].ToString() != "logado")
            {
                Response.Redirect("Home.aspx");
                return;
            }
            id = int.Parse(cookie.Values["id"]);
            logado = true;

            //labelGerente.Text = Jogador.ObterPorId(id).Nome;
            if (IsPostBack == false)
            {
                partidas = CarregarPartidas();

                if (partidas.Count == 0)
                {
                    buttonSortearPartidas_Click(sender, e);
                }

                CarregaInformacoesCampeonato();
            }
        }

        public List<Partida> CarregarPartidas()
        {
            if (int.TryParse(Request.QueryString["id"], out idCampeonato))
            {
                partidas = Partida.ObterPorCampeonato(idCampeonato);
                if (partidas.Count == 0)
                {
                    labelWarning.Text = "Você ainda não criou nenhuma partida. Clique em Sortear Partidas.";
                }
                else
                {
                    //Partida 1
                    //lblPartida1Time01Id.Text = partidas[0].TimeCasa.Id.ToString();
                    lblPartida1Time01Nome.Text = partidas[0].TimeCasa.Nome;
                    lblPartida1Time01Pontos.Text = partidas[0].GolCasa.ToString();

                    //lblPartida1Time02Id.Text = partidas[0].TimeVisitante.Id.ToString();
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
                    //lblPartida2Time01Id.Text = partidas[1].TimeCasa.Id.ToString();
                    lblPartida2Time01Nome.Text = partidas[1].TimeCasa.Nome;
                    lblPartida2Time01Pontos.Text = partidas[1].GolCasa.ToString();

                    //lblPartida2Time02Id.Text = partidas[1].TimeVisitante.Id.ToString();
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
                    //lblPartida3Time01Id.Text = partidas[2].TimeCasa.Id.ToString();
                    lblPartida3Time01Nome.Text = partidas[2].TimeCasa.Nome;
                    lblPartida3Time01Pontos.Text = partidas[2].GolCasa.ToString();

                    //lblPartida3Time02Id.Text = partidas[2].TimeVisitante.Id.ToString();
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
                    //lblPartida4Time01Id.Text = partidas[3].TimeCasa.Id.ToString();
                    lblPartida4Time01Nome.Text = partidas[3].TimeCasa.Nome;
                    lblPartida4Time01Pontos.Text = partidas[3].GolCasa.ToString();

                    //lblPartida4Time02Id.Text = partidas[3].TimeVisitante.Id.ToString();
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
                        //Partida 5
                        //lblPartida4Time01Id.Text = partidas[4].TimeCasa.Id.ToString();
                        if (partidas[4].TimeCasa != null)
                        {
                            lblPartida5Time01Nome.Text = partidas[4].TimeCasa.Nome;
                            lblPartida5Time01Pontos.Text = partidas[4].GolCasa.ToString();

                            textBoxTimeCasa05.Text = partidas[4].TimeCasa.Nome;
                            textBoxTimeCasaGols05.Text = partidas[4].GolCasa.ToString();
                        }
                        else
                        {
                            textBoxTimeCasa05.ReadOnly = true;
                            textBoxTimeCasaGols05.ReadOnly = true;
                        }

                        //lblPartida4Time02Id.Text = partidas[4].TimeVisitante.Id.ToString();
                        if (partidas[4].TimeVisitante != null)
                        {
                            lblPartida5Time02Nome.Text = partidas[4].TimeVisitante.Nome;
                            lblPartida5Time02Pontos.Text = partidas[4].GolVisitante.ToString();

                            textBoxTimeVisitante05.Text = partidas[4].TimeVisitante.Nome;
                            textBoxTimeVisitanteGols05.Text = partidas[4].GolVisitante.ToString();
                        }


                        textBoxEndereco05.Text = partidas[4].Endereco;
                        textBoxDataPartida05.Text = partidas[4].Data.ToString("d");
                        chkFinalizada05.Checked = partidas[4].Finalizada;

                        tabelaPartida5.Attributes["class"] = "competitorPerMatch to-hover to-link";
                    }

                    if (partidas.Count >= 6)
                    {
                        //Partida 6
                        //lblPartida4Time01Id.Text = partidas[5].TimeCasa.Id.ToString();
                        lblPartida4Time01Nome.Text = partidas[5].TimeCasa.Nome;
                        lblPartida4Time01Pontos.Text = partidas[5].GolCasa.ToString();

                        //lblPartida4Time02Id.Text = partidas[5].TimeVisitante.Id.ToString();
                        lblPartida4Time02Nome.Text = partidas[5].TimeVisitante.Nome;
                        lblPartida4Time02Pontos.Text = partidas[5].GolVisitante.ToString();

                        textBoxTimeCasa06.Text = partidas[5].TimeCasa.Nome;
                        textBoxTimeCasaGols06.Text = partidas[5].GolCasa.ToString();
                        textBoxTimeVisitante06.Text = partidas[5].TimeVisitante.Nome;
                        textBoxTimeVisitanteGols06.Text = partidas[5].GolVisitante.ToString();
                        textBoxEndereco06.Text = partidas[5].Endereco;
                        textBoxDataPartida06.Text = partidas[5].Data.ToString("d");
                        chkFinalizada06.Checked = partidas[5].Finalizada;

                        tabelaPartida6.Attributes["class"] = "competitorPerMatch to-hover to-link";
                    }

                    if (partidas.Count == 7)
                    {
                        //Partida 7
                        //lblPartida4Time01Id.Text = partidas[6].TimeCasa.Id.ToString();
                        lblPartida4Time01Nome.Text = partidas[6].TimeCasa.Nome;
                        lblPartida4Time01Pontos.Text = partidas[6].GolCasa.ToString();

                        //lblPartida4Time02Id.Text = partidas[6].TimeVisitante.Id.ToString();
                        lblPartida4Time02Nome.Text = partidas[6].TimeVisitante.Nome;
                        lblPartida4Time02Pontos.Text = partidas[6].GolVisitante.ToString();

                        textBoxTimeCasa07.Text = partidas[6].TimeCasa.Nome;
                        textBoxTimeCasaGols07.Text = partidas[6].GolCasa.ToString();
                        textBoxTimeVisitante07.Text = partidas[6].TimeVisitante.Nome;
                        textBoxTimeVisitanteGols07.Text = partidas[6].GolVisitante.ToString();
                        textBoxEndereco07.Text = partidas[6].Endereco;
                        textBoxDataPartida07.Text = partidas[6].Data.ToString("d");
                        chkFinalizada07.Checked = partidas[6].Finalizada;

                        tabelaPartida7.Attributes["class"] = "competitorPerMatch to-hover to-link";
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

                labelGerente.Text = Jogador.ObterPorId(id).Nome;

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

        protected void btnSalvarPartida_Click(object sender, EventArgs e)
        {
            if (int.TryParse(Request.QueryString["id"], out idCampeonato))
            {
                partidas = Partida.ObterPorCampeonato(idCampeonato);

                if (partidas[0].Finalizada == false)
                {
                    Partida.EditarPartidaPorID(partidas[0].Id, int.Parse(textBoxTimeCasaGols01.Text), int.Parse(textBoxTimeVisitanteGols01.Text), textBoxEndereco01.Text, DateTime.Parse(textBoxDataPartida01.Text), chkFinalizada01.Checked, partidas[0].TimeCasa.Id, partidas[0].TimeVisitante.Id);
                    // Partida.ProximaPartida(id, partidas[0].Id, int.Parse(textBoxTimeCasa01.Text), int.Parse(textBoxTimeVisitante01.Text), partidas[0].TimeCasa.Id, partidas[0].TimeVisitante.Id, 1);
                    SalvarPartida5Time1();
                }
                if (partidas[1].Finalizada == false)
                {
                    Partida.EditarPartidaPorID(partidas[1].Id, int.Parse(textBoxTimeCasaGols02.Text), int.Parse(textBoxTimeVisitanteGols02.Text), textBoxEndereco02.Text, DateTime.Parse(textBoxDataPartida02.Text), chkFinalizada02.Checked, partidas[1].TimeCasa.Id, partidas[1].TimeVisitante.Id);
                    SalvarPartida5Time2();
                }

                if (partidas[2].Finalizada == false)
                {
                    Partida.EditarPartidaPorID(partidas[2].Id, int.Parse(textBoxTimeCasaGols03.Text), int.Parse(textBoxTimeVisitanteGols03.Text), textBoxEndereco03.Text, DateTime.Parse(textBoxDataPartida03.Text), chkFinalizada03.Checked, partidas[2].TimeCasa.Id, partidas[2].TimeVisitante.Id);
                    SalvarPartida6Time1();
                }

                if (partidas[3].Finalizada == false)
                {
                    Partida.EditarPartidaPorID(partidas[3].Id, int.Parse(textBoxTimeCasaGols04.Text), int.Parse(textBoxTimeVisitanteGols04.Text), textBoxEndereco04.Text, DateTime.Parse(textBoxDataPartida04.Text), chkFinalizada04.Checked, partidas[3].TimeCasa.Id, partidas[3].TimeVisitante.Id);
                    SalvarPartida6Time2();
                }

                Response.Redirect(Request.Url.AbsoluteUri);
            }

            //Partida.EditarPartidaPorID(partidas[4].Id, int.Parse(textBoxTimeCasaGols05.Text), int.Parse(textBoxTimeVisitanteGols05.Text), textBoxEndereco05.Text, DateTime.Parse(textBoxDataPartida05.Text), chkFinalizada05.Checked);
        }

        protected void SalvarPartida5Time1()
        {
            if (partidas[0].GolCasa > partidas[0].GolVisitante)
                lblPartida5Time01Nome.Text = partidas[0].TimeCasa.Nome;
            else
                lblPartida5Time01Nome.Text = partidas[0].TimeVisitante.Nome;
        }

        protected void SalvarPartida5Time2()
        {

            if (partidas[1].GolCasa > partidas[1].GolVisitante)
            {
                if (partidas.Count < 5)
                    Partida.ProximaPartida(idCampeonato, partidas[1].GolCasa, partidas[1].GolVisitante, partidas[1].TimeCasa.Id, null, 5);
                else
                    Partida.EditarPartidaPorID(partidas[4].Id, partidas[4].GolCasa, partidas[4].GolVisitante,
                        partidas[4].Endereco, partidas[4].Data, partidas[4].Finalizada);
                partidas = Partida.ObterPorCampeonato(idCampeonato);
                lblPartida5Time02Nome.Text = partidas[4].TimeVisitante.Nome;
            }

            else
            {
                if (partidas.Count < 5)
                    Partida.ProximaPartida(idCampeonato, partidas[1].GolCasa, partidas[1].GolVisitante, null, partidas[1].TimeVisitante.Id, 5);
                else
                    Partida.EditarPartidaPorID(partidas[4].Id, partidas[4].GolCasa, partidas[4].GolVisitante,
                        partidas[4].Endereco, partidas[4].Data, partidas[4].Finalizada);
                partidas = Partida.ObterPorCampeonato(idCampeonato);
                lblPartida5Time02Nome.Text = partidas[4].TimeVisitante.Nome;
            }

        }

        protected void SalvarPartida6Time1()
        {
            if (partidas[2].GolCasa > partidas[2].GolVisitante)
                lblPartida6Time01Nome.Text = partidas[2].TimeCasa.Nome;
            else
                lblPartida6Time01Nome.Text = partidas[2].TimeVisitante.Nome;
        }

        protected void SalvarPartida6Time2()
        {
            if (partidas[3].GolCasa > partidas[3].GolVisitante)
                lblPartida6Time02Nome.Text = partidas[3].TimeCasa.Nome;
            else
                lblPartida6Time02Nome.Text = partidas[3].TimeVisitante.Nome;
        }

        protected void SalvarPartida7Time1()
        {
            if (partidas[4].GolCasa > partidas[4].GolVisitante)
                lblPartida7Time01Nome.Text = partidas[4].TimeCasa.Nome;
            else
                lblPartida7Time01Nome.Text = partidas[4].TimeVisitante.Nome;
        }

        protected void SalvarPartida7Time2()
        {
            if (partidas[5].GolCasa > partidas[5].GolVisitante)
                lblPartida7Time02Nome.Text = partidas[5].TimeCasa.Nome;
            else
                lblPartida7Time02Nome.Text = partidas[5].TimeVisitante.Nome;
        }

        protected void buttonSortearPartidas_Click(object sender, EventArgs e)
        {
            int id;

            if (int.TryParse(Request.QueryString["id"], out id))
            {
                times = Time.ObterPorCampeonato(idCampeonato);
                int[] id_times = new int[times.Count];

                for (int i = 0; i < times.Count; i++)
                {
                    id_times[i] = times[i].Id;
                }

                Partida.SortearPartidas(id, id_times);
            }

            Response.Redirect(Request.Url.AbsoluteUri);
        }

        protected void buttonSalvarCampeonato_Click(object sender, EventArgs e)
        {
            int id;

            if (int.TryParse(Request.QueryString["id"], out id))
            {
                DateTime dtInicio, dtFim;

                if (textBoxNomeCampeonato.Text != "" && DateTime.TryParse(textBoxDataInicio.Text, out dtInicio) == true && DateTime.TryParse(textBoxDataFim.Text, out dtFim) == true)
                {
                    if (dtInicio >= dtFim)
                    {
                        txtMensagemErro.Text = "A data de término deve ser maior que a data de início.";
                        txtMensagemErro.Visible = true;
                        return;
                    }

                    Campeonato.EditarCampeonato(id, textBoxNomeCampeonato.Text, dtInicio, dtFim);
                }
                else
                {
                    txtMensagemErro.Text = "Por favor, informe valores válidos.";
                    txtMensagemErro.Visible = true;
                    return;
                }

                times = Time.ObterPorCampeonato(idCampeonato);

                string time1 = textBoxTime01.Text;
                string time2 = textBoxTime02.Text;
                string time3 = textBoxTime03.Text;
                string time4 = textBoxTime04.Text;
                string time5 = textBoxTime05.Text;
                string time6 = textBoxTime06.Text;
                string time7 = textBoxTime07.Text;
                string time8 = textBoxTime08.Text;

                Time.Alterar(times[0].Id, time1);
                Time.Alterar(times[1].Id, time2);
                Time.Alterar(times[2].Id, time3);
                Time.Alterar(times[3].Id, time4);
                Time.Alterar(times[4].Id, time5);
                Time.Alterar(times[5].Id, time6);
                Time.Alterar(times[6].Id, time7);
                Time.Alterar(times[7].Id, time8);

                Response.Redirect(Request.Url.AbsoluteUri);
            }
        }
    }
}
