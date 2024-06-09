using Android.App;
using Android.Content;
using Android.OS;
using Android.Widget;

namespace expenso
{
    [Service]
    public class BatteryService : Service
    {
        private BatteryBroadcastReceiver batteryReceiver;
        private MainActivity mainActivity;

        public class LocalBinder : Binder
        {
            public BatteryService Service { get; private set; }

            public LocalBinder(BatteryService service)
            {
                Service = service;
            }

            public BatteryService GetBatteryService()
            {
                return Service;
            }
        }

        private IBinder binder;

        public void SetMainActivity(MainActivity activity)
        {
            mainActivity = activity;
        }

        public override void OnCreate()
        {
            base.OnCreate();
            batteryReceiver = new BatteryBroadcastReceiver();
        }

        public override StartCommandResult OnStartCommand(Intent intent, StartCommandFlags flags, int startId)
        {
            RegisterReceiver(batteryReceiver, new IntentFilter(Intent.ActionBatteryChanged));
            return StartCommandResult.Sticky;
        }

        public override IBinder OnBind(Intent intent)
        {
            binder = new LocalBinder(this);
            return binder;
        }

        public override void OnDestroy()
        {
            UnregisterReceiver(batteryReceiver);
            base.OnDestroy();
        }

        public int GetBatteryPercentage()
        {
            IntentFilter filter = new IntentFilter(Intent.ActionBatteryChanged);
            Intent batteryStatus = ApplicationContext.RegisterReceiver(null, filter);
            if (batteryStatus != null)
            {
                int level = batteryStatus.GetIntExtra(BatteryManager.ExtraLevel, -1);
                int scale = batteryStatus.GetIntExtra(BatteryManager.ExtraScale, -1);
                if (level != -1 && scale != -1)
                {
                    return (int)((level / (float)scale) * 100);
                }
            }
            return -1; // Return -1 if battery percentage cannot be retrieved
        }

        [BroadcastReceiver]
        public class BatteryBroadcastReceiver : BroadcastReceiver
        {
            public override void OnReceive(Context context, Intent intent)
            {
                int level = intent.GetIntExtra(BatteryManager.ExtraLevel, -1);
                int scale = intent.GetIntExtra(BatteryManager.ExtraScale, -1);

                if (level != -1 && scale != -1)
                {
                    float batteryPct = (level / (float)scale) * 100;
                    Toast.MakeText(context, $"Battery Level: {batteryPct}%", ToastLength.Short).Show();
                }
            }
        }
    }
}
