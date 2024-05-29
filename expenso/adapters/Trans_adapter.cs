using Android.App;
using Android.Content;
using Android.Views;
using Android.Widget;
using System.Collections.Generic;


namespace expenso
{
    public class Trans_adapter : BaseAdapter<Transfer>
    {
        private readonly Context context;
        private readonly List<Transfer> list_trans; // Changed from Transactions to Transfer

        public Trans_adapter(Context context, List<Transfer> list) // Changed from Transactions to Transfer
        {
            this.context = context;
            this.list_trans = list;
        }

        public override int Count => list_trans.Count;

        public override long GetItemId(int position) => position;

        public override Transfer this[int position] => list_trans[position]; // Changed from Transactions to Transfer

        public override View GetView(int position, View convertView, ViewGroup parent)
        {
            if (convertView == null)
            {
                convertView = LayoutInflater.From(context).Inflate(Resource.Layout.transaction_row, parent, false);
            }

            var tvComment = convertView.FindViewById<TextView>(Resource.Id.tvComment);
            var tvAmount = convertView.FindViewById<TextView>(Resource.Id.tvAmount);
            var tvDate = convertView.FindViewById<TextView>(Resource.Id.tvDate);

            var transfer = list_trans[position]; // Changed from transaction to transfer
            tvComment.Text = transfer.Comment;
            tvAmount.Text = transfer.Amount.ToString();
            tvDate.Text = transfer.Date.ToString();

            return convertView;
        }
    }
}
