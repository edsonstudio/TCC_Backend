using ECOM.Core.Messages;
using FluentValidation;
using System;

namespace ECOM.API.Client.Application.Commands
{
    public class RegisterClientCommand : Command
    {
        public Guid Id { get; private set; }
        public string Name { get; private set; }
        public string Cpf { get; private set; }
        public string Email { get; private set; }
        public string Phone { get; private set; }

        public RegisterClientCommand(Guid id, string name, string email, string cpf, string phone)
        {
            AggregateId = id;
            Id = id;
            Name = name;
            Cpf = cpf;
            Email = email;
            Phone = phone;
        }

        public override bool EhValido()
        {
            ValidationResult = new RegisterClientValidation().Validate(this);
            return ValidationResult.IsValid;
        }

        public class RegisterClientValidation : AbstractValidator<RegisterClientCommand>
        {
            public RegisterClientValidation()
            {
                RuleFor(c => c.Id)
                    .NotEqual(Guid.Empty)
                    .WithMessage("Id do cliente inválido.");

                RuleFor(c => c.Name)
                    .NotEmpty()
                    .WithMessage("O nome do cliente não foi informado.");

                RuleFor(c => c.Cpf)
                    .Must(TerCpfValido)
                    .WithMessage("O Cpf informado não é válido.");

                RuleFor(c => c.Email)
                    .Must(TerEmailValido)
                    .WithMessage("O e-mail informado não é válido.");
            }

            protected static bool TerCpfValido(string cpf)
            {
                return Core.DomainObjects.Cpf.Validar(cpf);
            }

            protected static bool TerEmailValido(string email)
            {
                return Core.DomainObjects.Email.Validar(email);
            }
        }
    }
}
