using Newtonsoft;
using Newtonsoft.Json;
using RoteiroJson.Ex1;
using RoteiroJson.Ex2;
using RoteiroJson.Ex3;
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
    }
}
