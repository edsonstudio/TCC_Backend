using FluentValidation;
using System;

namespace ECOM.API.Carrinho.Model
{
    public class CarrinhoItem
    {
        public CarrinhoItem()
        {
            Id = Guid.NewGuid();
        }

        public Guid Id { get; set; }
        public Guid ProductId { get; set; }
        public string Name { get; set; }
        public int Amount { get; set; }
        public decimal Price { get; set; }
        public string Image { get; set; }

        public Guid CarrinhoId { get; set; }

        public CarrinhoCliente CarrinhoCliente { get; set; }

        internal void AssociarCarrinho(Guid carrinhoId)
        {
            CarrinhoId = carrinhoId;
        }

        internal decimal CalcularValor()
        {
            return Amount * Price;
        }

        internal void AdicionarUnidades(int unidades)
        {
            Amount += unidades;
        }

        internal void AtualizarUnidades(int unidades)
        {
            Amount = unidades;
        }

        internal bool EhValido()
        {
            return new ItemPedidoValidation().Validate(this).IsValid;
        }

        public class ItemPedidoValidation : AbstractValidator<CarrinhoItem>
        {
            public ItemPedidoValidation()
            {
                RuleFor(c => c.ProductId)
                    .NotEqual(Guid.Empty)
                    .WithMessage("Id do produto inválido!");

                RuleFor(c => c.Name)
                    .NotEmpty()
                    .WithMessage("O nome do produto não foi informado!");

                RuleFor(c => c.Amount)
                    .GreaterThan(0)
                    .WithMessage("A quantidade mínima de um item é 1");

                RuleFor(c => c.Amount)
                    .LessThan(CarrinhoCliente.MAX_QUANTIDADE_ITEM)
                    .WithMessage($"A quantidade máxima de um item é {CarrinhoCliente.MAX_QUANTIDADE_ITEM}");

                RuleFor(c => c.Price)
                    .GreaterThan(0)
                    .WithMessage("O valor do item precisa ser maior que 0");
            }
        }
    }
}
