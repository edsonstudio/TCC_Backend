using ECOM.API.Payment.Models;
using System.Threading.Tasks;

namespace ECOM.API.Payment.Facade
{
    public interface IPagamentoFacade
    {
        Task<Transacao> AutorizarPagamento(Pagamento pagamento);
    }
}
