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

namespace expenso
{
    [Table("user_data")]
    public class User_Data
    {
        [PrimaryKey, AutoIncrement]
        public int Id { get; set; }

        public string password { get; set; }

        public string email { get; set; }

        public User_Data() { }

        public User_Data(int id, string email, string password)
        {
            this.Id = id;
            this.email = email;
            this.password = password;
        }
    }
}
