using System;

namespace ECOM.API.Identity.Models.Interfaces
{
    public interface IDeletable
    {
        bool isDeleted { get; set; }

        DateTime? DeletedOn { get; set; }
    }

}
