using System.Collections.Generic;

namespace ECOM.Bff.Compras.Models
{
    public class CarrinhoDTO
    {
        public decimal TotalPrice { get; set; }
        public VoucherDTO Voucher { get; set; }
        public bool VoucherUtilizado { get; set; }
        public decimal Desconto { get; set; }
        public List<ItemCarrinhoDTO> Items { get; set; } = new List<ItemCarrinhoDTO>();
    }
}
