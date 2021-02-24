using ECOM.Business.Notificacoes;
using System.Collections.Generic;

namespace ECOM.Business.Interfaces
{
    public interface INotificador
    {
        bool TemNotificacao();

        List<Notificacao> ObterNotificacoes();
        void Handle(Notificacao notificacao);
    }
}

