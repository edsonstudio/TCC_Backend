using ECOM.Core.DomainObjects;
using System;
using System.Collections.Generic;

namespace ECOM.Business.Models
{
    public class Product : Entity
    {
        public string Name { get; private set; }

        public bool Active { get; private set; }

        public string Description { get; private set; }

        public string Model { get; private set; }

        public string Brand { get; private set; }

        public decimal Price { get; private set; }

        public int Amount { get; private set; }

        public string Image { get; private set; }

        public DateTime RegisterDate { get; private set; }

        public Guid CategoryId { get; private set; }

        /* EF Relations */
        public Category Category { get; protected set; }
        public IEnumerable<AssociatedProducts> AssociatedProducts { get; private set; }

        // EF Ctor
        public Product() { }

        public Product(Guid categoryId, string name, bool active, string description, 
            string model, string brand, decimal price, int amount, string image, DateTime registerDate)
        {
            CategoryId = categoryId;
            Name = name;
            Active = active;
            Description = description;
            Model = model;
            Brand = brand;
            Price = price;
            Amount = amount;
            Image = image;
            RegisterDate = registerDate;
        }

        public void RetirarEstoque(int quantidade)
        {
            if (Amount >= quantidade)
                Amount -= quantidade;
        }

        public bool EstaDisponivel(int quantidade)
        {
            return Active && Amount >= quantidade;
        }

    }
}
