using System;

namespace TestCalc.Exercicio5
{
    public class DescontoServiceTests
    {
        [Theory]
        [InlineData(100, 10, 90)]
        [InlineData(200, 50, 100)]
        [InlineData(80, 0, 80)]
        public void RetornoCorreto_NoMomentoDoCalculo(double valor, double percentual, double esperado)
        {
            var calc = new DescontoService();
            double resultado = calc.AplicarDesconto(valor, percentual);

            Assert.Equal(resultado, esperado);
        }

        [Theory]
        [InlineData(-10, 20)]
        [InlineData(10, -2)]
        [InlineData(5, 120)]
        public void RetornoExcecao_QuandoValoresInvalidos(double valor, double percentual)
        {
            var calc = new DescontoService();
            Assert.Throws<ArgumentException>(() => calc.AplicarDesconto(valor, percentual));
        }
    }
}
