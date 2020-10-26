using System.ComponentModel.DataAnnotations;

namespace ECOM.WebChat.Models.ViewModels
{
    public class ProfileViewModel
    {
        [Required]
        public string Id { get; set; }
        [Required]
        public string Username { get; set; }
        [Required]
        public string Email { get; set; }

        public string AvatarFileName { get; set; }
    }
}
