using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplicacaoAcademia
{
    public partial class CadastroAlunos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["usuario_logado"] != null)
                {
                    academiaEntities conexao = new academiaEntities();
                    atualizaGrid(conexao);
                }
                else
                {
                    Response.Redirect("Default.aspx");
                }
            }
        }

        protected void Btn_Salvar_Click(object sender, EventArgs e)
        {
            academiaEntities conexao = new academiaEntities();
            if (Grid_Alunos.SelectedValue == null)
            {

                ALUNOS aluno = new ALUNOS();
                aluno.Nome = Txt_Nome.Text;
                aluno.Sobrenome = Txt_Sobrenome.Text;
                aluno.CPF = Txt_CPF.Text;
                aluno.Altura = Txt_Altura.Text;
                aluno.Peso = Txt_Peso.Text;

                conexao.ALUNOS.Add(aluno);
            }
            else
            {

                ALUNOS aluno = conexao.ALUNOS.FirstOrDefault(linha => linha.ID.ToString().Equals(Grid_Alunos.SelectedValue.ToString()));

                aluno.Nome = Txt_Nome.Text;
                aluno.Sobrenome = Txt_Sobrenome.Text;
                aluno.CPF = Txt_CPF.Text;
                aluno.Altura = Txt_Altura.Text;
                aluno.Peso = Txt_Peso.Text;

                conexao.Entry(aluno);
                Grid_Alunos.SelectedIndex = -1;
            }

            conexao.SaveChanges();

            limpar();

            atualizaGrid(conexao);
        }
        private void limpar()
        {
            Txt_Nome.Text = string.Empty;
            Txt_Sobrenome.Text = string.Empty;
            Txt_CPF.Text = string.Empty;
            Txt_Altura.Text = string.Empty;
            Txt_Peso.Text = string.Empty;
        }
        private void atualizaGrid(academiaEntities conexao)
        {
            var lista = conexao.ALUNOS.ToList();
            Grid_Alunos.DataSource = lista;
            Grid_Alunos.DataBind();
        }

        protected void Btn_Novo_Click(object sender, EventArgs e)
        {
            limpar();
        }

        protected void Btn_Alterar_Click(object sender, EventArgs e)
        {
            if (Grid_Alunos.SelectedValue != null)
            {
                
                academiaEntities conexao = new academiaEntities();

               
                int IDSelecionado = Convert.ToInt32(Grid_Alunos.SelectedValue.ToString());
               
                ALUNOS a = conexao.ALUNOS.FirstOrDefault(
                    linha => linha.ID.ToString().Equals(IDSelecionado.ToString())
                    );


              
                Txt_Nome.Text = a.Nome;
                Txt_CPF.Text = a.CPF;
                Txt_Sobrenome.Text = a.Sobrenome;
                Txt_Altura.Text = a.Altura;
                Txt_Peso.Text = a.Peso;
            }
        }

        protected void Btn_Remover_Click(object sender, EventArgs e)
        {
            academiaEntities conexao = new academiaEntities();

            int IDSelecionado = Convert.ToInt32(Grid_Alunos.SelectedValue.ToString());

            ALUNOS aluno = conexao.ALUNOS.FirstOrDefault(
                    linha => linha.ID.ToString().Equals(IDSelecionado.ToString())
                    );
            conexao.ALUNOS.Remove(aluno);
            conexao.SaveChanges();
            atualizaGrid(conexao);
        }
    }
}
