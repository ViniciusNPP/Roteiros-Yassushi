using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Text;

public class PokemonService
{
    private readonly HttpClient client = new();
    public async Task<Pokemons> BuscarPokemon(string nome)
    {
        string url = $"https://pokeapi.co/api/v2/pokemon/{nome}";
        try
        {
            string json = await client.GetStringAsync(url);

            return JsonConvert.DeserializeObject<Pokemons>(json);           
        }
        catch (Exception ex)
        {
            return null;
        }
    }

    public async Task<Pokemons> BuscarPokemonAleatorio()
    {
        Random random = new();
        Pokemons p = await BuscarPokemon(random.Next(1, 1026).ToString());
        return p;
    }
}
