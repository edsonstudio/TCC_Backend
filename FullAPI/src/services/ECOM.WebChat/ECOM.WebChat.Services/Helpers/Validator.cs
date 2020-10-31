using ECOM.WebChat.Services.Interfaces;
using System.Linq;

namespace ECOM.WebChat.Services.Helpers
{
    public class Validator : IValidator
    {
        private readonly IThreadService threadService;
        private readonly ApplicationDbContext ctx;

        public Validator(IThreadService threadService, ApplicationDbContext ctx)
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
