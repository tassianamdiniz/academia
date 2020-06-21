using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AplicacaoAcademia
{
	public partial class Default : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void btnEntrar_Click(object sender, EventArgs e)
		{
			//Usuário = Admin e Senha 123456
			string usuario = txtUsuario.Text;
			string senha = txtSenha.Text;

			if((usuario.Equals("Admin")) && (senha.Equals("123456"))){
				//Login bem sucedido
				Response.Redirect("CadastroAlunos.aspx");
			}
		}
	}
}