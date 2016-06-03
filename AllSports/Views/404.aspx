<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="404.aspx.cs" Inherits="AllSports.Views._404" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="/css/bootstrap-theme.min.css" />
    <link type="text/css" rel="stylesheet" href="/css/cover.css" />
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div id="fullscreen_bg" class="fullscreen_bg" />

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
                        <li><a href="Home.aspx">Home</a></li>
                        <li><a href="Sobre.aspx">Sobre</a></li>
                        <li><a href="Contato.aspx">Contato</a></li>
                    </ul>
                </div>
                <!--/.nav-collapse -->
            </div>
        </nav>
        <!-- end navbar -->

        <div class="container painel_daora">
            <div>
                <h1>Horas bolas!</h1>
                <h2>Parece que esta página</h2>
                <h1>NÃO EXZISTE</h1>
            </div>
            <div>
                <label for="Image1">Você pode navegar de volta para as páginas principais no menu superior.</label>
            </div>
            <div>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/holland.jpg" Width="30%" Height="30%" CssClass="img-rounded"/>
            </div>
            <div>
                <label>Ou pode jogar com o Holland enquanto contempla o que aconteceu.</label>
            </div>
        </div>
    </form>
</body>
</html>
