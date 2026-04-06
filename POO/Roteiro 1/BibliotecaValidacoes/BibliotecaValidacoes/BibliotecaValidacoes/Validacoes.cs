namespace BibliotecaValidacoes
{
    public class Validacoes
    {
        public bool ValidarCPF(string cpf)
        {
            if (cpf.Length != 11)
            {
                return false;
            }
            return true;
        }
        public bool ValidarEmail(string email)
        {
            string[] conter = [".com", "@"];
            foreach (var item in conter)
            {
                if (!email.Contains(item)) return false;
                continue;
            }
            return true;
        }
        public bool ValidarTelefone(string telefone, string cidade)
        {
            if (telefone.Length != 11)
            {
                return false;
            }
            return true;
        }
    }
}
