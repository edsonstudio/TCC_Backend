using ECOM.API.Client.Application.Commands;
using ECOM.API.Client.Application.Events;
using ECOM.API.Client.Models;
using ECOM.Core.Messages;
using FluentValidation.Results;
using MediatR;
using System.Threading;
using System.Threading.Tasks;

namespace Application.Commands
{
    public class ClientCommandHandler : CommandHandler, IRequestHandler<RegisterClientCommand, ValidationResult>
    {
        private readonly IClientRepository _clientRepository;

        public ClientCommandHandler(IClientRepository clientRepository)
        {
            _clientRepository = clientRepository;
        }



        public async Task<ValidationResult> Handle(RegisterClientCommand message, CancellationToken cancellationToken)
        {
            if (!message.EhValido()) return message.ValidationResult;

            var client = new Client(message.Id, message.Name, message.Cpf, message.Email, message.Phone);

            var clienteExistente = await _clientRepository.ObterPorCpf(client.Cpf.Numero);

            if (clienteExistente != null)
            {
                AdicionarErro("Este CPF já está em uso.");
                return ValidationResult;
            }

            _clientRepository.Adicionar(client);

            client.AdicionarEvento(new RegisteredClientEvent(message.Id, message.Name, message.Email, message.Cpf, message.Phone));

            return await PersistirDados(_clientRepository.UnitOfWork);
        }

    }
}
