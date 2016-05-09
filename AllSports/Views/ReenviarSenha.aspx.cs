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
	public partial class ReenviarSenha : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void buttonEnviar_Click(object sender, EventArgs e)
		{
			try {

				// Send an email
				MailMessage EmailMsg = new MailMessage();
				EmailMsg.From = new MailAddress("carlapapalardo@outlook.com", "bc photo art lettering");
				EmailMsg.To.Add(new MailAddress("carlapapalardo@gmail.com"));
				EmailMsg.Subject = "someone made an order";
				EmailMsg.Body = "<html><body><div style='border-style:solid;border-width:5px;border-radius: 10px; padding-left: 10px;margin: 20px; font-size: 18px;'> <p style='font-family: Vladimir Script;font-weight: bold; color: #f7d722;font-size: 48px;'> blah blah blah</p><hr><div width=40%;> <p  style='font-size: 20px;'>"
                +"</div></body></html>";
				EmailMsg.IsBodyHtml = true;
				EmailMsg.Priority = MailPriority.Normal;
				SmtpClient MailClient = new SmtpClient("localhost", 587);
				MailClient.Send(EmailMsg);


			}
			catch(Exception ex)
			{
				Response.Write("Could not send the e-mail - error: " + ex.Message);
			}
		}
	}
}