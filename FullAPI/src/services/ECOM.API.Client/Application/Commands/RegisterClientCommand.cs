using ECOM.Core.Messages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ECOM.API.Client.Application.Commands
{
    public class RegisterClientCommand : Command
    {
        public Guid Id { get; private set; }
        public string Name { get; private set; }
        public string CPF { get; private set; }
        public string Phone { get; private set; }

        public RegisterClientCommand(Guid id, string name, string cpf, string phone)
        {
            AggregateId = id;
            Id = id;
            Name = name;
            CPF = cpf;
            Phone = phone;
        }
    }
}
