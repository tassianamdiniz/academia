using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplicacaoAcademia
{
    public partial class Principal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["usuario_logado"] == null)
                {
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    //Recupera objeto usuario logado da sessão
                    USUARIO usuario = (USUARIO)Session["usuario_logado"];
                    LblUsuarioLogado.Text = "Bem Vindo " + usuario.Nome;
                }
            }
    }
}