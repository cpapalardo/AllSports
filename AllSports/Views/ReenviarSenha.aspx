<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReenviarSenha.aspx.cs" Inherits="AllSports.Views.ReenviarSenha" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
		<div>
			<label for="textBoxEmail">E-mail</label>
		</div>
		<div>
			<asp:TextBox ID="textBoxEmail" runat="server" TextMode="Email"></asp:TextBox>
		</div>
		<div>
			<asp:Button ID="buttonEnviar" runat="server" Text="Enviar" OnClick="buttonEnviar_Click"/>
		</div>
    </form>
</body>
</html>
