using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using ECOM.Core.DomainObjects;

namespace ECOM.Business.Models
{
    public class Client : Entity
    {
        [Required]
        public string CPF { get; set; }

        [Required]
        public string Name { get; set; }
        
        [Required]
        public string Phone { get; set; }
        public Guid UserId { get; set; }

        /*EF Relation*/
        [Required]
        public User User { get; set; }

        [Required]
        public IEnumerable<Address> Address { get; set; }

    }
}
