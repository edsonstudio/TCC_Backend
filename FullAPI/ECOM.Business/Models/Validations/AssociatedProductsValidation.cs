using FluentValidation;

namespace ECOM.Business.Models.Validations
{
    public class AssociatedProductsValidation : AbstractValidator<AssociatedProducts>
    {
        public AssociatedProductsValidation()
        {
            RuleFor(ap => ap.ProductSon)  //RuleFor(ap => ap.ProductSon.Id) ou ProductSon.Name ???
                .NotEmpty().WithMessage("O campo {PropertyName} precisa ser fornecido");
          
        }
    }
}
