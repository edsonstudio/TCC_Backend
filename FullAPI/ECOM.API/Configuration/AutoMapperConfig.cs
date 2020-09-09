using AutoMapper;
using ECOM.API.Models;
using ECOM.API.ViewModels;

namespace ECOM.API.Configuration
{
    public class AutoMapperConfig : Profile
    {
        public AutoMapperConfig()
        {
            CreateMap<ProductViewModel, Product>();
            CreateMap<CategoryViewModel, Category>().ReverseMap();

            CreateMap<Product, ProductViewModel>()
                .ForMember(dest => dest.CategoryName, opt => opt.MapFrom(src => src.Category.Name));
        }
    }
}
