using System;

namespace ECOM.WebChat.Models.Interfaces
{
    public interface IDeletable
    {
        bool isDeleted { get; set; }

        DateTime? DeletedOn { get; set; }
    }
}
