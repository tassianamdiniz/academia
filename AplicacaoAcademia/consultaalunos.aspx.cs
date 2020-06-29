using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplicacaoAcademia
{
    public partial class buscavoluntario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["usuario_logado"] == null)
                {
                    Response.Redirect("Default.aspx");
                }
            }
        }

        protected void Btn_Buscar_Click(object sender, EventArgs e)
        {
            academiaEntities conexao = new academiaEntities();

            List<ALUNOS> listaBusca =
            conexao.ALUNOS.Where(linha => linha.Nome.Contains(Txt_Buscar.Text)).ToList();

            Grid_Busca.DataSource = listaBusca;
            Grid_Busca.DataBind();
        }
    }
}