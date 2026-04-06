using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BibliotecaAceleração
{
    public class Aceleracao
    {
        public float CalcularAceleracao()
        {
            Console.WriteLine("Velocidade Inicial: ");
            float velocidade_inicial = float.Parse(Console.ReadLine());

            Console.WriteLine("Velocidade Final: ");
            float velocidade_final = float.Parse(Console.ReadLine());

            Console.WriteLine("Tempo Inicial: ");
            float tempo_inicial = float.Parse(Console.ReadLine());

            Console.WriteLine("Tempo Final: ");
            float tempo_final = float.Parse(Console.ReadLine());

            return (velocidade_final - velocidade_inicial) / (tempo_final - tempo_inicial);
        }
    }
}
