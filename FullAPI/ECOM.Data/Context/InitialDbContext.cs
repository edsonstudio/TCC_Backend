using ECOM.API.Models;
using ECOM.Business.Models;
using ECOM.Data.Mappings;
using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;
using System.Threading;
using System.Threading.Tasks;

namespace ECOM.Data.Context
{
    public class InitialDbContext : DbContext
    {
        public InitialDbContext(DbContextOptions<InitialDbContext> options) : base(options)
        {
        }

        public DbSet<Product> Products { get; set; }
        //public DbSet<Client> Clients { get; set; }
        //public DbSet<User> Users { get; set; }
        public DbSet<Category> Categories { get; set; }
        //public DbSet<Order> Orders { get; set; }
        //public DbSet<Address> Addresses { get; set; }
        //public DbSet<Payment> Payments { get; set; }
        //public DbSet<OrderItems> OrderItems { get; set; }
        public DbSet<ProductsProducts> ProductsProducts { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            // mapeando das configurações para o banco de dados
            modelBuilder.ApplyConfiguration(new ProductMapping());
            modelBuilder.ApplyConfiguration(new CategoryMapping());
            modelBuilder.ApplyConfiguration(new ProductsProductsMapping());

            //Para o caso de esquecer de mapear algo evitando de entrar como nvarchar(MAX)
            /*foreach (var property in modelBuilder.Model.GetEntityTypes()
                .SelectMany(e => e.GetProperties()
                .Where(p => p.ClrType == typeof(string))))
                property.SetColumnType("varchar(100)");*/


            modelBuilder.ApplyConfigurationsFromAssembly(typeof(InitialDbContext).Assembly);

            //Remover o Delete Cascade
            foreach (var relationship in modelBuilder.Model.GetEntityTypes()
                .SelectMany(e => e.GetForeignKeys())) relationship.DeleteBehavior = DeleteBehavior.ClientSetNull;

            base.OnModelCreating(modelBuilder);
        }
        public override Task<int> SaveChangesAsync(CancellationToken cancellationToken = new CancellationToken())
        {
            foreach (var entry in ChangeTracker.Entries().Where(entry => entry.Entity.GetType().GetProperty("RegisterDate") != null))
            {
                if (entry.State == EntityState.Added)
                {
                    entry.Property("RegisterDate").CurrentValue = DateTime.Now;
                }

                if (entry.State == EntityState.Modified)
                {
                    entry.Property("RegisterDate").IsModified = false;
                }
            }

            return base.SaveChangesAsync(cancellationToken);
        }

    }
}
