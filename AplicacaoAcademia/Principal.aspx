<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="AplicacaoAcademia.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="formulario.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Academia RT</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="LblUsuarioLogado" runat="server" Text="Label"></asp:Label>
            (<asp:LinkButton ID="LinkButton1" runat="server" OnClick="LbSair_Click">Sair</asp:LinkButton>
            )<br />
            <asp:Button ID="Btn_Aluno" runat="server" OnClick="Btn_Aluno_Click" Text="Cadastramento De Alunos" />
            <br />
            <asp:Button ID="Btn_Series" runat="server" OnClick="Btn_Series_Click" Text="Registro De Series" />
            <br />
            <asp:Button ID="Btn_Consultar" runat="server" OnClick="Btn_Consultar_Click" Text="Consultar Alunos" />
        </div>
    </form>
</body>
</html>
