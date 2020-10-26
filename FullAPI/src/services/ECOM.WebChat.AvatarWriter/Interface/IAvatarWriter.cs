using Microsoft.AspNetCore.Http;
using System.Threading.Tasks;

namespace ECOM.WebChat.AvatarWriter.Interface
{
    public interface IAvatarWriter
    {
        Task<string> UploadImage(IFormFile file);
    }
}
