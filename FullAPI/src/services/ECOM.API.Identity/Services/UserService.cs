using ECOM.API.Identity.Data;
using ECOM.API.Identity.Hubs.Interfaces;
using ECOM.API.Identity.Models;
using ECOM.API.Identity.Models.ViewModels;
using ECOM.API.Identity.Services.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;

namespace ECOM.API.Identity.Services
{
    public class UserService : IUserService
    {
        private readonly ApplicationDbContext ctx;
        //private readonly IAuthService authService;
        private readonly IThreadService threadService;
        private readonly IMappingService mappingService;
        private readonly IConnectionMapping<string> connectionMapping;

        public UserService(
            ApplicationDbContext ctx,
            //IAuthService authService,
            IThreadService threadService,
            IMappingService mappingService,
            IConnectionMapping<string> connectionMapping)
        {
            this.ctx = ctx ?? throw new ArgumentNullException("Context can not be null");
            //this.authService = authService ?? throw new ArgumentNullException("Authorization service can not be null");
            this.threadService = threadService ?? throw new ArgumentNullException("Thread service service can not be null");
            this.mappingService = mappingService ?? throw new ArgumentNullException("Mapping service service can not be null");
            this.connectionMapping = connectionMapping ?? throw new ArgumentNullException(nameof(connectionMapping));
        }

        public void UpdateProfile(ProfileViewModel model)
        {
            var entity = this.ctx.User.FirstOrDefault(u => u.Id == model.Id);
            entity.Email = model.Email;
            entity.UserName = model.UserName;
            ctx.User.Update(entity);
            ctx.SaveChanges();
        }

        public IEnumerable<UserViewModel> FindUserByMatch(string match, string curentUser)
        {
            if (string.IsNullOrEmpty(curentUser)) throw new ArgumentNullException("Current user Id can not be null");

            var queryResult = ctx.User.Where(u => u.UserName.IndexOf(match) > -1 && u.Id != curentUser);
            var searchResult = new List<UserViewModel>();
            foreach (var user in queryResult)
            {
                //Check is current user has any connection to provide online/offline status
                List<string> userConnections = connectionMapping.GetConnections(user.Id).ToList();

                var userVm = mappingService.MapUserModelToUserViewModel(user);
                userVm.IsOnline = userConnections.Count == 0 ? false : true;
                searchResult.Add(userVm);
            }
            return searchResult;
        }

        public void AddAvatar(string avatarId, string userId)
        {
            var user = ctx.User.FirstOrDefault(u => u.Id == userId);
            user.AvatarFileName = avatarId;
            ctx.User.Update(user);
            ctx.SaveChanges();
        }

        public void AddUser(User newUser)
        {
            if (newUser == null)
            {
                throw new ArgumentNullException("User Entity can not be null");
            }

            newUser.CreatedOn = DateTime.Now;

            ctx.User.Add(newUser);
            ctx.SaveChanges();
        }

        //public User CreateUser(string username, string email, string password)
        //{
        //    var newUser = new User()
        //    {
        //        Id = Guid.NewGuid().ToString(),
        //        UserName = username,
        //        Email = email,
        //        PasswordHash = authService.HashPassword(password)
        //    };

        //    return newUser;
        //}

        public string GetOponentIdByTheadId(string senderId, string threadId)
        {
            //Get thread from thread service
            Thread currentThread = this.threadService.GetThreadById(threadId);
            if (currentThread.OwnerId == senderId)
            {
                return currentThread.OponentId;
            }
            return currentThread.OwnerId;
            throw new NotImplementedException();
        }

        public User GetUserByEmail(string email)
        {
            if (string.IsNullOrEmpty(email))
            {
                throw new ArgumentNullException("Email can not be null or empty");
            }

            return ctx.User.FirstOrDefault(u => u.Email == email);
        }

        public string GetUserIdByName(string name)
        {
            return ctx.User.FirstOrDefault(u => u.UserName == name).Id;
        }

        public string GetUserNameById(string id)
        {
            return ctx.User.FirstOrDefault(u => u.Id == id).UserName;
        }

        public ProfileViewModel GetUserProfile(string userId)
        {
            var model = ctx.User.FirstOrDefault(u => u.Id == userId);
            var viewModel = this.mappingService.MapUserModelRoProfileViewModel(model);
            viewModel.UserName = GetUserNameById(userId);

            return viewModel;

        }
        //TODO: Check opponent's status
        public OponentViewModel GetOponentProfile(string id)
        {
            var userConnections = connectionMapping.GetConnections(id);

            var profile = (from u in ctx.User
                           where u.Id == id
                           select new OponentViewModel
                           {
                               Id = u.Id,
                               Username = u.UserName,
                               AvatarFileName = u.AvatarFileName,
                               IsOnline = userConnections.Count() > 0 ? true : false
                           }).FirstOrDefault();
            return profile;
        }

        public ICollection<User> GetUsers()
        {
            return ctx.User.ToList();
        }

        public bool isEmailUniq(string email)
        {
            if (string.IsNullOrEmpty(email))
            {
                throw new ArgumentNullException("Email can not be null or empty");
            }
            var user = ctx.User.FirstOrDefault(u => u.Email == email);

            if (user != null)
            {
                return false;
            }

            return true;
        }

        public bool isUsernameUniq(string userName)
        {
            if (string.IsNullOrEmpty(userName))
            {
                throw new ArgumentNullException("Username can not be null or empty");
            }
            var user = ctx.User.FirstOrDefault(u => u.UserName == userName);

            if (user != null)
            {
                return false;
            }

            return true;
        }
    }
}
