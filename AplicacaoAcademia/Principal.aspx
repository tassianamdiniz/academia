<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Principal.aspx.cs" Inherits="AplicacaoAcademia.Principal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
          
        <asp:Label ID="LblUsuarioLogado" runat="server" Text="Label"></asp:Label>
&nbsp;(<asp:LinkButton ID="LbSair" runat="server" OnClick="LbSair_Click">Sair</asp:LinkButton>
        )</div>
        <div>
            <a href="Alunos.aspx">Alunos</a>
            <br />
            <a href="Series.aspx">Series</a>
            <br />
            <a href="frmConsultaAlunos.aspx">Consultar Alunos</a>
    </form>
</body>
</html>
