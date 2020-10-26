using System.ComponentModel.DataAnnotations;

namespace ECOM.WebChat.Models.ViewModels
{
    public class ThreadViewModel
    {
        public string Id { get; set; }

        public string Owner { get; set; }

        //public string OwnerName { get; set; }

        //public string Oponent { get; set; }

        //public string OponentName { get; set; }

        public LastMessageViewModel LastMessage { get; set; }
        [Required]
        public OponentViewModel OponentVM { get; set; }

    }
}
