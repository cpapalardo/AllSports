using AllSports.Models;
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
            try
            {

                string email = textBoxEmail.Text.Trim();
                string senha = Jogador.RecuperarSenha(email);
                Jogador jogador = Jogador.ObterPorEmail(email);

                SmtpClient client = new SmtpClient("smtp.gmail.com");
                client.Port = 587;
                client.Credentials = new System.Net.NetworkCredential("allsports.contato@gmail.com", "allsports@Bandtec");
                //client.Timeout = 10000;

                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("allsports.contato@gmail.com");
                mail.To.Add("allsports.contato@gmail.com");
                mail.To.Add(email);
                mail.Subject = "AllSports - Recuperação de senha";
                mail.Body = "Olá, " + jogador.Apelido
                    + "!\nVocê solicitou a recuperação de senha no AllSports.\n"
                    + "Dados de acesso:"
                    + "\n" + senha
                    + "\n\n\n Se você não tiver solicitado este serviço, altere sua senha imediatamente."
                    + "\n\nLembrete:"
                    + "\n - Nunca compartilhe sua senha com outras pessoas."
                    + "\n - Utilize senhas difíceis de adivinhar e não use informações pessoais. É recomendado o uso de letras minúsculas, maiúsculas e números."
                    + "\n\n\n Continue jogando, sport!";

                client.EnableSsl = true;

                client.Send(mail);
                labelEmail.Text = "Corre pro seu e-mail! Em poucos minutos a ajuda chegará!";
                labelEmail.Visible = true;
                //// Send an email
                //MailMessage EmailMsg = new MailMessage();
                //EmailMsg.From = new MailAddress("carlapapalardo@outlook.com");
                //EmailMsg.To.Add(new MailAddress("carlapapalardo@gmail.com"));
                //EmailMsg.Subject = "someone made an order";
                //EmailMsg.Body = "<html><body><div style='border-style:solid;border-width:5px;border-radius: 10px; padding-left: 10px;margin: 20px; font-size: 18px;'> <p style='font-family: Vladimir Script;font-weight: bold; color: #f7d722;font-size: 48px;'> blah blah blah</p><hr><div width=40%;> <p  style='font-size: 20px;'>"
                //            +"</div></body></html>";
                //EmailMsg.IsBodyHtml = true;
                //EmailMsg.Priority = MailPriority.Normal;
                //SmtpClient MailClient = new SmtpClient("localhost", 587);
                //MailClient.Send(EmailMsg);
            }
            catch (Exception ex)
            {
                labelEmail.Text = ex.Message;
                labelEmail.Visible = true;
            }
        }
    }
}