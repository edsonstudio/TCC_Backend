using ECOM.WebChat.Connection;
using ECOM.WebChat.Models;
using ECOM.WebChat.Models.ViewModels;
using ECOM.WebChat.Services.Interfaces;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ECOM.WebChat.Services
{
    public class MessageService : IMessageService
    {
        private readonly WebChatContext ctx;
        private readonly IUserService userService;
        private readonly IMappingService mappingService;

        public MessageService(WebChatContext ctx, IUserService userService, IMappingService mappingService)
        {
            this.ctx = ctx;
            this.userService = userService;
            this.mappingService = mappingService;
        }
        public async Task<MessageViewModel> AddMessage(MessageViewModel message)
        {

            Message messageToAdd = this.mappingService.MapMessageViewModelToMessageModel(message);

            await ctx.Message.AddAsync(messageToAdd);
            await ctx.SaveChangesAsync();

            return mappingService.MapMessageModelToMessageViewModel(messageToAdd);
        }

        public MessageViewModel CreateMessageViewModel(string userId, string text, string threadId)
        {
            var message = new MessageViewModel()
            {
                Id = Guid.NewGuid().ToString(),
                SenderId = userId,
                Text = text,
                ThreadId = threadId,
                Username = this.userService.GetUserNameById(userId)
            };

            return message;
        }

        public IEnumerable<MessageViewModel> GetAllMessages(string threadId)
        {
            if (string.IsNullOrEmpty(threadId))
            {
                throw new ArgumentNullException("Id");
            }

            var messagesForThread = ctx.Thread.Where(t => t.Id == threadId).Include(m => m.Messages).FirstOrDefault().Messages.OrderBy(m => m.CreatedOn);

            if (messagesForThread == null)
            {
                throw new ArgumentNullException();
            }
            var messagesToView = this.mappingService.MapMessageModelCollectionToMessageViewModelCollection(messagesForThread);

            return messagesToView;
        }

    }

}
