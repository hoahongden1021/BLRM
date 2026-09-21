.class Lj2ab/android/app/ShowWebViewActivity$MyWebViewClient;
.super Landroid/webkit/WebViewClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj2ab/android/app/ShowWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyWebViewClient"
.end annotation


# instance fields
.field final synthetic this$0:Lj2ab/android/app/ShowWebViewActivity;


# direct methods
.method private constructor <init>(Lj2ab/android/app/ShowWebViewActivity;)V
    .locals 0

    iput-object p1, p0, Lj2ab/android/app/ShowWebViewActivity$MyWebViewClient;->this$0:Lj2ab/android/app/ShowWebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lj2ab/android/app/ShowWebViewActivity;Lj2ab/android/app/ShowWebViewActivity$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lj2ab/android/app/ShowWebViewActivity$MyWebViewClient;-><init>(Lj2ab/android/app/ShowWebViewActivity;)V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
