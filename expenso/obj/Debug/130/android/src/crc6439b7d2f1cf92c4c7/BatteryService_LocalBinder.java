package crc6439b7d2f1cf92c4c7;


public class BatteryService_LocalBinder
	extends android.os.Binder
	implements
		mono.android.IGCUserPeer
{
/** @hide */
	public static final String __md_methods;
	static {
		__md_methods = 
			"";
		mono.android.Runtime.register ("expenso.BatteryService+LocalBinder, expenso", BatteryService_LocalBinder.class, __md_methods);
	}


	public BatteryService_LocalBinder ()
	{
		super ();
		if (getClass () == BatteryService_LocalBinder.class) {
			mono.android.TypeManager.Activate ("expenso.BatteryService+LocalBinder, expenso", "", this, new java.lang.Object[] {  });
		}
	}


	public BatteryService_LocalBinder (java.lang.String p0)
	{
		super (p0);
		if (getClass () == BatteryService_LocalBinder.class) {
			mono.android.TypeManager.Activate ("expenso.BatteryService+LocalBinder, expenso", "System.String, mscorlib", this, new java.lang.Object[] { p0 });
		}
	}

	public BatteryService_LocalBinder (crc6439b7d2f1cf92c4c7.BatteryService p0)
	{
		super ();
		if (getClass () == BatteryService_LocalBinder.class) {
			mono.android.TypeManager.Activate ("expenso.BatteryService+LocalBinder, expenso", "expenso.BatteryService, expenso", this, new java.lang.Object[] { p0 });
		}
	}

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
