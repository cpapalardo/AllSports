<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditarCampeonato.aspx.cs" Inherits="AllSports.Views.EditarCampeonato" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css" />
	<link type="text/css" rel="stylesheet" href="/css/bootstrap-theme.min.css" />
	<link type="text/css" rel="stylesheet" href="/css/cover.css" />
	<link type="text/css" rel="stylesheet" href="/css/bootstrap.css" />
	<link type="text/css" rel="stylesheet" href="../Tabela.css" />
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<!-- Latest compiled JavaScript -->
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

</head>
<body>
	<form id="form1" runat="server">
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
			</nav>
		</div>
		<!-- end navbar -->

<div>
		<div>
			<label>Criada por:</label>
			<label id="labelGerente"></label>
		</div>
		<div>
			<label for="textBoxNomeGerente">Nome</label>
		</div>
		<div>
			<asp:TextBox ID="textBoxNomeGerente" runat="server"></asp:TextBox>
		</div>
		<div>
			<label for="textBoxDataInicio">Data de Início</label>
		</div>
		<div>
			<asp:TextBox ID="textBoxDataInicio" runat="server" TextMode="Date"></asp:TextBox>
		</div>
		<div>
			<label for="textBoxDataFim">Data de Término</label>
		</div>
		<div>
			<asp:TextBox ID="textBoxDataFim" runat="server" TextMode="Date"></asp:TextBox>
		</div>

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
		
			<div class="knockoutTree recur r_7538138 clearfix" style="width: 731px;">
				<div class="knockoutMatch round_grouper rg_2 match_holder " style="margin-top: 178.5px;">

					<div class="single-bracket">&nbsp;</div>

					<table class="competitorPerMatch   " rel="0">

						<tbody>
							<tr class="competitorCont  match-winner comp-first">

								<td class="competitorName  " rel="0">&nbsp;
			
								</td>

								<td class="competitorRes first-res">
									<a href="/tournaments/df80193451/matches/27096448" rel="nofollow"></a>

								</td>
							</tr>

							<tr class="competitorCont  match-winner ">

								<td class="competitorName  " rel="0">&nbsp;
			
								</td>


								<td class="competitorRes first-res">
									<a href="/tournaments/df80193451/matches/27096448" rel="nofollow"></a>

								</td>


							</tr>


						</tbody>
					</table>


				</div>



				<div class="knockoutBranches">

					<div class="brackets" style="height: 228px; top: 112px;">&nbsp;</div>





					<div class="knockoutTree recur r_7538137 clearfix">
						<div class="knockoutMatch round_grouper rg_1 match_holder " style="margin-top: 59.5px;">



							<div class="single-bracket">&nbsp;</div>





							<!-- SCHEDULE KNOCKOUT -->


							<table class="competitorPerMatch   " rel="0">

								<tbody>
									<tr class="competitorCont  match-winner comp-first">

										<td class="competitorName  " rel="0">&nbsp;
			
										</td>


										<td class="competitorRes first-res">
											<a href="/tournaments/df80193451/matches/27096449" rel="nofollow"></a>

										</td>


									</tr>

									<tr class="competitorCont  match-winner ">

										<td class="competitorName  " rel="0">&nbsp;
			
										</td>


										<td class="competitorRes first-res">
											<a href="/tournaments/df80193451/matches/27096449" rel="nofollow"></a>

										</td>


									</tr>


								</tbody>
							</table>


						</div>



						<div class="knockoutBranches">

							<div class="brackets" style="height: 109px; top: 52.5px;">&nbsp;</div>





							<div class="knockoutTree  r_7538136 clearfix">
								<div class="knockoutMatch round_grouper rg_0 match_holder first-knockout-round">







									<!-- SCHEDULE KNOCKOUT -->


									<table class="competitorPerMatch   to-hover to-link" rel="/tournaments/df80193451/matches/27096450">

										<tbody>
											<tr class="competitorCont  comp-first">

												<td class="competitorName 8938869 " rel="1">

													<span class="placeholder">#7</span>

												</td>


												<td class="competitorRes first-res">
													<a href="/tournaments/df80193451/matches/27096450" rel="nofollow"></a>

												</td>


											</tr>

											<tr class="competitorCont  ">

												<td class="competitorName 8938867 " rel="1">

													<span class="placeholder">#5</span>

												</td>


												<td class="competitorRes first-res">
													<a href="/tournaments/df80193451/matches/27096450" rel="nofollow"></a>

												</td>


											</tr>


										</tbody>
									</table>


								</div>



							</div>
							<div class="clear-match"></div>





							<div class="knockoutTree  r_7538136 clearfix">
								<div class="knockoutMatch round_grouper rg_0 match_holder first-knockout-round">







									<!-- SCHEDULE KNOCKOUT -->


									<table class="competitorPerMatch   to-hover to-link" rel="/tournaments/df80193451/matches/27096451">

										<tbody>
											<tr class="competitorCont  comp-first">

												<td class="competitorName 8938868 " rel="1">

													<span class="placeholder">#6</span>

												</td>


												<td class="competitorRes first-res">
													<a href="/tournaments/df80193451/matches/27096451" rel="nofollow"></a>

												</td>


											</tr>

											<tr class="competitorCont  ">

												<td class="competitorName 8938864 " rel="1">

													<span class="placeholder">#2</span>

												</td>


												<td class="competitorRes first-res">
													<a href="/tournaments/df80193451/matches/27096451" rel="nofollow"></a>

												</td>


											</tr>


										</tbody>
									</table>


								</div>



							</div>
							<div class="clear-match"></div>



						</div>



					</div>
					<div class="clear-match"></div>





					<div class="knockoutTree recur r_7538137 clearfix">
						<div class="knockoutMatch round_grouper rg_1 match_holder " style="margin-top: 59.5px;">



							<div class="single-bracket">&nbsp;</div>





							<!-- SCHEDULE KNOCKOUT -->


							<table class="competitorPerMatch   " rel="0">

								<tbody>
									<tr class="competitorCont  match-winner comp-first">

										<td class="competitorName  " rel="0">&nbsp;
			
										</td>


										<td class="competitorRes first-res">
											<a href="/tournaments/df80193451/matches/27096452" rel="nofollow"></a>

										</td>


									</tr>

									<tr class="competitorCont  match-winner ">

										<td class="competitorName  " rel="0">&nbsp;
			
										</td>


										<td class="competitorRes first-res">
											<a href="/tournaments/df80193451/matches/27096452" rel="nofollow"></a>

										</td>


									</tr>


								</tbody>
							</table>


						</div>



						<div class="knockoutBranches">

							<div class="brackets" style="height: 109px; top: 52.5px;">&nbsp;</div>





							<div class="knockoutTree  r_7538136 clearfix">
								<div class="knockoutMatch round_grouper rg_0 match_holder first-knockout-round">







									<!-- SCHEDULE KNOCKOUT -->


									<table class="competitorPerMatch   to-hover to-link" rel="/tournaments/df80193451/matches/27096453">

										<tbody>
											<tr class="competitorCont  comp-first">

												<td class="competitorName 8938863 " rel="1">

													<span class="placeholder">#1</span>

												</td>


												<td class="competitorRes first-res">
													<a href="/tournaments/df80193451/matches/27096453" rel="nofollow"></a>

												</td>


											</tr>

											<tr class="competitorCont  ">

												<td class="competitorName 8938865 " rel="1">

													<span class="placeholder">#3</span>

												</td>


												<td class="competitorRes first-res">
													<a href="/tournaments/df80193451/matches/27096453" rel="nofollow"></a>

												</td>


											</tr>


										</tbody>
									</table>


								</div>



							</div>
							<div class="clear-match"></div>





							<div class="knockoutTree  r_7538136 clearfix">
								<div class="knockoutMatch round_grouper rg_0 match_holder first-knockout-round">







									<!-- SCHEDULE KNOCKOUT -->


									<table class="competitorPerMatch   to-hover to-link" rel="/tournaments/df80193451/matches/27096454">

										<tbody>
											<tr class="competitorCont  comp-first">

												<td class="competitorName 8938870 " rel="1">

													<span class="placeholder">#8</span>

												</td>


												<td class="competitorRes first-res">
													<a href="/tournaments/df80193451/matches/27096454" rel="nofollow"></a>

												</td>


											</tr>

											<tr class="competitorCont  ">

												<td class="competitorName 8938866 " rel="1">

													<span class="placeholder">#4</span>

												</td>


												<td class="competitorRes first-res">
													<a href="/tournaments/df80193451/matches/27096454" rel="nofollow"></a>

												</td>


											</tr>


										</tbody>
									</table>


								</div>



							</div>
							<div class="clear-match"></div>



						</div>



					</div>
					<div class="clear-match"></div>



				</div>



			</div>
		
	</form>
</body>
</html>
