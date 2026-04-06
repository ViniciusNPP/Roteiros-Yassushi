using System.Xml.Serialization;

namespace RoteiroXML.Exercicio2
{
    [XmlRoot("produtos")]
    public class Produtos
    {
        [XmlElement("produto")]
        public List<Produto>? ListaProdutos { get; set; }
    }

    [XmlRoot("produto")]
    public class Produto
    {
        [XmlElement("nome")]
        public string? Nome { get; set; }
        [XmlElement("preco")]
        public decimal Preco { get; set; }
    }
}
