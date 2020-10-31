using ECOM.WebChat.Connection2;
using ECOM.WebChat.Services2.Interfaces;
using System.Linq;

namespace ECOM.WebChat.Services2.Helpers
{
    public class Validator : IValidator
    {
        private readonly IThreadService threadService;
        private readonly WebChatContext ctx;

        public Validator(IThreadService threadService, WebChatContext ctx)
        {
            this.threadService = threadService;
            this.ctx = ctx;
        }

        public bool DoesThreadExist(string id)
        {
            return ctx.Thread.Any(t => t.Id == id);
        }

        public bool DoesUserBelongToCurentThread(string threadId, string userId)
        {
            var thread = ctx.Thread.FirstOrDefault(t => t.Id == threadId);
            if (thread.OwnerId == userId || thread.OponentId == userId)
            {
                return true;
            }

            return false;
        }
    }

}
