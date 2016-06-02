<%@ page language="C#" autoeventwireup="true" codebehind="Conta.aspx.cs" inherits="AllSports.Views.Conta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css" />
	<link type="text/css" rel="stylesheet" href="/css/bootstrap-theme.min.css" />
	<link type="text/css" rel="stylesheet" href="/css/cover.css" />
	<link type="text/css" rel="stylesheet" href="/css/bootstrap.css" />
	<link type="text/css" rel="stylesheet" href="../Tabela.css" />

	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<!-- Latest compiled JavaScript -->
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
	<form id="form1" runat="server">
		<div id="fullscreen_conta" class="fullscreen_conta" />
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
							<li><a href="GerenciarCampeonato.aspx">Gerenciar Campeonato</a></li>
							<li><a href="Sobre.aspx">Sobre</a></li>
							<li><a href="Contato.aspx">Contato</a></li>
							<li class="active"><a href="#">Conta</a></li>
							<li>
								<asp:linkbutton id="linkLogout" runat="server" onclick="linkLogout_Click">Logout</asp:linkbutton>
							</li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</div>
			</nav>
		</div>
		<!-- end navbar -->

		<div class="panel-body mainbox painel_daora col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div>
				<label>Configurações de Conta</label>
			</div>
			<div>
				<label>Nome</label>
			</div>
			<div>
				<asp:textbox runat="server" id="textBoxNome"></asp:textbox>
			</div>
			<div>
				<label>Apelido</label>
			</div>
			<div>
				<asp:textbox runat="server" id="textBoxApelido"></asp:textbox>
			</div>
			<div>
				<label>E-mail</label>
			</div>
			<div>
				<asp:textbox runat="server" id="textBoxEmail"></asp:textbox>
			</div>
			<br />
			<div>
				<asp:button runat="server" text="Alterar informações" id="buttonAlterarTudo" onclick="buttonAlterarTudo_Click" />
			</div>
			<br />
			<div style="border-top: solid;">
				<label>Alterar Senha</label>
			</div>
			<div>
				<label>Senha atual</label>
			</div>
			<div>
				<asp:textbox runat="server" id="textBoxSenhaAtual" textmode="Password"></asp:textbox>
			</div>
			<div>
				<label>Nova senha</label>
			</div>
			<div>
				<asp:textbox id="textBoxSenhaNova" runat="server" textmode="Password"></asp:textbox>
			</div>
			<br />
			<div>
				<asp:button runat="server" text="Alterar senha" id="buttonAlterarSenha" onclick="buttonAlterarSenha_Click" />
			</div>
			<div>
				<asp:label id="labelResultado" runat="server" text=""></asp:label>
			</div>
		</div>
	</form>
</body>
</html>
