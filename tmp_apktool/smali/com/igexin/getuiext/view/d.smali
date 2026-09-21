.class final Lcom/igexin/getuiext/view/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/igexin/getuiext/data/b;


# direct methods
.method constructor <init>(Lcom/igexin/getuiext/data/b;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/getuiext/view/d;->a:Lcom/igexin/getuiext/data/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_1

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package"

    sget-object v2, Lcom/igexin/getuiext/view/GetuiExtDialogView;->b:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_0
    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/igexin/getuiext/view/d;->a:Lcom/igexin/getuiext/data/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/getuiext/view/d;->a:Lcom/igexin/getuiext/data/b;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/igexin/getuiext/service/GetuiExtService;->uploadBIData(Lcom/igexin/getuiext/data/b;IZ)V

    :cond_0
    return-void

    :cond_1
    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    const-string v1, "pkg"

    :goto_1
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.InstalledAppDetails"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/igexin/getuiext/view/GetuiExtDialogView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string v1, "com.android.settings.ApplicationPkgName"

    goto :goto_1
.end method
