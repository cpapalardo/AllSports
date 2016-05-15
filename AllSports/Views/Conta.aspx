<%@ page language="C#" autoeventwireup="true" codebehind="Conta.aspx.cs" inherits="AllSports.Views.Conta" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css" />
	<link type="text/css" rel="stylesheet" href="/css/bootstrap-theme.min.css" />
	<link type="text/css" rel="stylesheet" href="/css/cover.css" />
	<link type="text/css" rel="stylesheet" href="/css/bootstrap.css" />
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"/>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css"/>
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<!-- Latest compiled JavaScript -->
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
	<form id="form1" runat="server">
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
							<li><asp:LinkButton ID="linkLogout" runat="server" OnClick="linkLogout_Click">Logout</asp:LinkButton></li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</div>
			</nav>
		</div>
		<!-- end navbar -->

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
		<div>
			<div style="border: thin solid black; align-self: center; width: 20%">
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
                    <asp:TextBox ID="textBoxSenhaNova" runat="server" textmode="Password"></asp:TextBox>
                </div>
				<asp:button runat="server" text="Alterar senha" id="buttonAlterarSenha" OnClick="buttonAlterarSenha_Click"/>
			</div>
		</div>
		<div>
			<asp:button runat="server" text="Alterar informações" id="buttonAlterarTudo" OnClick="buttonAlterarTudo_Click"/>
		</div>
        <div>
            <asp:Label ID="labelResultado" runat="server" Text=""></asp:Label>
        </div>
	</form>
</body>
</html>
