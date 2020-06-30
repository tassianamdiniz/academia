<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Series.aspx.cs" Inherits="AplicacaoAcademia.Series" %>

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
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            </div>
        <div>
            <asp:Label ID="Lbl_Aluno" runat="server" Text="Aluno"></asp:Label>
            </div>
        <div>
            <asp:DropDownList ID="Ddl_Aluno" runat="server">
            </asp:DropDownList>
        </div>
        <div>
            <asp:Label ID="Lbl_Segunda" runat="server" Text="Segunda-Feira"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txt_Segunda" ErrorMessage="Segunda Obrigatorio" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
         </div>
        <div>
            <asp:TextBox ID="Txt_Segunda" runat="server"></asp:TextBox>
            </div>
        <div>
            <asp:Label ID="Lbl_Segunda0" runat="server" Text="Terça-Feira"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txt_Terca" ErrorMessage="Terça Obrigatorio" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </div>
        <div>
            <asp:TextBox ID="Txt_Terca" runat="server"></asp:TextBox>
            </div>
        <div>
            <asp:Label ID="Lbl_Quarta" runat="server" Text="Quarta-Feira"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Txt_Quarta" ErrorMessage="Quarta Obrigatorio" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </div>
        <div>
            <asp:TextBox ID="Txt_Quarta" runat="server"></asp:TextBox>
            </div>
        <div>
            <asp:Label ID="Lbl_Quinta" runat="server" Text="Quinta-Feira"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Txt_Quinta" ErrorMessage="Quinta Obrigatorio" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </div>
        <div>
            <asp:TextBox ID="Txt_Quinta" runat="server"></asp:TextBox>
            </div>
        <div>
            <asp:Label ID="Lbl_Sexta" runat="server" Text="Sexta-Feira"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Txt_Sexta" ErrorMessage="Sexta Obrigatorio" ForeColor="#CC0000">*</asp:RequiredFieldValidator>
            </div>
        <div>
            <asp:TextBox ID="Txt_Sexta" runat="server"></asp:TextBox>
            </div>
            <br />
            <asp:Button ID="Btn_Limpar" runat="server" Text="Limpar" OnClick="Btn_Limpar_Click" />
            <asp:Button ID="Btn_Salvar" runat="server" style="margin-left: 26px" Text="Salvar" OnClick="Btn_Salvar_Click" />
            <br />
            <br />
            <asp:GridView ID="Grid_Series" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="ALUNOS.Nome" HeaderText="Aluno" />
                    <asp:BoundField DataField="Segunda_Feira" HeaderText="Segunda-Feira" />
                    <asp:BoundField DataField="Terça_Feira" HeaderText="Terça-Feira" />
                    <asp:BoundField DataField="Quarta_Feira" HeaderText="Quarta-Feira" />
                    <asp:BoundField DataField="Quinta_Feira" HeaderText="Quinta-Feira" />
                    <asp:BoundField DataField="Sexta_Feira" HeaderText="Sexta-Feira" />
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
    </form>
</body>
</html>
