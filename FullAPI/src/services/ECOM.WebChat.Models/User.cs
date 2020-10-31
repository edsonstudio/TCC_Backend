using ECOM.WebChat.Models2.Abstractions;
using ECOM.WebChat.Models2.Interfaces;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace ECOM.WebChat.Models2
{
    public class User : BaseEntity, IAuditable, IDeletable //Add
    {
        public User()
        {
            Messages = new HashSet<Message>(); //Add
        }
        [MaxLength(60)]
        public string Username { get; set; }

        [Required]
        [MaxLength(60)]
        public string Email { get; set; }

        [Required]
        public string Password { get; set; }

        public string AvatarFileName { get; set; } //Add

        public ICollection<Message> Messages { get; set; } //Add

        public ICollection<Thread> Threads { get; set; } //Add



    }

}
