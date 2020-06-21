<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AplicacaoAcademia.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<link href="estilo.css" rel="stylesheet" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ACADEMIA RT</title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="quadro">
			<h2>Seja Bem Vindo(a) a Academia RT</h2>
			<div>
				<asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#CC0000" />
			</div>
        	<div>
				<asp:Label ID="lblUsuario" runat="server" Text="Usuário"></asp:Label>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUsuario" ErrorMessage="Usuário Obrigatório" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
        	</div>
			<div>
				<asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
			</div>
			<div>
				<asp:Label ID="lblSenha" runat="server" Text="Senha"></asp:Label>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtSenha" ErrorMessage="Senha Obrigatória" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
			</div>
			<div>
				<asp:TextBox ID="txtSenha" runat="server" TextMode="Password"></asp:TextBox>
			</div>
			<div>
				<asp:Button ID="btnEntrar" runat="server" OnClick="btnEntrar_Click" Text="Entrar" />
			</div>			
        </div>
    </form>
</body>
</html>
