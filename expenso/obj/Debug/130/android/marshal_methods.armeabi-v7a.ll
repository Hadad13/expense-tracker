; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [202 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 56
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 78
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 6
	i32 165246403, ; 3: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 34
	i32 209399409, ; 4: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 32
	i32 230216969, ; 5: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 52
	i32 232815796, ; 6: System.Web.Services => 0xde07cb4 => 98
	i32 261689757, ; 7: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 38
	i32 280482487, ; 8: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 51
	i32 318968648, ; 9: Xamarin.AndroidX.Activity.dll => 0x13031348 => 24
	i32 321597661, ; 10: System.Numerics => 0x132b30dd => 19
	i32 342366114, ; 11: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 53
	i32 347068432, ; 12: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 12
	i32 385762202, ; 13: System.Memory.dll => 0x16fe439a => 17
	i32 441335492, ; 14: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 37
	i32 442521989, ; 15: Xamarin.Essentials => 0x1a605985 => 75
	i32 450948140, ; 16: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 50
	i32 465846621, ; 17: mscorlib => 0x1bc4415d => 5
	i32 469710990, ; 18: System.dll => 0x1bff388e => 16
	i32 476646585, ; 19: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 51
	i32 486930444, ; 20: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 60
	i32 525008092, ; 21: SkiaSharp.dll => 0x1f4afcdc => 7
	i32 526420162, ; 22: System.Transactions.dll => 0x1f6088c2 => 90
	i32 605376203, ; 23: System.IO.Compression.FileSystem => 0x24154ecb => 94
	i32 627609679, ; 24: Xamarin.AndroidX.CustomView => 0x2568904f => 43
	i32 639843206, ; 25: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 49
	i32 663517072, ; 26: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 72
	i32 666292255, ; 27: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 30
	i32 690569205, ; 28: System.Xml.Linq.dll => 0x29293ff5 => 99
	i32 691348768, ; 29: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 85
	i32 700284507, ; 30: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 83
	i32 748832960, ; 31: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 10
	i32 775507847, ; 32: System.IO.Compression => 0x2e394f87 => 93
	i32 790371945, ; 33: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 44
	i32 809851609, ; 34: System.Drawing.Common.dll => 0x30455ad9 => 92
	i32 843511501, ; 35: Xamarin.AndroidX.Print => 0x3246f6cd => 62
	i32 886248193, ; 36: Microcharts.Droid => 0x34d31301 => 3
	i32 928116545, ; 37: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 78
	i32 955402788, ; 38: Newtonsoft.Json => 0x38f24a24 => 6
	i32 967690846, ; 39: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 53
	i32 1012816738, ; 40: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 66
	i32 1031528504, ; 41: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 77
	i32 1035644815, ; 42: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 29
	i32 1052210849, ; 43: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 57
	i32 1084122840, ; 44: Xamarin.Kotlin.StdLib => 0x409e66d8 => 84
	i32 1098259244, ; 45: System => 0x41761b2c => 16
	i32 1175144683, ; 46: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 70
	i32 1204270330, ; 47: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 30
	i32 1214377400, ; 48: expenso.dll => 0x4861edb8 => 0
	i32 1246548578, ; 49: Xamarin.AndroidX.Collection.Jvm.dll => 0x4a4cd262 => 35
	i32 1264511973, ; 50: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 67
	i32 1264890200, ; 51: Xamarin.KotlinX.Coroutines.Core.dll => 0x4b64b158 => 86
	i32 1267360935, ; 52: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 71
	i32 1275534314, ; 53: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 85
	i32 1278448581, ; 54: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 27
	i32 1292207520, ; 55: SQLitePCLRaw.core.dll => 0x4d0585a0 => 11
	i32 1293217323, ; 56: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 46
	i32 1365406463, ; 57: System.ServiceModel.Internals.dll => 0x516272ff => 97
	i32 1376866003, ; 58: Xamarin.AndroidX.SavedState => 0x52114ed3 => 66
	i32 1406073936, ; 59: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 39
	i32 1411638395, ; 60: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 21
	i32 1462112819, ; 61: System.IO.Compression.dll => 0x57261233 => 93
	i32 1469204771, ; 62: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 28
	i32 1582372066, ; 63: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 45
	i32 1592978981, ; 64: System.Runtime.Serialization.dll => 0x5ef2ee25 => 96
	i32 1597949149, ; 65: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 77
	i32 1622152042, ; 66: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 59
	i32 1624863272, ; 67: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 74
	i32 1635184631, ; 68: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 49
	i32 1636350590, ; 69: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 42
	i32 1639515021, ; 70: System.Net.Http.dll => 0x61b9038d => 18
	i32 1657153582, ; 71: System.Runtime => 0x62c6282e => 22
	i32 1658241508, ; 72: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 68
	i32 1658251792, ; 73: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 76
	i32 1670060433, ; 74: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 38
	i32 1711441057, ; 75: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 12
	i32 1729485958, ; 76: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 33
	i32 1776026572, ; 77: System.Core.dll => 0x69dc03cc => 15
	i32 1788241197, ; 78: Xamarin.AndroidX.Fragment => 0x6a96652d => 50
	i32 1808609942, ; 79: Xamarin.AndroidX.Loader => 0x6bcd3296 => 59
	i32 1813058853, ; 80: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 84
	i32 1813201214, ; 81: Xamarin.Google.Android.Material => 0x6c13413e => 76
	i32 1867746548, ; 82: Xamarin.Essentials.dll => 0x6f538cf4 => 75
	i32 1885316902, ; 83: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 31
	i32 1908813208, ; 84: Xamarin.GooglePlayServices.Basement => 0x71c62d98 => 80
	i32 1919157823, ; 85: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 61
	i32 2011961780, ; 86: System.Buffers.dll => 0x77ec19b4 => 14
	i32 2019465201, ; 87: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 57
	i32 2055257422, ; 88: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 54
	i32 2079903147, ; 89: System.Runtime.dll => 0x7bf8cdab => 22
	i32 2090596640, ; 90: System.Numerics.Vectors => 0x7c9bf920 => 20
	i32 2103459038, ; 91: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 13
	i32 2129483829, ; 92: Xamarin.GooglePlayServices.Base.dll => 0x7eed5835 => 79
	i32 2201107256, ; 93: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 87
	i32 2201231467, ; 94: System.Net.Http => 0x8334206b => 18
	i32 2217644978, ; 95: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 70
	i32 2244775296, ; 96: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 60
	i32 2256548716, ; 97: Xamarin.AndroidX.MultiDex => 0x8680336c => 61
	i32 2279755925, ; 98: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 64
	i32 2315684594, ; 99: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 25
	i32 2403452196, ; 100: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 48
	i32 2465273461, ; 101: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 10
	i32 2465532216, ; 102: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 37
	i32 2471841756, ; 103: netstandard.dll => 0x93554fdc => 88
	i32 2475788418, ; 104: Java.Interop.dll => 0x93918882 => 1
	i32 2501346920, ; 105: System.Data.DataSetExtensions => 0x95178668 => 91
	i32 2505896520, ; 106: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 56
	i32 2581819634, ; 107: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 71
	i32 2605712449, ; 108: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 87
	i32 2620871830, ; 109: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 42
	i32 2624644809, ; 110: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 47
	i32 2671474046, ; 111: Xamarin.KotlinX.Coroutines.Core => 0x9f3b757e => 86
	i32 2701096212, ; 112: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 68
	i32 2732626843, ; 113: Xamarin.AndroidX.Activity => 0xa2e0939b => 24
	i32 2737747696, ; 114: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 28
	i32 2770495804, ; 115: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 83
	i32 2778768386, ; 116: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 73
	i32 2779977773, ; 117: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 65
	i32 2795602088, ; 118: SkiaSharp.Views.Android.dll => 0xa6a180a8 => 8
	i32 2810250172, ; 119: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 39
	i32 2819470561, ; 120: System.Xml.dll => 0xa80db4e1 => 23
	i32 2821294376, ; 121: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 65
	i32 2847418871, ; 122: Xamarin.GooglePlayServices.Base => 0xa9b829f7 => 79
	i32 2853208004, ; 123: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 73
	i32 2855708567, ; 124: Xamarin.AndroidX.Transition => 0xaa36a797 => 69
	i32 2903344695, ; 125: System.ComponentModel.Composition => 0xad0d8637 => 95
	i32 2905242038, ; 126: mscorlib.dll => 0xad2a79b6 => 5
	i32 2912489636, ; 127: SkiaSharp.Views.Android => 0xad9910a4 => 8
	i32 2916838712, ; 128: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 74
	i32 2919462931, ; 129: System.Numerics.Vectors.dll => 0xae037813 => 20
	i32 2921128767, ; 130: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 26
	i32 2978675010, ; 131: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 46
	i32 2996846495, ; 132: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 55
	i32 3016983068, ; 133: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 67
	i32 3024354802, ; 134: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 52
	i32 3036068679, ; 135: Microcharts.Droid.dll => 0xb4f6bb47 => 3
	i32 3058099980, ; 136: Xamarin.GooglePlayServices.Tasks => 0xb646e70c => 82
	i32 3111772706, ; 137: System.Runtime.Serialization => 0xb979e222 => 96
	i32 3204380047, ; 138: System.Data.dll => 0xbefef58f => 89
	i32 3211777861, ; 139: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 45
	i32 3230466174, ; 140: Xamarin.GooglePlayServices.Basement.dll => 0xc08d007e => 80
	i32 3247949154, ; 141: Mono.Security => 0xc197c562 => 100
	i32 3258312781, ; 142: Xamarin.AndroidX.CardView => 0xc235e84d => 33
	i32 3286872994, ; 143: SQLite-net.dll => 0xc3e9b3a2 => 9
	i32 3317135071, ; 144: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 43
	i32 3317144872, ; 145: System.Data => 0xc5b79d28 => 89
	i32 3340387945, ; 146: SkiaSharp => 0xc71a4669 => 7
	i32 3340431453, ; 147: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 31
	i32 3345895724, ; 148: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 63
	i32 3360279109, ; 149: SQLitePCLRaw.core => 0xc849ca45 => 11
	i32 3362522851, ; 150: Xamarin.AndroidX.Core => 0xc86c06e3 => 41
	i32 3366347497, ; 151: Java.Interop => 0xc8a662e9 => 1
	i32 3374999561, ; 152: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 64
	i32 3395150330, ; 153: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 21
	i32 3404865022, ; 154: System.ServiceModel.Internals => 0xcaf21dfe => 97
	i32 3405233483, ; 155: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 44
	i32 3429136800, ; 156: System.Xml => 0xcc6479a0 => 23
	i32 3430777524, ; 157: netstandard => 0xcc7d82b4 => 88
	i32 3441283291, ; 158: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 47
	i32 3455791806, ; 159: Microcharts => 0xcdfb32be => 2
	i32 3476120550, ; 160: Mono.Android => 0xcf3163e6 => 4
	i32 3486566296, ; 161: System.Transactions => 0xcfd0c798 => 90
	i32 3493954962, ; 162: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 36
	i32 3494395880, ; 163: Xamarin.GooglePlayServices.Location.dll => 0xd0483fe8 => 81
	i32 3509114376, ; 164: System.Xml.Linq => 0xd128d608 => 99
	i32 3564458986, ; 165: expenso => 0xd47553ea => 0
	i32 3567349600, ; 166: System.ComponentModel.Composition.dll => 0xd4a16f60 => 95
	i32 3627220390, ; 167: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 62
	i32 3633644679, ; 168: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 26
	i32 3641597786, ; 169: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 54
	i32 3668042751, ; 170: Microcharts.dll => 0xdaa1e3ff => 2
	i32 3672681054, ; 171: Mono.Android.dll => 0xdae8aa5e => 4
	i32 3676310014, ; 172: System.Web.Services.dll => 0xdb2009fe => 98
	i32 3682565725, ; 173: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 32
	i32 3684561358, ; 174: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 36
	i32 3689375977, ; 175: System.Drawing.Common => 0xdbe768e9 => 92
	i32 3706696989, ; 176: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 40
	i32 3718780102, ; 177: Xamarin.AndroidX.Annotation => 0xdda814c6 => 25
	i32 3754567612, ; 178: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 13
	i32 3786282454, ; 179: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 34
	i32 3829621856, ; 180: System.Numerics.dll => 0xe4436460 => 19
	i32 3876362041, ; 181: SQLite-net => 0xe70c9739 => 9
	i32 3885922214, ; 182: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 69
	i32 3888767677, ; 183: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 63
	i32 3896760992, ; 184: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 41
	i32 3910130544, ; 185: Xamarin.AndroidX.Collection.Jvm => 0xe90fdb70 => 35
	i32 3920810846, ; 186: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 94
	i32 3921031405, ; 187: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 72
	i32 3945713374, ; 188: System.Data.DataSetExtensions.dll => 0xeb2ecede => 91
	i32 3955647286, ; 189: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 29
	i32 3959773229, ; 190: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 55
	i32 3967165417, ; 191: Xamarin.GooglePlayServices.Location => 0xec7623e9 => 81
	i32 3970018735, ; 192: Xamarin.GooglePlayServices.Tasks.dll => 0xeca1adaf => 82
	i32 4015948917, ; 193: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 27
	i32 4025784931, ; 194: System.Memory => 0xeff49a63 => 17
	i32 4101593132, ; 195: Xamarin.AndroidX.Emoji2 => 0xf479582c => 48
	i32 4105002889, ; 196: Mono.Security.dll => 0xf4ad5f89 => 100
	i32 4151237749, ; 197: System.Core => 0xf76edc75 => 15
	i32 4182413190, ; 198: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 58
	i32 4256097574, ; 199: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 40
	i32 4260525087, ; 200: System.Buffers => 0xfdf2741f => 14
	i32 4292120959 ; 201: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 58
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [202 x i32] [
	i32 56, i32 78, i32 6, i32 34, i32 32, i32 52, i32 98, i32 38, ; 0..7
	i32 51, i32 24, i32 19, i32 53, i32 12, i32 17, i32 37, i32 75, ; 8..15
	i32 50, i32 5, i32 16, i32 51, i32 60, i32 7, i32 90, i32 94, ; 16..23
	i32 43, i32 49, i32 72, i32 30, i32 99, i32 85, i32 83, i32 10, ; 24..31
	i32 93, i32 44, i32 92, i32 62, i32 3, i32 78, i32 6, i32 53, ; 32..39
	i32 66, i32 77, i32 29, i32 57, i32 84, i32 16, i32 70, i32 30, ; 40..47
	i32 0, i32 35, i32 67, i32 86, i32 71, i32 85, i32 27, i32 11, ; 48..55
	i32 46, i32 97, i32 66, i32 39, i32 21, i32 93, i32 28, i32 45, ; 56..63
	i32 96, i32 77, i32 59, i32 74, i32 49, i32 42, i32 18, i32 22, ; 64..71
	i32 68, i32 76, i32 38, i32 12, i32 33, i32 15, i32 50, i32 59, ; 72..79
	i32 84, i32 76, i32 75, i32 31, i32 80, i32 61, i32 14, i32 57, ; 80..87
	i32 54, i32 22, i32 20, i32 13, i32 79, i32 87, i32 18, i32 70, ; 88..95
	i32 60, i32 61, i32 64, i32 25, i32 48, i32 10, i32 37, i32 88, ; 96..103
	i32 1, i32 91, i32 56, i32 71, i32 87, i32 42, i32 47, i32 86, ; 104..111
	i32 68, i32 24, i32 28, i32 83, i32 73, i32 65, i32 8, i32 39, ; 112..119
	i32 23, i32 65, i32 79, i32 73, i32 69, i32 95, i32 5, i32 8, ; 120..127
	i32 74, i32 20, i32 26, i32 46, i32 55, i32 67, i32 52, i32 3, ; 128..135
	i32 82, i32 96, i32 89, i32 45, i32 80, i32 100, i32 33, i32 9, ; 136..143
	i32 43, i32 89, i32 7, i32 31, i32 63, i32 11, i32 41, i32 1, ; 144..151
	i32 64, i32 21, i32 97, i32 44, i32 23, i32 88, i32 47, i32 2, ; 152..159
	i32 4, i32 90, i32 36, i32 81, i32 99, i32 0, i32 95, i32 62, ; 160..167
	i32 26, i32 54, i32 2, i32 4, i32 98, i32 32, i32 36, i32 92, ; 168..175
	i32 40, i32 25, i32 13, i32 34, i32 19, i32 9, i32 69, i32 63, ; 176..183
	i32 41, i32 35, i32 94, i32 72, i32 91, i32 29, i32 55, i32 81, ; 184..191
	i32 82, i32 27, i32 17, i32 48, i32 100, i32 15, i32 58, i32 40, ; 192..199
	i32 14, i32 58 ; 200..201
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
