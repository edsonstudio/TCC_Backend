using System;
using ECOM.Core.DomainObjects;

namespace ECOM.Core.Data
{
    public interface IRepository<T> : IDisposable where T : IAggregateRoot
    {
        IUnitOfWork UnitOfWork { get; }
    }
}