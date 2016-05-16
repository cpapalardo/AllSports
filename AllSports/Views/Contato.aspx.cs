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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonEnviar_Click(object sender, EventArgs e)
        {
            //Ainda não funciona
            string fromAddress = "allsports@gmail.com";
            string toAddress = textBoxEmail.Text;
            const string fromPassword = "";

            string assunto = textBoxAssunto.Text;
            string mensagem = textBoxMensagem.Text;

            MailMessage mailMessage = new MailMessage();
            mailMessage.To.Add("contato@allsports.com");
            mailMessage.From = new MailAddress(textBoxEmail.Text);
            mailMessage.Subject = textBoxAssunto.Text;
            mailMessage.Body = "De: " + textBoxNome + "\nMensagem\n\n" + textBoxMensagem.Text;
            SmtpClient smtpClient = new SmtpClient("localhost");
            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;
            smtpClient.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            smtpClient.Credentials = new NetworkCredential(fromAddress, fromPassword);
            smtpClient.Timeout = 20000;
            smtpClient.Send(mailMessage);
            Response.Write("E-mail sent!");
        }
    }
}