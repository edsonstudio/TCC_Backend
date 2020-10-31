using ECOM.API.Chat.Handler;
using ECOM.WebChat.Hubs2;
using ECOM.WebChat.Hubs2.Interfaces;
using ECOM.WebChat.Services2.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.SignalR;
using System.Linq;
using System.Threading.Tasks;

namespace ECOM.API.Chat.V1.Controllers
{
    [Authorize]
    [ApiController]
    [ApiVersion("1.0")]
    [Route("api/v{version:apiVersion}/[controller]")]
    public class AvatarsController : Controller
    {
        private readonly IImageHandler imageHandler;
        private readonly IUserService userService;
        private readonly IHubContext<ChatHub> hubContext;
        private readonly IConnectionMapping<string> connectionMapping;

        public AvatarsController(IImageHandler imageHandler, IUserService userService, IHubContext<ChatHub> hubContext, IConnectionMapping<string> connectionMapping)
        {
            this.imageHandler = imageHandler;
            this.userService = userService;
            this.hubContext = hubContext;
            this.connectionMapping = connectionMapping;
        }

        [HttpPost("upload")]
        public async Task<IActionResult> UploadImage()
        {
            var file = HttpContext.Request.Form.Files[0];
            var avatarFilename = await imageHandler.UploadImage(file);
            var objectResult = avatarFilename as ObjectResult;
            var value = objectResult.Value.ToString();
            this.userService.AddAvatar(value, User.Identity.Name);

            await this.hubContext.Clients.All.SendAsync("ReciveAvatar", new { body = avatarFilename, uploaderId = User.Identity.Name });
            return avatarFilename;
        }
    }
}
