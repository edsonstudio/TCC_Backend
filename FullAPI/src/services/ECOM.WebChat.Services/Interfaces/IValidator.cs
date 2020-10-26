namespace ECOM.WebChat.Services.Interfaces
{
    public interface IValidator
    {
        bool DoesThreadExist(string id);

        bool DoesUserBelongToCurentThread(string threadId, string userId);
    }
}
