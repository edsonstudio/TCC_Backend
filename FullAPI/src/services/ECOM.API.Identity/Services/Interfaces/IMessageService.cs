using ECOM.API.Identity.Models.ViewModels;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ECOM.API.Identity.Services.Interfaces
{
    public interface IMessageService
    {
        Task<MessageViewModel> AddMessage(MessageViewModel message);

        IEnumerable<MessageViewModel> GetAllMessages(string id);
    }
}
