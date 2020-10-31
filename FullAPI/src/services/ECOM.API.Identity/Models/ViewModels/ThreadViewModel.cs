using System.ComponentModel.DataAnnotations;

namespace ECOM.API.Identity.Models.ViewModels
{
    public class ThreadViewModel
    {
        public string Id { get; set; }
        public string Owner { get; set; }
        public LastMessageViewModel LastMessage { get; set; }

        [Required]
        public OponentViewModel OponentVM { get; set; }
    }
}
