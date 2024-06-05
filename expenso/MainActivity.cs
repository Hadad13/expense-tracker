using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Util;
using Android.Views;
using Android.Widget;
using AndroidX.AppCompat.App;
using System.Collections.Generic;
using System.Text;

namespace expenso
{
    [Activity(Label = "@string/app_name", Theme = "@style/AppTheme", MainLauncher = true)]
    public class MainActivity : AppCompatActivity, View.IOnClickListener
    {
        private TextView header;
        private Button logInBtn;
        private Button signInBtn;
        private Button printUsersButton;
        private Button clearBtn;

        protected override void OnCreate(Bundle savedInstanceState)
{
    base.OnCreate(savedInstanceState);
    Xamarin.Essentials.Platform.Init(this, savedInstanceState);
    // Set our view from the "main" layout resource
    SetContentView(Resource.Layout.activity_main);
            this.header = FindViewById<TextView>(Resource.Id.header);
            this.signInBtn = FindViewById<Button>(Resource.Id.signInBtn);
            this.logInBtn = FindViewById<Button>(Resource.Id.logInBtn);
            this.printUsersButton = FindViewById<Button>(Resource.Id.print_data);
            this.clearBtn = FindViewById<Button>(Resource.Id.clear_data);

            this.clearBtn.SetOnClickListener(this);
            this.printUsersButton.SetOnClickListener(this);
            this.signInBtn.SetOnClickListener(this);
            this.logInBtn.SetOnClickListener(this);
}


        public void OnClick(View v)
        {
            if (v == this.signInBtn)
            {
                // Navigate to SigninActivity
                Intent intent = new Intent(this, typeof(SignUp_activity));
                StartActivity(intent);
            }
            else if (v == this.logInBtn)
            {
                // Navigate to LoginActivity
                Intent intent = new Intent(this, typeof(LogIn_activity));
                StartActivity(intent);
            }
             else if (v == printUsersButton)
            {
                // Retrieve list of users from the database
                List<User_Data> users = GetUsersFromDatabase();

                // Display users in a pop-up message or logcat
                DisplayUsers(users);
            }
            else if(v == clearBtn)
            {
                
                    // Clear the database
                    ClearDatabase();
                
            }
            

        }

        private void ClearDatabase()
        {
            // Create an instance of SqlData class
            SqlData sqlData = new SqlData("expenso.db");

            // Clear the database
            sqlData.ClearDatabase();
        }


        private List<User_Data> GetUsersFromDatabase()
        {
            // Create an instance of SqlData class
            SqlData sqlData = new SqlData("expenso.db");

            // Retrieve list of users from the database
            return sqlData.GetUsers();
        }

        private void DisplayUsers(List<User_Data> users)
        {
            // Prepare text to display in welcome TextView
            StringBuilder welcomeMessage = new StringBuilder("Welcome, Users:\n");
            foreach (var user in users)
            {
                welcomeMessage.AppendLine($"ID: {user.Id}, Email: {user.email}, Password: {user.password}");
            }

            // Set the text in the welcome TextView
            this.header.Text = welcomeMessage.ToString();

            this.header.SetTextSize(Android.Util.ComplexUnitType.Sp, 14);
        }


        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);
            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }

        
    }
}
