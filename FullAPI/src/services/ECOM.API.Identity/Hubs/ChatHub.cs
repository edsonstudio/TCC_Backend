using ECOM.API.Identity.Extensions;
using ECOM.API.Identity.Hubs.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.SignalR;
using System;
using System.Linq;
using System.Threading.Tasks;

namespace ECOM.API.Identity.Hubs
{
    [Authorize]
    public class ChatHub : Hub
    {
        private readonly IConnectionMapping<string> connections;

        public ChatHub(IConnectionMapping<string> connections)
        {
            this.connections = connections ?? throw new ArgumentNullException(nameof(connections));
        }

        //Typing notification
        public async Task OnTyping(string threadId)
        {
            var curentUserId = Context.User.GetUserId();
            await Clients.All.SendAsync("ReciveTypingStatus", new { UserId = curentUserId, ThreadId = threadId });
        }
        public async Task OnStopTyping(string threadId)
        {
            var curentUserId = Context.User.GetUserId();
            await Clients.All.SendAsync("ReciveStopTypingStatus", new { UserId = curentUserId, ThreadId = threadId });
        }
        //Online status
        public override Task OnConnectedAsync()
        {
            var curentUserId = Context.User.GetUserId();
            var count = connections.GetConnections(curentUserId).Count();
            if (count == 0)
            {
                Clients.All.SendAsync("ReciveConnectedStatus", curentUserId);
            }

            connections.Add(curentUserId, Context.ConnectionId);

            return base.OnConnectedAsync();
        }

        //TODO: INvoke this method when user logOut
        public override Task OnDisconnectedAsync(Exception exception)
        {
            Groups.RemoveFromGroupAsync(Context.ConnectionId, Context.User.GetUserId());
            connections.Remove(Context.User.GetUserId(), Context.ConnectionId);
            var connectionsCount = connections.GetConnections(Context.User.GetUserId());
            //Cheking does this user has any connetctions, if not send status to front end
            if (connectionsCount.Count() == 0)
            {
                Clients.All.SendAsync("ReciveDisconnectedStatus", Context.User.GetUserId());
            }
            //Here we can check is user have any connectons if not SendMessage to the Client side
            return base.OnDisconnectedAsync(exception);
        }
    }
}
