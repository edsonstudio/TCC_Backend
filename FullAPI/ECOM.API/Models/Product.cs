using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace ECOM.API.Models
{
    public class Product : Entity
    {
        [Column(TypeName = "varchar(36)")]
        public Guid CategoryId { get; set; }

        [Required]
        public string Name { get; set; }

        public enum EStatus { get; set; }

        [Required]
        public string Description { get; set; }

        [Required]
        public string Model { get; set; }

        [Required]
        public string Brand { get; set; }

        [Required]
        public decimal Price { get; set; }

        [Required]
        public int Amount { get; set; }

        [Column(TypeName = "varbinary(MAX)")]
        public string Image { get; set; }

        public Category Category { get; set; }
    }
}
