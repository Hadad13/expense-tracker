using Android.App;
using Android.Content;
using Android.Views;
using Android.Widget;
using expenso;
using System.Collections.Generic;


public class Trans_adapter : BaseAdapter<Transfer>
{
    private readonly Context context;
    private readonly List<Transfer> list_trans;

    public Trans_adapter(Context context, List<Transfer> list)
    {
        this.context = context;
        this.list_trans = list ?? new List<Transfer>(); // Ensure list_trans is never null
    }

    public override int Count => list_trans.Count;

    public override long GetItemId(int position) => position;

    public override Transfer this[int position] => list_trans[position];

    public override View GetView(int position, View convertView, ViewGroup parent)
    {
        if (convertView == null)
        {
            convertView = LayoutInflater.From(context).Inflate(Resource.Layout.transaction_row, parent, false);
        }

        var tvComment = convertView.FindViewById<TextView>(Resource.Id.tvComment);
        var tvAmount = convertView.FindViewById<TextView>(Resource.Id.tvAmount);
        var tvDate = convertView.FindViewById<TextView>(Resource.Id.tvDate);
        var tvAdress = convertView.FindViewById<TextView>(Resource.Id.tvAdress);


        var transfer = list_trans[position];
        tvAdress.Text = transfer.Address;
        tvComment.Text = transfer.Comment;
        tvAmount.Text = transfer.Amount.ToString() + "$";
        string formattedDate = transfer.Date.ToString("yyyy-MM-dd"); // Adjust the format as needed
        tvDate.Text = formattedDate;
        return convertView;
    }
}
