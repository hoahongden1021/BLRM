.class public Lcom/igexin/getuiext/activity/GetuiExtActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Lcom/igexin/getuiext/data/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v0, "isWifi"

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    const/4 v0, -0x1

    if-eqz v7, :cond_1

    const-string v0, "appIcon"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "url"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "name"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Lcom/igexin/getuiext/data/b;

    invoke-direct {v8}, Lcom/igexin/getuiext/data/b;-><init>()V

    invoke-virtual {v8, v3}, Lcom/igexin/getuiext/data/b;->a(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Lcom/igexin/getuiext/data/b;->c(Ljava/lang/String;)V

    const-string v0, "diffSize"

    const-wide/16 v4, 0x0

    invoke-virtual {v6, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lcom/igexin/getuiext/data/b;->b(J)V

    const-string v0, "fullSize"

    const-wide/16 v4, 0x0

    invoke-virtual {v6, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Lcom/igexin/getuiext/data/b;->a(J)V

    const-string v0, "versionName"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/igexin/getuiext/data/b;->b(Ljava/lang/String;)V

    const-string v0, "description"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/igexin/getuiext/data/b;->i(Ljava/lang/String;)V

    const-string v0, "versionCode"

    const/4 v4, 0x0

    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/igexin/getuiext/data/b;->a(I)V

    const-string v0, "pkgname"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/igexin/getuiext/data/b;->h(Ljava/lang/String;)V

    const-string v0, "updateType"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/igexin/getuiext/data/b;->g(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/igexin/download/SdkDownLoader;->getInstantiate(Landroid/content/Context;)Lcom/igexin/download/SdkDownLoader;

    move-result-object v0

    const-string v4, "/libs/tmp/"

    invoke-virtual {v0, v4}, Lcom/igexin/download/SdkDownLoader;->setDownloadDir(Ljava/lang/String;)V

    new-instance v4, Lcom/igexin/getuiext/data/a;

    invoke-direct {v4, v2, v3, v1}, Lcom/igexin/getuiext/data/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/igexin/getuiext/data/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/igexin/getuiext/data/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/igexin/getuiext/data/a;->c()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "GETUI_INC"

    invoke-virtual/range {v0 .. v5}, Lcom/igexin/download/SdkDownLoader;->newTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/igexin/getuiext/service/GetuiExtService;->basicDataHelper:Lcom/igexin/getuiext/data/c;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/igexin/getuiext/a/a;

    sget-object v2, Lcom/igexin/getuiext/service/GetuiExtService;->basicDataHelper:Lcom/igexin/getuiext/data/c;

    invoke-direct {v1, v2}, Lcom/igexin/getuiext/a/a;-><init>(Lcom/igexin/getuiext/data/c;)V

    invoke-virtual {v1, v0, v8}, Lcom/igexin/getuiext/a/a;->a(ILcom/igexin/getuiext/data/b;)V

    :cond_0
    sget-object v1, Lcom/igexin/getuiext/service/GetuiExtService;->appInfoMap:Ljava/util/HashMap;

    const-string v2, "pkgname"

    invoke-virtual {v6, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/igexin/getuiext/data/b;

    invoke-static {p1}, Lcom/igexin/getuiext/service/GetuiExtService;->DownLoadFormOriginalUrl(Lcom/igexin/getuiext/data/b;)V

    :cond_1
    sget-object v1, Lcom/igexin/getuiext/service/GetuiExtService;->appInfoMap:Ljava/util/HashMap;

    const-string v2, "pkgname"

    invoke-virtual {v6, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/igexin/getuiext/data/b;

    iput-object p1, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->a:Lcom/igexin/getuiext/data/b;

    iget-object v1, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->a:Lcom/igexin/getuiext/data/b;

    if-eqz v1, :cond_2

    const-string v1, ""

    if-eqz v7, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->a:Lcom/igexin/getuiext/data/b;

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/igexin/getuiext/service/GetuiExtService;->getBIData(Lcom/igexin/getuiext/data/b;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->a:Lcom/igexin/getuiext/data/b;

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/igexin/getuiext/service/GetuiExtService;->getBIData(Lcom/igexin/getuiext/data/b;IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "2"

    invoke-static {v1, v2}, Lcom/igexin/getuiext/service/GetuiExtService;->sendBIMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-static {v6, v7, p0, v0}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->ShowDialogView(Landroid/content/Intent;ZLandroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igexin/getuiext/activity/GetuiExtActivity;->setContentView(Landroid/view/View;)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->a:Lcom/igexin/getuiext/data/b;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/igexin/getuiext/service/GetuiExtService;->getBIData(Lcom/igexin/getuiext/data/b;IZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->a:Lcom/igexin/getuiext/data/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/getuiext/activity/GetuiExtActivity;->a:Lcom/igexin/getuiext/data/b;

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/igexin/getuiext/service/GetuiExtService;->uploadBIData(Lcom/igexin/getuiext/data/b;IZ)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
