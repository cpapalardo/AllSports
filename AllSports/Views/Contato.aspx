<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contato.aspx.cs" Inherits="AllSports.Views.Contato" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css" />
	<link type="text/css" rel="stylesheet" href="/css/bootstrap-theme.min.css" />
	<link type="text/css" rel="stylesheet" href="/css/cover.css" />
	<link type="text/css" rel="stylesheet" href="/css/bootstrap.css" />
	<link type="text/css" rel="stylesheet" href="../Tabela.css" />
</head>
<body>
    <form id="form1" runat="server">
		<div id="fullscreen_contato" class="fullscreen_contato" />
		<!-- navbar -->
		<div>
			<nav class="navbar navbar-inverse">
				<div class="container">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
							<span class="sr-only">Toggle navigation</span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>
						<a class="navbar-brand" href="Home.aspx">All Sports</a>
					</div>
					<div id="navbar" class="collapse navbar-collapse">
						<ul class="nav navbar-nav">
							<li><a href="#">Gerenciar Campeonato</a></li>
							<li><a href="#">Sobre</a></li>
							<li><a href="#">Contato</a></li>
							<li class="active"><a href="#">Conta</a></li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</div>
			</nav>
		</div>
		<!-- end navbar -->

        <div class="panel-body mainbox painel_daora col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <div class="panel-heading">
                <div class="panel-title">
                    <label>Enviar e-mail</label>
                </div>
                <label>Por favor, preencha as informações abaixo para enviar o e-mail.</label>
            </div>
            <div class="panel-body">
                <div class="panel-group">
                    <div>
                        <label>Seu nome:</label>
                    </div>
                    <div>
                        <asp:TextBox ID="textBoxNome" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <label>E-mail:</label>
                    </div>
                    <div>
                        <asp:TextBox ID="textBoxEmail" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <label>Assunto</label>
                    </div>
                    <div>
                        <asp:TextBox ID="textBoxAssunto" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <label>Mensagem</label>
                    </div>
                    <div>
                        <asp:TextBox ID="textBoxMensagem" runat="server" TextMode="MultiLine" Rows="10" Width="400px"></asp:TextBox>
                    </div>
                </div>
                <div>
                    <asp:Button ID="buttonEnviar" runat="server" Text="Enviar" OnClick="buttonEnviar_Click"/>
                </div>
				<div>
					<asp:Label runat="server" ID="labelEmail" Visible="false"></asp:Label>
				</div>
            </div>
        </div>
    </form>
</body>
</html>
