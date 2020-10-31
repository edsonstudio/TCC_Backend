using System;

namespace ECOM.WebChat.Models2.Interfaces
{
    public interface IDeletable
    {
        bool isDeleted { get; set; }

        DateTime? DeletedOn { get; set; }
    }
}
