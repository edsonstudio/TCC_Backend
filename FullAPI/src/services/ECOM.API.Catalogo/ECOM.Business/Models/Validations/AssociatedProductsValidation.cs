using FluentValidation;

namespace ECOM.Business.Models.Validations
{
    public class AssociatedProductsValidation : AbstractValidator<AssociatedProducts>
    {
        public AssociatedProductsValidation()
        {
            RuleFor(ap => ap.ProductFatherId)
                .NotEmpty().WithMessage("O campo {PropertyName} precisa ser fornecido!");

            RuleFor(ap => ap.ProductSonId)
                  .NotEmpty().WithMessage("O campo {PropertyName} precisa ser fornecido!");
        }
    }
}
