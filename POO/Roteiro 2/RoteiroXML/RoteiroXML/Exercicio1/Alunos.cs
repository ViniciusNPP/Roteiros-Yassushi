using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Serialization;

namespace RoteiroXML.Exercicio1
{
    [XmlRoot("alunos")]
    public class Alunos
    {
        [XmlElement("aluno")]
        public List<Aluno>? ListaAlunos { get; set; }
    }

    [XmlRoot("aluno")]
    public class Aluno
    {
        [XmlElement("nome")]
        public string? Nome { get; set; }
        [XmlElement("curso")]
        public string? Curso { get; set; }

    }
}
