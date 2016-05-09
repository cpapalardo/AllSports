<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Criacao.aspx.cs" Inherits="AllSports.Views.Criacao" %>

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
						<a class="navbar-brand" href="#">All Sports</a>
					</div>
					<div id="navbar" class="collapse navbar-collapse">
						<ul class="nav navbar-nav">
							<li class="active"><a href="#">Gerenciar Campeonato</a></li>
							<li><a href="#">Sobre</a></li>
							<li><a href="#">Contato</a></li>
							<li><a href="#">Logout</a></li>
						</ul>
					</div>
					<!--/.nav-collapse -->
				</div>
			</div>
		</div>
		<!-- end navbar -->

		<div>
			<label for="txtNomeCampeonato">Nome do Campeonato</label>
		</div>
		<div>
			<asp:TextBox runat="server" ID="txtNomeCampeonato" />
		</div>
		<div>
			<label for="txtDt_Inicio">Data de Início</label>
		</div>
		<div>
			<asp:TextBox runat="server" ID="txtDt_Inicio" />
		</div>
		<div>
			<label for="txtDt_Fim">Data de Término</label>
		</div>
		<div>
			<asp:TextBox runat="server" ID="txtDt_Fim" />
		</div>

		<div>
			<div>
				<label for="labelTimes">Times</label>
			</div>

			<div>
				<label for="textBoxTime01">1</label>
				<asp:TextBox ID="textBoxTime01" runat="server"></asp:TextBox>
			</div>
			<div>
				<label for="textBoxTime02">2</label>
				<asp:TextBox ID="textBoxTime02" runat="server"></asp:TextBox>
			</div>
			<div>
				<label for="textBoxTime03">3</label>
				<asp:TextBox ID="textBoxTime03" runat="server"></asp:TextBox>
			</div>
			<div>
				<label for="textBoxTime04">4</label>
				<asp:TextBox ID="textBoxTime04" runat="server"></asp:TextBox>
			</div>
			<div>
				<label for="textBoxTime05">5</label>
				<asp:TextBox ID="textBoxTime05" runat="server"></asp:TextBox>
			</div>
			<div>
				<label for="textBoxTime06">6</label>
				<asp:TextBox ID="textBoxTime06" runat="server"></asp:TextBox>
			</div>
			<div>
				<label for="textBoxTime07">7</label>
				<asp:TextBox ID="textBoxTime07" runat="server"></asp:TextBox>
			</div>
			<div>
				<label for="textBoxTime08">8</label>
				<asp:TextBox ID="textBoxTime08" runat="server"></asp:TextBox>
			</div>
		</div>


		<div>
			<asp:Button Text="Criar Campeonato e Gerar Partidas" ID="buttonCriar" runat="server" OnClick="buttonCriar_Click" />
		</div>
        <div>
            <asp:Label ID="labelErro" runat="server" Text=""></asp:Label>
        </div>
		<div>
			<asp:Label ID="lblMensagem" Text="" runat="server" />
		</div>
	</form>
</body>
</html>
