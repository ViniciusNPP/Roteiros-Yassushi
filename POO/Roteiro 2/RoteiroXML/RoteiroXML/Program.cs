using RoteiroXML;
using RoteiroXML.Exercicio1;
using RoteiroXML.Exercicio2;
using RoteiroXML.Exercico3;
using System;
using System.Threading.Tasks;
using System.Xml;
using System.Xml.Linq;
using System.Xml.Serialization;

public class Program
{
    public static async Task Main()
    {
        //########### EXERCÍCIO 1 - DESERIALIZAÇÃO DE ALUNOS ###########
        XmlSerializer serializer = new(typeof(Alunos));

        using StreamReader reader = new("alunos.xml");
        Alunos alunos = (Alunos)serializer.Deserialize(reader);

        alunos.ListaAlunos.ForEach(aluno =>
        {
            Console.WriteLine($"Nome: {aluno.Nome}");
            Console.WriteLine($"Curso: {aluno.Curso}");
            Console.WriteLine();
        });

        //########### EXERCÍCIO 2 - CRIAÇÃO E LEITURA XML ###########
        XmlSerializer serializer2 = new(typeof(Produtos));
        var produtos = new Produtos
        {
            ListaProdutos =
            [
                new() {Nome = "Feijão", Preco = 23.5m},
                new() {Nome = "Arroz", Preco = 12.0m},
            ]
        };

        using (StreamWriter writer = new("produtos.xml"))
        {
            serializer2.Serialize(writer, produtos);
            Console.WriteLine("Arquivo produtos.xml criado com sucesso!");
        }

        using (StreamReader reader2 = new("produtos.xml"))
        {
            Produtos listaProdutos = (Produtos)serializer2.Deserialize(reader2);

            Console.WriteLine("Produtos:");
            listaProdutos.ListaProdutos.ForEach(produto =>
            {
                Console.WriteLine($"  Nome: {produto.Nome}");
                Console.WriteLine($"  Preço: {produto.Preco}");
            });
        }

        //########### EXERCÍCIO 3 - MODIFICAR XML EXISTENTE ###########
        XmlSerializer serializer3 = new(typeof(Estoque));
        Estoque estoqueMain = new();

        using (StreamReader reader3 = new("estoque.xml"))
        {
            Estoque estoque = (Estoque)serializer3.Deserialize(reader3);
            estoque.ListaItens.ForEach(item =>
            {
                if (item.Nome == "Mouse")
                {
                    item.Quantidade = 10;
                }
            });
            estoqueMain = estoque;
        }
        using StreamWriter writer3 = new("estoque.xml");
        serializer3.Serialize(writer3, estoqueMain);
        Console.WriteLine("Estoque atualizado!");

        //############ EXERCÍCIO 4 - CONSUMIR XML DE UMA API ############
        HttpClient httpClient = new();
        
        string api = "https://www.w3schools.com/xml/simple.xml";
        string response = await httpClient.GetStringAsync(api);

        XDocument doc = XDocument.Parse(response);
        var foods = doc.Descendants("food");

        foreach (var food in foods)
        {
            Console.WriteLine($"Comida: {food.Element("name").Value}");
            Console.WriteLine($"Preço: {food.Element("price").Value}");
        }
    }
}