﻿namespace ECOM.API.Identity.Models.ViewModels
{
    public class AuthData
    {
        public string Token { get; set; }

        public long TokenExpirationTime { get; set; }

        public string Id { get; set; }
    }
}
