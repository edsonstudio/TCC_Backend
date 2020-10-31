using ECOM.Core.DomainObjects;
using System;
using System.Collections.Generic;

namespace ECOM.API.Client.Models
{
    public class Client : Entity, IAggregateRoot
    {
        public string Name { get; private set; }
        public Cpf Cpf { get; private set; }
        public string Phone { get; private set; }
        public Email Email { get; private set; }
        public bool Excluded { get; private set; }
        public IEnumerable<Address> Address { get; private set; }

        // EF Relation
        protected Client() { }

        public Client(Guid id, string name, string cpf, string phone, string email)
        {
            Id = id;
            Name = name;
            Cpf = new Cpf(cpf);            
            Phone = phone;
            Email = new Email(email);
            Excluded = false;
        }

        public void TrocarEmail(string email)
        {
            Email = new Email(email);
        }

        public void AtribuirEndereco(IEnumerable<Address> address)
        {
            Address = address;
        }
    }
}