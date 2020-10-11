using ECOM.API.Payment.Models;
using ECOM.Core.Messages.Integration;
using System;
using System.Threading.Tasks;

namespace ECOM.API.Payment.Services
{
    public interface IPagamentoService
    {
        Task<ResponseMessage> AutorizarPagamento(Pagamento pagamento);
        Task<ResponseMessage> CapturarPagamento(Guid pedidoId);
        Task<ResponseMessage> CancelarPagamento(Guid pedidoId);
    }
}
