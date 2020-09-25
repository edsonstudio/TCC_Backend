using ECOM.API.Client.Models;
using ECOM.Core.Messages;
using FluentValidation.Results;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace ECOM.API.Client.Application.Commands
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

            var client = new ECOM.API.Client.Models.Client(message.Id, message.Name, message.CPF, message.Phone);

            var clienteExistente = await _clientRepository.ObterPorCpf(client.CPF.Numero);

            if (clienteExistente != null)
            {
                AdicionarErro("Este CPF já está em uso.");
                return ValidationResult;
            }

            _clientRepository.Adicionar(client);

            return await PersistirDados(_clientRepository.UnitOfWork);
        }

    }
}
