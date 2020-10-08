using System;
using System.ComponentModel.DataAnnotations;
using ECOM.Core.DomainObjects;

namespace ECOM.API.Client.Models
{
    public class Address : Entity
    {
        public string Logradouro { get; private set; }
        public string Numero { get; private set; }
        public string Complemento { get; private set; }
        public string Bairro { get; private set; }
        public string Cep { get; private set; }
        public string Cidade { get; private set; }
        public string Estado { get; private set; }
        public Guid ClientId { get; private set; }

        // EF Relation
        public Client Client { get; protected set; }

        public Address(string logradouro, string numero, string complemento, string bairro, string cep, string cidade, string estado, Guid clientId)
        {
            Logradouro = logradouro;
            Numero = numero;
            Complemento = complemento;
            Bairro = bairro;
            Cep = cep;
            Cidade = cidade;
            Estado = estado;
            ClientId = clientId;
        }

        // EF Constructor
        protected Address() { }
    }
}