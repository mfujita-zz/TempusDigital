using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TempusDigital
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            string nome = txtNome.Text.Trim();
            string dataNascimento = txtNascimento.Text.Trim();
            string[] camposNascimento = dataNascimento.Split('/');
            dataNascimento = camposNascimento[2] + "-" + camposNascimento[1] + "-" + camposNascimento[0];
            string hoje = "";
            string ano = DateTime.Now.Year.ToString();
            string mes = DateTime.Now.Month.ToString().PadLeft(2,'0');
            string dia = DateTime.Now.Day.ToString().PadLeft(2, '0');
            hoje = ano + "-" + mes + "-" + dia;
            string rendaFamiliar = txtRendaFamiliar.Text.Trim().Replace(",",".");

            string stringConexao = "Server=.\\SQLEXPRESS;Database=ExameTempusDigital;Trusted_Connection=True;";
            SqlConnection sql;
            sql = new SqlConnection(stringConexao);
            sql.Open();

            SqlCommand command;
            SqlDataAdapter adapter = new SqlDataAdapter();
            string sqlString = "INSERT INTO Cadastro (Nome, DataNascimento, DataCadastro, RendaFamiliar) VALUES ('" + nome + "', '" + dataNascimento + "', '" + hoje + "', " + rendaFamiliar + ")";
            command = new SqlCommand(sqlString, sql);

            adapter.InsertCommand = new SqlCommand(sqlString, sql);
            adapter.InsertCommand.ExecuteNonQuery();

            command.Dispose();
            sql.Close();

            Response.Write("<p><br> Cadastrado realizado com sucesso.");
        }
    }
}