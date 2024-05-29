using Android.App;
using Android.Content;
using Android.OS;
using Android.Views;
using Android.Widget;
using expenso;
using System.Collections.Generic;
using System.Linq;

namespace expenso
{

    [Activity(Label = "Activity1")]

    public class LogIn_activity : Activity, View.IOnClickListener
    {
        private EditText email, password;
        private Button btn_logIn;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            SetContentView(Resource.Layout.log_in);
            base.OnCreate(savedInstanceState);

            // Initialize views
            this.email = FindViewById<EditText>(Resource.Id.email_logIn);
            this.password = FindViewById<EditText>(Resource.Id.password_logIn);
            this.btn_logIn = FindViewById<Button>(Resource.Id.btn_logIn);

            // Set click listener for the login button
            this.btn_logIn.SetOnClickListener(this);
        }

        public void OnClick(View v)
        {
            if (v == btn_logIn)
            {
                // Get email and password entered by the user
                string enteredEmail = email.Text;
                string enteredPassword = password.Text;

                // Validate email and password against the database
                bool isValidCredentials = ValidateCredentials(enteredEmail, enteredPassword);

                if (isValidCredentials)
                {
                    // Retrieve the user ID from the database
                    int loggedInUserId = GetLoggedInUserId(enteredEmail);

                    // Save the user ID in SharedPreferences
                    SaveLoggedInUserId(loggedInUserId);


                    // Navigate to MainScreenActivity if validation succeeds
                    Intent intent = new Intent(this, typeof(MainScreen_activity));
                    StartActivity(intent);
                }
                else
                {
                    // Display a message indicating invalid credentials
                    Toast.MakeText(this, "Invalid email or password.", ToastLength.Long).Show();
                }
            }
        }

        private bool ValidateCredentials(string email, string password)
        {
            // Retrieve user from the database based on the provided email
            User_Data user = GetUserFromDatabase(email);

            // Check if a user with the provided email exists and if the password matches
            if (user != null && user.password == password)
            {
                return true; // Valid credentials
            }

            return false; // Invalid credentials
        }

        private User_Data GetUserFromDatabase(string email)
        {
            // Create an instance of SqlData class
            SqlData sqlData = new SqlData("expenso.db");

            // Retrieve user from the database based on the provided email
            List<User_Data> users = sqlData.GetUsers();
            return users.FirstOrDefault(u => u.email == email);
        }

        private int GetLoggedInUserId(string email)
        {
            // Retrieve user from the database based on the provided email
            User_Data user = GetUserFromDatabase(email);

            // Return the user ID if found, otherwise return -1
            return user != null ? user.Id : -1;
        }

        private void SaveLoggedInUserId(int userId)
        {
            // Get the SharedPreferences instance
            ISharedPreferences sharedPreferences = GetSharedPreferences("MyPrefs", FileCreationMode.Private);

            // Get the SharedPreferences.Editor instance
            ISharedPreferencesEditor editor = sharedPreferences.Edit();

            // Store the logged-in user ID in SharedPreferences
            editor.PutInt("LoggedInUserId", userId);

            // Commit the changes
            editor.Commit();
        }

    }
}