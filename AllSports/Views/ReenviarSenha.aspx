<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReenviarSenha.aspx.cs" Inherits="AllSports.Views.ReenviarSenha" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="/css/bootstrap-theme.min.css" />
    <link type="text/css" rel="stylesheet" href="/css/cover.css" />
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.css" />
    <link type="text/css" rel="stylesheet" href="../Tabela.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="fullscreen_bg" class="fullscreen_bg" />
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
                            <li><a href="Home.aspx">Home</a></li>
                            <li><a href="Sobre.aspx">Sobre</a></li>
                            <li><a href="Contato.aspx">Contato</a></li>
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
                    <label>Recuperar senha</label>
                </div>
                <label>Esqueceu sua senha? Não tem problema! Informe seu e-mail e o ajudaremos a recuperá-la.</label>
            </div>
            <div class="panel-body">
                <div class="panel-group">
                    <div>
                        <label for="textBoxEmail">E-mail:</label>
                    </div>
                    <div>
                        <asp:TextBox ID="textBoxEmail" runat="server" CssClass="text-center" Width="40%"></asp:TextBox>
                    </div>
                </div>
                <div>
                    <asp:Button ID="buttonEnviar" runat="server" Text="Recuperar" OnClick="buttonEnviar_Click" />
                </div>
                <div>
                    <asp:Label runat="server" ID="labelEmail" Visible="false"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
