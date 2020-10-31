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
    public class ClientCommandHandler : CommandHandler, 
        IRequestHandler<RegisterClientCommand, ValidationResult>,
        IRequestHandler<AdicionarEnderecoCommand, ValidationResult>
    {
        private readonly IClientRepository _clientRepository;

        public ClientCommandHandler(IClientRepository clientRepository)
        {
            _clientRepository = clientRepository;
        }

        public async Task<ValidationResult> Handle(RegisterClientCommand message, CancellationToken cancellationToken)
        {
            if (!message.EhValido()) return message.ValidationResult;

            var client = new Client(message.Id, message.Name, message.Cpf, message.Phone, message.Email);

            var clienteExistente = await _clientRepository.ObterPorCpf(client.Cpf.Numero);

            if (clienteExistente != null)
            {
                AdicionarErro("Este CPF já está em uso.");
                return ValidationResult;
            }

            _clientRepository.Adicionar(client);

            client.AdicionarEvento(new RegisteredClientEvent(message.Id, message.Name, message.Cpf, message.Phone, message.Email));

            return await PersistirDados(_clientRepository.UnitOfWork);
        }

        public async Task<ValidationResult> Handle(AdicionarEnderecoCommand message, CancellationToken cancellationToken)
        {
            if (!message.EhValido()) return message.ValidationResult;

            var endereco = new Address(message.Logradouro, message.Numero, message.Complemento, message.Bairro, message.Cep, message.Cidade, message.Estado, message.ClientId);
            _clientRepository.AdicionarEndereco(endereco);

            return await PersistirDados(_clientRepository.UnitOfWork);
        }

    }
}
