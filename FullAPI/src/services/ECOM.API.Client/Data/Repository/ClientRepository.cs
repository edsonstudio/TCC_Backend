using Data;
using ECOM.API.Client.Models;
using ECOM.Core.Data;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ECOM.API.Client.Data.Repository
{
    public class ClientRepository : IClientRepository
    {
        private readonly ClientsContext _context;

        public ClientRepository(ClientsContext context)
        {
            _context = context;
        }

        public IUnitOfWork UnitOfWork => _context;

        public async Task<IEnumerable<Models.Client>> ObterTodos()
        {
            return await _context.Clients.AsNoTracking().ToListAsync();
        }

        public Task<Models.Client> ObterPorCpf(string cpf)
        {
            return _context.Clients.FirstOrDefaultAsync(c => c.Cpf.Numero == cpf);
        }

        public void Adicionar(Models.Client client)
        {
            _context.Clients.Add(client);
        }

        public async Task<Address> ObterEnderecoPorId(Guid id)
        {
            return await _context.Addresses.FirstOrDefaultAsync(e => e.ClientId == id);
        }

        public void AdicionarEndereco(Address address)
        {
            _context.Addresses.Add(address);
        }

        public void Dispose()
        {
            _context.Dispose();
        }
    }
}
