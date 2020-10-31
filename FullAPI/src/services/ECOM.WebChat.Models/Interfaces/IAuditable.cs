using System;

namespace ECOM.WebChat.Models2.Interfaces
{
    public interface IAuditable
    {
        DateTime CreatedOn { get; set; }

        DateTime? ModifiedOn { get; set; }
    }
}
