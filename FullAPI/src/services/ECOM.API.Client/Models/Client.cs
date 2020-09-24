using ECOM.Core.DomainObjects;
using System;
using System.Collections.Generic;

namespace ECOM.API.Client.Models
{
    public class Client : Entity, IAggregateRoot
    {

        public Cpf CPF { get; private set; }

        public string Name { get; private set; }

        public string Phone { get; private set; }
        public bool Excluded { get; private set; }
        public Guid UserId { get; private set; }

        /*EF Relation*/
        public User User { get; private set; }

        public IEnumerable<Address> Address { get; private set; }

        // EF Relation
        protected Client() { }


        public Client(Guid id, string name, string cpf, string phone)
        {
            Id = id;
            Name = name;
            CPF = new Cpf(cpf);
            Phone = phone;
            Excluded = false;
        }

        // Verificar o fluxo de informações e o uso deste procedimento
        public void AtribuirEndereco(IEnumerable<Address> address)
        {
            Address = address;
        }




    }
}
