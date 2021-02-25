using Microsoft.EntityFrameworkCore;

namespace ECOM.Pedidos.Infra.Data
{
    public static class DbInitializer
    {
        public static void Initialize(DbContext context)
        {
            context.Database.Migrate();
        }
    }
}
