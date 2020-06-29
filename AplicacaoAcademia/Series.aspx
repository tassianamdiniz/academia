<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Series.aspx.cs" Inherits="AplicacaoAcademia.Series" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Lbl_Aluno" runat="server" Text="Aluno"></asp:Label>
            <asp:DropDownList ID="Ddl_Aluno" runat="server">
            </asp:DropDownList>
            <br />
            <asp:Label ID="Lbl_Segunda" runat="server" Text="Segunda-Feira"></asp:Label>
            <asp:TextBox ID="Txt_Segunda" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Lbl_Segunda0" runat="server" Text="Terça-Feira"></asp:Label>
            <asp:TextBox ID="Txt_Terca" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Lbl_Quarta" runat="server" Text="Quarta-Feira"></asp:Label>
            <asp:TextBox ID="Txt_Quarta" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Lbl_Quinta" runat="server" Text="Quinta-Feira"></asp:Label>
            <asp:TextBox ID="Txt_Quinta" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="Lbl_Sexta" runat="server" Text="Sexta-Feira"></asp:Label>
            <asp:TextBox ID="Txt_Sexta" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="Btn_Limpar" runat="server" Text="Limpar" />
            <asp:Button ID="Btn_Salvar" runat="server" style="margin-left: 26px" Text="Salvar" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Aluno" HeaderText="Aluno" />
                    <asp:BoundField DataField="Segunda-Feira" HeaderText="Segunda-Feira" />
                    <asp:BoundField DataField="Terca-Feira" HeaderText="Terça-Feira" />
                    <asp:BoundField DataField="Quarta-Feira" HeaderText="Quarta-Feira" />
                    <asp:BoundField DataField="Quinta-Feira" HeaderText="Quinta-Feira" />
                    <asp:BoundField DataField="Sexta-Feira" HeaderText="Sexta-Feira" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
        </div>
    </form>
</body>
</html>
