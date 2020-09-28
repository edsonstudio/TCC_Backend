using System;
using System.ComponentModel.DataAnnotations;
using ECOM.Core.DomainObjects;

namespace ECOM.API.Client.Models
{
    public class Address : Entity
    {
        public string Cep { get; private set; }

        public string Receiver { get; private set; }

        public string Country { get; private set; }

        public string Number { get; private set; }

        public string AddressName { get; private set; }

        public string Complement { get; private set; }

        public string State { get; private set; }

        public string City { get; private set; }

        public string Neighborhood { get; private set; }

        public string ReferencePoint { get; private set; }

        public Guid ClientId { get; private set; }

        // EF Relation
        public Client Client { get; protected set; }

        public Address(string cep, string receiver, string country, string number, 
            string addressName, string complement, string state, string city,
            string neighborhood, string referencePoint)
        {
            Cep = cep;
            Receiver = receiver;
            Country = country;
            Number = number;
            AddressName = addressName;
            Complement = complement;
            State = state;
            City = city;
            Neighborhood = neighborhood;
            ReferencePoint = referencePoint;
        }
    }
}
