using Android.App;
using Android.Content;
using Android.OS;
using System.Threading.Tasks;

namespace expenso
{
    [Activity(Label = "SplashActivity", MainLauncher = true, Theme = "@style/SplashTheme", NoHistory = true)]
    public class SplashActivity : Activity
    {
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);

            // Set the content view to the splash screen layout
            SetContentView(Resource.Layout.splash_screen);

            // Start a task to delay for a few seconds and then start the main activity
            Task startupWork = new Task(async () => { await Task.Delay(3000); StartMainActivity(); });
            startupWork.Start();
        }

        private void StartMainActivity()
        {
            StartActivity(new Intent(Application.Context, typeof(MainActivity)));
        }
    }
}