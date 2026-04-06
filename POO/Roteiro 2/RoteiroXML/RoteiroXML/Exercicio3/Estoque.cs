using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Serialization;

namespace RoteiroXML.Exercico3
{
    [XmlRoot("estoque")]
    public class Estoque
    {
        [XmlElement("item")]
        public List<Item>? ListaItens { get; set; }
    }

    [XmlRoot("item")]
    public class Item
    {
        [XmlElement("nome")]
        public string? Nome { get; set; }
        [XmlElement("quantidade")]
        public int Quantidade { get; set; }
    }
}
