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
            
        }


    }
}
