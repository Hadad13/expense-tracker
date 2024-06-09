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
    [Activity(Label = "@string/app_name")]
    public class MainActivity : AppCompatActivity, View.IOnClickListener
    {
        private TextView header;
        private Button logInBtn;
        private Button signInBtn;
        private Button printUsersButton;
        private Button clearBtn;
        private TextView batteryPercentage;
        private BatteryService batteryService;
        private BatteryServiceConnection serviceConnection;
        private Handler handler;
        private const int BatteryUpdateIntervalMs = 5000;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            SetContentView(Resource.Layout.activity_main);

            Intent batteryServiceIntent = new Intent(this, typeof(BatteryService));
            StartService(batteryServiceIntent);

            this.header = FindViewById<TextView>(Resource.Id.header);
            this.signInBtn = FindViewById<Button>(Resource.Id.signInBtn);
            this.logInBtn = FindViewById<Button>(Resource.Id.logInBtn);
            this.printUsersButton = FindViewById<Button>(Resource.Id.print_data);
            this.clearBtn = FindViewById<Button>(Resource.Id.clear_data);
            this.batteryPercentage = FindViewById<TextView>(Resource.Id.battery);

            this.clearBtn.SetOnClickListener(this);
            this.printUsersButton.SetOnClickListener(this);
            this.signInBtn.SetOnClickListener(this);
            this.logInBtn.SetOnClickListener(this);

            handler = new Handler();
        }

        public void OnClick(View v)
        {
            if (v == this.signInBtn)
            {
                Intent intent = new Intent(this, typeof(SignUp_activity));
                StartActivity(intent);
            }
            else if (v == this.logInBtn)
            {
                Intent intent = new Intent(this, typeof(LogIn_activity));
                StartActivity(intent);
            }
            else if (v == printUsersButton)
            {
                List<User_Data> users = GetUsersFromDatabase();
                DisplayUsers(users);
            }
            else if (v == clearBtn)
            {
                ClearDatabase();
            }
        }

        private void ClearDatabase()
        {
            SqlData sqlData = new SqlData("expenso.db");
            sqlData.ClearDatabase();
        }

        private List<User_Data> GetUsersFromDatabase()
        {
            SqlData sqlData = new SqlData("expenso.db");
            return sqlData.GetUsers();
        }

        private void DisplayUsers(List<User_Data> users)
        {
            StringBuilder welcomeMessage = new StringBuilder("Welcome, Users:\n");
            foreach (var user in users)
            {
                welcomeMessage.AppendLine($"ID: {user.Id}, Email: {user.email}, Password: {user.password}");
            }
            this.header.Text = welcomeMessage.ToString();
            this.header.SetTextSize(Android.Util.ComplexUnitType.Sp, 14);
        }

        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);
            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }

        protected override void OnResume()
        {
            base.OnResume();
            handler.PostDelayed(UpdateBatteryPercentageTask, BatteryUpdateIntervalMs);
        }

        protected override void OnPause()
        {
            base.OnPause();
            handler.RemoveCallbacks(UpdateBatteryPercentageTask);
        }

        private void UpdateBatteryPercentageTask()
        {
            if (batteryService != null)
            {
                int batteryPercent = batteryService.GetBatteryPercentage();
                UpdateBatteryPercentage(batteryPercent);
            }
            handler.PostDelayed(UpdateBatteryPercentageTask, BatteryUpdateIntervalMs);
        }

        public void UpdateBatteryPercentage(int batteryPercent)
        {
            RunOnUiThread(() =>
            {
                batteryPercentage.Text = $"Battery: {batteryPercent}%";
            });
        }

        protected override void OnStart()
        {
            base.OnStart();
            BindBatteryService();
        }

        protected override void OnStop()
        {
            base.OnStop();
            UnbindBatteryService();
        }

        private void BindBatteryService()
        {
            Intent batteryServiceIntent = new Intent(this, typeof(BatteryService));
            serviceConnection = new BatteryServiceConnection(this);
            BindService(batteryServiceIntent, serviceConnection, Bind.AutoCreate);
        }

        private void UnbindBatteryService()
        {
            if (serviceConnection != null)
            {
                UnbindService(serviceConnection);
            }
        }

        public class BatteryServiceConnection : Java.Lang.Object, IServiceConnection
        {
            private MainActivity mainActivity;

            public BatteryServiceConnection(MainActivity activity)
            {
                mainActivity = activity;
            }

            public void OnServiceConnected(ComponentName name, IBinder service)
            {
                BatteryService.LocalBinder binder = service as BatteryService.LocalBinder;
                if (binder != null)
                {
                    BatteryService batteryService = binder.GetBatteryService();
                    batteryService.SetMainActivity(mainActivity);
                }
            }

            public void OnServiceDisconnected(ComponentName name)
            {
                // Handle the disconnection from the service if needed
            }
        }
    }
}
