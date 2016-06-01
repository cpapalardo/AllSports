<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GerenciarCampeonato.aspx.cs" Inherits="AllSports.Views.GerenciarCampeonato" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="/css/bootstrap-theme.min.css" />
    <link type="text/css" rel="stylesheet" href="/css/cover.css" />
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.css" />
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
		<div id="fullscreen_gerenciar" class="fullscreen_gerenciar" />
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
                            <li class="active"><a href="#">Gerenciar Campeonato</a></li>
                            <li><a href="#">Sobre</a></li>
                            <li><a href="#">Contato</a></li>
                            <li><asp:LinkButton ID="linkLogout" runat="server" OnClick="linkLogout_Click">Logout</asp:LinkButton></li>
                        </ul>
                    </div>
                    <!--/.nav-collapse -->
                </div>
            </nav>
        </div>
        <!-- end navbar -->

        <div class="container painel_daora">
            <div>
                <a href="Criacao.aspx">Criar novo campeonato</a>
            </div>
            <div></div>
            <div>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Nome</th>
                            <th>Status</th>
                            <th>Visualizar</th>
                            <th>Editar</th>
                            <th>Excluir</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%  
                        int cont = 0;
                        while (cont < campeonatoList.Count) {
                        %>
                        <tr>
                            <td scope="row"><%=cont+1 %></td>
                            <td><%=campeonatoList[cont].Nome %></td>
                            <td><%= GetStatus(campeonatoList[cont].Data_Fim) %></td>
                            <td>
                                <button type="button" data-toggle="modal" data-target="#myModal"><i class="fa fa-search" style="font-size: 24px"></i></button>
                            </td>
                            <td>
                                <button type="button" data-toggle="modal" onclick="javascript:window.open('../Views/EditarCampeonato.aspx?id=<%=campeonatoList[cont].Id %>', '_self');"><i class="fa fa-edit" style="font-size: 24px"></i></button>
                            </td>
                            <td>
                                <div>
                                    <button type="button" data-toggle="modal" data-target="#myModal"><i class="fa fa-trash-o" style="font-size: 24px"></i></button>
                                </div>
                            </td>
                        </tr>
                        <%
                        cont = cont + 1; }
                        %>
                    </tbody>
                </table>
            </div>
        </div>

        <!-- Modal -->
        <div class="modal fade" id="myModal" role="dialog">
            <div class="modal-dialog">

                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Excluir Campeonato</h4>
                    </div>
                    <div class="modal-body">
                        <p>Deseja excluir o campeonato?</p>
                    </div>
                    <div class="modal-footer">
                        <asp:Button ID="btnDeletarSim" runat="server" Text="Sim" CssClass="btn btn-default" OnClick="btnDeletarSim_Click" />
                        <button type="button" id="btnDeletarNao" class="btn btn-default" data-dismiss="modal">Não</button>
                    </div>
                </div>

            </div>
        </div>
    </form>
</body>
</html>
