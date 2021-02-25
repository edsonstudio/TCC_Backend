using Microsoft.EntityFrameworkCore;

namespace ECOM.API.Payment.Data
{
    public static class DbInitializer
    {
        public static void Initialize(DbContext context)
        {
            context.Database.Migrate();
        }
    }
}
