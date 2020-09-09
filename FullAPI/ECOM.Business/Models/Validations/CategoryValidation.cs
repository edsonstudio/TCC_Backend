using ECOM.API.Models;
using FluentValidation;
using System;
using System.Collections.Generic;
using System.Text;

namespace ECOM.Business.Models.Validations
{
    public class CategoryValidation : AbstractValidator<Category>
    {
        public CategoryValidation()
        {
            RuleFor(c => c.Name)
                .NotEmpty().WithMessage("O campo {PropertyName} precisa ser fornecido")
                .Length(2, 20).WithMessage("O campo {PropertyName} precisa ter entre {MinLength} e {MaxLength} caracteres");
        }
    }
}
