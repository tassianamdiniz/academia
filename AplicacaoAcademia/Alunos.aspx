<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alunos.aspx.cs" Inherits="AplicacaoAcademia.CadastroAlunos" %>

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
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ValidationGroup="form" />
        </div>
        <div>
            <asp:Label ID="Lbl_Nome" runat="server" Text="Nome"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txt_Nome" ErrorMessage="Nome Obrigatorio" ForeColor="#CC0000" ValidationGroup="form">*</asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:TextBox ID="Txt_Nome" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Lbl_Sobrenome" runat="server" Text="Sobrenome"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txt_Sobrenome" ErrorMessage="Sobrenome Obrigatorio" ForeColor="#CC0000" ValidationGroup="form">*</asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:TextBox ID="Txt_Sobrenome" runat="server"></asp:TextBox>
        </div>  
        <div>
            <asp:Label ID="Lbl_CPF" runat="server" Text="CPF"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Txt_CPF" ErrorMessage="CPF Obrigatorio" ForeColor="#CC0000" ValidationGroup="form">*</asp:RequiredFieldValidator>
        </div>
        <div>
              <asp:TextBox ID="Txt_CPF" runat="server"></asp:TextBox>
        </div>
        <div>
            <asp:Label ID="Lbl_Altura" runat="server" Text="Altura"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Txt_Altura" ErrorMessage="Altura Obrigatorio" ForeColor="#CC0000" ValidationGroup="form">*</asp:RequiredFieldValidator>
        </div>
        <div>
            <asp:TextBox ID="Txt_Altura" runat="server"></asp:TextBox>
         </div>
        <div>
            <asp:Label ID="Lbl_Peso" runat="server" Text="Peso"></asp:Label>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Txt_Peso" ErrorMessage="Peso Obrigatorio" ForeColor="#CC0000" ValidationGroup="form">*</asp:RequiredFieldValidator>
            </div>
        <div>
            <asp:TextBox ID="Txt_Peso" runat="server"></asp:TextBox>
            </div>
            <br />
            <br />
            <asp:Button ID="Btn_Novo" runat="server" OnClick="Btn_Novo_Click" Text="Novo" />
            <asp:Button ID="Btn_Salvar" runat="server" OnClick="Btn_Salvar_Click" Text="Salvar" ValidationGroup="form" />
            <asp:Button ID="Btn_Alterar" runat="server" OnClick="Btn_Alterar_Click" Text="Alterar" />
            <asp:Button ID="Btn_Remover" runat="server" OnClick="Btn_Remover_Click" Text="Remover" />
            <br />
            <br />
            <asp:GridView ID="Grid_Alunos" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Nome" HeaderText="Nome" />
                    <asp:BoundField DataField="Sobrenome" HeaderText="Sobrenome" />
                    <asp:BoundField DataField="CPF" HeaderText="CPF" />
                    <asp:BoundField DataField="Altura" HeaderText="Altura" />
                    <asp:BoundField DataField="Peso" HeaderText="Peso" />
                    <asp:CommandField HeaderText="Selecionar" ShowSelectButton="True" />
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
