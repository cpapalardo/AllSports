<%@ page language="C#" autoeventwireup="true" codebehind="Criacao.aspx.cs" inherits="AllSports.Views.Criacao" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>

	<link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css" />
	<link type="text/css" rel="stylesheet" href="/css/bootstrap-theme.min.css" />
	<link type="text/css" rel="stylesheet" href="/css/cover.css" />
	<link type="text/css" rel="stylesheet" href="/css/bootstrap.css" />
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<!-- Latest compiled JavaScript -->
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
	<form id="form1" runat="server">
		<div id="fullscreen_criacao" class="fullscreen_criacao" />
		<div>
			<div class="navbar navbar-inverse">
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
							<li class="active"><a href="#">Gerenciar Campeonato</a></li>
							<li><a href="Sobre.aspx">Sobre</a></li>
							<li><a href="Contato.aspx">Contato</a></li>
							<li>
								<asp:linkbutton id="linkLogout" runat="server" onclick="linkLogout_Click">Logout</asp:linkbutton>
							</li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</div>
			</div>
		</div>
		<!-- end navbar -->

		<div class="panel-body mainbox painel_daora col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div>
				<label for="txtNomeCampeonato">Nome do Campeonato</label>
			</div>
			<div>
				<asp:textbox CssClass="form-control" runat="server" id="txtNomeCampeonato" />
			</div>
			<div>
				<label for="txtDt_Inicio">Data de Início</label>
			</div>
			<div>
				<asp:textbox CssClass="form-control" runat="server" id="txtDt_Inicio" />
			</div>
			<div>
				<label for="txtDt_Fim">Data de Término</label>
			</div>
			<div>
				<asp:textbox CssClass="form-control" runat="server" id="txtDt_Fim" />
			</div>

			<div>
				<label for="labelTimes">Times</label>
			</div>

			<div>
				<label for="textBoxTime01">1</label>
				<asp:textbox id="textBoxTime01" runat="server"></asp:textbox>
			</div>
			<div>
				<label for="textBoxTime02">2</label>
				<asp:textbox id="textBoxTime02" runat="server"></asp:textbox>
			</div>
			<div>
				<label for="textBoxTime03">3</label>
				<asp:textbox id="textBoxTime03" runat="server"></asp:textbox>
			</div>
			<div>
				<label for="textBoxTime04">4</label>
				<asp:textbox id="textBoxTime04" runat="server"></asp:textbox>
			</div>
			<div>
				<label for="textBoxTime05">5</label>
				<asp:textbox id="textBoxTime05" runat="server"></asp:textbox>
			</div>
			<div>
				<label for="textBoxTime06">6</label>
				<asp:textbox id="textBoxTime06" runat="server"></asp:textbox>
			</div>
			<div>
				<label for="textBoxTime07">7</label>
				<asp:textbox id="textBoxTime07" runat="server"></asp:textbox>
			</div>
			<div>
				<label for="textBoxTime08">8</label>
				<asp:textbox id="textBoxTime08" runat="server"></asp:textbox>
			</div>
			<div>
				<asp:button text="Criar Campeonato e Gerar Partidas" id="buttonCriar" runat="server" onclick="buttonCriar_Click" />
			</div>
			<div>
				<asp:label id="labelErro" runat="server" text=""></asp:label>
			</div>
			<div>
				<asp:label id="lblMensagem" text="" runat="server" />
			</div>
		</div>
	</form>
</body>
</html>
