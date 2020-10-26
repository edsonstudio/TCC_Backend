using ECOM.WebChat.Models;
using ECOM.WebChat.Models.ViewModels;
using System.Collections.Generic;

namespace ECOM.WebChat.Services.Interfaces
{
    public interface IMappingService
    {
        MessageViewModel MapMessageModelToMessageViewModel(Message model);

        Message MapMessageViewModelToMessageModel(MessageViewModel model);

        IEnumerable<MessageViewModel> MapMessageModelCollectionToMessageViewModelCollection(IEnumerable<Message> collection);

        ThreadViewModel MapThreadModelToThreadViewModel(Thread model);

        Thread MapThreadViewModelToThreadModel(ThreadViewModel model);

        UserViewModel MapUserModelToUserViewModel(User model);

        ProfileViewModel MapUserModelRoProfileViewModel(User model);
    }

}
