.class Lcom/igexin/a/d/a/a/e/d;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/igexin/a/d/a/a/e/c;


# direct methods
.method constructor <init>(Lcom/igexin/a/d/a/a/e/c;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x0

    const-string v0, "chmod"

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/igexin/a/d/a/a/e/d;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    iget-boolean v0, v0, Lcom/igexin/a/d/a/a/e/c;->c:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "chmod"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "705"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    iget-object v2, v2, Lcom/igexin/a/d/a/a/e/c;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "chmod"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "604"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    iget-object v2, v2, Lcom/igexin/a/d/a/a/e/c;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/c;->b:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "messageid"

    iget-object v3, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v3}, Lcom/igexin/a/d/a/a/e/c;->a(Lcom/igexin/a/d/a/a/e/c;)Lcom/igexin/a/b/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igexin/a/b/b/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "taskid"

    iget-object v3, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v3}, Lcom/igexin/a/d/a/a/e/c;->a(Lcom/igexin/a/d/a/a/e/c;)Lcom/igexin/a/b/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igexin/a/b/b/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appid"

    iget-object v3, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v3}, Lcom/igexin/a/d/a/a/e/c;->b(Lcom/igexin/a/d/a/a/e/c;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "key"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "APPINSTALL_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v4}, Lcom/igexin/a/d/a/a/e/c;->c(Lcom/igexin/a/d/a/a/e/c;)Lcom/igexin/a/d/a/a/b/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igexin/a/d/a/a/b/a;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "is_autostart"

    iget-object v4, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v4}, Lcom/igexin/a/d/a/a/e/c;->c(Lcom/igexin/a/d/a/a/e/c;)Lcom/igexin/a/d/a/a/b/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igexin/a/d/a/a/b/a;->i()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "info"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    invoke-static {}, Lcom/igexin/a/d/a/a/c/c;->a()Lcom/igexin/a/d/a/a/c/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/a/d/a/a/c/c;->d()Lcom/igexin/a/d/a/a/d/a;

    move-result-object v2

    const-string v3, "message"

    invoke-virtual {v2, v3, v1}, Lcom/igexin/a/d/a/a/d/a;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.igexin.sdk.action.INSTALL"

    const-string v3, "package:"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "uri"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v0}, Lcom/igexin/a/d/a/a/e/c;->a(Lcom/igexin/a/d/a/a/e/c;)Lcom/igexin/a/b/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/b/e;->a()Ljava/lang/String;

    move-result-object v0

    const-string v3, "appId"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v0}, Lcom/igexin/a/d/a/a/e/c;->a(Lcom/igexin/a/d/a/a/e/c;)Lcom/igexin/a/b/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/b/e;->g()Ljava/lang/String;

    move-result-object v0

    const-string v3, "appKey"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v0}, Lcom/igexin/a/d/a/a/e/c;->a(Lcom/igexin/a/d/a/a/e/c;)Lcom/igexin/a/b/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/b/e;->b()Ljava/lang/String;

    move-result-object v0

    const-string v3, "messageId"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v0}, Lcom/igexin/a/d/a/a/e/c;->a(Lcom/igexin/a/d/a/a/e/c;)Lcom/igexin/a/b/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/b/e;->d()Ljava/lang/String;

    move-result-object v0

    const-string v3, "taskId"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v0}, Lcom/igexin/a/d/a/a/e/c;->a(Lcom/igexin/a/d/a/a/e/c;)Lcom/igexin/a/b/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/b/e;->f()Ljava/lang/String;

    move-result-object v0

    const-string v3, "msgAddress"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v0}, Lcom/igexin/a/d/a/a/e/c;->c(Lcom/igexin/a/d/a/a/e/c;)Lcom/igexin/a/d/a/a/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/b/a;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v0}, Lcom/igexin/a/d/a/a/e/c;->d(Lcom/igexin/a/d/a/a/e/c;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v0}, Lcom/igexin/a/d/a/a/e/c;->e(Lcom/igexin/a/d/a/a/e/c;)Landroid/app/NotificationManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v0}, Lcom/igexin/a/d/a/a/e/c;->e(Lcom/igexin/a/d/a/a/e/c;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v1}, Lcom/igexin/a/d/a/a/e/c;->f(Lcom/igexin/a/d/a/a/e/c;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v0}, Lcom/igexin/a/d/a/a/e/c;->d(Lcom/igexin/a/d/a/a/e/c;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v2}, Lcom/igexin/a/d/a/a/e/c;->f(Lcom/igexin/a/d/a/a/e/c;)I

    move-result v2

    invoke-static {v0, v2, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v0}, Lcom/igexin/a/d/a/a/e/c;->g(Lcom/igexin/a/d/a/a/e/c;)Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    invoke-static {v0, v2}, Lcom/igexin/a/d/a/a/e/c;->a(Lcom/igexin/a/d/a/a/e/c;Landroid/app/Notification;)Landroid/app/Notification;

    iget-object v2, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v0}, Lcom/igexin/a/d/a/a/e/c;->d(Lcom/igexin/a/d/a/a/e/c;)Landroid/content/Context;

    move-result-object v0

    const-string v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    invoke-static {v2, v0}, Lcom/igexin/a/d/a/a/e/c;->a(Lcom/igexin/a/d/a/a/e/c;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;

    :cond_3
    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v0}, Lcom/igexin/a/d/a/a/e/c;->g(Lcom/igexin/a/d/a/a/e/c;)Landroid/app/Notification;

    move-result-object v0

    const v2, 0x1080082

    iput v2, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v0}, Lcom/igexin/a/d/a/a/e/c;->g(Lcom/igexin/a/d/a/a/e/c;)Landroid/app/Notification;

    move-result-object v0

    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v0}, Lcom/igexin/a/d/a/a/e/c;->g(Lcom/igexin/a/d/a/a/e/c;)Landroid/app/Notification;

    move-result-object v0

    iget-object v2, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v2}, Lcom/igexin/a/d/a/a/e/c;->d(Lcom/igexin/a/d/a/a/e/c;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v3}, Lcom/igexin/a/d/a/a/e/c;->c(Lcom/igexin/a/d/a/a/e/c;)Lcom/igexin/a/d/a/a/b/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igexin/a/d/a/a/b/a;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u4e0b\u8f7d\u6210\u529f,\u70b9\u51fb\u5b89\u88c5\uff01"

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v0}, Lcom/igexin/a/d/a/a/e/c;->e(Lcom/igexin/a/d/a/a/e/c;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v1}, Lcom/igexin/a/d/a/a/e/c;->f(Lcom/igexin/a/d/a/a/e/c;)I

    move-result v1

    iget-object v2, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v2}, Lcom/igexin/a/d/a/a/e/c;->g(Lcom/igexin/a/d/a/a/e/c;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v0}, Lcom/igexin/a/d/a/a/e/c;->g(Lcom/igexin/a/d/a/a/e/c;)Landroid/app/Notification;

    move-result-object v0

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v0}, Lcom/igexin/a/d/a/a/e/c;->g(Lcom/igexin/a/d/a/a/e/c;)Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v1}, Lcom/igexin/a/d/a/a/e/c;->d(Lcom/igexin/a/d/a/a/e/c;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v2}, Lcom/igexin/a/d/a/a/e/c;->c(Lcom/igexin/a/d/a/a/e/c;)Lcom/igexin/a/d/a/a/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/a/d/a/a/b/a;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u7a0d\u5019\u518d\u8bd5\uff01"

    iget-object v4, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v4}, Lcom/igexin/a/d/a/a/e/c;->h(Lcom/igexin/a/d/a/a/e/c;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v0}, Lcom/igexin/a/d/a/a/e/c;->e(Lcom/igexin/a/d/a/a/e/c;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v1}, Lcom/igexin/a/d/a/a/e/c;->f(Lcom/igexin/a/d/a/a/e/c;)I

    move-result v1

    iget-object v2, p0, Lcom/igexin/a/d/a/a/e/d;->a:Lcom/igexin/a/d/a/a/e/c;

    invoke-static {v2}, Lcom/igexin/a/d/a/a/e/c;->g(Lcom/igexin/a/d/a/a/e/c;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :catch_0
    move-exception v2

    goto/16 :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
