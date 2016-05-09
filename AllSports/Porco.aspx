<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Porco.aspx.cs" Inherits="AllSports.Porco" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
		<asp:TextBox runat="server" ID="txtNome" />
		<asp:TextBox runat="server" ID="txtApelido" />
		<asp:TextBox runat="server" ID="txtEmail" />
		<asp:Button Text="text" runat="server" OnClick="Unnamed_Click" />
		<asp:Label ID="lblMensagem" Text="" runat="server" />
    </div>
    </form>
</body>
</html>
