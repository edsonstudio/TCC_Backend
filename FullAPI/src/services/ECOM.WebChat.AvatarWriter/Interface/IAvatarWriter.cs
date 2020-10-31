using Microsoft.AspNetCore.Http;
using System.Threading.Tasks;

namespace ECOM.WebChat.AvatarWriter2.Interface
{
    public interface IAvatarWriter
    {
        Task<string> UploadImage(IFormFile file);
    }
}
