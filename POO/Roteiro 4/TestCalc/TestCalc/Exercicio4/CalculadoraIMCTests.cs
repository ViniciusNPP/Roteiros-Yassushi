using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestCalc.Exercicio4
{
    public class CalculadoraIMCTests
    {
        [Fact]
        public void Kg70Altura175_Retornam22IMC()
        {
            var calc = new CalculadoraIMC();
            double resultado = calc.Calcular(70, 1.75);

            Assert.Equal(22.86, resultado, 2);
        }

        [Theory]
        [InlineData(17, "Abaixo do peso")]
        [InlineData(26, "Sobrepeso")]
        public void CalculadoraIMC_DeveRetornarCorretamente(int entrada, string esperado)
        {
            var classif = new CalculadoraIMC();
            string resultado = classif.Classificar(entrada);

            Assert.Equal(resultado, esperado);
        }

        [Fact]
        public void IMC0_RetornaExcessao()
        {
            var calc = new CalculadoraIMC();

            Assert.Throws<ArgumentException>(() => calc.Calcular(80, 0));
        }
    }
}
