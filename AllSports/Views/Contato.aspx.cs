using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AllSports.Views
{
	public partial class Contato : System.Web.UI.Page
	{
        int id;
        public bool logado;

		protected void Page_Load(object sender, EventArgs e)
		{
            HttpCookie cookie = Request.Cookies["allsports"];

            if (cookie == null || cookie.Values["valor"].ToString() != "logado")
            {
                logado = false;
                return;
            }
            id = int.Parse(cookie.Values["id"]);
            logado = true;
        }

		protected void buttonEnviar_Click(object sender, EventArgs e)
		{
			string email = textBoxEmail.Text;
			string mensagem = textBoxMensagem.Text;
			string assunto = textBoxAssunto.Text;

			SmtpClient client = new SmtpClient("smtp.gmail.com");
			client.Port = 587;
			client.Credentials = new System.Net.NetworkCredential("allsports.contato@gmail.com", "allsports@Bandtec");
			//client.Timeout = 10000;

			MailMessage mail = new MailMessage();
			mail.From = new MailAddress("allsports.contato@gmail.com");
			mail.To.Add("allsports.contato@gmail.com");
			mail.To.Add(email);
			mail.Subject = assunto;
			mail.Body = mensagem;

			client.EnableSsl = true;

			try
			{
				client.Send(mail);
				textBoxEmail.Text = "Enviado";
			}
			catch (Exception ex)
			{
				labelEmail.Text = ex.Message;
				labelEmail.Visible = true;
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