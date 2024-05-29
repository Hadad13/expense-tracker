using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace expenso
{
    [Activity(Label = "Activity1")]
    public class SignIn : Activity, View.IOnClickListener
    {
        private TextView title, register;
        private EditText email, password;
        private Button logInBtn;
        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            title.FindViewById<TextView>(Resource.Id.title_logIn);
            register.FindViewById<TextView>(Resource.Id.register_logIn);

            email.FindViewById<EditText>(Resource.Id.email_logIn);
            password.FindViewById<EditText>(Resource.Id.password_logIn);

            logInBtn.FindViewById<Button>(Resource.Id.btn_logIn);

            logInBtn.SetOnClickListener(this);


        }

        public void OnClick(View v)
        {

        }
    }
}