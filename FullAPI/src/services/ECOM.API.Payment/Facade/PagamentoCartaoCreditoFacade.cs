using ECOM.API.Payment.Facade;
using ECOM.API.Payment.Models;
using ECOM.Payment.EcomPag;
using Microsoft.Extensions.Options;
using System;
using System.Threading.Tasks;

namespace ECOM.API.Payment.CardAntiCorruption
{
    public class PagamentoCartaoCreditoFacade : IPagamentoFacade
    {
        private readonly PagamentoConfig _pagamentoConfig;

        public PagamentoCartaoCreditoFacade(IOptions<PagamentoConfig> pagamentoConfig)
        {
            _pagamentoConfig = pagamentoConfig.Value;
        }

        public async Task<Transacao> AutorizarPagamento(Pagamento pagamento)
        {
            var ecomPagSvc = new EcomPagService(_pagamentoConfig.DefaultApiKey, _pagamentoConfig.DefaultEncryptionKey);

            var cardHashGen = new CardHash(ecomPagSvc)
            {
                CardNumber = pagamento.CartaoCredito.NumeroCartao,
                CardHolderName = pagamento.CartaoCredito.NomeCartao,
                CardExpirationDate = pagamento.CartaoCredito.MesAnoVencimento,
                CardCvv = pagamento.CartaoCredito.CVV

            };

            var cardHash = cardHashGen.Generate();

            var transacao = new Transaction(ecomPagSvc)
            {
                CardHash = cardHash,
                CardNumber = pagamento.CartaoCredito.NumeroCartao,
                CardHolderName = pagamento.CartaoCredito.NomeCartao,
                CardExpirationDate = pagamento.CartaoCredito.MesAnoVencimento,
                CardCvv = pagamento.CartaoCredito.CVV,
                PaymentMethod = PaymentMethod.CreditCard,
                Amount = pagamento.Valor
            };

            return ParaTransacao(await transacao.AuthorizeCardTransaction());
        }

        public static Transacao ParaTransacao(Transaction transaction)
        {
            return new Transacao
            {
                Id = Guid.NewGuid(),
                Status = (StatusTransacao)transaction.Status,
                ValorTotal = transaction.Amount,
                BandeiraCartao = transaction.CardBrand,
                CodigoAutorizacao = transaction.AuthorizationCode,
                CustoTransacao = transaction.Cost,
                DataTransacao = transaction.TransactionDate,
                NSU = transaction.Nsu,
                TID = transaction.Tid
            };
        }

        public async Task<Transacao> CapturarPagamento(Transacao transacao)
        {
            var ecomPagSvc = new EcomPagService(_pagamentoConfig.DefaultApiKey, _pagamentoConfig.DefaultEncryptionKey);

            var transaction = ParaTransaction(transacao, ecomPagSvc);

            return ParaTransacao(await transaction.CaptureCardTransaction());
        }

        public static Transaction ParaTransaction(Transacao transacao, EcomPagService ecomPagService)
        {
            return new Transaction(ecomPagService)
            {
                Status = (TransactionStatus) transacao.Status,
                Amount = transacao.ValorTotal,
                CardBrand = transacao.BandeiraCartao,
                AuthorizationCode = transacao.CodigoAutorizacao,
                Cost = transacao.CustoTransacao,
                Nsu = transacao.NSU,
                Tid = transacao.TID
            };
        }

        public async Task<Transacao> CancelarAutorizacao(Transacao transacao)
        {
            var ecomPagSvc = new EcomPagService(_pagamentoConfig.DefaultApiKey, _pagamentoConfig.DefaultApiKey);

            var transaction = ParaTransaction(transacao, ecomPagSvc);

            return ParaTransacao(await transaction.CancelAuthorization());
        }
    }
}
