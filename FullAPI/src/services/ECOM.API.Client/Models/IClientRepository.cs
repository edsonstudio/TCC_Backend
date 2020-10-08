using ECOM.Core.Data;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ECOM.API.Client.Models
{
    public interface IClientRepository : IRepository<Client>
    {
        void Adicionar(Client client);
        Task<IEnumerable<Client>> ObterTodos();
        Task<Client> ObterPorCpf(string cpf);

        void AdicionarEndereco(Address address);
        Task<Address> ObterEnderecoPorId(Guid id);
    }
}
