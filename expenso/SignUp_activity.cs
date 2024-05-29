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

namespace expenso
{
    [Activity(Label = "Activity1")]
    public class SignUp_activity : Activity, View.IOnClickListener
    {
        private EditText email, password;
        private Button btn_signIn;



        protected override void OnCreate(Bundle savedInstanceState)
        {
            SetContentView(Resource.Layout.sign_in);

            base.OnCreate(savedInstanceState);

            this.email = FindViewById<EditText>(Resource.Id.email_signIn);
            this.password = FindViewById<EditText>(Resource.Id.password_signIn);
            this.btn_signIn = FindViewById<Button>(Resource.Id.btn_signIn);

            this.btn_signIn.SetOnClickListener(this);

        }

        public void OnClick(View v)
        {
            if (v == btn_signIn)
            {
                string email = this.email.Text;
                string password = this.password.Text;

                // Save user data into the database
                if (IsValidEmail(email) && IsValidPassword(password))
                {
                    // Save user data into the database
                    SaveUserData(email, password);

                    // Navigate to MainScreenActivity
                    Intent intent = new Intent(this, typeof(MainActivity));
                    StartActivity(intent);
                }
                else
                {
                    // Display pop-up message for invalid credentials
                    Toast.MakeText(this, "Please enter a valid email and password (password should be at least 6 characters long).", ToastLength.Long).Show();
                }
            }
        }

        private void SaveUserData(string email, string password)
        {
            // Create a new User_Data object
            User_Data user = new User_Data { email = email, password = password };

            // Insert user data into the database
            SqlData sqlData = new SqlData("expenso.db");
            sqlData.InsertUser(user);
        }

        private bool IsValidEmail(string email)
        {
            // Simple email validation - check if it contains "@gmail.com"
            return email.EndsWith("@gmail.com");
        }

        private bool IsValidPassword(string password)
        {
            // Password validation - check if it's at least 6 characters long
            return password.Length >= 6;
        }
    }
}