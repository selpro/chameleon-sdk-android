# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}

# Uncomment this to preserve the line number information for
# debugging stack traces.
#-keepattributes SourceFile,LineNumberTable

# If you keep the line number information, uncomment this to
# hide the original source file name.
#-renamesourcefileattribute SourceFile

-optimizationpasses 5
-dontusemixedcaseclassnames
-dontskipnonpubliclibraryclasses
-dontpreverify
-verbose
-dontoptimize
-dontshrink
-allowaccessmodification
-keepattributes *Annotation*
-keepattributes Exceptions
-keepattributes JavascriptInterface
-keepattributes LineNumberTable
-keepattributes Signature
-keepattributes SourceFile
-keepattributes EnclosingMethod

-keep public class * extends android.app.Activity
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference

-keepclasseswithmembernames class * {
    native <methods>;
}

-keepclassmembers class * extends android.view.View {
    public <init>(android.content.Context);
    public <init>(android.content.Context);
    public <init>(android.content.Context, android.util.AttributeSet);
    public <init>(android.content.Context, android.util.AttributeSet, int);
    void set*(***);
    *** get*();
}

-keepclassmembers enum * {
    public static <fields>;
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

-keep class * implements android.os.Parcelable {
    public static final android.os.Parcelable$Creator *;
}

# ========== okhttp 混淆配置 ==========
-keep class okhttp3.** { *; }
-keep interface okhttp3.** { *; }
-dontwarn okhttp3.**

-keep class okio.** { *; }
-keep interface okio.** { *; }
-dontwarn okio.**

# ========== gson 混淆配置 ==========
-keepclassmembers class * {
    @com.google.gson.annotations.SerializedName <fields>;
}
-keep class * implements com.google.gson.JsonSerializer
-keep class * implements com.google.gson.JsonDeserializer

# ========== fastjson 混淆配置 ==========
-dontwarn com.alibaba.fastjson.**
-keep class com.alibaba.fastjson.*{*;}

# ========== weex 混淆配置 ==========
-keep class org.apache.weex.WXDebugTool{*;}
-keep class org.apache.weex.devtools.common.LogUtil{*;}
-keepclassmembers class ** {
  @org.apache.weex.ui.component.WXComponentProp public *;
}
-keep class org.apache.weex.bridge.**{*;}
-keep class org.apache.weex.dom.**{*;}
-keep class org.apache.weex.adapter.**{*;}
-keep class org.apache.weex.common.**{*;}
-keep class * implements org.apache.weex.IWXObject{*;}
-keep class org.apache.weex.ui.**{*;}
-keep class org.apache.weex.ui.component.**{*;}
-keep class org.apache.weex.utils.**{
    public <fields>;
    public <methods>;
    }
-keep class org.apache.weex.view.**{*;}
-keep class org.apache.weex.module.**{*;}
-keep public class * extends org.apache.weex.common.WXModule{*;}
-keep public class * extends org.apache.weex.ui.component.WXComponent{*;}
-keep class * implements org.apache.weex.ui.IExternalComponentGetter{*;}

# ========== chameleon 包下的类混淆配置 ==========
-keep class com.didi.chameleon.** { *; }
