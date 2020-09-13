using AutoMapper;
using ECOM.API.Models;
using ECOM.API.ViewModels;
using ECOM.Business.Models;

namespace ECOM.API.Configuration
{
    public class AutoMapperConfig : Profile
    {
        public AutoMapperConfig()
        {
            CreateMap<ProductViewModel, Product>();
            CreateMap<CategoryViewModel, Category>().ReverseMap();
            CreateMap<AssociatedProductsViewModel, AssociatedProducts>().ReverseMap();

            CreateMap<Product, ProductViewModel>()
                .ForMember(dest => dest.CategoryName, opt => opt.MapFrom(src => src.Category.Name));
            //Captura o Name da entidade Category e exibe na propriedade CategoryName vinda da entidade Product
        }
    }
}
