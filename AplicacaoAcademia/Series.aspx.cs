using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplicacaoAcademia
{
    public partial class Series : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["usuario_logado"] != null)
                {
                    academiaEntities conexao = new academiaEntities();
                    CarregarGrid(conexao);
                    CarregarAlunos(conexao);
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

            SERIES n = new SERIES();
            n.IDAluno = Convert.ToInt32(Ddl_Aluno.SelectedValue.ToString());
            n.Segunda_Feira = Txt_Segunda.Text;
            n.Terça_Feira = Txt_Terca.Text;
            n.Quarta_Feira = Txt_Quarta.Text;
            n.Quinta_Feira = Txt_Quinta.Text;
            n.Sexta_Feira = Txt_Sexta.Text;

            conexao.SERIES.Add(n);

            conexao.SaveChanges();

            CarregarGrid(conexao);

            limpar();
        }
        private void CarregarGrid(academiaEntities conexao)
        {
            var lista = conexao.SERIES.ToList();
            Grid_Series.DataSource = lista;
            Grid_Series.DataBind();
        }
        private void limpar()
        {
            Txt_Segunda.Text = string.Empty;
            Txt_Terca.Text = string.Empty;
            Txt_Quarta.Text = string.Empty;
            Txt_Quinta.Text = string.Empty;
            Txt_Sexta.Text = string.Empty;
        }


        private void CarregarAlunos(academiaEntities conexao)
        {
            var lista = conexao.ALUNOS.ToList();
            Ddl_Aluno.DataSource = lista;
            Ddl_Aluno.DataValueField = "ID";
            Ddl_Aluno.DataTextField = "Nome";
            Ddl_Aluno.DataBind();
        }

        protected void Btn_Limpar_Click(object sender, EventArgs e)
        {
            limpar();
        }
    }
}