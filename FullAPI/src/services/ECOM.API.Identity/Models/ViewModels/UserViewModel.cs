namespace ECOM.API.Identity.Models.ViewModels
{
    public class UserViewModel
    {
        public string Id { get; set; }

        public string Username { get; set; }

        public bool IsOnline { get; set; }

        public string AvatarFileName { get; set; }
    }
}
