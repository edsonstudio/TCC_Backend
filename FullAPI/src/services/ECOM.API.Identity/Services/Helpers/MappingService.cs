using ECOM.API.Identity.Models;
using ECOM.API.Identity.Models.ViewModels;
using ECOM.API.Identity.Services.Interfaces;
using System;
using System.Collections.Generic;

namespace ECOM.API.Identity.Services.Helpers
{
    public class MappingService : IMappingService
    {

        public Message MapMessageViewModelToMessageModel(MessageViewModel model)
        {
            var messageModel = new Message()
            {
                Id = model.Id,
                Text = model.Text,
                SenderId = model.SenderId,
                ThreadId = model.ThreadId,
                CreatedOn = DateTime.Now
            };

            return messageModel;
        }

        public MessageViewModel MapMessageModelToMessageViewModel(Message model)
        {
            var messageViewModel = new MessageViewModel()
            {
                Id = model.Id,
                SenderId = model.SenderId,
                Text = model.Text,
                Time = model.CreatedOn,
                ThreadId = model.ThreadId
            };
            return messageViewModel;
        }

        public IEnumerable<MessageViewModel> MapMessageModelCollectionToMessageViewModelCollection(IEnumerable<Message> collection)
        {
            var viewModelCollection = new List<MessageViewModel>();

            foreach (var model in collection)
            {
                var viewModel = this.MapMessageModelToMessageViewModel(model);
                viewModelCollection.Add(viewModel);
            }

            return viewModelCollection;
        }

        public ThreadViewModel MapThreadModelToThreadViewModel(Thread model)
        {
            var threadVM = new ThreadViewModel()
            {
                Id = model.Id,
                Owner = model.OwnerId,
            };
            return threadVM;
        }

        public Thread MapThreadViewModelToThreadModel(ThreadViewModel model)
        {
            var threadModel = new Thread()
            {
                Id = model.Id,
                OwnerId = model.Owner,
                OponentId = model.OponentVM.Id
            };

            return threadModel;
        }

        public UserViewModel MapUserModelToUserViewModel(User model)
        {
            return new UserViewModel()
            {
                Id = model.Id,
                AvatarFileName = model.AvatarFileName,
                Username = model.UserName
            };
        }

        public ProfileViewModel MapUserModelRoProfileViewModel(User model)
        {
            return new ProfileViewModel()
            {
                Id = model.Id,
                Username = model.UserName,
                Email = model.Email,
                AvatarFileName = model.AvatarFileName
            };
        }
    }

}
