using Microsoft.AspNetCore.SignalR;

namespace ECOM.WebChat.Hubs2
{
    public class NameUserIdProvider : IUserIdProvider
    {
        public string GetUserId(HubConnectionContext connection)
        {
            return connection.User?.Identity.Name;
        }
    }
}
