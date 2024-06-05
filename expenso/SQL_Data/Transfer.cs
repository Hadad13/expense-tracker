using SQLite;
using System;

namespace expenso
{
    [Table("transfer")]
    public class Transfer
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }

        public int Amount { get; set; }

        public string Comment { get; set; }

        public DateTime Date { get; set; }

        public bool IsPositive { get; set; }

        public string Category { get; set; }

        [Indexed]
        public int UserId { get; set; } // Foreign key referencing User_Data table

        public string Address { get; set; } // Address property

        public double Latitude { get; set; } // Latitude property

        public double Longitude { get; set; } // Longitude property

        public string ImageUri { get; set; } // Property to store image URI

        public Transfer() { }

        public Transfer(int id, int amount, string comment, DateTime date, int userId, string category, string address, double latitude, double longitude, string imageUri)
        {
            this.Id = id;
            this.Amount = amount;
            this.Comment = comment;
            this.Date = date;
            this.UserId = userId; // Assign user ID to transaction
            this.Category = category;
            this.Address = address;
            this.Latitude = latitude;
            this.Longitude = longitude;
            this.ImageUri = imageUri; // Set image URI
        }
    }
}
