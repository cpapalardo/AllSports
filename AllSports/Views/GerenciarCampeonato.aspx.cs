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
	public partial class GerenciarCampeonato : System.Web.UI.Page
	{
		public List<Campeonato> campeonatoList = new List<Campeonato>();
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

			campeonatoList = Campeonato.ObterPorGerente(id);

		}

		public string GetStatus(DateTime data)
		{
			if (data < DateTime.Now)
				return "Terminado";
			return "Ativo";
		}

		protected void btnDeletarSim_Click(object sender, EventArgs e)
		{

		}
	}
}