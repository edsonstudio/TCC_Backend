using ECOM.WebChat.Models;
using ECOM.WebChat.Models.ViewModels;
using System.Collections.Generic;

namespace ECOM.WebChat.Services.Interfaces
{
    public interface IUserService
    {
        void UpdateProfile(ProfileViewModel model);

        OponentViewModel GetOponentProfile(string id);

        IEnumerable<UserViewModel> FindUserByMatch(string match, string curentUser);

        ProfileViewModel GetUserProfile(string userId);

        void AddAvatar(string avatarId, string userId);

        bool isEmailUniq(string email);

        bool isUsernameUniq(string userName);

        User GetUserByEmail(string email);

        User CreateUser(string username, string email, string password);

        void AddUser(User newUser);

        string GetUserNameById(string id);

        string GetUserIdByName(string name);

        string GetOponentIdByTheadId(string senderId, string threadId);

        ICollection<User> GetUsers();



    }

}
