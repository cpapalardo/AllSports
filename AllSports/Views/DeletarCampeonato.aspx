<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DeletarCampeonato.aspx.cs" Inherits="AllSports.Views.DeletarCampeonato" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="/css/bootstrap-theme.min.css" />
    <link type="text/css" rel="stylesheet" href="/css/cover.css" />
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.css" />
    <link type="text/css" rel="stylesheet" href="../Tabela.css" />
    <title></title>
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
                            <%if (logado)
                                {%>
                            <li class="active"><a href="GerenciarCampeonato.aspx">Gerenciar Campeonato</a></li>
                            <%}
                                else {%>
                            <li><a href="Home.aspx">Home</a></li>
                            <%} %>

                            <li><a href="Sobre.aspx">Sobre</a></li>
                            <li><a href="#">Contato</a></li>
                            <%
                                if (logado)
                                {%>
                            <li><a href="Conta.aspx">Conta</a></li>
                            <li>
                                <asp:LinkButton ID="Linkbutton1" runat="server">Logout</asp:LinkButton>
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

        <div class="panel-body mainbox painel_daora col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <div class="panel-heading">
                <div class="panel-title">
                    <label>Deletar campeonato</label>
                </div>
                <div>
                    <asp:Label ID="labelResult" runat="server" Text="teste"></asp:Label>
                </div>

            </div>

        </div>
    </form>
</body>
</html>
