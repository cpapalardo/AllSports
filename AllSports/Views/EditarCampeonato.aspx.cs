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
		}

        public void GerarPartidasIniciais()
        {
         //   Time.ObterPorCampeonato
        }
	}
}