using ECOM.Core.DomainObjects;
using ECOM.Core;

namespace ECOM.API.Client.Models
{
    public class User : Entity
    {
        public Email Email { get; set; }

        public string Password { get; set; }

        public string Permission { get; set; }

        public string Name { get; set; }
    }
}
