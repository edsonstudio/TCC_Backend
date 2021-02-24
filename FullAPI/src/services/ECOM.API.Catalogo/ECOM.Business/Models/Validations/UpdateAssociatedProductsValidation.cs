using FluentValidation;

namespace ECOM.Business.Models.Validations
{
    public class UpdateAssociatedProductsValidation : AbstractValidator<AssociatedProducts>
    {
        public UpdateAssociatedProductsValidation()
        {
            RuleFor(ap => ap.ProductFatherId)
                .NotEmpty().WithMessage("O campo {PropertyName} precisa ser fornecido!");

            RuleFor(ap => ap.ProductSonId)
                  .NotEmpty().WithMessage("O campo {PropertyName} precisa ser fornecido!");
        }
    }
}
