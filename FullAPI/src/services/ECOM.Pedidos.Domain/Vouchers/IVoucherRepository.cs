using ECOM.Core.Data;
using System.Threading.Tasks;

namespace ECOM.Pedidos.Domain.Vouchers
{
    public interface IVoucherRepository : IRepository<Voucher>
    {
        Task<Voucher> ObterVoucherporCodigo(string codigo);
    }
}
