using System;
using System.Net.Http;
using Newtonsoft.Json;

class Program
{
    static async Task Main()
    {
        PokemonService service = new();

        Console.WriteLine("Digite o nome do Pokemon: ");
        string nome = Console.ReadLine();

        Pokemon p = await service.BuscarPokemon(nome);

        Console.WriteLine("Nome: " + p.Name);
        Console.WriteLine("Altura: " + p.Height);
        Console.WriteLine("Peso: " + p.Weight);
        Console.Write("Tipo: ");

        foreach (var item in p.Types)
        {
            Console.Write(item.type.name + " ");
        }
    }

    public class Pokemon
    {
        public string Name { get; set; }
        public int Height { get; set; }
        public int Weight { get; set; }
        public List<TipoPokemon> Types { get; set; }

    }

    public class TipoPokemon
    {
        public Tipo type { get; set; }
    }

    public class Tipo
    {
        public string name { get; set; }
    }

    public class PokemonService
    {
        private HttpClient client = new HttpClient();
        public async Task<Pokemon> BuscarPokemon(string nome)
        {
            string url = $"https://pokeapi.co/api/v2/pokemon/{nome}";
            string json = await client.GetStringAsync(url);

            return JsonConvert.DeserializeObject<Pokemon>(json);
        }
    }

}
