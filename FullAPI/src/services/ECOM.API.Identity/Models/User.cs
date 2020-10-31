using ECOM.API.Identity.Models.Interfaces;
using Microsoft.AspNetCore.Identity;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace ECOM.API.Identity.Models
{
    public class User : IdentityUser, IAuditable, IDeletable
    {
        public User()
        {
            Messages = new HashSet<Message>();
        }

        public string AvatarFileName { get; set; }

        public bool isDeleted { get; set; }


        [DataType(DataType.DateTime)]
        public DateTime? DeletedOn { get; set; }


        [DataType(DataType.DateTime)]
        public DateTime CreatedOn { get; set; }


        [DataType(DataType.DateTime)]
        public DateTime? ModifiedOn { get; set; }

        public ICollection<Message> Messages { get; set; }

        public ICollection<Thread> Threads { get; set; }
    }
}
