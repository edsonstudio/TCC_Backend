using ECOM.WebChat.Models2.ViewModels;

namespace ECOM.WebChat.Services2.Interfaces
{
    public interface IAuthService
    {
        AuthData GetToken(string id);

        string HashPassword(string password);

        bool VerifyPassword(string actualPassword, string hashedPassword);

    }
}
