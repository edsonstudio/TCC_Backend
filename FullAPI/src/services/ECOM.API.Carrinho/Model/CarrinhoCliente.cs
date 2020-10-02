using FluentValidation;
using FluentValidation.Results;
using System;
using System.Collections.Generic;
using System.Linq;

namespace ECOM.API.Carrinho.Model
{
    public class CarrinhoCliente
    {
        internal const int MAX_QUANTIDADE_ITEM = 5;
        public Guid Id { get; set; }
        public Guid ClientId { get; set; }
        public decimal TotalPrice { get; set; }
        public List<CarrinhoItem> Items { get; set; } = new List<CarrinhoItem>();

        public ValidationResult ValidationResult { get; set; }

        public CarrinhoCliente(Guid clientId)
        {
            Id = Guid.NewGuid();
            ClientId = clientId;
        }

        public CarrinhoCliente(){}

        internal void CalcularValorCarrinho()
        {
            TotalPrice = Items.Sum(p => p.CalcularValor());
        }

        internal bool CarrinhoItemExistente(CarrinhoItem item)
        {
            return Items.Any(p => p.ProductId == item.ProductId);
        }

        internal CarrinhoItem ObterPorProdutoId(Guid produtoId)
        {
            return Items.FirstOrDefault(p => p.ProductId == produtoId);
        }

        internal void AdicionarItem(CarrinhoItem item)
        {
            item.AssociarCarrinho(Id);

            if (CarrinhoItemExistente(item))
            {
                var itemExistente = ObterPorProdutoId(item.ProductId);
                itemExistente.AdicionarUnidades(item.Amount);

                item = itemExistente;
                Items.Remove(itemExistente);
            }

            Items.Add(item);
            CalcularValorCarrinho();
        }

        internal void AtualizarItem(CarrinhoItem item)
        {
            item.AssociarCarrinho(Id);

            var itemExistente = ObterPorProdutoId(item.ProductId);

            Items.Remove(itemExistente);
            Items.Add(item);

            CalcularValorCarrinho();
        }

        internal void AtualizarUnidades(CarrinhoItem item, int unidades)
        {
            item.AtualizarUnidades(unidades);
            AtualizarItem(item);
        }

        internal void RemoverItem(CarrinhoItem item)
        {
            Items.Remove(ObterPorProdutoId(item.ProductId));
            CalcularValorCarrinho();
        }

        internal bool EhValido()
        {
            var erros = Items.SelectMany(i => new CarrinhoItem.ItemCarrinhoValidation().Validate(i).Errors).ToList();
            erros.AddRange(new CarrinhoClienteValidation().Validate(this).Errors);
            ValidationResult = new ValidationResult(erros);

            return ValidationResult.IsValid;
        }

        public class CarrinhoClienteValidation : AbstractValidator<CarrinhoCliente>
        {
            public CarrinhoClienteValidation()
            {
                RuleFor(c => c.ClientId)
                    .NotEqual(Guid.Empty)
                    .WithMessage("Cliente não reconhecido!");

                RuleFor(c => c.Items.Count)
                    .GreaterThan(0)
                    .WithMessage("O carrinho não possui itens!");

                RuleFor(c => c.TotalPrice)
                    .GreaterThan(0)
                    .WithMessage("O valor total do carrinho precisa ser maior que 0");
            }
        }
    }
}
