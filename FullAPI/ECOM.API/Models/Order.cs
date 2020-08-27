using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ECOM.API.Models
{
    public class Order : Entity
    {
        public enum EStatus { get; set; }

        public Client ClientId { get; set; }

        public DateTime Date { get; set; }

        public int Amount { get; set; }

        public decimal Price { get; set; }
    }
}
