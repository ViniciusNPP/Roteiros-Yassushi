using MinhaBiblioteca;
using BibliotecaConversao;
using BibliotecaAceleração;
using DLLdoBetinha;
using CalcularJuros;
using BibliotecaValidacoes;

class Program
{
    static void Main()
    {
        //var calc = new Calculadora();

        //Console.WriteLine("Soma entre 2 e 1: " + calc.Somar(2, 1));
        //Console.WriteLine("Multiplicação entre 2 e 3: " + calc.Multiplicar(2, 3) + "\n");

        //var converter = new Converter();

        //Console.WriteLine("Celsius para Fahrenheit: " + converter.CelsiusFahrenheit(27.4f));
        //Console.WriteLine("Metros para km: " + converter.MetrosKm(1780) + "\n");

        //float moeda_convertida = converter.MoedaConversor();
        //Console.WriteLine("Moeda convertida: " + moeda_convertida + "\n");

        //var Acelerar = new Aceleracao();

        //float aceleracao = Acelerar.CalcularAceleracao();
        //Console.WriteLine("A aceleração é: " + aceleracao + "\n");

        //var eduardo = new BetaCalculator();
        //eduardo.Beta(10);

        //var juros = new Juros();

        //double resultado = juros.JurosSimples(1000, 5, 10);
        //Console.WriteLine("O valor dos juros simples é: " + resultado);
        //double resultado2 = juros.CalculoInterno(1000, 5, 10);
        //O método internal não aparece pois ele é somente acessível dentro do mesmo projeto, ou seja, não pode ser acessado por outros projetos, mesmo que estejam na mesma solução.

        var validacao = new Validacoes();
        Console.WriteLine("Validação de email: " + validacao.ValidarEmail("umemail@gmail.com"));
        Console.WriteLine("Validação de CPF: " + validacao.ValidarCPF("12345678909"));
        //Console.WriteLine("Validação de telefone: " + validacao.ValidarTelefone("11912345678"));
        //O método ValidarTelefone precisa de 2 argumentos e no código está passando somente 1.
        //Breaking change: Modificação em uma API/biblioteca/softaware que os tornam incompatíveis com versões anteriores.
    }
}