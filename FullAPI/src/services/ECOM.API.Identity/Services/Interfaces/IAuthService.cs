using ECOM.API.Identity.Models.ViewModels;

namespace ECOM.API.Identity.Services.Interfaces
{
    public interface IAuthService
    {
        AuthData GetToken(string id);

        string HashPassword(string password);

        bool VerifyPassword(string actualPassword, string hashedPassword);
    }
}
