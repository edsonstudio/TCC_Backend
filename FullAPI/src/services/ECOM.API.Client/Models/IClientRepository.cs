using ECOM.Core.Data;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ECOM.API.Client.Models
{
    public interface IClientRepository : IRepository<Client>
    {
        void Adicionar(Client client);
        Task<IEnumerable<Client>> ObterTodos();
        Task<Client> ObterPorCpf(string cpf);
    }
}
