using ECOM.WebChat.Models2.Abstractions;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ECOM.WebChat.Models2
{
    public class Thread : BaseEntity
    {
        public Thread()
        {
            CreatedOn = DateTime.Now;
            Messages = new HashSet<Message>();
        }

        [Required]
        [ForeignKey("OwnerId")]
        public string OwnerId { get; set; }
        public User Owner { get; set; }

        public string OponentId { get; set; }


        public ICollection<Message> Messages { get; set; }
    }

}
