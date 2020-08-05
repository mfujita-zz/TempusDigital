using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TempusDigital
{
    public partial class Relatorio : System.Web.UI.Page
    {
        public static int RendaAcimaMedia;
        public static int QtdeClasseA;
        public static int QtdeClasseB;
        public static int QtdeClasseC;

        protected void Page_Load(object sender, EventArgs e)
        {
            string stringConexao = "Server=.\\SQLEXPRESS;Database=ExameTempusDigital;Trusted_Connection=True;";
            SqlConnection sql = new SqlConnection(stringConexao);

            sql.Open();

            string sqlString = "SELECT COUNT(RendaFamiliar) FROM Cadastro WHERE RendaFamiliar > ( SELECT AVG(RendaFamiliar) FROM Cadastro) ";
            SqlCommand command = new SqlCommand(sqlString, sql);
            RendaAcimaMedia = (int)command.ExecuteScalar();

            sqlString = "SELECT COUNT(RendaFamiliar) FROM Cadastro WHERE RendaFamiliar <= 980";
            command = new SqlCommand(sqlString, sql);
            QtdeClasseA = (int)command.ExecuteScalar();

            sqlString = "SELECT COUNT(RendaFamiliar) FROM Cadastro WHERE RendaFamiliar BETWEEN 980.01 AND 2500";
            command = new SqlCommand(sqlString, sql);
            QtdeClasseB = (int)command.ExecuteScalar();

            sqlString = "SELECT COUNT(RendaFamiliar) FROM Cadastro WHERE RendaFamiliar > 2500";
            command = new SqlCommand(sqlString, sql);
            QtdeClasseC = (int)command.ExecuteScalar();

            command.Dispose();
            sql.Close();
        }
    }
}