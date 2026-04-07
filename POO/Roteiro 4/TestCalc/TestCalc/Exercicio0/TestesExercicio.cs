using System;
using Xunit;

public class Exercicio1
{
    [Fact]
    public void Somar_DeveRetornar5()
    {
        var calc = new Calculadora();
        var resultado = calc.Somar(2, 3);
        //Assert.Equal(4, resultado); COM ERRO
        Assert.Equal(5, resultado); //CORRIGIDO
    }

    [Fact]
    public void Dividir_DeveLancarExcecao()
    {
        var calc = new Calculadora();
        //Assert.Throws<DivideByZeroException>(() => calc.Dividir(10,2)); COM ERRO
        Assert.Throws<DivideByZeroException>(() => calc.Dividir(10, 0));
    }

    //[Fact]
    //public void Carrinho_DeveEstarVazio()
    //{
    //    var carrinho = new Carrinho();
    //    carrinho.Adicionar(new Item { Nome = "Produto", Preco = 15 }); //Excluir essa linha para que não haja nenhum item no carrinho, pois a função Adicionar adiciona itens no carrinho
    //    Assert.Empty(new List<Item> { new Item() });
    //}

    //[Fact]
    //public void Classificar_DeveRetornarPesoNormal()
    //{
    //    var calc = new CalculadoraIMC();
    //    var resultado = calc.Classificar(31); //Mudar essa linha para essa: var resultado = calc.Classificar(22);
    //    Assert.Equal("Peso normal", resultado);
    //}
}
