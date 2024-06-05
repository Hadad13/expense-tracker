using Android.App;
using Android.Content;
using Android.Graphics;
using Android.OS;
using Android.Runtime;
using Android.Util;
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


            tran.ItemClick += Tran_ItemClick;
        }

        private void Tran_ItemClick(object sender, AdapterView.ItemClickEventArgs e)
        {
            // Get the clicked transfer
            Transfer clickedTransfer = transfers[e.Position];
            PopupMenu menu = new PopupMenu(this, tran.GetChildAt(e.Position));
            menu.Inflate(Resource.Layout.transfer_menu);
            menu.MenuItemClick += (sender, e) =>
            {
                if (e.Item.ItemId == Resource.Id.action_view_photo)
                {
                    ViewPhoto(clickedTransfer);

                }
                else if (e.Item.ItemId == Resource.Id.action_delete)
                {
                    DeleteTransfer(clickedTransfer);

                }
            };
            menu.Show(); 
        }

        private void ViewPhoto(Transfer transfer)
        {
            // Check if the transfer has image URI
            if (!string.IsNullOrEmpty(transfer.ImageUri))
            {
                // Display the image using the URI
                ImageView imageView = new ImageView(this);
                imageView.SetImageURI(Android.Net.Uri.Parse(transfer.ImageUri));

                // Create a dialog to display the photo
                AlertDialog.Builder builder = new AlertDialog.Builder(this);
                builder.SetView(imageView);
                builder.SetPositiveButton("Close", (sender, args) =>
                {
                    // Close the dialog
                });

                // Show the dialog
                AlertDialog dialog = builder.Create();
                dialog.Show();
            }
            else
            {
                // Inform the user that no photo is available for this transfer
                Toast.MakeText(this, "No photo available for this transfer", ToastLength.Short).Show();
            }
        }



        private void DeleteTransfer(Transfer transfer)
        {
            // Display a confirmation dialog before deleting the transfer
            AlertDialog.Builder builder = new AlertDialog.Builder(this);
            builder.SetTitle("Confirm Deletion");
            builder.SetMessage("Are you sure you want to delete this transfer?");
            builder.SetPositiveButton("Delete", (sender, args) =>
            {
                SqlData dataBase = new SqlData("expenso.db");

                dataBase.DeleteTransfer(transfer);

                (tran.Adapter as Trans_adapter).NotifyDataSetChanged();

                // Inform the user that the transfer has been deleted
                Toast.MakeText(this, "Transfer deleted", ToastLength.Short).Show();
            });
            builder.SetNegativeButton("Cancel", (sender, args) =>
            {
                // User canceled deletion, do nothing
            });

            // Show the confirmation dialog
            AlertDialog dialog = builder.Create();
            dialog.Show();
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