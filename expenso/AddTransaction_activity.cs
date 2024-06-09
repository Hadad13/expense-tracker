using Android.App;
using Android.Content;
using Android.Locations;
using Android.OS;
using Android.Views;
using Android.Widget;
using AndroidX.Annotations;
using System.Collections.Generic;
using ILocationListener = Android.Locations.ILocationListener;
using Android.Runtime;
using System;
using Android;
using Android.Content.PM;
using Android.Provider;
using System.IO;
using Android.Graphics;

namespace expenso
{
    [Activity(Label = "AddTransaction")]
    public class AddTransaction_activity : Activity, View.IOnClickListener
    {
        // Define constants for request codes
        private const int REQUEST_IMAGE_CAPTURE = 1;
        private const int REQUEST_GALLERY_IMAGE = 2;

        private Button income_btn, expense_btn, add_btn, cancel_btn, today_btn, yesterday_btn, custom_btn;
        private EditText transaction_amount, comment;
        private Button leisure_btn, food_btn, health_btn;
        private TextView is_positive;
        private DateTime selectedDate; // To store the selected date
        private string selectedCategory; // To store the selected category
        private Button setAdress_btn, photo_btn;
        private LocationManager locationManager;
        private ILocationListener locationListener; // Use ILocationListener from Android.Locations
        private string currentAddress; // To store the current address
        private TextView adress_tv;
        private byte[] capturedImageData;
        private Android.Net.Uri selectedImageUri;
        private ImageView imageView;

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.add_transaction); // Replace with your layout file

            locationManager = GetSystemService(Context.LocationService) as LocationManager;
            locationListener = new MyLocationListener(this); // Create an instance of MyLocationListener

            // Initialize buttons, edit texts, and arrays
            income_btn = FindViewById<Button>(Resource.Id.income_btn2);
            expense_btn = FindViewById<Button>(Resource.Id.expense_btn2);
            add_btn = FindViewById<Button>(Resource.Id.add_btn);
            cancel_btn = FindViewById<Button>(Resource.Id.cancel_btn);
            transaction_amount = FindViewById<EditText>(Resource.Id.transaction_amount);
            comment = FindViewById<EditText>(Resource.Id.comment);
            is_positive = FindViewById<TextView>(Resource.Id.is_positive);
            today_btn = FindViewById<Button>(Resource.Id.today_btn);
            yesterday_btn = FindViewById<Button>(Resource.Id.yesterday_btn);
            custom_btn = FindViewById<Button>(Resource.Id.custom_btn);
            leisure_btn = FindViewById<Button>(Resource.Id.leisure_btn);
            food_btn = FindViewById<Button>(Resource.Id.food_btn);
            health_btn = FindViewById<Button>(Resource.Id.health_btn);
            setAdress_btn = FindViewById<Button>(Resource.Id.adress_btn);
            photo_btn = FindViewById<Button>(Resource.Id.photo_btn);
            adress_tv = FindViewById<TextView>(Resource.Id.adress_tv);
            imageView = FindViewById<ImageView>(Resource.Id.photo_view);


            // Set OnClickListener for buttons
            income_btn.SetOnClickListener(this);
            expense_btn.SetOnClickListener(this);
            add_btn.SetOnClickListener(this);
            cancel_btn.SetOnClickListener(this);
            today_btn.SetOnClickListener(this);
            yesterday_btn.SetOnClickListener(this);
            custom_btn.SetOnClickListener(this);
            food_btn.SetOnClickListener(this);
            health_btn.SetOnClickListener(this);
            leisure_btn.SetOnClickListener(this);
            photo_btn.SetOnClickListener(this);
            setAdress_btn.SetOnClickListener(this);

            // Initialize the selectedDate with today's date by default
            selectedDate = DateTime.Now;
            selectedCategory = ""; // Initialize the selectedCategory as empty
            currentAddress = ""; // Initialize the currentAddress as empty
            is_positive.Text = "income";
        }

        public void OnClick(View v)
        {
            if (v == cancel_btn)
            {
                // Navigate back to MainScreenActivity
                Intent intent = new Intent(this, typeof(MainScreen_activity));
                StartActivity(intent);
            }
            else if (v == add_btn)
            {
                // Call method to create a new transfer
                CreateNewTransfer();
            }
            else if (v == income_btn)
            {
                // Set transfer type to income
                is_positive.Text = "income";
                Toast.MakeText(this, "Selected: Income", ToastLength.Short).Show();
            }
            else if (v == expense_btn)
            {
                // Set transfer type to expense
                is_positive.Text = "expense";
                Toast.MakeText(this, "Selected: Expense", ToastLength.Short).Show();
            }
            else if (v == today_btn)
            {
                // Set date to today
                selectedDate = DateTime.Today;
                Toast.MakeText(this, "Selected: Today", ToastLength.Short).Show();
            }
            else if (v == yesterday_btn)
            {
                // Set date to yesterday
                selectedDate = DateTime.Today.AddDays(-1);
                Toast.MakeText(this, "Selected: Yesterday", ToastLength.Short).Show();
            }
            else if (v == custom_btn)
            {
                // Handle custom date selection
                // This part requires implementation of a date picker dialog or similar logic
            }
            else if (v == leisure_btn)
            {
                // Set category to leisure
                selectedCategory = "Leisure";
                Toast.MakeText(this, "Selected: Leisure", ToastLength.Short).Show();
            }
            else if (v == food_btn)
            {
                // Set category to food
                selectedCategory = "Food";
                Toast.MakeText(this, "Selected: Food", ToastLength.Short).Show();
            }
            else if (v == health_btn)
            {
                // Set category to health
                selectedCategory = "Health";
                Toast.MakeText(this, "Selected: Health", ToastLength.Short).Show();
            }
            else if (v == setAdress_btn)
            {
                // Request location updates
                if (CheckSelfPermission(Manifest.Permission.AccessFineLocation) == Permission.Granted &&
                    CheckSelfPermission(Manifest.Permission.AccessCoarseLocation) == Permission.Granted)
                {
                    locationManager.RequestLocationUpdates(LocationManager.GpsProvider, 0, 0, locationListener);
                }
                else
                {
                    // Request location permissions if not granted
                    RequestPermissions(new string[] { Manifest.Permission.AccessFineLocation, Manifest.Permission.AccessCoarseLocation }, 0);
                }
            }
            else if (v == photo_btn)
            {
                // Show popup menu for taking a photo or choosing from gallery
                PopupMenu menu = new PopupMenu(this, v);
                menu.Inflate(Resource.Layout.photo_menu);
                menu.MenuItemClick += (sender, e) =>
                {
                    if (e.Item.ItemId == Resource.Id.action_take_photo)
                    {
                        TakePhoto();

                    }
                    else if (e.Item.ItemId == Resource.Id.action_choose_gallery)
                    {
                        ChooseFromGallery();

                    }
                };
                menu.Show();
            }
        }

        private void TakePhoto()
        {
            // Code to start the camera activity
            Intent takePictureIntent = new Intent(MediaStore.ActionImageCapture);
            if (takePictureIntent.ResolveActivity(PackageManager) != null)
            {
                StartActivityForResult(takePictureIntent, REQUEST_IMAGE_CAPTURE);
            }
        }

        private void ChooseFromGallery()
        {
            // Code to start the gallery activity
            Intent pickPhotoIntent = new Intent(Intent.ActionPick, MediaStore.Images.Media.ExternalContentUri);
            pickPhotoIntent.SetType("image/*");
            pickPhotoIntent.SetAction(Intent.ActionGetContent);
            StartActivityForResult(Intent.CreateChooser(pickPhotoIntent, "Select Picture"), REQUEST_GALLERY_IMAGE);
        }

        protected override void OnActivityResult(int requestCode, Result resultCode, Intent data)
        {
            base.OnActivityResult(requestCode, resultCode, data);


            if (resultCode == Result.Ok)
            {
                if (requestCode == REQUEST_IMAGE_CAPTURE)
                {
                    // Check if the captured image data is available
                    if (data != null && data.Extras != null && data.HasExtra("data"))
                    {
                        // Retrieve the captured image bitmap
                        Bitmap imageBitmap = (Bitmap)data.Extras.Get("data");

                        // Save the captured image to a file
                        string imagePath = SaveImageToFile(imageBitmap);

                        // Display the saved image
                        if (!string.IsNullOrEmpty(imagePath))
                        {
                            imageView.SetImageURI(Android.Net.Uri.Parse(imagePath));
                            capturedImageData = File.ReadAllBytes(imagePath); // Save image data if needed
                        }
                        else
                        {
                            // Handle error while saving the image
                            Toast.MakeText(this, "Failed to save image", ToastLength.Short).Show();
                        }
                    }
                    else
                    {
                        // Handle the case where no image data is available
                        Toast.MakeText(this, "No image data available", ToastLength.Short).Show();
                    }
                }
                else if (requestCode == REQUEST_GALLERY_IMAGE && resultCode == Result.Ok && data != null)
                {
                    selectedImageUri = data.Data;
                    imageView.SetImageURI(selectedImageUri);
                }
            }
        }

        private string SaveImageToFile(Bitmap imageBitmap)
        {
            // Create a directory for the images if it doesn't exist
            string directory = Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryPictures) + "/YourAppName";
            if (!Directory.Exists(directory))
            {
                Directory.CreateDirectory(directory);
            }

            // Create a unique file name for the image
            string fileName = $"IMG_{DateTime.Now.ToString("yyyyMMdd_HHmmss")}.jpg";
            string filePath = System.IO.Path.Combine(directory, fileName);

            // Save the bitmap to the file
            using (var stream = new FileStream(filePath, FileMode.Create))
            {
                imageBitmap.Compress(Bitmap.CompressFormat.Jpeg, 100, stream);
            }

            return filePath;
        }

        private void CreateNewTransfer()
        {
            // Retrieve the user ID from the intent
            int userId = Intent.GetIntExtra("LoggedInUserId", -1);
            bool isPositive = is_positive.Text == "income"; // Determine if it's income or expense

            // Ensure userId is valid
            if (userId == -1)
            {
                Toast.MakeText(this, "User ID not found. Please log in again.", ToastLength.Long).Show();
                return;
            }

            // Get the amount and comment from the EditText fields
            string amountText = transaction_amount.Text;
            string commentText = comment.Text;

            // Ensure the amount is valid
            if (string.IsNullOrEmpty(amountText) || !int.TryParse(amountText, out int amount))
            {
                Toast.MakeText(this, "Please enter a valid amount.", ToastLength.Long).Show();
                return;
            }

            // Check if the category is selected
            if (string.IsNullOrEmpty(selectedCategory))
            {
                Toast.MakeText(this, "Please select a category.", ToastLength.Long).Show();
                return;
            }

            // Create a new transfer
            Transfer newTransfer = new Transfer
            {
                Amount = amount,
                Comment = commentText,
                Date = selectedDate.Date,
                UserId = userId,
                IsPositive = isPositive,
                Category = selectedCategory, // Set the category string i
                ImageUri = selectedImageUri != null ? selectedImageUri.ToString() : "", // Pass the image URI or an emptyf no image is selected
                Address = currentAddress // Set the address
            };

            // Insert the new transfer into the database
            SqlData db = new SqlData("expenso.db");
            db.InsertTransfer(newTransfer);

            // Display a confirmation message
            Toast.MakeText(this, "Transfer added successfully!", ToastLength.Short).Show();

            if (capturedImageData != null)
            {
                string directory = Android.OS.Environment.GetExternalStoragePublicDirectory(Android.OS.Environment.DirectoryPictures) + "/YourAppName";
                if (!Directory.Exists(directory))
                {
                    Directory.CreateDirectory(directory);
                }

                // Create a unique file name for the image
                string fileName = $"IMG_{DateTime.Now.ToString("yyyyMMdd_HHmmss")}.jpg";
                string filePath = System.IO.Path.Combine(directory, fileName);

                // Save the image to the file
                File.WriteAllBytes(filePath, capturedImageData);

                // Update the transfer with the image file path
                newTransfer.ImageUri = filePath;
                db.UpdateTransfer(newTransfer);
            }

            // Navigate back to MainScreenActivity
            Intent intent = new Intent(this, typeof(MainScreen_activity));
            StartActivity(intent);
        }
        private class MyLocationListener : Java.Lang.Object, ILocationListener
        {
            private readonly AddTransaction_activity parent;

            public MyLocationListener(AddTransaction_activity parent)
            {
                this.parent = parent;
            }

            public async void OnLocationChanged(Location location)
            {
                // Retrieve the address from the location asynchronously
                Geocoder geocoder = new Geocoder(parent);
                IList<Address> addresses = await geocoder.GetFromLocationAsync(location.Latitude, location.Longitude, 1);

                // Check if address is available
                if (addresses != null && addresses.Count > 0)
                {
                    // Get the first address
                    Address address = addresses[0];

                    // Construct the address string
                    string addressString = address.GetAddressLine(0);

                    // Store the address in the currentAddress variable
                    parent.currentAddress = addressString;

                    // Update the TextView with the address
                    parent.adress_tv.Text = addressString;
                }
            }


            public void OnProviderDisabled(string provider) { }

            public void OnProviderEnabled(string provider) { }

            public void OnStatusChanged(string provider, [GeneratedEnum] Availability status, Bundle extras) { }
        }

        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, Permission[] grantResults)
        {
            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            if (requestCode == 0)
            {
                if (grantResults.Length > 0 && grantResults[0] == Permission.Granted)
                {
                    // Permission granted, start getting location updates
                    locationManager.RequestLocationUpdates(LocationManager.GpsProvider, 0, 0, locationListener);
                }
                else
                {
                    // Permission denied
                    Toast.MakeText(this, "Location permission is required to get the address.", ToastLength.Long).Show();
                }
            }
        }
    }
}
