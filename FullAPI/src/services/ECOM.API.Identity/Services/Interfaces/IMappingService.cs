using ECOM.API.Identity.Models;
using ECOM.API.Identity.Models.ViewModels;
using System.Collections.Generic;

namespace ECOM.API.Identity.Services.Interfaces
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
