using Android.App;
using Android.Content;
using Android.OS;
using Android.Views;
using Android.Widget;
using AndroidX.Annotations;
using System;

namespace expenso
{
    [Activity(Label = "AddTransaction")]
    public class AddTransaction_activity : Activity, View.IOnClickListener
    {
        private Button income_btn, expense_btn, add_btn, cancel_btn, today_btn, yesterday_btn, custom_btn;
        private EditText transaction_amount, comment;
        private Button leisure_btn, food_btn, health_btn;
        private bool is_positive; // Flag to determine if the transfer is positive (income) or negative (expense)
        private DateTime selectedDate; // To store the selected date
        private string selectedCategory; // To store the selected category

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.add_transaction); // Replace with your layout file

            // Initialize buttons, edit texts, and arrays
            income_btn = FindViewById<Button>(Resource.Id.income_btn2);
            expense_btn = FindViewById<Button>(Resource.Id.expense_btn2);
            add_btn = FindViewById<Button>(Resource.Id.add_btn);
            cancel_btn = FindViewById<Button>(Resource.Id.cancel_btn);
            transaction_amount = FindViewById<EditText>(Resource.Id.transaction_amount);
            comment = FindViewById<EditText>(Resource.Id.comment);
           
            today_btn = FindViewById<Button>(Resource.Id.today_btn);
            yesterday_btn = FindViewById<Button>(Resource.Id.yesterday_btn);
            custom_btn = FindViewById<Button>(Resource.Id.custom_btn);
            leisure_btn = FindViewById<Button>(Resource.Id.leisure_btn);
            food_btn = FindViewById<Button>(Resource.Id.food_btn);
            health_btn = FindViewById<Button>(Resource.Id.health_btn);

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

            // Initialize the selectedDate with today's date by default
            // Initialize the selectedDate with today's date by default
            selectedDate = DateTime.Now;
            selectedCategory = ""; // Initialize the selectedCategory as empty
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
                is_positive = true;
                Toast.MakeText(this, "Selected: Income", ToastLength.Short).Show();
            }
            else if (v == expense_btn)
            {
                // Set transfer type to expense
                is_positive = false;
                Toast.MakeText(this, "Selected: Expense", ToastLength.Short).Show();
            }
            else if (v == today_btn)
            {
                // Set date to today
                selectedDate = DateTime.Now;
                Toast.MakeText(this, "Selected: Today", ToastLength.Short).Show();
            }
            else if (v == yesterday_btn)
            {
                // Set date to yesterday
                selectedDate = DateTime.Now.AddDays(-1);
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
        }


        private void CreateNewTransfer()
        {
            // Retrieve the user ID from the intent
            int userId = Intent.GetIntExtra("LoggedInUserId", -1);

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

            // Check if the income/expense type is selected
            if ( income_btn.Pressed || expense_btn.Pressed)
            {
                Toast.MakeText(this, "Please select income or expense.", ToastLength.Long).Show();
                return;
            }

            // Create a new transfer
            Transfer newTransfer = new Transfer
            {
                Amount = amount,
                Comment = commentText,
                Date = selectedDate,
                UserId = userId,
                IsPositive = is_positive,
                Category = selectedCategory // Set the category
            };

            // Insert the new transfer into the database
            SqlData db = new SqlData("expenso.db");
            db.InsertTransfer(newTransfer);

            // Display a confirmation message
            Toast.MakeText(this, "Transfer added successfully!", ToastLength.Short).Show();

            // Navigate back to MainScreenActivity
            Intent intent = new Intent(this, typeof(MainScreen_activity));
            StartActivity(intent);
        }


    }
}
