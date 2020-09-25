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
        public async Task<ValidationResult> Handle(RegisterClientCommand message, CancellationToken cancellationToken)
        {
            if (!message.EhValido()) return message.ValidationResult;

            var client = new ECOM.API.Client.Models.Client(message.Id, message.Name, message.CPF, message.Phone);

            // Validações de negócio

            // Persistir no banco

            /*
            if (true)
            {
                AdicionarErro("Este CPF já está em uso.");
                return ValidationResult;
            }*/

            return message.ValidationResult;
        }

    }
}
