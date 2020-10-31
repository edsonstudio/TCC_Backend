namespace ECOM.WebChat.Services2.Interfaces
{
    public interface IValidator
    {
        bool DoesThreadExist(string id);

        bool DoesUserBelongToCurentThread(string threadId, string userId);
    }
}
