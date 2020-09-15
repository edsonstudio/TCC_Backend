using AutoMapper;
using ECOM.API.Products.ViewModels;
using ECOM.Business.Models;

namespace ECOM.API.Products.Configuration
{
    public class AutoMapperConfig : Profile
    {
        public AutoMapperConfig()
        {
            CreateMap<ProductViewModel, Product>();
            CreateMap<InsertProductViewModel, Product>();
            CreateMap<UpdateProductViewModel, Product>();


            CreateMap<Category, CategoryViewModel>().ReverseMap();
            CreateMap<Category, InsertCategoryViewModel>().ReverseMap();
            CreateMap<Category, UpdateCategoryViewModel>().ReverseMap();



            CreateMap<AssociatedProductsViewModel, AssociatedProducts>().ReverseMap();
            CreateMap<InsertAssociatedProductsViewModel, AssociatedProducts>().ReverseMap();
            CreateMap<UpdateAssociatedProductsViewModel, AssociatedProducts>().ReverseMap();

            CreateMap<Product, ProductViewModel>()
                .ForMember(dest => dest.CategoryName, opt => opt.MapFrom(src => src.Category.Name));
            //Captura o Name da entidade Category e exibe na propriedade CategoryName vinda da entidade Product
        }
    }
}
