using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using SQLite;
using Android.Graphics;
using System.ComponentModel.DataAnnotations.Schema;
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

        public bool IsPositive {  get; set; }

        public string Category {  get; set; }

        [Indexed] // Index for faster retrieval
        public int UserId { get; set; } // Foreign key referencing User_Data table
       

        public Transfer() { }

        public Transfer(int id, int amount, string comment, DateTime date, int userId, string category)
        {
            this.Id = id;
            this.Amount = amount;
            this.Comment = comment;
            this.Date = date;
            this.UserId = userId; // Assign user ID to transaction
            this.Category = category;
        }
    }
}
