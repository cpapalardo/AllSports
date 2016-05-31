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
                        <a class="navbar-brand" href="#">All Sports</a>
                    </div>
                    <div id="navbar" class="collapse navbar-collapse">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#">Gerenciar Campeonato</a></li>
                            <li><a href="#">Sobre</a></li>
                            <li><a href="#">Contato</a></li>
                            <li>
                                <asp:LinkButton ID="linkLogout" runat="server" OnClick="linkLogout_Click">Logout</asp:LinkButton>
                            </li>
                        </ul>
                    </div>
                    <!--/.nav-collapse -->
                </div>
            </nav>
        </div>
        <!-- end navbar -->

        <div class="container painel_daora">
            <div>
                <ul class="tabs nav-tabs">
                    <li class="active" style="list-style-type: none;">
                        <a class="active" href="#panel1" data-toggle="tab">
                            <i class="fa fa-lock"></i>
                            <span>Tabela</span>
                        </a>
                    </li>
                    <li style="list-style-type: none;">
                        <a href="#panel2" data-toggle="tab">
                            <i class="fa fa-user"></i>
                            <span>Editar Campeonato</span>
                        </a>
                    </li>
                </ul>
            </div>

            <div class="tab-content">
                <div id="panel1" class="tab-pane active">
                    <%--		<%-- Tabela Mata-mata --%>
                    <div class="container">
                    <div class="knockoutTree recur r_7538138 clearfix" style="width: 731px;">
                        <div class="knockoutMatch round_grouper rg_2 match_holder " style="margin-top: 178.5px;">

                            <div class="single-bracket">&nbsp;</div>

                            <table id="tabelaPartida7" class="competitorPerMatch to-hover to-link" data-toggle="modal" data-target="#modalEditarPartida">
                                <tbody>
                                    <tr class="competitorCont  comp-first">
                                        <td class="competitorName"><span class="placeholder">#Partida7Time1<asp:Label runat="server" ID="lblPartida7Time01Id" /></span><asp:Label runat="server" ID="lblPartida7Time01Nome" /></td>
                                        <td class="competitorRes first-res">
                                            <asp:Label runat="server" ID="lblPartida7Time01Pontos" /></td>
                                    </tr>
                                    <tr class="competitorCont">
                                        <td class="competitorName"><span class="placeholder">#Partida7Time2<asp:Label runat="server" ID="lblPartida7Time02Id" /></span><asp:Label runat="server" ID="lblPartida7Time02Nome" /></td>
                                        <td class="competitorRes first-res">
                                            <asp:Label runat="server" ID="lblPartida7Time02Pontos" /></td>
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
                                    <table id="tabelaPartida5" class="competitorPerMatch to-hover to-link" data-toggle="modal" data-target="#modalEditarPartida">
                                        <tbody>
                                            <tr class="competitorCont  comp-first">
                                                <td class="competitorName"><span class="placeholder">#Partida5Time1<asp:Label runat="server" ID="lblPartida5Time01Id" /></span><asp:Label runat="server" ID="lblPartida5Time01Nome" /></td>
                                                <td class="competitorRes first-res">
                                                    <asp:Label runat="server" ID="lblPartida5Time01Pontos" /></td>
                                            </tr>
                                            <tr class="competitorCont">
                                                <td class="competitorName"><span class="placeholder">#Partida5Time2<asp:Label runat="server" ID="lblPartida5Time02Id" /></span><asp:Label runat="server" ID="lblPartida5Time02Nome" /></td>
                                                <td class="competitorRes first-res">
                                                    <asp:Label runat="server" ID="lblPartida5Time02Pontos" /></td>
                                            </tr>
                                        </tbody>
                                    </table>

                                </div>



                                <div class="knockoutBranches">

                                    <div class="brackets" style="height: 109px; top: 52.5px;">&nbsp;</div>





                                    <div class="knockoutTree  r_7538136 clearfix">
                                        <div class="knockoutMatch round_grouper rg_0 match_holder first-knockout-round">







                                            <!-- SCHEDULE KNOCKOUT -->
                                            <table id="tabelaPartida1" class="competitorPerMatch to-hover to-link" data-toggle="modal" data-target="#modalEditarPartida">
                                                <tbody>
                                                    <tr class="competitorCont  comp-first">
                                                        <td class="competitorName"><span class="placeholder">#Partida1Time1<asp:Label runat="server" ID="lblPartida1Time01Id" /></span><asp:Label runat="server" ID="lblPartida1Time01Nome" /></td>
                                                        <td class="competitorRes first-res">
                                                            <asp:Label runat="server" ID="lblPartida1Time01Pontos" /></td>
                                                    </tr>
                                                    <tr class="competitorCont">
                                                        <td class="competitorName"><span class="placeholder">#Partida1Time2<asp:Label runat="server" ID="lblPartida1Time02Id" /></span><asp:Label runat="server" ID="lblPartida1Time02Nome" /></td>
                                                        <td class="competitorRes first-res">
                                                            <asp:Label runat="server" ID="lblPartida1Time02Pontos" /></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>



                                    </div>
                                    <div class="clear-match"></div>





                                    <div class="knockoutTree  r_7538136 clearfix">
                                        <div class="knockoutMatch round_grouper rg_0 match_holder first-knockout-round">







                                            <!-- SCHEDULE KNOCKOUT -->
                                            <table id="tabelaPartida2" class="competitorPerMatch to-hover to-link" data-toggle="modal" data-target="#modalEditarPartida">
                                                <tbody>
                                                    <tr class="competitorCont  comp-first">
                                                        <td class="competitorName"><span class="placeholder">#Partida2Time1<asp:Label runat="server" ID="lblPartida2Time01Id" /></span><asp:Label runat="server" ID="lblPartida2Time01Nome" /></td>
                                                        <td class="competitorRes first-res">
                                                            <asp:Label runat="server" ID="lblPartida2Time01Pontos" /></td>
                                                    </tr>
                                                    <tr class="competitorCont">
                                                        <td class="competitorName"><span class="placeholder">#Partida2Time2<asp:Label runat="server" ID="lblPartida2Time02Id" /></span><asp:Label runat="server" ID="lblPartida2Time02Nome" /></td>
                                                        <td class="competitorRes first-res">
                                                            <asp:Label runat="server" ID="lblPartida2Time02Pontos" /></td>
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
                                    <table id="tabelaPartida6" class="competitorPerMatch to-hover to-link" data-toggle="modal" data-target="#modalEditarPartida">
                                        <tbody>
                                            <tr class="competitorCont  comp-first">
                                                <td class="competitorName"><span class="placeholder">#Partida6Time1<asp:Label runat="server" ID="lblPartida6Time01Id" /></span><asp:Label runat="server" ID="lblPartida6Time01Nome" /></td>
                                                <td class="competitorRes first-res">
                                                    <asp:Label runat="server" ID="lblPartida6Time01Pontos" /></td>
                                            </tr>
                                            <tr class="competitorCont">
                                                <td class="competitorName"><span class="placeholder">#Partida6Time2<asp:Label runat="server" ID="lblPartida6Time02Id" /></span><asp:Label runat="server" ID="lblPartida6Time02Nome" /></td>
                                                <td class="competitorRes first-res">
                                                    <asp:Label runat="server" ID="lblPartida6Time02Pontos" /></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>



                                <div class="knockoutBranches">

                                    <div class="brackets" style="height: 109px; top: 52.5px;">&nbsp;</div>





                                    <div class="knockoutTree  r_7538136 clearfix">
                                        <div class="knockoutMatch round_grouper rg_0 match_holder first-knockout-round" data-toggle="modal" data-target="#modalEditarPartida">







                                            <!-- SCHEDULE KNOCKOUT -->
                                            <table id="tabelaPartida3" class="competitorPerMatch to-hover to-link" data-toggle="modal" data-target="#modalEditarPartida">
                                                <tbody>
                                                    <tr class="competitorCont  comp-first">
                                                        <td class="competitorName"><span class="placeholder">#Partida3Time1<asp:Label runat="server" ID="lblPartida3Time01Id" /></span><asp:Label runat="server" ID="lblPartida3Time01Nome" /></td>
                                                        <td class="competitorRes first-res">
                                                            <asp:Label runat="server" ID="lblPartida3Time01Pontos" /></td>
                                                    </tr>
                                                    <tr class="competitorCont">
                                                        <td class="competitorName"><span class="placeholder">#Partida3Time2<asp:Label runat="server" ID="lblPartida3Time02Id" /></span><asp:Label runat="server" ID="lblPartida3Time02Nome" /></td>
                                                        <td class="competitorRes first-res">
                                                            <asp:Label runat="server" ID="lblPartida3Time02Pontos" /></td>
                                                    </tr>
                                                </tbody>
                                            </table>

                                        </div>



                                    </div>
                                    <div class="clear-match"></div>





                                    <div class="knockoutTree  r_7538136 clearfix">
                                        <div class="knockoutMatch round_grouper rg_0 match_holder first-knockout-round">







                                            <!-- SCHEDULE KNOCKOUT -->
                                            <table id="tabelaPartida4" class="competitorPerMatch to-hover to-link" data-toggle="modal" data-target="#modalEditarPartida">
                                                <tbody>
                                                    <tr class="competitorCont  comp-first">
                                                        <td class="competitorName"><span class="placeholder">#Partida4Time1<asp:Label runat="server" ID="lblPartida4Time01Id" /></span><asp:Label runat="server" ID="lblPartida4Time01Nome" /></td>
                                                        <td class="competitorRes first-res">
                                                            <asp:Label runat="server" ID="lblPartida4Time01Pontos" /></td>
                                                    </tr>
                                                    <tr class="competitorCont">
                                                        <td class="competitorName"><span class="placeholder">#Partida4Time2<asp:Label runat="server" ID="lblPartida4Time02Id" /></span><asp:Label runat="server" ID="lblPartida4Time02Nome" /></td>
                                                        <td class="competitorRes first-res">
                                                            <asp:Label runat="server" ID="lblPartida4Time02Pontos" /></td>
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
                        <button id="buttonSortearPartidas" type="button" class="btn btn-default" data-toggle="modal" data-target="#modalConfirmarSorteio" runat="server">Sortear Partidas</button>
                    </div>
                    <div>
                        <asp:Label ID="labelWarning" runat="server" Text=""></asp:Label>
                    </div>
                    <%-- Fim tabela Mata-mata --%>
                </div>
                <div id="panel2" class="tab-pane">
                    <div>
                        <div>
                            <label></label>
                        </div>
                        <div>
                            <label for="labelGerente">Criada por:</label>
                            <asp:Label ID="labelGerente" runat="server" Text="Gerente"></asp:Label>
                        </div>
                        <div>
                            <label for="textBoxNomeCampeonato">Nome do campeonato</label>
                        </div>
                        <div>
                            <asp:TextBox ID="textBoxNomeCampeonato" ReadOnly="true" runat="server"></asp:TextBox>
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
                        <div>
                            <asp:Button ID="buttonSalvarCampeonato" runat="server" Text="Salvar" />
                        </div>
                        <div>
                            <asp:Button ID="buttonCancelar" runat="server" Text="Cancelar" />
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Modal Editar Partida-->
        <div class="modal fade" id="modalEditarPartida" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Alterar Partida</h4>
                    </div>
                    <div class="modal-body">

                        <%-- Tabela de edição Partida --%>
                        <div>
                            <div>
                                <asp:Label ID="labelTimeCasa" runat="server" Text="Time Casa"></asp:Label>
                            </div>
                            <div class="row">
                                <asp:TextBox ID="textBoxTimeCasa" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <asp:Label ID="labelTimeCasaGols" runat="server" Text="Gols"></asp:Label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxTimeCasaGols" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <asp:Label ID="labelTimeVisitante" runat="server" Text="Time Visitante"></asp:Label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxTimeVisitante" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <asp:Label ID="labelTimeVisitanteGols" runat="server" Text="Gols"></asp:Label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxTimeVisitanteGols" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <asp:Label ID="labelEndereco" runat="server" Text="Endereço da partida"></asp:Label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxEndereco" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <div>
                                <asp:Label ID="labelData" runat="server" Text="Data"></asp:Label>
                            </div>
                            <div>
                                <asp:TextBox ID="textBoxDataPartida" runat="server" TextMode="DateTime"></asp:TextBox>
                            </div>
                            <div>
                                <asp:Label ID="labelFinalizada" runat="server" Text="Finalizada?"></asp:Label>
                            </div>
                        </div>
                        <%-- Fim Tabela de edição partida --%>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btnSalvar" runat="server" Text="Salvar" CssClass="btn btn-default" OnClick="btnSalvarPartida_Click" />
                        <button type="button" id="btnCancelarPartida" class="btn btn-default" data-dismiss="modal">Cancelar</button>
                    </div>
                </div>

            </div>
        </div>

        <!-- Modal Confirmação Sorteiar Partidas -->
        <div class="modal fade" id="modalConfirmarSorteio" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Sortear Partidas</h4>
                    </div>
                    <div class="modal-body">
                        <p>Deseja sortear as partidas iniciais? Caso já existam times na tabela, eles serão sobreescritos.</p>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btnConfirmar" runat="server" Text="Sim" CssClass="btn btn-default" OnClick="buttonSortearPartidas_Click" />
                        <button type="button" id="btnSortearNao" class="btn btn-default" data-dismiss="modal">Não</button>
                    </div>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
