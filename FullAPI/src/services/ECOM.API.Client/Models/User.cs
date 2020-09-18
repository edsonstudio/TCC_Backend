using ECOM.Core.DomainObjects;

namespace ECOM.API.Client.Models
{
    public class User : Entity
    {
        public string Email { get; set; }

        public string Password { get; set; }

        public string Permission { get; set; }

        public string Name { get; set; }
    }
}
