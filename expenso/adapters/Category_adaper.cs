using Android.Content;
using Android.Views;
using Android.Widget;
using System;
using System.Collections.Generic;
using System.Linq;
using Newtonsoft.Json;
namespace expenso
{
    public class Category
    {
        public string Name { get; set; }
        public List<Transfer> Transfers { get; set; } // Assuming Transfer is the class representing transfers
        public int TotalAmount { get; set; }
        public double Percentage { get; set; }
    }

    public class CategoryAdapter : BaseAdapter<Category>
    {
        private readonly Context context;
        private readonly List<Category> categories;
        private readonly TextView total_tv;

        public CategoryAdapter(Context context, List<Category> categories, TextView total_tv)
        {
            this.context = context;
            this.categories = categories ?? new List<Category>();
            this.total_tv = total_tv;

            // Calculate the total amounts for each category
            CalculateTotalAmounts();
        }

        public override Category this[int position] => categories[position];

        public override int Count => categories.Count;

        public override long GetItemId(int position) => position;

        public override View GetView(int position, View convertView, ViewGroup parent)
        {
            var view = convertView ?? LayoutInflater.From(context).Inflate(Resource.Layout.category_row, parent, false);

            var categoryName = view.FindViewById<TextView>(Resource.Id.category_name);
            var categoryTotal = view.FindViewById<TextView>(Resource.Id.category_total);
            var categoryPercentage = view.FindViewById<TextView>(Resource.Id.category_percentage);

            var category = categories[position];

            categoryName.Text = category.Name;
            categoryTotal.Text = $" {category.TotalAmount}";

            // Calculate the percentage as a floating-point number
            double totalAmount = double.Parse(total_tv.Text);
            category.Percentage = (category.TotalAmount / totalAmount) * 100;

            // Format the percentage to show up to 2 decimal places
            categoryPercentage.Text = $"{category.Percentage:F2}%";

            view.Click += (sender, e) =>
            {
                var intent = new Intent(context, typeof(CategoryView_activity));
                var transfersJson = JsonConvert.SerializeObject(category.Transfers);
                intent.PutExtra("transfers", transfersJson);
                context.StartActivity(intent);
            };

            return view;
        }

        private void CalculateTotalAmounts()
        {
            if (categories == null)
            {
                throw new InvalidOperationException("Categories list is not initialized.");
            }

            foreach (var category in categories)
            {
                if (category.Transfers == null)
                {
                    category.TotalAmount += 0;
                }
                else
                {
                    category.TotalAmount = category.Transfers.Sum(t => t.Amount);
                }
            }
        }
    }
}
