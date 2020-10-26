using System.ComponentModel.DataAnnotations;

namespace ECOM.API.Chat.ViewModels
{
    public class RegisterViewModel
    {
        [Required]
        [StringLength(60, MinimumLength = 3)]
        public string Username { get; set; }

        [Required]
        [EmailAddress]
        public string Email { get; set; }

        [Required]
        [StringLength(60, MinimumLength = 6)]
        public string Password { get; set; }
    }
}
