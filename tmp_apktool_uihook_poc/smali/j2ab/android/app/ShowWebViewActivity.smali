.class public Lj2ab/android/app/ShowWebViewActivity;
.super Landroid/app/Activity;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj2ab/android/app/ShowWebViewActivity$1;,
        Lj2ab/android/app/ShowWebViewActivity$MyWebViewClient;
    }
.end annotation


# instance fields
.field public Url:Ljava/lang/String;

.field public wv:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lj2ab/android/app/ShowWebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj2ab/android/app/ShowWebViewActivity;->Url:Ljava/lang/String;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Url = bundle.getString"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lj2ab/android/app/ShowWebViewActivity;->Url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lj2ab/android/app/ShowWebViewActivity;->wv:Landroid/webkit/WebView;

    iget-object v0, p0, Lj2ab/android/app/ShowWebViewActivity;->wv:Landroid/webkit/WebView;

    new-instance v1, Lj2ab/android/app/ShowWebViewActivity$MyWebViewClient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lj2ab/android/app/ShowWebViewActivity$MyWebViewClient;-><init>(Lj2ab/android/app/ShowWebViewActivity;Lj2ab/android/app/ShowWebViewActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    iget-object v0, p0, Lj2ab/android/app/ShowWebViewActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    iget-object v0, p0, Lj2ab/android/app/ShowWebViewActivity;->wv:Landroid/webkit/WebView;

    iget-object v1, p0, Lj2ab/android/app/ShowWebViewActivity;->Url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lj2ab/android/app/ShowWebViewActivity;->wv:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lj2ab/android/app/ShowWebViewActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method
