using Microsoft.EntityFrameworkCore;

namespace ECOM.API.Identity.Data
{
    public static class DbInitializer
    {
        public static void Initialize(DbContext context)
        {
            context.Database.Migrate();
        }
    }
}
