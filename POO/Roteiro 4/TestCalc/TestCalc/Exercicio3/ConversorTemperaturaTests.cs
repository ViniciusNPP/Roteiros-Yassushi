using AulaTestes;
using System;

namespace TestCalc.Exercicio3
{
    public class ConversorTempTests
    {
        [Theory]
        [InlineData(0, 32)]
        [InlineData(100,212)]
        public void CelsiusFarenheit_DeveRetornarCorretamente(double entrada, double esperado)
        {
            var conversor = new ConversorTemperatura();
            double valor = conversor.CelsiusParaFahrenheit(entrada);

            Assert.Equal(esperado, valor);
        }

        [Theory]
        [InlineData(32, 0)]
        [InlineData(212, 100)]
        public void FarenheitCelsius_DeveRetornarCorretamente(double entrada, double esperado)
        {
            var conversor = new ConversorTemperatura();
            double valor = conversor.FahrenheitParaCelsius(entrada);

            Assert.Equal(esperado, valor);
        }
    }
}
