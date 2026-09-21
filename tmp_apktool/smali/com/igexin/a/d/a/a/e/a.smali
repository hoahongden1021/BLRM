.class public Lcom/igexin/a/d/a/a/e/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/download/IDownloadCallback;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/util/Map;

.field private e:Ljava/util/Map;

.field private f:Ljava/util/Map;

.field private g:Ljava/util/List;

.field private h:Ljava/util/Timer;

.field private i:Ljava/util/Collection;

.field private j:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/igexin/a/d/a/a/e/a;->c:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/d/a/a/e/a;->d:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/d/a/a/e/a;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/d/a/a/e/a;->f:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/d/a/a/e/a;->g:Ljava/util/List;

    iput-object v2, p0, Lcom/igexin/a/d/a/a/e/a;->h:Ljava/util/Timer;

    iput-object v2, p0, Lcom/igexin/a/d/a/a/e/a;->i:Ljava/util/Collection;

    iput-object v2, p0, Lcom/igexin/a/d/a/a/e/a;->j:Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/igexin/a/d/a/a/e/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/igexin/a/d/a/a/e/a;->b:Ljava/lang/String;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/igexin/a/d/a/a/e/a;->j:Landroid/app/NotificationManager;

    return-void
.end method

.method private a(Landroid/app/NotificationManager;Lcom/igexin/download/DownloadInfo;)Landroid/app/Notification;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/igexin/download/DownloadInfo;->mNotice:Z

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/a;->a:Landroid/content/Context;

    iget-object v1, p2, Lcom/igexin/download/DownloadInfo;->mHint:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/igexin/a/d/a/a/e/e;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/d/a/a/e/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/igexin/download/SdkDownLoader;->getInstantiate(Landroid/content/Context;)Lcom/igexin/download/SdkDownLoader;

    move-result-object v1

    iget v2, p2, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v1, v2}, Lcom/igexin/download/SdkDownLoader;->deleteTask(I)Z

    iget v1, p2, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-static {v1}, Lcom/igexin/a/d/a/a/e/e;->a(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-object v0
.end method

.method static synthetic a(Lcom/igexin/a/d/a/a/e/a;Landroid/app/NotificationManager;Lcom/igexin/download/DownloadInfo;)Landroid/app/Notification;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/igexin/a/d/a/a/e/a;->a(Landroid/app/NotificationManager;Lcom/igexin/download/DownloadInfo;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/igexin/download/DownloadInfo;Lcom/igexin/a/d/a/a/b/a;Landroid/app/NotificationManager;)Landroid/app/Notification;
    .locals 9

    const/4 v8, 0x0

    iget-boolean v0, p1, Lcom/igexin/download/DownloadInfo;->mNotice:Z

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/igexin/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/igexin/download/DownloadInfo;->mNotice:Z

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

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/igexin/a/d/a/a/b/a;->m()Lcom/igexin/a/b/b/e;

    move-result-object v0

    if-nez v0, :cond_0

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "messageid"

    invoke-virtual {v0}, Lcom/igexin/a/b/b/e;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "taskid"

    invoke-virtual {v0}, Lcom/igexin/a/b/b/e;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "appid"

    invoke-virtual {v0}, Lcom/igexin/a/b/b/e;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "key"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "APPINSTALL_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Lcom/igexin/a/d/a/a/b/a;->n()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "is_autostart"

    invoke-virtual {p2}, Lcom/igexin/a/d/a/a/b/a;->i()Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v5, "info"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v4}, Landroid/text/format/Time;->setToNow()V

    const-string v5, "createtime"

    invoke-virtual {v4}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/16 v7, 0x8

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/a/d/a/a/c/c;->a()Lcom/igexin/a/d/a/a/c/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igexin/a/d/a/a/c/c;->d()Lcom/igexin/a/d/a/a/d/a;

    move-result-object v4

    const-string v5, "message"

    invoke-virtual {v4, v5, v3}, Lcom/igexin/a/d/a/a/d/a;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    const-string v3, "appId"

    invoke-virtual {v0}, Lcom/igexin/a/b/b/e;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "appKey"

    invoke-virtual {v0}, Lcom/igexin/a/b/b/e;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "messageId"

    invoke-virtual {v0}, Lcom/igexin/a/b/b/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "taskId"

    invoke-virtual {v0}, Lcom/igexin/a/b/b/e;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "msgAddress"

    invoke-virtual {v0}, Lcom/igexin/a/b/b/e;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget v2, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-static {v2}, Lcom/igexin/a/d/a/a/e/e;->a(I)I

    move-result v2

    invoke-virtual {p3, v2}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v2, p0, Lcom/igexin/a/d/a/a/e/a;->e:Ljava/util/Map;

    iget v3, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v2

    const-string v3, "10060"

    invoke-virtual {v2, v0, v3}, Lcom/igexin/a/b/a/f;->a(Lcom/igexin/a/b/b/e;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/igexin/a/d/a/a/b/a;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    sget v2, Lcom/igexin/a/d/a/a/c/a;->a:I

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/igexin/a/d/a/a/c/c;->a()Lcom/igexin/a/d/a/a/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/a/d/a/a/c/c;->a(Landroid/os/Message;)Z

    move-object v0, v8

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/a;->a:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/igexin/a/d/a/a/e/e;->a(Landroid/content/Context;Lcom/igexin/download/DownloadInfo;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/a;->a:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/igexin/a/d/a/a/e/e;->a(Landroid/content/Context;Lcom/igexin/download/DownloadInfo;Landroid/content/Intent;)Landroid/app/Notification;

    move-result-object v0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    goto/16 :goto_1

    :cond_3
    move-object v0, v8

    goto/16 :goto_0
.end method

.method private a(I)Lcom/igexin/download/DownloadInfo;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/a;->i:Ljava/util/Collection;

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/a;->i:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/download/DownloadInfo;

    iget v1, p0, Lcom/igexin/download/DownloadInfo;->mId:I

    if-ne v1, p1, :cond_1

    move-object v0, p0

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/igexin/a/d/a/a/e/a;I)Lcom/igexin/download/DownloadInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/igexin/a/d/a/a/e/a;->a(I)Lcom/igexin/download/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/igexin/a/d/a/a/e/a;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/a;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/igexin/a/d/a/a/e/a;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/d/a/a/e/a;->h:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic b(Lcom/igexin/a/d/a/a/e/a;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/a;->h:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic c(Lcom/igexin/a/d/a/a/e/a;)J
    .locals 2

    iget-wide v0, p0, Lcom/igexin/a/d/a/a/e/a;->c:J

    return-wide v0
.end method

.method static synthetic d(Lcom/igexin/a/d/a/a/e/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/a;->g:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/igexin/a/d/a/a/e/a;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/a;->j:Landroid/app/NotificationManager;

    return-object v0
.end method


# virtual methods
.method public a(ILcom/igexin/a/d/a/a/b/a;)V
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/a;->d:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public update(Lcom/igexin/download/DownloadInfo;)V
    .locals 18

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/a;->d:Ljava/util/Map;

    move-object v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/igexin/a/d/a/a/b/a;

    move-object v10, v0

    if-nez v10, :cond_3

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "APPDOWN_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/igexin/a/d/a/a/c/c;->a()Lcom/igexin/a/d/a/a/c/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igexin/a/d/a/a/c/c;->d()Lcom/igexin/a/d/a/a/d/a;

    move-result-object v4

    :try_start_0
    const-string v5, "message"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v9, "key"

    aput-object v9, v6, v7

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/igexin/a/d/a/a/d/a;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v13

    if-eqz v13, :cond_12

    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_12

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v4, "taskid"

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "messageid"

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "info"

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sget-object v4, Lcom/igexin/a/b/g;->X:Ljava/util/Map;

    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/igexin/a/b/b/e;

    move-object v11, v0

    if-nez v11, :cond_11

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "key"

    aput-object v5, v6, v4

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igexin/a/b/f;->j()Lcom/igexin/a/c/b;

    move-result-object v4

    const-string v5, "message"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "CACHE_"

    move-object v0, v9

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/igexin/a/c/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    if-eqz v4, :cond_10

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_10

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v5, "info"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v5, Lcom/igexin/a/b/b/e;

    invoke-direct {v5}, Lcom/igexin/a/b/b/e;-><init>()V

    const-string v7, "appid"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/igexin/a/b/b/e;->a(Ljava/lang/String;)V

    const-string v7, "messageid"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/igexin/a/b/b/e;->c(Ljava/lang/String;)V

    const-string v7, "taskid"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/igexin/a/b/b/e;->d(Ljava/lang/String;)V

    const-string v7, "id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/igexin/a/b/b/e;->b(Ljava/lang/String;)V

    const-string v7, "appkey"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/igexin/a/b/b/e;->f(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/igexin/a/b/b/e;->a(I)V

    const-string v7, "17258000"

    invoke-virtual {v5, v7}, Lcom/igexin/a/b/b/e;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v7

    invoke-virtual {v7, v6, v5}, Lcom/igexin/a/b/a/f;->a(Lorg/json/JSONObject;Lcom/igexin/a/b/b/e;)Z

    sget-object v6, Lcom/igexin/a/b/g;->X:Ljava/util/Map;

    invoke-interface {v6, v15, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v17, v5

    move-object v5, v4

    move-object/from16 v4, v17

    :goto_1
    :try_start_3
    new-instance v6, Lcom/igexin/a/d/a/a/b/a;

    invoke-direct {v6}, Lcom/igexin/a/d/a/a/b/a;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v6, v4}, Lcom/igexin/a/d/a/a/b/a;->a(Lcom/igexin/a/b/b/e;)V

    const-string v4, "actionid"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/igexin/a/d/a/a/b/a;->a(Ljava/lang/String;)V

    const-string v4, "appstartupid"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/igexin/a/d/a/a/b/a;->h(Ljava/lang/String;)V

    const-string v4, "pkgname"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/igexin/a/d/a/a/b/a;->i(Ljava/lang/String;)V

    const-string v4, "is_autoinstall"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v6, v4}, Lcom/igexin/a/d/a/a/b/a;->b(Z)V

    const-string v4, "is_autostart"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v6, v4}, Lcom/igexin/a/d/a/a/b/a;->a(Z)V

    const-string v4, "is_showprogress"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v6, v4}, Lcom/igexin/a/d/a/a/b/a;->e(Z)V

    const-string v4, "url"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/igexin/a/d/a/a/b/a;->d(Ljava/lang/String;)V

    const-string v4, "name"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/igexin/a/d/a/a/b/a;->g(Ljava/lang/String;)V

    const-string v4, "logo"

    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/igexin/a/d/a/a/b/a;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v4, v5

    move-object v5, v6

    :goto_2
    if-eqz v13, :cond_2

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v4, :cond_f

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object v4, v5

    :goto_3
    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/a;->d:Ljava/util/Map;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v10, v4

    :cond_3
    const/4 v11, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/igexin/download/DownloadInfo;->refreshSpeed()V

    move-object/from16 v0, p1

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    move v4, v0

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/a;->f:Ljava/util/Map;

    move-object v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/a;->h:Ljava/util/Timer;

    move-object v4, v0

    if-nez v4, :cond_5

    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/igexin/a/d/a/a/e/a;->h:Ljava/util/Timer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/a;->h:Ljava/util/Timer;

    move-object v4, v0

    new-instance v5, Lcom/igexin/a/d/a/a/e/b;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/igexin/a/d/a/a/e/b;-><init>(Lcom/igexin/a/d/a/a/e/a;)V

    const-wide/16 v6, 0x64

    const-wide/16 v8, 0x1388

    invoke-virtual/range {v4 .. v9}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_5
    if-eqz v10, :cond_c

    invoke-virtual {v10}, Lcom/igexin/a/d/a/a/b/a;->k()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v10}, Lcom/igexin/a/d/a/a/b/a;->l()Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Lcom/igexin/a/d/a/a/b/a;->f(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/a;->a:Landroid/content/Context;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6b63\u5728\u4e0b\u8f7d  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/igexin/download/DownloadInfo;->mHint:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :catch_0
    move-exception v4

    move-object v4, v12

    move-object v5, v11

    move-object v6, v10

    :goto_5
    if-eqz v5, :cond_6

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v4, :cond_e

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move-object v4, v6

    goto/16 :goto_3

    :catchall_0
    move-exception v4

    move-object v5, v12

    move-object v6, v11

    :goto_6
    if-eqz v6, :cond_7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v5, :cond_8

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v4

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/a;->f:Ljava/util/Map;

    move-object v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/a;->f:Ljava/util/Map;

    move-object v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/igexin/download/DownloadInfo;->mDownSpeed:J

    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/a;->f:Ljava/util/Map;

    move-object v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p1

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    move v4, v0

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/a;->j:Landroid/app/NotificationManager;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/igexin/a/d/a/a/e/a;->a(Lcom/igexin/download/DownloadInfo;Lcom/igexin/a/d/a/a/b/a;Landroid/app/NotificationManager;)Landroid/app/Notification;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/a;->j:Landroid/app/NotificationManager;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    move v6, v0

    invoke-static {v6}, Lcom/igexin/a/d/a/a/e/e;->a(I)I

    move-result v6

    invoke-virtual {v5, v6, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p1

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    move v4, v0

    sparse-switch v4, :sswitch_data_0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/igexin/download/DownloadInfo;->mNotice:Z

    move v4, v0

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/a;->j:Landroid/app/NotificationManager;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/igexin/a/d/a/a/e/a;->a(Landroid/app/NotificationManager;Lcom/igexin/download/DownloadInfo;)Landroid/app/Notification;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/a;->d:Ljava/util/Map;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/a;->f:Ljava/util/Map;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/a;->e:Ljava/util/Map;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/a;->j:Landroid/app/NotificationManager;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    move v6, v0

    invoke-static {v6}, Lcom/igexin/a/d/a/a/e/e;->a(I)I

    move-result v6

    invoke-virtual {v5, v6, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/a;->e:Ljava/util/Map;

    move-object v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Notification;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/a;->a:Landroid/content/Context;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v4

    move-object/from16 v2, p1

    move-object v3, v10

    invoke-static {v0, v1, v2, v3}, Lcom/igexin/a/d/a/a/e/e;->a(Landroid/content/Context;Landroid/app/Notification;Lcom/igexin/download/DownloadInfo;Lcom/igexin/a/d/a/a/b/a;)Landroid/app/Notification;

    move-result-object v4

    goto :goto_7

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/a;->j:Landroid/app/NotificationManager;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v10

    move-object v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/igexin/a/d/a/a/e/a;->a(Lcom/igexin/download/DownloadInfo;Lcom/igexin/a/d/a/a/b/a;Landroid/app/NotificationManager;)Landroid/app/Notification;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/a;->a:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Lcom/igexin/download/SdkDownLoader;->getInstantiate(Landroid/content/Context;)Lcom/igexin/download/SdkDownLoader;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    move v6, v0

    invoke-virtual {v5, v6}, Lcom/igexin/download/SdkDownLoader;->deleteTask(I)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/a;->d:Ljava/util/Map;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :sswitch_2
    move-object/from16 v0, p1

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mControl:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/a;->j:Landroid/app/NotificationManager;

    move-object v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    move v5, v0

    invoke-static {v5}, Lcom/igexin/a/d/a/a/e/e;->a(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/NotificationManager;->cancel(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/a;->e:Ljava/util/Map;

    move-object v4, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mId:I

    move v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v4, v11

    goto/16 :goto_7

    :catchall_1
    move-exception v4

    move-object v5, v12

    move-object v6, v13

    goto/16 :goto_6

    :catchall_2
    move-exception v5

    move-object v6, v13

    move-object/from16 v17, v4

    move-object v4, v5

    move-object/from16 v5, v17

    goto/16 :goto_6

    :catchall_3
    move-exception v4

    move-object v6, v13

    goto/16 :goto_6

    :catch_1
    move-exception v4

    move-object v4, v12

    move-object v5, v13

    move-object v6, v10

    goto/16 :goto_5

    :catch_2
    move-exception v5

    move-object v5, v13

    move-object v6, v10

    goto/16 :goto_5

    :catch_3
    move-exception v4

    move-object v4, v5

    move-object v6, v10

    move-object v5, v13

    goto/16 :goto_5

    :catch_4
    move-exception v4

    move-object v4, v5

    move-object v5, v13

    goto/16 :goto_5

    :cond_d
    move-object v4, v11

    goto/16 :goto_7

    :cond_e
    move-object v4, v6

    goto/16 :goto_3

    :cond_f
    move-object v4, v5

    goto/16 :goto_3

    :cond_10
    move-object v5, v4

    move-object v4, v11

    goto/16 :goto_1

    :cond_11
    move-object v4, v11

    move-object v5, v12

    goto/16 :goto_1

    :cond_12
    move-object v4, v12

    move-object v5, v10

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_2
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
