using Android.App;
using Android.Content;
using Android.OS;
using Android.Views;
using Android.Widget;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using Microcharts;
using Microcharts.Droid;
using SkiaSharp;

namespace expenso
{
    [Activity(Label = "MainScreenActivity")]
    public class MainScreen_activity : Activity, View.IOnClickListener
    {
        private Button income_btn, expense_btn, day_btn, month_btn, week_btn;
        private Button leftArrow_btn, rightArrow_btn, add_btn, clear_btn;
        private TextView user_id;
        private Button print;
        private TextView header, total_tv, date_tv, total_of_time;
        private ListView transactions_lv;
        private ChartView pie_chart;

        private List<Transfer> allTransfers; // To store all transfers
        private int totalAmount; // To store the total amount
        private bool showIncome = true; // To track income button state
        private bool showExpense = true; // To track expense button state

        // Define a dictionary for category colors
        private readonly Dictionary<string, string> categoryColors = new Dictionary<string, string>
        {
            { "Health", "#FF0000" },   // Red
            { "Leisure", "#0000FF" },  // Blue
            { "Food", "#FFFF00" }      // Yellow
            // Add more categories and colors as needed
        };

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            SetContentView(Resource.Layout.main_screen);

            pie_chart = FindViewById<ChartView>(Resource.Id.pie_chart);
            total_of_time = FindViewById<TextView>(Resource.Id.total_of_time);
            income_btn = FindViewById<Button>(Resource.Id.income_btn);
            expense_btn = FindViewById<Button>(Resource.Id.expense_btn);
            day_btn = FindViewById<Button>(Resource.Id.day_btn);
            month_btn = FindViewById<Button>(Resource.Id.month_btn);
            week_btn = FindViewById<Button>(Resource.Id.week_btn);
            leftArrow_btn = FindViewById<Button>(Resource.Id.left_arrow);
            rightArrow_btn = FindViewById<Button>(Resource.Id.right_arrow);
            add_btn = FindViewById<Button>(Resource.Id.add_btn);
            header = FindViewById<TextView>(Resource.Id.header);
            total_tv = FindViewById<TextView>(Resource.Id.total);
            date_tv = FindViewById<TextView>(Resource.Id.date);
            transactions_lv = FindViewById<ListView>(Resource.Id.transactions);
            print = FindViewById<Button>(Resource.Id.print_user_id);
            user_id = FindViewById<TextView>(Resource.Id.user_id);

            clear_btn = new Button(this);
            clear_btn.Text = "Clear Database";

            income_btn.SetOnClickListener(this);
            expense_btn.SetOnClickListener(this);
            day_btn.SetOnClickListener(this);
            month_btn.SetOnClickListener(this);
            week_btn.SetOnClickListener(this);
            leftArrow_btn.SetOnClickListener(this);
            rightArrow_btn.SetOnClickListener(this);
            add_btn.SetOnClickListener(this);
            print.SetOnClickListener(this);
            clear_btn.SetOnClickListener(this);

            // Load all transfers and calculate total
            LoadAllTransfers();
            // Display categories by default
            DisplayCategories();

            // Set initial date display
            DisplayCurrentDate();

            DrawChart();
        }


        protected override void OnResume()
        {
            base.OnResume();
            // Reload all transfers and display categories by default
            LoadAllTransfers();
            DisplayCategories();
            DrawChart() ;
        }
        public void DrawChart()
        {
            // Get the list of categories for the current time span
            var categories = GetVisibleCategoriesFromListView();

            // Calculate total amount of the time span
            int totalAmountForTimeSpan = CalculateTotalAmountForTimeSpanGraph(categories);

            // Check if the total amount is greater than zero or if there are no categories to avoid division by zero
            if (totalAmountForTimeSpan == 0 || categories.Count == 0)
            {
                // Handle the case where total amount is zero or no categories
                total_of_time.Text = GetNoTransactionsMessage();
                pie_chart.Chart = new DonutChart() // Display an empty chart
                {
                    Entries = new List<ChartEntry>(),
                    HoleRadius = 0.5f // Adjust the hole radius to make it a donut shape
                };
                return;
            }

            total_of_time.Text = totalAmountForTimeSpan.ToString();

            // Create entries for the chart
            var entries = new List<ChartEntry>();
            foreach (var category in categories)
            {
                // Calculate percentage for each category
                float percentage = (float)category.TotalAmount / totalAmountForTimeSpan * 100;

                // Add entry for the category
                entries.Add(new ChartEntry(percentage)
                {
                    Label = category.Name,
                    ValueLabel = $"{percentage:0.00}%",
                    Color = SKColor.Parse(GetCategoryColor(category.Name)) // Use the dictionary to get the color
                });
            }

            // Create a donut chart
            var chart = new DonutChart()
            {
                Entries = entries,
                HoleRadius = 0.5f // Adjust the hole radius to make it a donut shape
            };

            // Display the chart using Microcharts library
            pie_chart.Chart = chart;
        }

        private string GetNoTransactionsMessage()
        {
            if (day_btn.Pressed)
            {
                return "No transactions this day";
            }
            else if (week_btn.Pressed)
            {
                return "No transactions this week";
            }
            else if (month_btn.Pressed)
            {
                return "No transactions this month";
            }
            else
            {
                return "No transactions in the selected period";
            }
        }


        public int CalculateTotalAmountForTimeSpanGraph(List<Category> categories)
        {
            // Calculate the total amount for the visible categories
            int totalAmount = 0;
            foreach (var category in categories)
            {
                totalAmount += category.TotalAmount;
            }
            return totalAmount;
        }

        public List<Category> GetVisibleCategoriesFromListView()
        {
            var filteredTransfers = allTransfers.Where(t =>
                (showIncome && t.IsPositive) ||
                (showExpense && !t.IsPositive))
                .Where(t => IsTransferInCurrentTimePeriod(t))
                .ToList();

            var categories = filteredTransfers
                .GroupBy(t => t.Category)
                .Select(g => new Category
                {
                    Name = g.Key,
                    TotalAmount = g.Sum(t => t.Amount), // Ensure to sum up the amounts here
                    Transfers = g.ToList()
                })
                .ToList();

            return categories;
        }

        public string GetCategoryColor(string categoryName)
        {
            // Get the color from the dictionary or return a default color if not found
            if (categoryColors.TryGetValue(categoryName, out var color))
            {
                return color;
            }
            else
            {
                return "#CCCCCC"; // Default color if category not found in the dictionary
            }
        }

        public void OnClick(View v)
        {
            if (v == add_btn)
            {
                // Navigate to AddTransactionActivity
                Intent intent = new Intent(this, typeof(AddTransaction_activity));
                intent.PutExtra("LoggedInUserId", GetLoggedInUserId());
                StartActivity(intent);
            }
            else if (v == print)
            {
                this.user_id.Text = GetLoggedInUserId().ToString();
                this.user_id.SetTextSize(Android.Util.ComplexUnitType.Sp, 14);
            }
            else if (v == income_btn)
            {
                showIncome = true; // Toggle income button state
                showExpense = false;
                income_btn.Pressed = showIncome; // Set button state
                DisplayCategories(); // Update displayed categories
                DrawChart();
            }
            else if (v == expense_btn)
            {
                showExpense = true; // Toggle expense button state
                showIncome = false;
                expense_btn.Pressed = showExpense; // Set button state
                DisplayCategories(); // Update displayed categories
                DrawChart();
            }
            else if (v == day_btn)
            {
                DisplayCurrentDate();
                DisplayCurrentDayTransactions();
                DrawChart();
            }
            else if (v == week_btn)
            {
                DisplayCurrentWeek();
                DisplayCurrentWeekTransactions();
                DrawChart();
            }
            else if (v == month_btn)
            {
                DisplayCurrentMonth();
                DisplayCurrentMonthTransactions();
                DrawChart();
            }
            else if (v == clear_btn)
            {
                ClearDatabase();
            }
            else if (v == leftArrow_btn)
            {
                // Move to the previous time span
                MoveToPreviousTimeSpan();
                DrawChart();
            }
            else if (v == rightArrow_btn)
            {
                // Move to the next time span
                MoveToNextTimeSpan();
                DrawChart();
            }
        }


        private void MoveToPreviousTimeSpan()
        {
            // Move to the previous time span
            UpdateDateAndTransactions(-1);
            // Update displayed categories based on the new date
            DisplayCategories();
        }

        private void MoveToNextTimeSpan()
        {
            // Move to the next time span
            UpdateDateAndTransactions(1);
            // Update displayed categories based on the new date
            DisplayCategories();
        }

        private void UpdateDateAndTransactions(int increment)
        {
            DateTime newDate;
            if (date_tv.Text.Contains("-")) // If it's a week view
            {
                newDate = DateTime.ParseExact(date_tv.Text.Split('-')[0].Trim(), "dd.MM", CultureInfo.InvariantCulture).AddDays(7 * increment);
                date_tv.Text = $"{newDate:dd.MM} - {newDate.AddDays(6):dd.MM}";
            }
            else if (date_tv.Text.Contains(" ")) // If it's a month view
            {
                newDate = DateTime.ParseExact(date_tv.Text, "MMMM yyyy", CultureInfo.InvariantCulture).AddMonths(increment);
                date_tv.Text = newDate.ToString("MMMM yyyy", CultureInfo.InvariantCulture);
            }
            else // If it's a day view
            {
                newDate = DateTime.ParseExact(date_tv.Text, "dd.MM.yyyy", CultureInfo.InvariantCulture).AddDays(increment);
                date_tv.Text = newDate.ToString("dd.MM.yyyy", CultureInfo.InvariantCulture);
            }
        }

        private void LoadAllTransfers()
        {
            SqlData db = new SqlData("expenso.db");
            int loggedInUserId = GetLoggedInUserId();

            // Get all transfers for the logged-in user
            allTransfers = db.GetTransfers(loggedInUserId);

            // Calculate the total amount (add incomes, subtract expenses)
            totalAmount = CalculateTotalAmount(allTransfers);
            total_tv.Text = totalAmount.ToString();
        }

        private int CalculateTotalAmount(List<Transfer> transfers)
        {
            int total = 0;
            foreach (var transfer in transfers)
            {
                if (transfer.IsPositive)
                {
                    total += transfer.Amount; // Add income
                }
                else
                {
                    total -= transfer.Amount; // Subtract expense
                }
            }
            return total;
        }

        private void DisplayCategories()
        {


            if(showIncome)
            {
                var filteredTransfers = allTransfers.Where(t =>
              t.IsPositive)
              .Where(t => IsTransferInCurrentTimePeriod(t))
              .ToList();

                var categories = filteredTransfers
                    .GroupBy(t => t.Category)
                    .Select(g => new Category
                    {
                        Name = g.Key,
                        Transfers = g.ToList()
                    })
                    .ToList();
                CategoryAdapter adapter = new CategoryAdapter(this, categories, this.total_of_time);
                transactions_lv.Adapter = adapter;
            }

            else
            {
                var filteredTransfers = allTransfers.Where(t =>
              !t.IsPositive)
              .Where(t => IsTransferInCurrentTimePeriod(t))
              .ToList();

                var categories = filteredTransfers
                    .GroupBy(t => t.Category)
                    .Select(g => new Category
                    {
                        Name = g.Key,
                        Transfers = g.ToList()
                    })
                    .ToList();
                CategoryAdapter adapter = new CategoryAdapter(this, categories, this.total_of_time);
                transactions_lv.Adapter = adapter;
            }
          

            // Set up the adapter and bind it to the ListView
            
        }

        private bool IsTransferInCurrentTimePeriod(Transfer transfer)
        {
            DateTime transferDate = transfer.Date.Date;

            if (date_tv.Text.Contains("-")) // If it's a week view
            {
                var dateRange = date_tv.Text.Split('-');
                if (dateRange.Length == 2)
                {
                    try
                    {
                        var startOfWeek = DateTime.ParseExact(dateRange[0].Trim(), "dd.MM", CultureInfo.InvariantCulture);
                        var endOfWeek = DateTime.ParseExact(dateRange[1].Trim(), "dd.MM", CultureInfo.InvariantCulture);

                        // Adjust start and end dates to include the year from the transfer date for accurate comparison
                        startOfWeek = new DateTime(transferDate.Year, startOfWeek.Month, startOfWeek.Day);
                        endOfWeek = new DateTime(transferDate.Year, endOfWeek.Month, endOfWeek.Day);

                        // Ensure the endOfWeek is correctly set for cases where the year might wrap around
                        if (endOfWeek < startOfWeek)
                        {
                            endOfWeek = endOfWeek.AddYears(1);
                        }

                        return transferDate >= startOfWeek && transferDate <= endOfWeek;
                    }
                    catch (FormatException)
                    {
                        return false; // or handle the parsing error as needed
                    }
                }
            }
            else if (date_tv.Text.Contains(" ")) // If it's a month view
            {
                try
                {
                    var dateTime = DateTime.ParseExact(date_tv.Text, "MMMM yyyy", CultureInfo.InvariantCulture);
                    var currentMonth = dateTime.Month;
                    var currentYear = dateTime.Year;

                    return transferDate.Month == currentMonth && transferDate.Year == currentYear;
                }
                catch (FormatException)
                {
                    return false; // or handle the parsing error as needed
                }
            }
            else // If it's a day view
            {
                try
                {
                    var today = DateTime.ParseExact(date_tv.Text, "dd.MM.yyyy", CultureInfo.InvariantCulture);
                    return transferDate == today;
                }
                catch (FormatException)
                {
                    return false; // or handle the parsing error as needed
                }
            }

            return false;
        }

        private int GetLoggedInUserId()
        {
            // Get the SharedPreferences instance
            ISharedPreferences sharedPreferences = GetSharedPreferences("MyPrefs", FileCreationMode.Private);

            // Retrieve the logged-in user ID, defaulting to -1 if not found
            return sharedPreferences.GetInt("LoggedInUserId", -1);
        }

        private void ClearDatabase()
        {
            SqlData db = new SqlData("expenso.db");
            db.ClearDatabase();
            Toast.MakeText(this, "Database cleared!", ToastLength.Short).Show();

            // Refresh the view
            LoadAllTransfers();
            DisplayCategories();
        }

        private void DisplayCurrentDate()
        {
            var currentDate = DateTime.Now.ToString("dd.MM.yyyy");
            date_tv.Text = currentDate;
        }

        private void DisplayCurrentWeek()
        {
            var startOfWeek = DateTime.Now.AddDays(-(int)DateTime.Now.DayOfWeek);
            var endOfWeek = startOfWeek.AddDays(6);
            date_tv.Text = $"{startOfWeek:dd.MM} - {endOfWeek:dd.MM}";
        }

        private void DisplayCurrentMonth()
        {
            var currentMonth = DateTime.Now.ToString("MMMM yyyy", CultureInfo.InvariantCulture);
            date_tv.Text = currentMonth;
        }

        private void DisplayCurrentDayTransactions()
        {
            var today = DateTime.Today;
            var dayTransfers = allTransfers.Where(t => t.Date.Date == today &&
                                                      ((showIncome && t.IsPositive) ||
                                                       (showExpense && !t.IsPositive))).ToList();
            DisplayCategories();
        }

        private void DisplayCurrentWeekTransactions()
        {
            var startOfWeek = DateTime.Now.AddDays(-(int)DateTime.Now.DayOfWeek);
            var endOfWeek = startOfWeek.AddDays(6);
            var weekTransfers = allTransfers.Where(t => t.Date.Date >= startOfWeek.Date &&
                                                        t.Date.Date <= endOfWeek.Date &&
                                                        ((showIncome && t.IsPositive) ||
                                                         (showExpense && !t.IsPositive))).ToList();
            DisplayCategories();

        }

        private void DisplayCurrentMonthTransactions()
        {
            var currentMonth = DateTime.Now.Month;
            var currentYear = DateTime.Now.Year;
            var monthTransfers = allTransfers.Where(t => t.Date.Month == currentMonth &&
                                                         t.Date.Year == currentYear &&
                                                         ((showIncome && t.IsPositive) ||
                                                          (showExpense && !t.IsPositive))).ToList();
            DisplayCategories();

        }



    }
}
