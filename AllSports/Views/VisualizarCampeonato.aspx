<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VisualizarCampeonato.aspx.cs" Inherits="AllSports.Views.VisualizarCampeonato" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="/css/bootstrap-theme.min.css" />
    <link type="text/css" rel="stylesheet" href="/css/cover.css" />
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.css" />
    <link type="text/css" rel="stylesheet" href="../Tabela.css" />
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" />

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div id="fullscreen_editarCampeonato" class="fullscreen_editarCampeonato" />
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
                        <a class="navbar-brand" href="GerenciarCampeonato.aspx">All Sports</a>
                    </div>
                    <div id="navbar" class="collapse navbar-collapse">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="GerenciarCampeonato.aspx">Gerenciar Campeonato</a></li>
                            <li><a href="Sobre.aspx">Sobre</a></li>
                            <li><a href="Contato.aspx">Contato</a></li>
                                                        <%
                                if (logado)
                                {%>
                                    <li><a href="Conta.aspx">Conta</a></li>
                                    <li>
                                        <asp:LinkButton ID="Linkbutton1" runat="server" OnClick="linkLogout_Click">Logout</asp:LinkButton>
                                    </li>
                            <%
                                }%>
                        </ul>
                    </div>
                    <!--/.nav-collapse -->
                </div>
            </nav>
        </div>
        <!-- end navbar -->

        <div class="container painel_daora">
            <%--Abas--%>
            <div class="span10 offset1">
                <div class="tabbable tabs">
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a href="#panel1" data-toggle="tab" class="active">
                                <span>Tabela</span>
                            </a>
                        </li>
                        <li>
                            <a href="#panel2" data-toggle="tab">
                                <span>Editar Campeonato</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="tab-content">
                <%--Abas - Conteúdo--%>
                <div id="panel1" class="tab-pane active">
                    <%-- Tabela Mata-mata --%>
                    <div class="container">
                        <div class="knockoutTree recur clearfix" style="width: 719px;">
                            <div class="knockoutMatch round_grouper match_holder" style="margin-top: 178.5px;">
                                <div class="single-bracket">&nbsp;</div>
                                <table id="tabelaPartida7" runat="server" class="competitorPerMatch" data-toggle="modal" data-target="#modalEditarPartida07">
                                    <tbody>
                                        <tr class="competitorCont  comp-first">
                                            <td class="competitorName"><asp:Label runat="server" ID="lblPartida7Time01Nome" /></td>
                                            <td class="competitorRes first-res"><asp:Label runat="server" ID="lblPartida7Time01Pontos" /></td>
                                        </tr>
                                        <tr class="competitorCont">
                                            <td class="competitorName"><asp:Label runat="server" ID="lblPartida7Time02Nome" /></td>
                                            <td class="competitorRes first-res"><asp:Label runat="server" ID="lblPartida7Time02Pontos" /></td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="knockoutBranches">
                                <div class="brackets" style="height: 228px; top: 112px;">&nbsp;</div>
                                <div class="knockoutTree recur clearfix">
                                    <div class="knockoutMatch round_grouper match_holder " style="margin-top: 59.5px;">
                                        <div class="single-bracket">&nbsp;</div>
                                        <!-- SCHEDULE KNOCKOUT -->
                                        <table id="tabelaPartida5" runat="server" class="competitorPerMatch" data-toggle="modal" data-target="#modalEditarPartida05">
                                            <tbody>
                                                <tr class="competitorCont  comp-first">
                                                    <td class="competitorName"><asp:Label runat="server" ID="lblPartida5Time01Nome" /></td>
                                                    <td class="competitorRes first-res"><asp:Label runat="server" ID="lblPartida5Time01Pontos" /></td>
                                                </tr>
                                                <tr class="competitorCont">
                                                    <td class="competitorName"></span><asp:Label runat="server" ID="lblPartida5Time02Nome" /></td>
                                                    <td class="competitorRes first-res"><asp:Label runat="server" ID="lblPartida5Time02Pontos" /></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="knockoutBranches">
                                        <div class="brackets" style="height: 109px; top: 52.5px;">&nbsp;</div>
                                        <div class="knockoutTree clearfix">
                                            <div class="knockoutMatch round_grouper match_holder first-knockout-round">
                                                <!-- SCHEDULE KNOCKOUT -->
                                                <table id="tabelaPartida1" class="competitorPerMatch to-hover to-link" data-toggle="modal" data-target="#modalEditarPartida01">
                                                    <tbody>
                                                        <tr class="competitorCont  comp-first">
                                                            <td class="competitorName"><asp:Label runat="server" ID="lblPartida1Time01Nome" /></td>
                                                            <td class="competitorRes first-res"><asp:Label runat="server" ID="lblPartida1Time01Pontos" /></td>
                                                        </tr>
                                                        <tr class="competitorCont">
                                                            <td class="competitorName"><asp:Label runat="server" ID="lblPartida1Time02Nome" /></td>
                                                            <td class="competitorRes first-res"><asp:Label runat="server" ID="lblPartida1Time02Pontos" /></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="clear-match"></div>
                                        <div class="knockoutTree clearfix">
                                            <div class="knockoutMatch round_grouper match_holder first-knockout-round">
                                                <!-- SCHEDULE KNOCKOUT -->
                                                <table id="tabelaPartida2" class="competitorPerMatch to-hover to-link" data-toggle="modal" data-target="#modalEditarPartida02">
                                                    <tbody>
                                                        <tr class="competitorCont  comp-first">
                                                            <td class="competitorName"><asp:Label runat="server" ID="lblPartida2Time01Nome" /></td>
                                                            <td class="competitorRes first-res"><asp:Label runat="server" ID="lblPartida2Time01Pontos" /></td>
                                                        </tr>
                                                        <tr class="competitorCont">
                                                            <td class="competitorName"><asp:Label runat="server" ID="lblPartida2Time02Nome" /></td>
                                                            <td class="competitorRes first-res"><asp:Label runat="server" ID="lblPartida2Time02Pontos" /></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="clear-match"></div>
                                    </div>
                                </div>
                                <div class="clear-match"></div>
                                <div class="knockoutTree recur clearfix">
                                    <div class="knockoutMatch round_grouper match_holder" style="margin-top: 59.5px;">
                                        <div class="single-bracket">&nbsp;</div>
                                        <!-- SCHEDULE KNOCKOUT -->
                                        <table id="tabelaPartida6" runat="server" class="competitorPerMatch" data-toggle="modal" data-target="#modalEditarPartida06">
                                            <tbody>
                                                <tr class="competitorCont  comp-first">
                                                    <td class="competitorName"><asp:Label runat="server" ID="lblPartida6Time01Nome" /></td>
                                                    <td class="competitorRes first-res"><asp:Label runat="server" ID="lblPartida6Time01Pontos" /></td>
                                                </tr>
                                                <tr class="competitorCont">
                                                    <td class="competitorName"><asp:Label runat="server" ID="lblPartida6Time02Nome" /></td>
                                                    <td class="competitorRes first-res"><asp:Label runat="server" ID="lblPartida6Time02Pontos" /></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="knockoutBranches">
                                        <div class="brackets" style="height: 109px; top: 52.5px;">&nbsp;</div>
                                        <div class="knockoutTree clearfix">
                                            <div class="knockoutMatch round_grouper match_holder first-knockout-round">
                                                <!-- SCHEDULE KNOCKOUT -->
                                                <table id="tabelaPartida3" class="competitorPerMatch to-hover to-link" data-toggle="modal" data-target="#modalEditarPartida03">
                                                    <tbody>
                                                        <tr class="competitorCont  comp-first">
                                                            <td class="competitorName"><asp:Label runat="server" ID="lblPartida3Time01Nome" /></td>
                                                            <td class="competitorRes first-res"><asp:Label runat="server" ID="lblPartida3Time01Pontos" /></td>
                                                        </tr>
                                                        <tr class="competitorCont">
                                                            <td class="competitorName"><asp:Label runat="server" ID="lblPartida3Time02Nome" /></td>
                                                            <td class="competitorRes first-res"><asp:Label runat="server" ID="lblPartida3Time02Pontos" /></td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="clear-match"></div>
                                        <div class="knockoutTree clearfix">
                                            <div class="knockoutMatch round_grouper match_holder first-knockout-round">
                                                <!-- SCHEDULE KNOCKOUT -->
                                                <table id="tabelaPartida4" class="competitorPerMatch to-hover to-link" data-toggle="modal" data-target="#modalEditarPartida04">
                                                    <tbody>
                                                        <tr class="competitorCont  comp-first">
                                                            <td class="competitorName"><asp:Label runat="server" ID="lblPartida4Time01Nome" /></td>
                                                            <td class="competitorRes first-res"><asp:Label runat="server" ID="lblPartida4Time01Pontos" /></td>
                                                        </tr>
                                                        <tr class="competitorCont">
                                                            <td class="competitorName"><asp:Label runat="server" ID="lblPartida4Time02Nome" /></td>
                                                            <td class="competitorRes first-res"><asp:Label runat="server" ID="lblPartida4Time02Pontos" /></td>
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
                    </div>
                    <div>
                        <asp:Label ID="labelWarning" runat="server" Text=""></asp:Label>
                    </div>
                    <br />
                    <%-- Fim tabela Mata-mata --%>
                </div>
                <div id="panel2" class="tab-pane">
                    <div>
                        <div>
                            <label></label>
                        </div>
                        <div>
                            <label for="labelGerente">Criado por:</label>
                            <asp:Label ID="labelGerente" runat="server" Text="Gerente"></asp:Label>
                        </div>
                        <div>
                            <label for="textBoxNomeCampeonato">Nome do campeonato</label>
                        </div>
                        <div>
                            <asp:TextBox ID="textBoxNomeCampeonato" runat="server" ReadOnly="true"></asp:TextBox>
                        </div>
                        <div>
                            <label for="textBoxDataInicio">Data de Início</label>
                        </div>
                        <div>
                            <asp:TextBox ID="textBoxDataInicio" runat="server" ReadOnly="true"></asp:TextBox>
                        </div>
                        <div>
                            <label for="textBoxDataFim">Data de Término</label>
                        </div>
                        <div>
                            <asp:TextBox ID="textBoxDataFim" runat="server" ReadOnly="true"></asp:TextBox>
                        </div>

                        <div>
                            <label for="labelTimes">Times</label>
                        </div>

                        <div>
                            <label for="textBoxTime01">1</label>
                            <asp:TextBox ID="textBoxTime01" runat="server" ReadOnly="true"></asp:TextBox>
                        </div>
                        <div>
                            <label for="textBoxTime02">2</label>
                            <asp:TextBox ID="textBoxTime02" runat="server" ReadOnly="true"></asp:TextBox>
                        </div>
                        <div>
                            <label for="textBoxTime03">3</label>
                            <asp:TextBox ID="textBoxTime03" runat="server" ReadOnly="true"></asp:TextBox>
                        </div>
                        <div>
                            <label for="textBoxTime04">4</label>
                            <asp:TextBox ID="textBoxTime04" runat="server" ReadOnly="true"></asp:TextBox>
                        </div>
                        <div>
                            <label for="textBoxTime05">5</label>
                            <asp:TextBox ID="textBoxTime05" runat="server" ReadOnly="true"></asp:TextBox>
                        </div>
                        <div>
                            <label for="textBoxTime06">6</label>
                            <asp:TextBox ID="textBoxTime06" runat="server" ReadOnly="true"></asp:TextBox>
                        </div>
                        <div>
                            <label for="textBoxTime07">7</label>
                            <asp:TextBox ID="textBoxTime07" runat="server" ReadOnly="true"></asp:TextBox>
                        </div>
                        <div>
                            <label for="textBoxTime08">8</label>
                            <asp:TextBox ID="textBoxTime08" runat="server" ReadOnly="true"></asp:TextBox>
                        </div>
                        <div>
                            <asp:Label Text="" Visible="false" ID="txtMensagemErro" runat="server" />
                        </div>
                        <br />
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Editar Partida 01-->
        <div class="modal fade" id="modalEditarPartida01" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Alterar Partida</h4>
                    </div>
                    <div class="modal-body">
                        <%--Tabela de edição Partida--%>
                        <div>
                            <div>
                                <label for="textBoxTimeCasa01">Time Casa</label>
                            </div>
                            <div class="row">
                                <asp:TextBox ID="textBoxTimeCasa01" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxTimeCasaGols01">Gols</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxTimeCasaGols01" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxTimeVisitante01">Time Visitante</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxTimeVisitante01" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxTimeVisitanteGols01">Gols</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxTimeVisitanteGols01" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxEndereco01">Endereço da Partida</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxEndereco01" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxDataPartida01">Data</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxDataPartida01" runat="server" TextMode="DateTime" ReadOnly="true"></asp:TextBox>
                            </div>
							<div>
								<asp:CheckBox Text="Finalizada" ID="chkFinalizada01" runat="server" Enabled="false" />
							</div>
                        </div>
                        <%-- Fim Tabela de edição partida --%>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Editar Partida 02-->
        <div class="modal fade" id="modalEditarPartida02" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Alterar Partida</h4>
                    </div>
                    <div class="modal-body">
                        <%--Tabela de edição Partida--%>
                        <div>
                            <div>
                                <label for="textBoxTimeCasa02">Time Casa</label>
                            </div>
                            <div class="row">
                                <asp:TextBox ID="textBoxTimeCasa02" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxTimeCasaGols02">Gols</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxTimeCasaGols02" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxTimeVisitante02">Time Visitante</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxTimeVisitante02" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxTimeVisitanteGols02">Gols</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxTimeVisitanteGols02" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxEndereco02">Endereço da Partida</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxEndereco02" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxDataPartida02">Data</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxDataPartida02" runat="server" TextMode="DateTime" ReadOnly="true"></asp:TextBox>
                            </div>
							<div>
								<asp:CheckBox Text="Finalizada" ID="chkFinalizada02" runat="server" Enabled="false" />
							</div>
                        </div>
                        <%-- Fim Tabela de edição partida --%>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Editar Partida 03-->
        <div class="modal fade" id="modalEditarPartida03" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Alterar Partida</h4>
                    </div>
                    <div class="modal-body">
                        <%--Tabela de edição Partida--%>
                        <div>
                            <div>
                                <label for="textBoxTimeCasa03">Time Casa</label>
                            </div>
                            <div class="row">
                                <asp:TextBox ID="textBoxTimeCasa03" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxTimeCasaGols03">Gols</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxTimeCasaGols03" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxTimeVisitante03">Time Visitante</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxTimeVisitante03" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxTimeVisitanteGols03">Gols</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxTimeVisitanteGols03" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxEndereco03">Endereço da Partida</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxEndereco03" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxDataPartida03">Data</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxDataPartida03" runat="server" TextMode="DateTime" ReadOnly="true"></asp:TextBox>
                            </div>
							<div>
								<asp:CheckBox Text="Finalizada" ID="chkFinalizada03" runat="server" Enabled="false" />
							</div>
                        </div>
                        <%-- Fim Tabela de edição partida --%>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Editar Partida 04-->
        <div class="modal fade" id="modalEditarPartida04" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Alterar Partida</h4>
                    </div>
                    <div class="modal-body">
                        <%--Tabela de edição Partida--%>
                        <div>
                            <div>
                                <label for="textBoxTimeCasa04">Time Casa</label>
                            </div>
                            <div class="row">
                                <asp:TextBox ID="textBoxTimeCasa04" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxTimeCasaGols04">Gols</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxTimeCasaGols04" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxTimeVisitante04">Time Visitante</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxTimeVisitante04" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxTimeVisitanteGols04">Gols</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxTimeVisitanteGols04" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxEndereco04">Endereço da Partida</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxEndereco04" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxDataPartida04">Data</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxDataPartida04" runat="server" TextMode="DateTime" ReadOnly="true"></asp:TextBox>
                            </div>
							<div>
								<asp:CheckBox Text="Finalizada" ID="chkFinalizada04" runat="server" Enabled="false" />
							</div>
                        </div>
                        <%-- Fim Tabela de edição partida --%>
                    </div>
                </div>
            </div>
        </div>

		<%if (partidas.Count >= 5)
			{ %>
        <!-- Modal Editar Partida 05-->
        <div class="modal fade" id="modalEditarPartida05" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Alterar Partida</h4>
                    </div>
                    <div class="modal-body">
                        <%--Tabela de edição Partida--%>
                        <div>
                            <div>
                                <label for="textBoxTimeCasa05">Time Casa</label>
                            </div>
                            <div class="row">
                                <asp:TextBox ID="textBoxTimeCasa05" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxTimeCasaGols05">Gols</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxTimeCasaGols05" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxTimeVisitante05">Time Visitante</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxTimeVisitante05" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxTimeVisitanteGols05">Gols</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxTimeVisitanteGols05" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxEndereco05">Endereço da Partida</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxEndereco05" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxDataPartida05">Data</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxDataPartida05" runat="server" TextMode="DateTime" ReadOnly="true"></asp:TextBox>
                            </div>
							<div>
								<asp:CheckBox Text="Finalizada" ID="chkFinalizada05" runat="server" Enabled="false" />
							</div>
                        </div>
                        <%-- Fim Tabela de edição partida --%>
                    </div>
                </div>
            </div>
        </div>
		<%} %>

		<%if (partidas.Count >= 6)
			{ %>
        <!-- Modal Editar Partida 06-->
        <div class="modal fade" id="modalEditarPartida06" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Alterar Partida</h4>
                    </div>
                    <div class="modal-body">
                        <%--Tabela de edição Partida--%>
                        <div>
                            <div>
                                <label for="textBoxTimeCasa06">Time Casa</label>
                            </div>
                            <div class="row">
                                <asp:TextBox ID="textBoxTimeCasa06" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxTimeCasaGols06">Gols</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxTimeCasaGols06" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxTimeVisitante06">Time Visitante</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxTimeVisitante06" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxTimeVisitanteGols06">Gols</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxTimeVisitanteGols06" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxEndereco06">Endereço da Partida</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxEndereco06" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxDataPartida06">Data</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxDataPartida06" runat="server" TextMode="DateTime" ReadOnly="true"></asp:TextBox>
                            </div>
							<div>
								<asp:CheckBox Text="Finalizada" ID="chkFinalizada06" runat="server" Enabled="false" />
							</div>
                        </div>
                        <%-- Fim Tabela de edição partida --%>
                    </div>
                </div>
            </div>
        </div>
		<% } %>

		<%if (partidas.Count == 7)
			{ %>
        <!-- Modal Editar Partida 07-->
        <div class="modal fade" id="modalEditarPartida07" role="dialog">
            <div class="modal-dialog">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Alterar Partida</h4>
                    </div>
                    <div class="modal-body">
                        <%--Tabela de edição Partida--%>
                        <div>
                            <div>
                                <label for="textBoxTimeCasa07">Time Casa</label>
                            </div>
                            <div class="row">
                                <asp:TextBox ID="textBoxTimeCasa07" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxTimeCasaGols07">Gols</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxTimeCasaGols07" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxTimeVisitante07">Time Visitante</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxTimeVisitante07" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxTimeVisitanteGols07">Gols</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxTimeVisitanteGols07" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxEndereco07">Endereço da Partida</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxEndereco07" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <label for="textBoxDataPartida07">Data</label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxDataPartida07" runat="server" TextMode="DateTime" ReadOnly="true"></asp:TextBox>
                            </div>
                            <div>
								<asp:CheckBox Text="Finalizada" ID="chkFinalizada07" runat="server" Enabled="false" />
							</div>
                        </div>
                        <%-- Fim Tabela de edição partida --%>
                    </div>
                </div>
            </div>
        </div>
		<%} %>
    </form>
</body>
</html>

