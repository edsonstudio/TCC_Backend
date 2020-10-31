using System;

namespace ECOM.Core.Messages.Integration
{
    public class UsuarioRegistradoIntegrationEvent : IntegrationEvent
    {
        public Guid Id { get; private set; }
        public string Name { get; private set; }
        public string Cpf { get; private set; }
        public string Phone { get; private set; }
        public string Email { get; private set; }
        
        public UsuarioRegistradoIntegrationEvent(Guid id, string name, string cpf, string phone, string email)
        {
            Id = id;
            Name = name;
            Cpf = cpf;
            Phone = phone;
            Email = email;
        }
    }
}
