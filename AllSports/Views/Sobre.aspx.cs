using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AllSports.Views
{
    public partial class Sobre : System.Web.UI.Page
    {
        public bool logado;

        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["allsports"];

            if (cookie == null || cookie.Values["valor"].ToString() != "logado")
            {
                logado = false;
                return;
            }
            logado = true;
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