using FluentValidation;

namespace ECOM.Business.Models.Validations
{
    public class InsertAssociatedProductsValidation : AbstractValidator<AssociatedProducts>
    {
        public InsertAssociatedProductsValidation()
        {
            RuleFor(ap => ap.ProductFatherId)
                .NotEmpty().WithMessage("O campo {PropertyName} precisa ser fornecido!");

            RuleFor(ap => ap.ProductSonId)
                  .NotEmpty().WithMessage("O campo {PropertyName} precisa ser fornecido!");
        }
    }
}
