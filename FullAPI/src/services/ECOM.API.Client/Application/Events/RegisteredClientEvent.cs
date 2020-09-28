using ECOM.Core.Messages;
using System;

namespace ECOM.API.Client.Application.Events
{
    public class RegisteredClientEvent : Event
    {
        public Guid Id { get; private set; }
        public string Name { get; private set; }
        public string Cpf { get; private set; }
        public string Email { get; private set; }
        public string Phone { get; private set; }

        public RegisteredClientEvent(Guid id, string name, string cpf, string email, string phone)
        {
            AggregateId = id;
            Id = id;
            Name = name;
            Cpf = cpf;
            Email = email;
            Phone = phone;
        }
    }
}
