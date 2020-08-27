using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ECOM.API.Models
{
    public class Client : Entity
    {
        [Required]
        public string CPF { get; set; }

        [Required]
        public string Name { get; set; }
        
        [Required]
        public string Phone { get; set; }

        /*EF Relation*/
        [Required]
        public IEnumerable<Address> Address { get; set; }

    }
}
