using Microsoft.EntityFrameworkCore;

namespace ECOM.API.Client.Data
{
    public static class DbInitializer
    {
        public static void Initialize(DbContext context)
        {
            context.Database.Migrate();
        }
    }
}
