using ECOM.WebChat.Models.Abstractions;
using ECOM.WebChat.Models.Interfaces;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;

namespace ECOM.WebChat.Models
{
    public class User : BaseEntity, IAuditable, IDeletable
    {
        public User()
        {
            Messages = new HashSet<Message>();
        }
        [MaxLength(60)]
        public string Username { get; set; }

        [Required]
        [MaxLength(60)]
        public string Email { get; set; }

        [Required]
        public string Password { get; set; }

        public string AvatarFileName { get; set; }

        public ICollection<Message> Messages { get; set; }

        public ICollection<Thread> Threads { get; set; }



    }

}
