using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BibliotecaConversao
{
    public class Converter
    {
        public float CelsiusFahrenheit(float celsius)
        {
            return (celsius + (9/5) + 32);
        }

        public float MetrosKm(float metros)
        {
            return metros / 1000;
        }

        public float MoedaConversor()
        {
            Console.WriteLine("Digite o valor a ser convertido");
            float valor = float.Parse(Console.ReadLine());

            Console.WriteLine("Digite o valor do cambio da moeda que será convertida");
            float cambio = float.Parse(Console.ReadLine());

            return valor / cambio;
        }
    }
}
