using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace expenso
{
    [Activity(Label = "Activity1")]
    public class CategoryView_activity : Activity, View.IOnClickListener
    {
        private Button back_btn;
        private TextView amount_tv;
        private ListView tran;
        private List<Transfer> transfers;



        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.category_view);

            back_btn = FindViewById<Button>(Resource.Id.back_btn);
            amount_tv = FindViewById<TextView>(Resource.Id.amount_tv);
            tran = FindViewById<ListView>(Resource.Id.transfers_lv);

            back_btn.SetOnClickListener(this);


            transfers = new List<Transfer>();

            string transfersJson = Intent.GetStringExtra("transfers");
            transfers = JsonConvert.DeserializeObject<List<Transfer>>(transfersJson);

            // Bind the data to the ListView
            tran.Adapter = new Trans_adapter(this, transfers);


            // Create your application here
        }

        public void OnClick(View v)
        {
           if (v == back_btn) {
            Intent intent = new Intent(this, typeof(MainScreen_activity));
                StartActivity(intent);
            
            }
        }
    }
}