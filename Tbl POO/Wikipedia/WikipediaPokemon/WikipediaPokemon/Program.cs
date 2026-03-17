using System;
using System.Net.Http;
using Newtonsoft.Json;

class Program
{
    static async Task Main()
    {
        while (true)
        {
            PokemonService service = new();

            Console.WriteLine("Digite o nome do Pokemon: ");
            string nome = Console.ReadLine();

            Pokemons p = await service.BuscarPokemon(nome);
            if (p == null)
            {
                Console.WriteLine("Pokemon não encontrado");
                return;
            }

            Estrutura(p);

            //Pokemon aleatorio
            Pokemons p2 = await service.BuscarPokemonAleatorio();
            Estrutura(p2);
            Console.WriteLine("Continuar? [Y] [N]");
            string answer = Console.ReadLine();

            if (answer == "y" || answer == "Y")
            {
                Console.Clear();
            }
            else
            {
                Console.WriteLine("Programa finalizado");
                break;
            }
        }

    }

    public static void Estrutura(Pokemons pokemon)
    {
        Console.WriteLine("ID: " + pokemon.Id);
        Console.WriteLine("Experiência base: " + pokemon.Base_experience);
        Console.WriteLine("Nome: " + pokemon.Name);
        Console.WriteLine("Peso: " + pokemon.Weight);
        Console.WriteLine("Altura: " + pokemon.Height);
        Console.Write("Tipo(s): ");

        foreach (var tipo in pokemon.Types)
        {
            Console.Write(tipo.type.name + ", ");
        }
        Console.WriteLine("\n-------------------\n");
    }

}
