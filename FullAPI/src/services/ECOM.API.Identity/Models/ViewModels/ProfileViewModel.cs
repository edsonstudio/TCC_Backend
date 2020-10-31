using System.ComponentModel.DataAnnotations;

namespace ECOM.API.Identity.Models.ViewModels
{
    public class ProfileViewModel
    {
        [Required]
        public string Id { get; set; }
        [Required]
        public string UserName { get; set; }
        [Required]
        public string Email { get; set; }

        public string AvatarFileName { get; set; }
    }
}
