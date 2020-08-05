using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TempusDigital
{
    public partial class Listagem : System.Web.UI.Page
    {
        public static string saida;
        public static List<ListagemDados> listaCadastro { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            saida = "";
            listaCadastro = new List<ListagemDados>();

            string stringConexao = "Server=.\\SQLEXPRESS;Database=ExameTempusDigital;Trusted_Connection=True;";
            SqlConnection sql;
            sql = new SqlConnection(stringConexao);
            sql.Open();

            SqlCommand command;
            SqlDataReader dataReader;
            string sqlString = "SELECT Nome, RendaFamiliar FROM Cadastro";

            command = new SqlCommand(sqlString, sql);
            dataReader = command.ExecuteReader();

            while (dataReader.Read())
            {
                ListagemDados listagem = new ListagemDados(dataReader.GetValue(0).ToString(), Convert.ToDouble(dataReader.GetValue(1)));
                listaCadastro.Add(listagem);
            }

            foreach (var item in listaCadastro)
            {
                if (item.RendaFamiliar <= 980)
                    saida += "<tr><td>" + item.Nome + "</td><td class=\"arredondado\" style=\"background-color:red\"> R$ " + item.RendaFamiliar + "</td></tr> \r\n";
                else if (item.RendaFamiliar > 980.01 && item.RendaFamiliar <=2500)
                    saida += "<tr><td>" + item.Nome + "</td><td class=\"arredondado\" style=\"background-color:yellow\"> R$ " + item.RendaFamiliar + "</td></tr> \r\n";
                else
                    saida += "<tr><td>" + item.Nome + "</td><td class=\"arredondado\" style=\"background-color:green\"> R$ " + item.RendaFamiliar + "</td></tr> \r\n";
                //Response.Write(saida);
            }

            sql.Close();
        }
    }
}