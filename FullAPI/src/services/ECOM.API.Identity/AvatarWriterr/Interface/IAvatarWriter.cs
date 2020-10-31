using Microsoft.AspNetCore.Http;
using System.Threading.Tasks;

namespace ECOM.API.Identity.AvatarWriterr.Interface
{
    public interface IAvatarWriter
    {
        Task<string> UploadImage(IFormFile file);
    }
}
