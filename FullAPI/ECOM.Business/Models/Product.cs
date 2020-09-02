using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ECOM.API.Models
{
    public class Product : Entity
    {
      //[Column(TypeName = "varchar(36)")]
        public Guid CategoryId { get; set; }

        public string Name { get; set; }

        public bool Active { get; set; } //Status

        public string Description { get; set; }

        public string Model { get; set; }

        public string Brand { get; set; }

        //[Column(TypeName = "decimal(9,2)")]
        public decimal Price { get; set; }

        public int Amount { get; set; }

        //[Column(TypeName = "varbinary(MAX)")]
        public string Image { get; set; }

        public DateTime RegisterDate { get; set; } //Data de cadastro do produto

        /* EF Relations */
        public Category Category { get; set; }

    }
}
