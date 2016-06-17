<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sobre.aspx.cs" Inherits="AllSports.Views.Sobre" %>

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
        <div id="fullscreen_sobre" class="fullscreen_gerenciar" />
        <!-- navbar -->
        <nav class="navbar navbar-inverse navbar-fixed-top">
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
                        <li><a href="GerenciarCampeonato.aspx">Gerenciar Campeonato</a></li>
                        <%}
                            else
                            {%>
                        <li><a href="Home.aspx">Home</a></li>
                        <%} %>

                        <li class="active"><a href="Sobre.aspx">Sobre</a></li>
                        <li><a href="#">Contato</a></li>
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
        <!-- end navbar -->
        <br />
        <br />
        <br />
        <div class="panel-body mainbox painel_daora col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2" style="opacity: 0.8">
            <div class="panel-heading">
                <div class="panel-body">
                    <div class="panel-group">
                        <div>
                            <label>Sobre a All Sports</label>
                        </div>
                        <div>
                            <label style="text-align: left">Olá! Já conhece a All Sports? Nosso objetivo é criar uma experiência única e divertida para todos os praticantes de futebol. </label>
                        </div>
                        <div>
                            <label style="text-align: left">Acreditamos que isso seja possível com uma plataforma acessível a qualquer pessoa com um computador nas mãos e uma bola nos pés.</label>
                        </div>
                        <div>
                            <label style="text-align: left">Aqui nós promovemos os mais diversos eventos envolvidos com futebol para aqueles, assim, apaixonados!</label>
                        </div>
                        <div>
                            <label style="text-align: left">Vem conhecer! Esse site é dedicado àqueles que fazem do futebol um esporte apaixonante. Bem vindo ao <b>All Sports.</b></label>
                        </div>
                        <div class="panel-title" style="font-size: 30px">
                            <label>MISSÃO</label>
                        </div>
                        <div class="text-center" style="font-size: 17px">Proporcionar praticidade, facilidade e o prazer em gerenciar para suas partidas de futebol, gerando interesses em criar seus eventos esportivos.</div>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="panel-group">
                        <div class="panel-title" style="font-size: 30px">
                            <label>VISÃO</label>
                        </div>
                        <div class="text-center" style="font-size: 17px">Ser reconhecido como referência de qualidade, consistência e dinamismo no cenário de gerenciamento de campeonatos em geral, nacionalmente.</div>
                    </div>
                </div>
                <div class="panel-body">
                    <div class="panel-group">
                        <div class="panel-title" style="font-size: 30px">
                            <label>VALORES</label>
                        </div>
                        <div class="text-center" style="font-size: 17px">Ética, Respeito, Satisfação do Cliente, Integridade com todos os publicos, Segurança, Excelência com Simplicidade, Colaboração e Alegria.</div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
