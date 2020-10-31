using ECOM.WebChat.Models2.ViewModels;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ECOM.WebChat.Services2.Interfaces
{
    public interface IMessageService
    {
        //Message CreateMessage(string userId, string text, string threadId);

        //MessageViewModel MapMessageModelToViewModel(Message model);

        Task<MessageViewModel> AddMessage(MessageViewModel message);

        IEnumerable<MessageViewModel> GetAllMessages(string id);
    }
}
