using Microsoft.EntityFrameworkCore;

namespace ECOM.Data.Context
{
    public static class DbInitializer
    {
        public static void Initialize(DbContext context)
        {
            context.Database.Migrate();
        }
    }
}
