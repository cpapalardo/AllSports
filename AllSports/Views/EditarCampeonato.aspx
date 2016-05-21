<%@ page language="C#" autoeventwireup="true" codebehind="EditarCampeonato.aspx.cs" inherits="AllSports.Views.EditarCampeonato" %>

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

		<div>
			<div>
				<label>Criada por:</label>
				<label id="labelGerente"></label>
			</div>
			<div>
				<label for="textBoxNomeGerente">Nome</label>
			</div>
			<div>
				<asp:textbox id="textBoxNomeGerente" runat="server"></asp:textbox>
			</div>
			<div>
				<label for="textBoxDataInicio">Data de Início</label>
			</div>
			<div>
				<asp:textbox id="textBoxDataInicio" runat="server" textmode="Date"></asp:textbox>
			</div>
			<div>
				<label for="textBoxDataFim">Data de Término</label>
			</div>
			<div>
				<asp:textbox id="textBoxDataFim" runat="server" textmode="Date"></asp:textbox>
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
				<asp:Button ID="Button1" runat="server" Text="Sortear Times" />
			</div>
		</div>

		<%-- Tabela de edição Partida --%>
		<div class="container">
			<div>
				<asp:label id="labelPartida" runat="server" text="Partida"></asp:label>
			</div>
			<div>
				<div>
					<asp:label id="labelTimeCasa" runat="server" text="Time Casa"></asp:label>
				</div>
				<div class="row">
					<asp:textbox id="textBoxTimeCasa" runat="server" readonly="true"></asp:textbox>
				</div>
			</div>
			<div>
				<div>
					<asp:label id="labelTimeCasaGols" runat="server" text="Gols"></asp:label>
				</div>
				<div>
					<asp:textbox id="textBoxTimeCasaGols" runat="server"></asp:textbox>
				</div>
			</div>
			<div>
				<div>
					<asp:label id="labelTimeVisitante" runat="server" text="Time Visitante"></asp:label>
				</div>
				<div>
					<asp:textbox id="textBoxTimeVisitante" runat="server" readonly="true"></asp:textbox>
				</div>
			</div>
			<div>
				<div>
					<asp:label id="labelTimeVisitanteGols" runat="server" text="Gols"></asp:label>
				</div>
				<div>
					<asp:textbox id="textBoxTimeVisitanteGols" runat="server"></asp:textbox>
				</div>
			</div>
			<div>
				<div>
					<asp:label id="labelEndereco" runat="server" text="Endereço da partida"></asp:label>
				</div>
				<div>
					<asp:textbox id="textBoxEndereco" runat="server"></asp:textbox>
				</div>
			</div>
			<div>
				<div>
					<asp:label id="labelData" runat="server" text="Data"></asp:label>
				</div>
				<div>
					<asp:textbox id="textBoxData" runat="server" textmode="DateTime"></asp:textbox>
				</div>
				<div>
					<asp:label id="labelFinalizada" runat="server" text="Finalizada?"></asp:label>
				</div>
			</div>
		</div>
		<%-- Fim Tabela de edição partida --%>

		<%-- Tabela Mata-mata --%>
		<div class="knockoutTree recur r_7538138 clearfix" style="width: 731px;">
			<div class="knockoutMatch round_grouper rg_2 match_holder " style="margin-top: 178.5px;">

				<div class="single-bracket">&nbsp;</div>

				<table class="competitorPerMatch   " rel="0">

					<tbody>
						<tr class="competitorCont  match-winner comp-first">

							<td class="competitorName  " rel="0">&nbsp;
			
								</td>

							<td class="competitorRes first-res">
								<%--<a href="/tournaments/df80193451/matches/27096448" rel="nofollow"></a>--%>
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
		<%-- Fim tabela Mata-mata --%>
	</form>
</body>
</html>
