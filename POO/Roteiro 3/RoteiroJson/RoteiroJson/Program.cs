using Newtonsoft;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using RoteiroJson.Ex1;
using RoteiroJson.Ex2;
using RoteiroJson.Ex3;
using RoteiroJson.Ex5;
using System;

public class Program
{
    public static void Main(string[] args)
    {
        //##### EXERCÍCIO 1 #####
        //var livro = new Livro
        //{
        //    Titulo = "Um novo lar",
        //    Autor = "Cleopatres",
        //    Ano = 1994
        //};
        //string json = JsonConvert.SerializeObject(livro, Formatting.Indented);
        //Console.WriteLine(json);

        //File.WriteAllText("livros.json", json);

        //##### EXERCÍCIO 2 #####
        //string conteudo = File.ReadAllText("aluno.json");
        //Aluno? aluno = JsonConvert.DeserializeObject<Aluno>(conteudo);

        //Console.WriteLine($"Nome completo: {aluno.Nome + " " + aluno.Sobrenome}\nIdade: {aluno.Idade}");

        //##### EXERCÍCIO 3 #####
        //List<Carro> listaCarros = new()
        //{
        //    new() { Marca = "Toyota", Modelo = "Corolla", Ano = 2024 },
        //    new() { Marca = "Honda", Modelo = "Civic", Ano = 2023 },
        //    new() { Marca = "Ford", Modelo = "Mustang", Ano = 2022 },
        //    new() { Marca = "Volkswagen", Modelo = "Golf", Ano = 2021 },
        //    new() { Marca = "Chevrolet", Modelo = "Onix", Ano = 2024 }
        //};
        //string json = JsonConvert.SerializeObject(listaCarros, Formatting.Indented);
        //File.WriteAllText("lista_de_carros.json", json);

        //string conteudo = File.ReadAllText("lista_de_carros.json");
        //List<Carro>? carros = JsonConvert.DeserializeObject<List<Carro>>(conteudo);

        //carros.ForEach(carro =>
        //{
        //    Console.WriteLine("Marca: " + carro.Marca);
        //    Console.WriteLine("Modelo: " + carro.Modelo);
        //    Console.WriteLine("Ano: " + carro.Ano);
        //    Console.WriteLine();
        //});

        //##### EXERCÍCIO 4 #####
        //string json = @"{'Servidor': '192.168.1.100', 'Porta': 5432, 'Usuario': 'admin_sistema'}";
        //JObject obj = JObject.Parse(json);

        //obj["Porta"] = 2345;
        //Console.WriteLine($"Nova porta: {obj["Porta"]}");

        //##### EXERCÍCIO 5 #####
        List<Produto> listaProdutos =
        [
            new() { Id = 1, Nome = "Notebook", Preco = 3500.00, Estoque = 10, Fornecedor = "Tech Master", CodigoInterno = "NB-001" },
            new() { Id = 2, Nome = "Mouse", Preco = 150.00, Estoque = 50, Fornecedor = "Logi Logistics", CodigoInterno = "MS-002" },
            new() { Id = 3, Nome = "Teclado", Preco = 280.00, Estoque = 30, Fornecedor = "Key Components", CodigoInterno = "TK-003" },
            new() { Id = 4, Nome = "Monitor", Preco = 1200.00, Estoque = 15, Fornecedor = null, CodigoInterno = "MN-004" }
        ];

        string json = JsonConvert.SerializeObject(listaProdutos, Formatting.Indented, new JsonSerializerSettings
        {
            NullValueHandling = NullValueHandling.Ignore,
        });
        File.WriteAllText("produtos.json", json);
        Console.WriteLine("JSON de produtos criado!");

        string conteudo = File.ReadAllText("produtos.json");
        listaProdutos = JsonConvert.DeserializeObject<List<Produto>>(conteudo);

        foreach (var produto in listaProdutos)
        {
            Console.WriteLine("Id: " + produto.Id);
            Console.WriteLine("Nome: " + produto.Nome);
            Console.WriteLine("Preco: " + produto.Preco);
            Console.WriteLine("Estoque: " + produto.Estoque);
            Console.WriteLine("Fornecedor: " + produto.Fornecedor);
            Console.WriteLine();
        }
    }
}
