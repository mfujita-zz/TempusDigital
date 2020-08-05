using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TempusDigital
{
    public class ListagemDados
    {
        public int Id { get; set; }
        public string Nome { get; set; }
        public DateTime DataNascimento { get; set; }
        public DateTime DataCadastro { get; set; }
        public double RendaFamiliar { get; set; }

        public ListagemDados(string _nome, double _rf)
        {
            Nome = _nome;
            RendaFamiliar = _rf;
        }

        public ListagemDados(int _i, string _n, DateTime _nasc, DateTime _cad, double _rf)
        {
            Id = _i;
            Nome = _n;
            DataNascimento = _nasc;
            DataCadastro = _cad;
            RendaFamiliar = _rf;
        }
    }
}