using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ECOM.API.Models
{
    public class User : Entity
    {
        public string Email { get; set; }

        public string Password { get; set; }

        public enum EPermission { get; set; }
        public string Name { get; set; }
    }
}
