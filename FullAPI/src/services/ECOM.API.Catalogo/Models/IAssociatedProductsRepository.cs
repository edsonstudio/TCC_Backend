using ECOM.Core.Data;
using System;
using System.Collections.Generic;
using System.Threading.Tasks;

namespace ECOM.API.Catalogo.Models
{
    public interface IAssociatedProductsRepository : IRepository<AssociatedProducts>
    {
        Task<IEnumerable<AssociatedProducts>> ObterTodos();
        Task<AssociatedProducts> ObterPorId(Guid id);

        void Adicionar(AssociatedProducts associatedProducts);
        void Atualizar(AssociatedProducts associatedProducts);
    }
}
