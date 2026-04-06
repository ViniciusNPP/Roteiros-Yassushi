namespace CalcularJuros
{
    public class Juros
    {
        public double JurosSimples(double valor, double taxa, double tempo)
        {
            return valor * taxa * tempo;
        }
        internal double CalculoInterno(double valor, double taxa, double tempo)
        {
            return valor * taxa * tempo;
        }
    }
}
