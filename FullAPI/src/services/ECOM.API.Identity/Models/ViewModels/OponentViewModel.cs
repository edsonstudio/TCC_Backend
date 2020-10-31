namespace ECOM.API.Identity.Models.ViewModels
{
    public class OponentViewModel
    {
        public string Id { get; set; }

        public string Username { get; set; }

        public string Email { get; set; }

        public string AvatarFileName { get; set; }

        public bool IsOnline { get; set; }

        public bool IsTyping { get; set; } = false;
    }
}
