using System.Threading.Tasks;

namespace ECOM.Core.Data
{
    public interface IUnitOfWork
    {
        Task<bool> Commit();
    }
}
