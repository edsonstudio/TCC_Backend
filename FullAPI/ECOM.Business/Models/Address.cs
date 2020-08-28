using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;


namespace ECOM.API.Models
{
    public class Address : Entity
    {
        [Required]
        public string CEP { get; set; }

        [Required]
        public string Receiver { get; set; }

        [Required]
        public string Country { get; set; }

        [Required]
        public string Number { get; set; }

        [Required]
        public string AddressName { get; set; }

        [Required]
        public string  Complement { get; set; }

        [Required]
        public string State { get; set; }

        [Required]
        public string City { get; set; }

        [Required]
        public string Neighborhood { get; set; }

        [Required]
        public string ReferencePoint { get; set; }


    }
}
