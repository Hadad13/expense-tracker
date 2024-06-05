; ModuleID = 'obj\Debug\130\android\marshal_methods.x86_64.ll'
source_filename = "obj\Debug\130\android\marshal_methods.x86_64.ll"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-android"


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
@assembly_image_cache_hashes = local_unnamed_addr constant [202 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 47
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 4
	i64 181099460066822533, ; 2: Microcharts.Droid.dll => 0x28364ffda4c4985 => 3
	i64 210515253464952879, ; 3: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 34
	i64 232391251801502327, ; 4: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 66
	i64 233177144301842968, ; 5: Xamarin.AndroidX.Collection.Jvm.dll => 0x33c696097d9f218 => 35
	i64 316157742385208084, ; 6: Xamarin.AndroidX.Core.Core.Ktx.dll => 0x46337caa7dc1b14 => 40
	i64 435170709725415398, ; 7: Xamarin.GooglePlayServices.Location => 0x60a097471d687e6 => 81
	i64 634308326490598313, ; 8: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 56
	i64 687654259221141486, ; 9: Xamarin.GooglePlayServices.Base => 0x98b09e7c92917ee => 79
	i64 702024105029695270, ; 10: System.Drawing.Common => 0x9be17343c0e7726 => 92
	i64 870603111519317375, ; 11: SQLitePCLRaw.lib.e_sqlite3.android => 0xc1500ead2756d7f => 12
	i64 872800313462103108, ; 12: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 46
	i64 940822596282819491, ; 13: System.Transactions => 0xd0e792aa81923a3 => 90
	i64 1000557547492888992, ; 14: Mono.Security.dll => 0xde2b1c9cba651a0 => 100
	i64 1120440138749646132, ; 15: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 76
	i64 1301485588176585670, ; 16: SQLitePCLRaw.core => 0x120fce3f338e43c6 => 11
	i64 1315114680217950157, ; 17: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 30
	i64 1416135423712704079, ; 18: Microcharts => 0x13a71faa343e364f => 2
	i64 1425944114962822056, ; 19: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 96
	i64 1518315023656898250, ; 20: SQLitePCLRaw.provider.e_sqlite3 => 0x151223783a354eca => 13
	i64 1624659445732251991, ; 21: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 28
	i64 1628611045998245443, ; 22: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 58
	i64 1636321030536304333, ; 23: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 52
	i64 1731380447121279447, ; 24: Newtonsoft.Json => 0x18071957e9b889d7 => 6
	i64 1743969030606105336, ; 25: System.Memory.dll => 0x1833d297e88f2af8 => 17
	i64 1795316252682057001, ; 26: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 29
	i64 1836611346387731153, ; 27: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 66
	i64 1875917498431009007, ; 28: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 25
	i64 1981742497975770890, ; 29: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 57
	i64 2133195048986300728, ; 30: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 6
	i64 2136356949452311481, ; 31: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 61
	i64 2165725771938924357, ; 32: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 32
	i64 2203565783020068373, ; 33: Xamarin.KotlinX.Coroutines.Core => 0x1e94a367981dde15 => 86
	i64 2262844636196693701, ; 34: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 46
	i64 2284400282711631002, ; 35: System.Web.Services => 0x1fb3d1f42fd4249a => 98
	i64 2304837677853103545, ; 36: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0x1ffc6da80d5ed5b9 => 65
	i64 2329709569556905518, ; 37: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 54
	i64 2337758774805907496, ; 38: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 21
	i64 2470498323731680442, ; 39: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 39
	i64 2479423007379663237, ; 40: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 70
	i64 2497223385847772520, ; 41: System.Runtime => 0x22a7eb7046413568 => 22
	i64 2547086958574651984, ; 42: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 24
	i64 2592350477072141967, ; 43: System.Xml.dll => 0x23f9e10627330e8f => 23
	i64 2624866290265602282, ; 44: mscorlib.dll => 0x246d65fbde2db8ea => 5
	i64 2783046991838674048, ; 45: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 21
	i64 2787234703088983483, ; 46: Xamarin.AndroidX.Startup.StartupRuntime => 0x26ae3f31ef429dbb => 67
	i64 3017704767998173186, ; 47: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 76
	i64 3122911337338800527, ; 48: Microcharts.dll => 0x2b56cf50bf1e898f => 2
	i64 3289520064315143713, ; 49: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 53
	i64 3303437397778967116, ; 50: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 26
	i64 3311221304742556517, ; 51: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 20
	i64 3344514922410554693, ; 52: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x2e6a1a9a18463545 => 87
	i64 3411255996856937470, ; 53: Xamarin.GooglePlayServices.Basement => 0x2f5737416a942bfe => 80
	i64 3493805808809882663, ; 54: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 68
	i64 3531994851595924923, ; 55: System.Numerics => 0x31042a9aade235bb => 19
	i64 3571415421602489686, ; 56: System.Runtime.dll => 0x319037675df7e556 => 22
	i64 3716579019761409177, ; 57: netstandard.dll => 0x3393f0ed5c8c5c99 => 88
	i64 3727469159507183293, ; 58: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 64
	i64 3772598417116884899, ; 59: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 47
	i64 3966267475168208030, ; 60: System.Memory => 0x370b03412596249e => 17
	i64 4201423742386704971, ; 61: Xamarin.AndroidX.Core.Core.Ktx => 0x3a4e74a233da124b => 40
	i64 4247996603072512073, ; 62: Xamarin.GooglePlayServices.Tasks => 0x3af3ea6755340049 => 82
	i64 4337444564132831293, ; 63: SQLitePCLRaw.batteries_v2.dll => 0x3c31b2d9ae16203d => 10
	i64 4525561845656915374, ; 64: System.ServiceModel.Internals => 0x3ece06856b710dae => 97
	i64 4636684751163556186, ; 65: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 72
	i64 4759461199762736555, ; 66: Xamarin.AndroidX.Lifecycle.Process.dll => 0x420d00be961cc5ab => 55
	i64 4794310189461587505, ; 67: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 24
	i64 5203618020066742981, ; 68: Xamarin.Essentials => 0x4836f704f0e652c5 => 75
	i64 5205316157927637098, ; 69: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 60
	i64 5376510917114486089, ; 70: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 70
	i64 5408338804355907810, ; 71: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 69
	i64 5451019430259338467, ; 72: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 38
	i64 5507995362134886206, ; 73: System.Core.dll => 0x4c705499688c873e => 15
	i64 5574231584441077149, ; 74: Xamarin.AndroidX.Annotation.Jvm => 0x4d5ba617ae5f8d9d => 27
	i64 5692067934154308417, ; 75: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 74
	i64 5757522595884336624, ; 76: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 36
	i64 6183170893902868313, ; 77: SQLitePCLRaw.batteries_v2 => 0x55cf092b0c9d6f59 => 10
	i64 6319713645133255417, ; 78: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 56
	i64 6401687960814735282, ; 79: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 54
	i64 6504860066809920875, ; 80: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 32
	i64 6548213210057960872, ; 81: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 43
	i64 6589202984700901502, ; 82: Xamarin.Google.ErrorProne.Annotations.dll => 0x5b718d34180a787e => 77
	i64 6591024623626361694, ; 83: System.Web.Services.dll => 0x5b7805f9751a1b5e => 98
	i64 6671798237668743565, ; 84: SkiaSharp => 0x5c96fd260152998d => 7
	i64 6876862101832370452, ; 85: System.Xml.Linq => 0x5f6f85a57d108914 => 99
	i64 6894844156784520562, ; 86: System.Numerics.Vectors => 0x5faf683aead1ad72 => 20
	i64 7103753931438454322, ; 87: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 51
	i64 7488575175965059935, ; 88: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 99
	i64 7637365915383206639, ; 89: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 75
	i64 7654504624184590948, ; 90: System.Net.Http => 0x6a3a4366801b8264 => 18
	i64 7735352534559001595, ; 91: Xamarin.Kotlin.StdLib.dll => 0x6b597e2582ce8bfb => 84
	i64 7820441508502274321, ; 92: System.Data => 0x6c87ca1e14ff8111 => 89
	i64 7836164640616011524, ; 93: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 28
	i64 7927939710195668715, ; 94: SkiaSharp.Views.Android.dll => 0x6e05b32992ed16eb => 8
	i64 8044118961405839122, ; 95: System.ComponentModel.Composition => 0x6fa2739369944712 => 95
	i64 8083354569033831015, ; 96: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 53
	i64 8103644804370223335, ; 97: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 91
	i64 8167236081217502503, ; 98: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 1
	i64 8187640529827139739, ; 99: Xamarin.KotlinX.Coroutines.Android => 0x71a057ae90f0109b => 85
	i64 8398329775253868912, ; 100: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 37
	i64 8426919725312979251, ; 101: Xamarin.AndroidX.Lifecycle.Process => 0x74f26ed7aa033133 => 55
	i64 8598790081731763592, ; 102: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x77550a055fc61d88 => 49
	i64 8601935802264776013, ; 103: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 69
	i64 8626175481042262068, ; 104: Java.Interop => 0x77b654e585b55834 => 1
	i64 8684531736582871431, ; 105: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 94
	i64 8951477988056063522, ; 106: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0x7c3a09cd9ccf5e22 => 63
	i64 9031035476476434958, ; 107: Xamarin.KotlinX.Coroutines.Core.dll => 0x7d54aeead9541a0e => 86
	i64 9312692141327339315, ; 108: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 74
	i64 9324707631942237306, ; 109: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 29
	i64 9662334977499516867, ; 110: System.Numerics.dll => 0x8617827802b0cfc3 => 19
	i64 9678050649315576968, ; 111: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 39
	i64 9808709177481450983, ; 112: Mono.Android.dll => 0x881f890734e555e7 => 4
	i64 9825649861376906464, ; 113: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 36
	i64 9834056768316610435, ; 114: System.Transactions.dll => 0x8879968718899783 => 90
	i64 9875200773399460291, ; 115: Xamarin.GooglePlayServices.Base.dll => 0x890bc2c8482339c3 => 79
	i64 9907349773706910547, ; 116: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x897dfa20b758db53 => 49
	i64 9998632235833408227, ; 117: Mono.Security => 0x8ac2470b209ebae3 => 100
	i64 10038780035334861115, ; 118: System.Net.Http.dll => 0x8b50e941206af13b => 18
	i64 10229024438826829339, ; 119: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 43
	i64 10321854143672141184, ; 120: Xamarin.Jetbrains.Annotations.dll => 0x8f3e97a7f8f8c580 => 83
	i64 10376576884623852283, ; 121: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 68
	i64 10406448008575299332, ; 122: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x906b2153fcb3af04 => 87
	i64 10430153318873392755, ; 123: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 41
	i64 10847732767863316357, ; 124: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 30
	i64 11019817191295005410, ; 125: Xamarin.AndroidX.Annotation.Jvm.dll => 0x98ee415998e1b2e2 => 27
	i64 11023048688141570732, ; 126: System.Core => 0x98f9bc61168392ac => 15
	i64 11037814507248023548, ; 127: System.Xml => 0x992e31d0412bf7fc => 23
	i64 11071824625609515081, ; 128: Xamarin.Google.ErrorProne.Annotations => 0x99a705d600e0a049 => 77
	i64 11162124722117608902, ; 129: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 73
	i64 11299661109949763898, ; 130: Xamarin.AndroidX.Collection.Jvm => 0x9cd075e94cda113a => 35
	i64 11340910727871153756, ; 131: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 42
	i64 11392833485892708388, ; 132: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 62
	i64 11529969570048099689, ; 133: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 73
	i64 11580057168383206117, ; 134: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 25
	i64 11591352189662810718, ; 135: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0xa0dcc167234c525e => 67
	i64 11597940890313164233, ; 136: netstandard => 0xa0f429ca8d1805c9 => 88
	i64 11672361001936329215, ; 137: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 51
	i64 11739066727115742305, ; 138: SQLite-net.dll => 0xa2e98afdf8575c61 => 9
	i64 11806260347154423189, ; 139: SQLite-net => 0xa3d8433bc5eb5d95 => 9
	i64 12102847907131387746, ; 140: System.Buffers => 0xa7f5f40c43256f62 => 14
	i64 12137774235383566651, ; 141: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 71
	i64 12272589945880531583, ; 142: expenso.dll => 0xaa50ff88663d527f => 0
	i64 12279246230491828964, ; 143: SQLitePCLRaw.provider.e_sqlite3.dll => 0xaa68a5636e0512e4 => 13
	i64 12451044538927396471, ; 144: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 50
	i64 12466513435562512481, ; 145: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 59
	i64 12487638416075308985, ; 146: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 45
	i64 12538491095302438457, ; 147: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 33
	i64 12550732019250633519, ; 148: System.IO.Compression => 0xae2d28465e8e1b2f => 93
	i64 12700543734426720211, ; 149: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 34
	i64 12959703895097618677, ; 150: expenso => 0xb3da1e07758a30f5 => 0
	i64 12963446364377008305, ; 151: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 92
	i64 12982280885948128408, ; 152: Xamarin.AndroidX.CustomView.PoolingContainer => 0xb42a53aec5481c98 => 44
	i64 13129914918964716986, ; 153: Xamarin.AndroidX.Emoji2.dll => 0xb636d40db3fe65ba => 48
	i64 13370592475155966277, ; 154: System.Runtime.Serialization => 0xb98de304062ea945 => 96
	i64 13401370062847626945, ; 155: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 71
	i64 13403416310143541304, ; 156: Microcharts.Droid => 0xba02801ea6c86038 => 3
	i64 13404347523447273790, ; 157: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 37
	i64 13454009404024712428, ; 158: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 78
	i64 13465488254036897740, ; 159: Xamarin.Kotlin.StdLib => 0xbadf06394d106fcc => 84
	i64 13491513212026656886, ; 160: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 31
	i64 13572454107664307259, ; 161: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 64
	i64 13621154251410165619, ; 162: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0xbd080f9faa1acf73 => 44
	i64 13647894001087880694, ; 163: System.Data.dll => 0xbd670f48cb071df6 => 89
	i64 13959074834287824816, ; 164: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 50
	i64 14124974489674258913, ; 165: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 33
	i64 14172845254133543601, ; 166: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 61
	i64 14261073672896646636, ; 167: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 62
	i64 14495724990987328804, ; 168: Xamarin.AndroidX.ResourceInspection.Annotation => 0xc92b2913e18d5d24 => 65
	i64 14644440854989303794, ; 169: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 60
	i64 14678510994762383812, ; 170: Xamarin.GooglePlayServices.Location.dll => 0xcbb48bfaca7a41c4 => 81
	i64 14792063746108907174, ; 171: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 78
	i64 14852515768018889994, ; 172: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 42
	i64 14987728460634540364, ; 173: System.IO.Compression.dll => 0xcfff1ba06622494c => 93
	i64 14988210264188246988, ; 174: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 45
	i64 15150743910298169673, ; 175: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xd2424150783c3149 => 63
	i64 15279429628684179188, ; 176: Xamarin.KotlinX.Coroutines.Android.dll => 0xd40b704b1c4c96f4 => 85
	i64 15370334346939861994, ; 177: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 41
	i64 15582737692548360875, ; 178: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 58
	i64 15609085926864131306, ; 179: System.dll => 0xd89e9cf3334914ea => 16
	i64 15930129725311349754, ; 180: Xamarin.GooglePlayServices.Tasks.dll => 0xdd1330956f12f3fa => 82
	i64 16154507427712707110, ; 181: System => 0xe03056ea4e39aa26 => 16
	i64 16324796876805858114, ; 182: SkiaSharp.dll => 0xe28d5444586b6342 => 7
	i64 16565028646146589191, ; 183: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 95
	i64 16621146507174665210, ; 184: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 38
	i64 16755018182064898362, ; 185: SQLitePCLRaw.core.dll => 0xe885c843c330813a => 11
	i64 16822611501064131242, ; 186: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 91
	i64 16833383113903931215, ; 187: mscorlib => 0xe99c30c1484d7f4f => 5
	i64 17024911836938395553, ; 188: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 26
	i64 17037200463775726619, ; 189: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 52
	i64 17671790519499593115, ; 190: SkiaSharp.Views.Android => 0xf53ecfd92be3959b => 8
	i64 17704177640604968747, ; 191: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 59
	i64 17710060891934109755, ; 192: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 57
	i64 17838668724098252521, ; 193: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 14
	i64 17891337867145587222, ; 194: Xamarin.Jetbrains.Annotations => 0xf84accff6fb52a16 => 83
	i64 17928294245072900555, ; 195: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 94
	i64 17986907704309214542, ; 196: Xamarin.GooglePlayServices.Basement.dll => 0xf99e554223166d4e => 80
	i64 18116111925905154859, ; 197: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 31
	i64 18129453464017766560, ; 198: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 97
	i64 18260797123374478311, ; 199: Xamarin.AndroidX.Emoji2 => 0xfd6b623bde35f3e7 => 48
	i64 18370042311372477656, ; 200: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0xfeef80274e4094d8 => 12
	i64 18380184030268848184 ; 201: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 72
], align 16
@assembly_image_cache_indices = local_unnamed_addr constant [202 x i32] [
	i32 47, i32 4, i32 3, i32 34, i32 66, i32 35, i32 40, i32 81, ; 0..7
	i32 56, i32 79, i32 92, i32 12, i32 46, i32 90, i32 100, i32 76, ; 8..15
	i32 11, i32 30, i32 2, i32 96, i32 13, i32 28, i32 58, i32 52, ; 16..23
	i32 6, i32 17, i32 29, i32 66, i32 25, i32 57, i32 6, i32 61, ; 24..31
	i32 32, i32 86, i32 46, i32 98, i32 65, i32 54, i32 21, i32 39, ; 32..39
	i32 70, i32 22, i32 24, i32 23, i32 5, i32 21, i32 67, i32 76, ; 40..47
	i32 2, i32 53, i32 26, i32 20, i32 87, i32 80, i32 68, i32 19, ; 48..55
	i32 22, i32 88, i32 64, i32 47, i32 17, i32 40, i32 82, i32 10, ; 56..63
	i32 97, i32 72, i32 55, i32 24, i32 75, i32 60, i32 70, i32 69, ; 64..71
	i32 38, i32 15, i32 27, i32 74, i32 36, i32 10, i32 56, i32 54, ; 72..79
	i32 32, i32 43, i32 77, i32 98, i32 7, i32 99, i32 20, i32 51, ; 80..87
	i32 99, i32 75, i32 18, i32 84, i32 89, i32 28, i32 8, i32 95, ; 88..95
	i32 53, i32 91, i32 1, i32 85, i32 37, i32 55, i32 49, i32 69, ; 96..103
	i32 1, i32 94, i32 63, i32 86, i32 74, i32 29, i32 19, i32 39, ; 104..111
	i32 4, i32 36, i32 90, i32 79, i32 49, i32 100, i32 18, i32 43, ; 112..119
	i32 83, i32 68, i32 87, i32 41, i32 30, i32 27, i32 15, i32 23, ; 120..127
	i32 77, i32 73, i32 35, i32 42, i32 62, i32 73, i32 25, i32 67, ; 128..135
	i32 88, i32 51, i32 9, i32 9, i32 14, i32 71, i32 0, i32 13, ; 136..143
	i32 50, i32 59, i32 45, i32 33, i32 93, i32 34, i32 0, i32 92, ; 144..151
	i32 44, i32 48, i32 96, i32 71, i32 3, i32 37, i32 78, i32 84, ; 152..159
	i32 31, i32 64, i32 44, i32 89, i32 50, i32 33, i32 61, i32 62, ; 160..167
	i32 65, i32 60, i32 81, i32 78, i32 42, i32 93, i32 45, i32 63, ; 168..175
	i32 85, i32 41, i32 58, i32 16, i32 82, i32 16, i32 7, i32 95, ; 176..183
	i32 38, i32 11, i32 91, i32 5, i32 26, i32 52, i32 8, i32 59, ; 184..191
	i32 57, i32 14, i32 83, i32 94, i32 80, i32 31, i32 97, i32 48, ; 192..199
	i32 12, i32 72 ; 200..201
], align 16

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="none" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn writeonly
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
], align 16; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="none" "target-cpu"="x86-64" "target-features"="+cx16,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
