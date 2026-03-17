using System;
using System.Collections.Generic;
using System.Text;

public class Pokemons
{
    public string Name { get; set; }
    public int Height { get; set; }
    public int Weight { get; set; }
    public List<TipoPokemon> Types { get; set; }
    public int Id { get; set; }
    public int Base_experience { get; set; }
}

public class TipoPokemon
{
    public Tipo type { get; set; }
}

public class Tipo
{
    public string name { get; set; }
}
