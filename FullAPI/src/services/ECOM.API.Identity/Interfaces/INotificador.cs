using ECOM.API.Identity.Notificacoes;
using System.Collections.Generic;

namespace ECOM.API.Identity.Interfaces
{
    public interface INotificador
    {
        bool TemNotificacao();
        List<Notificacao> ObterNotificacoes();
        void Handle(Notificacao notificacao);
    }
}
