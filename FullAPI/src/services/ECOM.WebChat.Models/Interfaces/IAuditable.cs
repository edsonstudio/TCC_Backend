using System;

namespace ECOM.WebChat.Models.Interfaces
{
    public interface IAuditable
    {
        DateTime CreatedOn { get; set; }

        DateTime? ModifiedOn { get; set; }
    }
}
