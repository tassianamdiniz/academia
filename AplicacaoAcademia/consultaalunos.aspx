<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="consultaalunos.aspx.cs" Inherits="AplicacaoAcademia.buscavoluntario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="formulario.css" rel="stylesheet" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>ACADEMIA RT</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Lbl_Consulta" runat="server" Text="Consulta por nome:"></asp:Label>
            <asp:TextBox ID="Txt_Buscar" runat="server"></asp:TextBox>
            <asp:Button ID="Btn_Buscar" runat="server" OnClick="Btn_Buscar_Click" Text="Buscar" />
            <br />
            <br />
            <asp:GridView ID="Grid_Busca" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Nome" HeaderText="Nome" />
                    <asp:BoundField DataField="Sobrenome" HeaderText="Sobrenome" />
                    <asp:BoundField DataField="CPF" HeaderText="CPF" />
                    <asp:BoundField DataField="Altura" HeaderText="Altura" />
                    <asp:BoundField DataField="Peso" HeaderText="Peso" />
                </Columns>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
