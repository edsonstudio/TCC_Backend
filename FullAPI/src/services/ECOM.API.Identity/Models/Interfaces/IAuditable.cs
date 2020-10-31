using System;

namespace ECOM.API.Identity.Models.Interfaces
{
    public interface IAuditable
    {
        DateTime CreatedOn { get; set; }

        DateTime? ModifiedOn { get; set; }
    }

}
