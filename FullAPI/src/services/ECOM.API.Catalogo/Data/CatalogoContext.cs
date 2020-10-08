using ECOM.API.Catalogo.Data.Mappings;
using ECOM.API.Catalogo.Models;
using ECOM.Core.Data;
using ECOM.Core.DomainObjects;
using ECOM.Core.Mediator;
using ECOM.Core.Messages;
using FluentValidation.Results;
using Microsoft.EntityFrameworkCore;
using System.Linq;
using System.Threading.Tasks;

namespace ECOM.API.Catalogo.Data
{
    public sealed class CatalogoContext : DbContext, IUnitOfWork
    {
        private readonly IMediatorHandler _mediatorHandler;

        public CatalogoContext(DbContextOptions<CatalogoContext> options, IMediatorHandler mediatorHandler)
            : base(options) 
        {
            _mediatorHandler = mediatorHandler;
            ChangeTracker.QueryTrackingBehavior = QueryTrackingBehavior.NoTracking;
            ChangeTracker.AutoDetectChangesEnabled = false;
        }

        public DbSet<Product> Products { get; set; }
        public DbSet<Category> Categories { get; set; }
        public DbSet<AssociatedProducts> AssociatedProducts { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Ignore<ValidationResult>();
            modelBuilder.Ignore<Event>();

            foreach (var property in modelBuilder.Model.GetEntityTypes()
                .SelectMany(e => e.GetProperties()
                .Where(p => p.ClrType == typeof(string))))
                property.SetColumnType("varchar(100)");

            //modelBuilder.ApplyConfigurationsFromAssembly(typeof(CatalogoContext).Assembly);

            modelBuilder.ApplyConfiguration(new ProductMapping());
            modelBuilder.ApplyConfiguration(new CategoryMapping());
            modelBuilder.ApplyConfiguration(new AssociatedProductsMapping());

            foreach (var relationship in modelBuilder.Model.GetEntityTypes()
               .SelectMany(e => e.GetForeignKeys())) relationship.DeleteBehavior = DeleteBehavior.ClientSetNull;
        }

        public async Task<bool> Commit()
        {
            var sucesso = await base.SaveChangesAsync() > 0;
            //if (sucesso) await _mediatorHandler.PublicarEventos(this);

            return sucesso;
        }

        //public static class MediatorExtension
        //{
        //    public static async Task PublicarEventos<T>(this IMediatorHandler mediator, T ctx) where T : DbContext
        //    {
        //        var domainEntities = ctx.ChangeTracker
        //            .Entries<Entity>()
        //            .Where(x => x.Entity.Notificacoes != null && x.Entity.Notificacoes.Any());

        //        var domainEvents = domainEntities
        //            .SelectMany(x => x.Entity.Notificacoes)
        //            .ToList();

        //        domainEntities.ToList()
        //            .ForEach(entity => entity.Entity.LimparEventos());

        //        var tasks = domainEvents
        //            .Select(async (domainEvent) => {
        //                await mediator.PublicarEvento(domainEvent);
        //            });

        //        await Task.WhenAll(tasks);
        //    }
        //}

    }
}
