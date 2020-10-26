using ECOM.WebChat.Models.ViewModels;

namespace ECOM.WebChat.Services.Interfaces
{
    public interface IAuthService
    {
        AuthData GetToken(string id);

        string HashPassword(string password);

        bool VerifyPassword(string actualPassword, string hashedPassword);

    }
}
