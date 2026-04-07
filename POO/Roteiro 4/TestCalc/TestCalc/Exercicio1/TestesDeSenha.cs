using System;
using System.Collections.Generic;
using Xunit;

namespace TestCalc.Exercicio1
{
    public class TestesDeSenha
    {
        [Fact]
        public void SenhaValida_DeveRetornarTrue()
        {
            string senha = "Senha123";
            bool resultado = ValidadorSenha.EhValida(senha);
            Assert.True(resultado);
        }
        [Fact]
        public void SenhaSemLetra_DeveRetornarFalse()
        {
            string senha = "12345678";
            bool resultado = ValidadorSenha.EhValida(senha);
            Assert.False(resultado);
        }
        [Fact]
        public void SenhaVazia_DeveRetornarFalse()
        {
            string senha = "";
            bool resultado = ValidadorSenha.EhValida(senha);
            Assert.False(resultado);
        }

        [Fact]
        public void SenhaSemNumero_DeveRetornarFalse()
        {
            string senha = "abcdEFGH";
            bool resultado = ValidadorSenha.EhValida(senha);
            Assert.False(resultado);
        }
    }
}
