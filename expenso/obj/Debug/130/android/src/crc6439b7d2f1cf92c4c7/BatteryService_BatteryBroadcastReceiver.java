package crc6439b7d2f1cf92c4c7;


public class BatteryService_BatteryBroadcastReceiver
	extends android.content.BroadcastReceiver
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"n_onReceive:(Landroid/content/Context;Landroid/content/Intent;)V:GetOnReceive_Landroid_content_Context_Landroid_content_Intent_Handler\n" +
			"";
		mono.android.Runtime.register ("expenso.BatteryService+BatteryBroadcastReceiver, expenso", BatteryService_BatteryBroadcastReceiver.class, __md_methods);
	}


	public BatteryService_BatteryBroadcastReceiver ()
	{
		super ();
		if (getClass () == BatteryService_BatteryBroadcastReceiver.class) {
			mono.android.TypeManager.Activate ("expenso.BatteryService+BatteryBroadcastReceiver, expenso", "", this, new java.lang.Object[] {  });
		}
	}


	public void onReceive (android.content.Context p0, android.content.Intent p1)
	{
		n_onReceive (p0, p1);
	}

	private native void n_onReceive (android.content.Context p0, android.content.Intent p1);

	private java.util.ArrayList refList;
	public void monodroidAddReference (java.lang.Object obj)
	{
		if (refList == null)
			refList = new java.util.ArrayList ();
		refList.add (obj);
	}

	public void monodroidClearReferences ()
	{
		if (refList != null)
			refList.clear ();
	}
}
