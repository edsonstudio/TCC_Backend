using ECOM.API.Identity.Extensions;
using ECOM.API.Identity.Handler;
using ECOM.API.Identity.Hubs;
using ECOM.API.Identity.Hubs.Interfaces;
using ECOM.API.Identity.Services.Interfaces;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.SignalR;
using System.Threading.Tasks;

namespace ECOM.API.Identity.V2.Controllers
{
    [Authorize]
    [ApiController]
    [ApiVersion("2.0")]
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
            this.userService.AddAvatar(value, User.GetUserId());

            await this.hubContext.Clients.All.SendAsync("ReciveAvatar", new { body = avatarFilename, uploaderId = User.GetUserId() });
            return avatarFilename;
        }
    }
}
