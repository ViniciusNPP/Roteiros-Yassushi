using System;
using System.Collections.Generic;
using System.Text;
using AulaTestes;

namespace TestCalc.Exercicio2
{
    public class CarrinhoTests
    {
        [Fact]
        public void RetornarTrue_SeMudarOTotalDosItens()
        {
            var carrinho = new Carrinho();
            var item1 = new Item { Nome = "Pera", Preco = 10.0 };
            var item2 = new Item { Nome = "Carne", Preco = 20.0 };
            
            carrinho.Adicionar(item1);
            carrinho.Adicionar(item2);
            double total = carrinho.Total();
            
            Assert.Equal(30.0, total);
        }

        [Fact]
        public void RetornarTrue_SeCarrinhoEstiverVazio()
        {
            var carrinho = new Carrinho();

            var item1 = new Item { Nome = "Maçã", Preco = 5.98 };
            carrinho.Adicionar(item1);
            carrinho.Limpar();

            Assert.Equal(0, carrinho.Quantidade());
            //Não foi possível usar o .Empty() pq os itens do carrinho é privado
        }

        public void RetornarTrue_SeMudarAQuantidadeDeItens()
        {
            var carrinho = new Carrinho();

            int quantidade = 0;
            var item1 = new Item { Nome = "Melancia", Preco = 12.3 };
            carrinho.Adicionar(item1);
            quantidade += 1;

            var item2 = new Item { Nome = "Peperoni", Preco = 40 };
            carrinho.Adicionar(item2);
            quantidade += 2;

            carrinho.Limpar();
            quantidade = 0;

            Assert.Equal(0, quantidade);
        }
    }
}
