﻿using ECOM.Core.DomainObjects;
using ECOM.Pedidos.Domain.Vouchers.Specs;
using System;

namespace ECOM.Pedidos.Domain.Vouchers
{
    public class Voucher : Entity, IAggregateRoot
    {
        public string Codigo { get; private set; }
        public decimal? Percentual { get; private set; }
        public decimal? ValorDesconto { get; private set; }
        public int Quantidade { get; private set; }
        public TipoDescontoVoucher TipoDesconto { get; private set; }
        public DateTime DataCriacao { get; private set; }
        public DateTime? DataUtilizacao { get; private set; }
        public DateTime DataValidade { get; private set; }
        public bool Ativo { get; private set; }
        public bool Utilizado { get; private set; }

        public bool EstaValidoParaUtilizacao()
        {
            return new VoucherAtivoSpecification()
                .And(new VoucherDateSpecification())
                .And(new VoucherQuantidadeSpecification())
                .IsSatisfiedBy(this);
        }

        public void MarcarComoUtilizado()
        {
            Ativo = false;
            Utilizado = true;
            Quantidade = 0;
        }
    }
}
