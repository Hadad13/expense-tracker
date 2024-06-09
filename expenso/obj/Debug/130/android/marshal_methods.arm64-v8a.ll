; ModuleID = 'obj\Debug\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [208 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 50
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 7
	i64 181099460066822533, ; 2: Microcharts.Droid.dll => 0x28364ffda4c4985 => 6
	i64 210515253464952879, ; 3: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 37
	i64 232391251801502327, ; 4: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 69
	i64 233177144301842968, ; 5: Xamarin.AndroidX.Collection.Jvm.dll => 0x33c696097d9f218 => 38
	i64 316157742385208084, ; 6: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 43
	i64 435170709725415398, ; 7: Xamarin.GooglePlayServices.Location => 0x60a097471d687e6 => 84
	i64 634308326490598313, ; 8: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 59
	i64 687654259221141486, ; 9: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 82
	i64 702024105029695270, ; 10: System.Drawing.Common => 0x9be17343c0e7726 => 95
	i64 870603111519317375, ; 11: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 15
	i64 872800313462103108, ; 12: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 49
	i64 940822596282819491, ; 13: System.Transactions => 0xd0e792aa81923a3 => 93
	i64 1000557547492888992, ; 14: Mono.Security.dll => 0xde2b1c9cba651a0 => 103
	i64 1120440138749646132, ; 15: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 79
	i64 1301485588176585670, ; 16: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 14
	i64 1315114680217950157, ; 17: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 33
	i64 1416135423712704079, ; 18: Microcharts => 0x13a71faa343e364f => 5
	i64 1425944114962822056, ; 19: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 99
	i64 1518315023656898250, ; 20: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 16
	i64 1624659445732251991, ; 21: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 31
	i64 1628611045998245443, ; 22: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 61
	i64 1636321030536304333, ; 23: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 55
	i64 1731380447121279447, ; 24: Newtonsoft.Json => 0x18071957e9b889d7 => 9
	i64 1743969030606105336, ; 25: System.Memory.dll => 0x1833d297e88f2af8 => 20
	i64 1795316252682057001, ; 26: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 32
	i64 1836611346387731153, ; 27: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 69
	i64 1875917498431009007, ; 28: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 28
	i64 1981742497975770890, ; 29: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 60
	i64 2133195048986300728, ; 30: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 9
	i64 2136356949452311481, ; 31: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 64
	i64 2165725771938924357, ; 32: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 35
	i64 2203565783020068373, ; 33: Xamarin.KotlinX.Coroutines.Core => 0x1e94a367981dde15 => 89
	i64 2262844636196693701, ; 34: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 49
	i64 2284400282711631002, ; 35: System.Web.Services => 0x1fb3d1f42fd4249a => 101
	i64 2304837677853103545, ; 36: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 68
	i64 2329709569556905518, ; 37: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 57
	i64 2337758774805907496, ; 38: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 24
	i64 2470498323731680442, ; 39: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 42
	i64 2479423007379663237, ; 40: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 73
	i64 2497223385847772520, ; 41: System.Runtime => 0x22a7eb7046413568 => 25
	i64 2547086958574651984, ; 42: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 27
	i64 2592350477072141967, ; 43: System.Xml.dll => 0x23f9e10627330e8f => 26
	i64 2624866290265602282, ; 44: mscorlib.dll => 0x246d65fbde2db8ea => 8
	i64 2783046991838674048, ; 45: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 24
	i64 2787234703088983483, ; 46: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 70
	i64 3017704767998173186, ; 47: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 79
	i64 3122911337338800527, ; 48: Microcharts.dll => 0x2b56cf50bf1e898f => 5
	i64 3289520064315143713, ; 49: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 56
	i64 3303437397778967116, ; 50: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 29
	i64 3311221304742556517, ; 51: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 23
	i64 3344514922410554693, ; 52: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 90
	i64 3411255996856937470, ; 53: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 83
	i64 3493805808809882663, ; 54: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 71
	i64 3531994851595924923, ; 55: System.Numerics => 0x31042a9aade235bb => 22
	i64 3571415421602489686, ; 56: System.Runtime.dll => 0x319037675df7e556 => 25
	i64 3716579019761409177, ; 57: netstandard.dll => 0x3393f0ed5c8c5c99 => 91
	i64 3727469159507183293, ; 58: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 67
	i64 3772598417116884899, ; 59: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 50
	i64 3966267475168208030, ; 60: System.Memory => 0x370b03412596249e => 20
	i64 4201423742386704971, ; 61: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 43
	i64 4247996603072512073, ; 62: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 85
	i64 4337444564132831293, ; 63: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 13
	i64 4525561845656915374, ; 64: System.ServiceModel.Internals => 0x3ece06856b710dae => 100
	i64 4636684751163556186, ; 65: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 75
	i64 4759461199762736555, ; 66: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 58
	i64 4794310189461587505, ; 67: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 27
	i64 5203618020066742981, ; 68: Xamarin.Essentials => 0x4836f704f0e652c5 => 78
	i64 5205316157927637098, ; 69: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 63
	i64 5376510917114486089, ; 70: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 73
	i64 5408338804355907810, ; 71: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 72
	i64 5451019430259338467, ; 72: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 41
	i64 5507995362134886206, ; 73: System.Core.dll => 0x4c705499688c873e => 18
	i64 5574231584441077149, ; 74: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 30
	i64 5692067934154308417, ; 75: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 77
	i64 5757522595884336624, ; 76: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 39
	i64 5780760202245174591, ; 77: Caliburn.Micro.Platform.dll => 0x503962c6b289f53f => 3
	i64 5834566017828947616, ; 78: Caliburn.Micro.Platform.Core => 0x50f88ae15f4286a0 => 2
	i64 6183170893902868313, ; 79: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 13
	i64 6319713645133255417, ; 80: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 59
	i64 6401687960814735282, ; 81: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 57
	i64 6504860066809920875, ; 82: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 35
	i64 6548213210057960872, ; 83: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 46
	i64 6589202984700901502, ; 84: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 80
	i64 6591024623626361694, ; 85: System.Web.Services.dll => 0x5b7805f9751a1b5e => 101
	i64 6671798237668743565, ; 86: SkiaSharp => 0x5c96fd260152998d => 10
	i64 6876862101832370452, ; 87: System.Xml.Linq => 0x5f6f85a57d108914 => 102
	i64 6894844156784520562, ; 88: System.Numerics.Vectors => 0x5faf683aead1ad72 => 23
	i64 7103753931438454322, ; 89: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 54
	i64 7488575175965059935, ; 90: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 102
	i64 7637365915383206639, ; 91: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 78
	i64 7654504624184590948, ; 92: System.Net.Http => 0x6a3a4366801b8264 => 21
	i64 7735352534559001595, ; 93: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 87
	i64 7820441508502274321, ; 94: System.Data => 0x6c87ca1e14ff8111 => 92
	i64 7836164640616011524, ; 95: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 31
	i64 7927939710195668715, ; 96: SkiaSharp.Views.Android.dll => 0x6e05b32992ed16eb => 11
	i64 8044118961405839122, ; 97: System.ComponentModel.Composition => 0x6fa2739369944712 => 98
	i64 8083354569033831015, ; 98: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 56
	i64 8103644804370223335, ; 99: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 94
	i64 8167236081217502503, ; 100: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 4
	i64 8187640529827139739, ; 101: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 88
	i64 8398329775253868912, ; 102: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 40
	i64 8426919725312979251, ; 103: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 58
	i64 8598790081731763592, ; 104: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 52
	i64 8601935802264776013, ; 105: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 72
	i64 8626175481042262068, ; 106: Java.Interop => 0x77b654e585b55834 => 4
	i64 8684531736582871431, ; 107: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 97
	i64 8951477988056063522, ; 108: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 66
	i64 8980162256060603309, ; 109: Caliburn.Micro.Core => 0x7c9ff1fe31dcdbad => 1
	i64 9031035476476434958, ; 110: Xamarin.KotlinX.Coroutines.Core.dll => 0x7d54aeead9541a0e => 89
	i64 9312692141327339315, ; 111: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 77
	i64 9324707631942237306, ; 112: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 32
	i64 9662334977499516867, ; 113: System.Numerics.dll => 0x8617827802b0cfc3 => 22
	i64 9678050649315576968, ; 114: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 42
	i64 9808709177481450983, ; 115: Mono.Android.dll => 0x881f890734e555e7 => 7
	i64 9825649861376906464, ; 116: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 39
	i64 9834056768316610435, ; 117: System.Transactions.dll => 0x8879968718899783 => 93
	i64 9875200773399460291, ; 118: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 82
	i64 9907349773706910547, ; 119: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 52
	i64 9998632235833408227, ; 120: Mono.Security => 0x8ac2470b209ebae3 => 103
	i64 10038780035334861115, ; 121: System.Net.Http.dll => 0x8b50e941206af13b => 21
	i64 10229024438826829339, ; 122: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 46
	i64 10321854143672141184, ; 123: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 86
	i64 10376576884623852283, ; 124: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 71
	i64 10406448008575299332, ; 125: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 90
	i64 10430153318873392755, ; 126: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 44
	i64 10847732767863316357, ; 127: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 33
	i64 11019817191295005410, ; 128: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 30
	i64 11023048688141570732, ; 129: System.Core => 0x98f9bc61168392ac => 18
	i64 11037814507248023548, ; 130: System.Xml => 0x992e31d0412bf7fc => 26
	i64 11071824625609515081, ; 131: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 80
	i64 11162124722117608902, ; 132: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 76
	i64 11299661109949763898, ; 133: Xamarin.AndroidX.Collection.Jvm => 0x9cd075e94cda113a => 38
	i64 11340910727871153756, ; 134: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 45
	i64 11392833485892708388, ; 135: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 65
	i64 11529969570048099689, ; 136: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 76
	i64 11580057168383206117, ; 137: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 28
	i64 11591352189662810718, ; 138: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 70
	i64 11597940890313164233, ; 139: netstandard => 0xa0f429ca8d1805c9 => 91
	i64 11672361001936329215, ; 140: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 54
	i64 11739066727115742305, ; 141: SQLite-net.dll => 0xa2e98afdf8575c61 => 12
	i64 11806260347154423189, ; 142: SQLite-net => 0xa3d8433bc5eb5d95 => 12
	i64 11966701805473020409, ; 143: Caliburn.Micro.Core.dll => 0xa61243e3c83eb9f9 => 1
	i64 12102847907131387746, ; 144: System.Buffers => 0xa7f5f40c43256f62 => 17
	i64 12137774235383566651, ; 145: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 74
	i64 12272589945880531583, ; 146: expenso.dll => 0xaa50ff88663d527f => 0
	i64 12279246230491828964, ; 147: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 16
	i64 12451044538927396471, ; 148: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 53
	i64 12466513435562512481, ; 149: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 62
	i64 12487638416075308985, ; 150: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 48
	i64 12538491095302438457, ; 151: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 36
	i64 12550732019250633519, ; 152: System.IO.Compression => 0xae2d28465e8e1b2f => 96
	i64 12700543734426720211, ; 153: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 37
	i64 12959703895097618677, ; 154: expenso => 0xb3da1e07758a30f5 => 0
	i64 12963446364377008305, ; 155: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 95
	i64 12982280885948128408, ; 156: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 47
	i64 13129914918964716986, ; 157: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 51
	i64 13370592475155966277, ; 158: System.Runtime.Serialization => 0xb98de304062ea945 => 99
	i64 13401370062847626945, ; 159: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 74
	i64 13403416310143541304, ; 160: Microcharts.Droid => 0xba02801ea6c86038 => 6
	i64 13404347523447273790, ; 161: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 40
	i64 13454009404024712428, ; 162: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 81
	i64 13465488254036897740, ; 163: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 87
	i64 13491513212026656886, ; 164: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 34
	i64 13572454107664307259, ; 165: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 67
	i64 13621154251410165619, ; 166: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 47
	i64 13647894001087880694, ; 167: System.Data.dll => 0xbd670f48cb071df6 => 92
	i64 13959074834287824816, ; 168: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 53
	i64 14124974489674258913, ; 169: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 36
	i64 14172845254133543601, ; 170: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 64
	i64 14261073672896646636, ; 171: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 65
	i64 14495724990987328804, ; 172: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 68
	i64 14644440854989303794, ; 173: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 63
	i64 14678510994762383812, ; 174: Xamarin.GooglePlayServices.Location.dll => 0xcbb48bfaca7a41c4 => 84
	i64 14792063746108907174, ; 175: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 81
	i64 14852515768018889994, ; 176: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 45
	i64 14987728460634540364, ; 177: System.IO.Compression.dll => 0xcfff1ba06622494c => 96
	i64 14988210264188246988, ; 178: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 48
	i64 15150743910298169673, ; 179: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 66
	i64 15279429628684179188, ; 180: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 88
	i64 15370334346939861994, ; 181: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 44
	i64 15582737692548360875, ; 182: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 61
	i64 15609085926864131306, ; 183: System.dll => 0xd89e9cf3334914ea => 19
	i64 15930129725311349754, ; 184: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 85
	i64 16154507427712707110, ; 185: System => 0xe03056ea4e39aa26 => 19
	i64 16311769974112592440, ; 186: Caliburn.Micro.Platform => 0xe25f0c5e34dd2238 => 3
	i64 16324796876805858114, ; 187: SkiaSharp.dll => 0xe28d5444586b6342 => 10
	i64 16534992902324530068, ; 188: Caliburn.Micro.Platform.Core.dll => 0xe578187042a8ab94 => 2
	i64 16565028646146589191, ; 189: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 98
	i64 16621146507174665210, ; 190: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 41
	i64 16755018182064898362, ; 191: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 14
	i64 16822611501064131242, ; 192: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 94
	i64 16833383113903931215, ; 193: mscorlib => 0xe99c30c1484d7f4f => 8
	i64 17024911836938395553, ; 194: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 29
	i64 17037200463775726619, ; 195: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 55
	i64 17671790519499593115, ; 196: SkiaSharp.Views.Android => 0xf53ecfd92be3959b => 11
	i64 17704177640604968747, ; 197: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 62
	i64 17710060891934109755, ; 198: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 60
	i64 17838668724098252521, ; 199: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 17
	i64 17891337867145587222, ; 200: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 86
	i64 17928294245072900555, ; 201: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 97
	i64 17986907704309214542, ; 202: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 83
	i64 18116111925905154859, ; 203: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 34
	i64 18129453464017766560, ; 204: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 100
	i64 18260797123374478311, ; 205: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 51
	i64 18370042311372477656, ; 206: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 15
	i64 18380184030268848184 ; 207: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 75
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [208 x i32] [
	i32 50, i32 7, i32 6, i32 37, i32 69, i32 38, i32 43, i32 84, ; 0..7
	i32 59, i32 82, i32 95, i32 15, i32 49, i32 93, i32 103, i32 79, ; 8..15
	i32 14, i32 33, i32 5, i32 99, i32 16, i32 31, i32 61, i32 55, ; 16..23
	i32 9, i32 20, i32 32, i32 69, i32 28, i32 60, i32 9, i32 64, ; 24..31
	i32 35, i32 89, i32 49, i32 101, i32 68, i32 57, i32 24, i32 42, ; 32..39
	i32 73, i32 25, i32 27, i32 26, i32 8, i32 24, i32 70, i32 79, ; 40..47
	i32 5, i32 56, i32 29, i32 23, i32 90, i32 83, i32 71, i32 22, ; 48..55
	i32 25, i32 91, i32 67, i32 50, i32 20, i32 43, i32 85, i32 13, ; 56..63
	i32 100, i32 75, i32 58, i32 27, i32 78, i32 63, i32 73, i32 72, ; 64..71
	i32 41, i32 18, i32 30, i32 77, i32 39, i32 3, i32 2, i32 13, ; 72..79
	i32 59, i32 57, i32 35, i32 46, i32 80, i32 101, i32 10, i32 102, ; 80..87
	i32 23, i32 54, i32 102, i32 78, i32 21, i32 87, i32 92, i32 31, ; 88..95
	i32 11, i32 98, i32 56, i32 94, i32 4, i32 88, i32 40, i32 58, ; 96..103
	i32 52, i32 72, i32 4, i32 97, i32 66, i32 1, i32 89, i32 77, ; 104..111
	i32 32, i32 22, i32 42, i32 7, i32 39, i32 93, i32 82, i32 52, ; 112..119
	i32 103, i32 21, i32 46, i32 86, i32 71, i32 90, i32 44, i32 33, ; 120..127
	i32 30, i32 18, i32 26, i32 80, i32 76, i32 38, i32 45, i32 65, ; 128..135
	i32 76, i32 28, i32 70, i32 91, i32 54, i32 12, i32 12, i32 1, ; 136..143
	i32 17, i32 74, i32 0, i32 16, i32 53, i32 62, i32 48, i32 36, ; 144..151
	i32 96, i32 37, i32 0, i32 95, i32 47, i32 51, i32 99, i32 74, ; 152..159
	i32 6, i32 40, i32 81, i32 87, i32 34, i32 67, i32 47, i32 92, ; 160..167
	i32 53, i32 36, i32 64, i32 65, i32 68, i32 63, i32 84, i32 81, ; 168..175
	i32 45, i32 96, i32 48, i32 66, i32 88, i32 44, i32 61, i32 19, ; 176..183
	i32 85, i32 19, i32 3, i32 10, i32 2, i32 98, i32 41, i32 14, ; 184..191
	i32 94, i32 8, i32 29, i32 55, i32 11, i32 62, i32 60, i32 17, ; 192..199
	i32 86, i32 97, i32 83, i32 34, i32 100, i32 51, i32 15, i32 75 ; 208..207
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
