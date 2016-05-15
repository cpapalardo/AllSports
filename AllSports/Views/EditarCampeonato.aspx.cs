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

            textBoxNomeGerente.Text = Jogador.ObterPorId(id).Nome;
            GerarPartidasIniciais();
		}

        public void GerarPartidasIniciais()
        {
            int id;

            if (int.TryParse(Request.QueryString["id"], out id))
            {
                List<Time> times = Time.ObterPorCampeonato(id);

                textBoxTime01.Text = times[0].Nome;
                textBoxTime02.Text = times[1].Nome;
                textBoxTime03.Text = times[2].Nome;
                textBoxTime04.Text = times[3].Nome;
                textBoxTime05.Text = times[4].Nome;
                textBoxTime06.Text = times[5].Nome;
                textBoxTime07.Text = times[6].Nome;
                textBoxTime08.Text = times[7].Nome;
            }

         //   Time.ObterPorCampeonato
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