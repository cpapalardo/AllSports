<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="AllSports.Views.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <title></title>
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css" />
	<link type="text/css" rel="stylesheet" href="/css/bootstrap-theme.min.css" />
	<link type="text/css" rel="stylesheet" href="/css/cover.css" />
    <link type="text/css" rel="stylesheet" href="/css/bootstrap.css" />
    <!-- jQuery library -->
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <!-- Latest compiled JavaScript -->
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<%--<script type="text/javascript">
    function jQueryCadastrar() {
        var nome = $("#<%= txtNome.ClientID  %>").val();
        var apelido = $("#<%= txtApelido.ClientID %>").val();
        var email = $("#<%= txtApelido.ClientID %>").val();
        var senha = $("#<%= txtSenha.ClientID %>").val();

        $.ajax({
            type: 'POST',
            url: 'Home.aspx/Cadastrar',
            data: '{"nome":"' + nome + '", "apelido":"' + apelido + '", "email":' + email + '", "senha":' + senha + '}',
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                onSuccess(data);
            },
            error: function (data, success, error) {
                alert("Error! Try again...");
            }
        })
    }

    function onSuccess(data) {
        alert(data.d);
    }
</script>--%>
</head>
<body>
    <form id="form1" runat="server">
        <div id="fullscreen_bg" class="fullscreen_bg"/>

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
                        <li class="active"><a href="#">Home</a></li>
                        <li><a href="Sobre">Sobre</a></li>
                        <li><a href="Contato.aspx">Contato</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
             </div>
        </nav>
        <!-- end navbar -->
        

        <!-- form login -->
    <div class="container vertical-center">    
        <div id="loginbox" runat="server" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Entrar</div>
                        <div style="float:right; font-size: 80%; position: relative; top:-10px"><a href="ReenviarSenha.aspx">Esqueceu sua senha?</a></div>
                    </div>     

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>
                            
                        <form id="loginform" class="form-horizontal" role="form">
                                    
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                        <input id="loginEmail" type="text" class="form-control" name="email" value="" placeholder="E-mail" runat="server"/>                                        
                                    </div>
                                
                            <div style="margin-bottom: 25px" class="input-group">
                                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                                        <input id="loginPassword" type="password" class="form-control" name="password" placeholder="Senha" runat="server"/>
                                    </div>
                                    

                                
                            <div class="input-group">
                                      <div class="checkbox">
                                        <label>
                                          <input id="login-remember" style="position:inherit" type="checkbox" name="remember" value="1"/>          Lembrar
                                        </label>
                                      </div>
                                    </div>


                                <div style="margin-top:10px" class="form-group">
                                    <!-- Button -->

                                    <div class="col-sm-12 controls">
                                    <!--  <a id="btn-login" href="#" class="btn btn-success" onclick="">Login  </a>
                                      <a id="btn-fblogin" href="#" class="btn btn-primary">Login com Facebook</a> -->
                                      <asp:Button ID="btnLogin" runat="server" Text="Login  " CssClass="btn btn-success" OnClick="btnLogin_Click"/>
                                      <asp:Button ID="btnLoginFacebook" runat="server" Text="Login com Facebook" CssClass="btn btn-primary"/>
                                      <asp:Label ID="labelFeedback" runat="server" Text="" CssClass="text-danger"></asp:Label>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="col-md-12 control">
                                        <div style="padding-top:15px; font-size:85%" >
                                            Não tem uma conta!? 
<%--                                        <a href="#" id="" onClick="$('#loginbox').hide(); $('#signupbox').show()">
                                            Cadastre-se aqui
                                        </a>--%>
                                            <asp:LinkButton ID="linkCadastro" runat="server" OnClick="linkForms">
                                            Cadastre-se aqui
                                            </asp:LinkButton>
                                        </div>
                                    </div>
                                </div>    
                            </form>     



                        </div>                     
                    </div>  
        </div>
        <div id="signupbox" runat="server" style="margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                    <div class="panel panel-info">
                        <div class="panel-heading">
                            <div class="panel-title">Sign Up</div>
                            <div style="float:right; font-size: 85%; position: relative; top:-10px">
                                <%--<a id="signinlink" href="#" onclick="$('#signupbox').hide(); $('#loginbox').show()">Sign In</a>--%>
                                <asp:LinkButton ID="linkLoginPanel" runat="server" OnClick="linkForms">Sign in</asp:LinkButton>
                            </div>
                        </div>  
                        <div class="panel-body" >
                            <form id="signupform" class="form-horizontal" role="form">
                                
                                <div id="signupalert" style="display:none" class="alert alert-danger">
                                    <p>Error:</p>
                                    <span></span>
                                </div>
                                    
                                
                                  
                                <div class="form-group">
                                    <label for="email" class="col-md-3 control-label">E-mail</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="email" placeholder="E-mail" runat="server" id="txtEmail"/>
                                    </div>
                                </div>
                                    
                                <div class="form-group">
                                    <label for="firstname" class="col-md-3 control-label">Nome</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="firstname" placeholder="Nome" runat="server" id="txtNome"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="lastname" class="col-md-3 control-label">Apelido</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="lastname" placeholder="Apelido" runat="server" id="txtApelido"/>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="password" class="col-md-3 control-label">Senha</label>
                                    <div class="col-md-9">
                                        <input type="password" class="form-control" name="passwd" placeholder="Senha" runat="server" id="txtSenha"/>
                                    </div>
                                </div>
                                    
                               <!-- <div class="form-group">
                                    <label for="icode" class="col-md-3 control-label">Invitation Code</label>
                                    <div class="col-md-9">
                                        <input type="text" class="form-control" name="icode" placeholder=""/>
                                    </div>
                                </div> -->

                                <div class="form-group">
                                    <!-- Button -->                                        
                                    <div class="col-md-offset-3 col-md-9" style="padding-top:20px">
                                        <%--<button id="btnCadastrar" type="button" class="btn btn-info" onclick="jQueryCadastrar()"><i class="icon-hand-right"></i> &nbsp Cadastrar</button>--%>
                                        <i class="icon-hand-right"><asp:Button ID="btnCadastrar" runat="server" Text="Cadastrar" CssClass="btn btn-info" OnClick="btnCadastrar_Click"/></i>
                                        <span style="margin-left:8px; margin-right:8px;">ou</span>  
                                        <i class="icon-facebook"><asp:Button ID="buttonCadastrarFacebook" runat="server" Text="Cadastrar com Facebook" CssClass="btn btn-primary"/></i>
                                    </div>  
                                </div>
                                
                                <div style="padding-top:20px"  class="form-group">
                                    <div class="col-md-offset-3 col-md-9">
                                        <%--<button id="btnCadastrarFacebook" type="button" class="btn btn-primary"><i class="icon-facebook"></i>   Cadastrar com Facebook</button>--%>
                                        <%--<i class="icon-facebook"><asp:Button ID="btnCadastrarFacebook" runat="server" Text="Cadastrar com Facebook" CssClass="btn btn-primary"/></i>--%>
                                        <asp:Label ID="labelCadastroOk" runat="server" Text="" CssClass="text-success"></asp:Label>
                                        <asp:Label ID="labelCadastroErro" runat="server" Text="" CssClass="text-danger"></asp:Label>
                                    </div>                                           
                                </div>
                                   
                            </form>
                         </div>
                    </div>

               
               
                
         </div> 
    </div>
        <!-- end form login -->

    </form>
</body>
</html>
