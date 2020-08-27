using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ECOM.API.Models
{
    public class Address : Entity
    {
        public string CEP { get; set; }
        
        public string Receiver { get; set; }

        public enum EType { get; set; }

        public string Country { get; set; }

        public string Number { get; set; }

        public string AddressName { get; set; }

        public string  Complement { get; set; }

        public string State { get; set; }

        public string City { get; set; }

        public string Neighborhood { get; set; }

        public string ReferencePoint { get; set; }


    }
}
