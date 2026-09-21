.class public Lcom/igexin/getuiext/service/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/download/IDownloadCallback;


# static fields
.field public static a:Ljava/util/Map;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Ljava/util/Map;

.field private f:Ljava/util/List;

.field private g:Ljava/util/Timer;

.field private h:Ljava/util/Collection;

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/getuiext/service/a;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, Lcom/igexin/getuiext/service/a;->d:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/getuiext/service/a;->e:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igexin/getuiext/service/a;->f:Ljava/util/List;

    iput-object v2, p0, Lcom/igexin/getuiext/service/a;->g:Ljava/util/Timer;

    iput-object v2, p0, Lcom/igexin/getuiext/service/a;->h:Ljava/util/Collection;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/getuiext/service/a;->i:Z

    iput-object p1, p0, Lcom/igexin/getuiext/service/a;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/igexin/getuiext/service/a;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Landroid/app/NotificationManager;Lcom/igexin/download/DownloadInfo;)Landroid/app/Notification;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/igexin/download/DownloadInfo;->mNotice:Z

    iget-object v0, p0, Lcom/igexin/getuiext/service/a;->b:Landroid/content/Context;

    iget-object v1, p2, Lcom/igexin/download/DownloadInfo;->mHint:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/igexin/getuiext/util/b;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/getuiext/service/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/igexin/download/SdkDownLoader;->getInstantiate(Landroid/content/Context;)Lcom/igexin/download/SdkDownLoader;

    move-result-object v1

    iget v2, p2, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v1, v2}, Lcom/igexin/download/SdkDownLoader;->deleteTask(I)Z

    iget v1, p2, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-static {v1}, Lcom/igexin/getuiext/util/b;->a(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-object v0
.end method

.method private a(Lcom/igexin/download/DownloadInfo;Landroid/app/NotificationManager;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p1, Lcom/igexin/download/DownloadInfo;->mNotice:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/igexin/download/DownloadInfo;->mNotice:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.igexin.increment"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "action"

    const-string v2, "install"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "filepath"

    iget-object v2, p1, Lcom/igexin/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "downloadId"

    iget v2, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "verifyCode"

    sget v2, Lcom/igexin/getuiext/data/Consts;->verifyCode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v1, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    const/16 v2, 0x64

    iget-object v3, p1, Lcom/igexin/download/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->updateProcessBarStatus(IILjava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/getuiext/service/a;->b:Landroid/content/Context;

    invoke-static {v1, p1, v0, p3}, Lcom/igexin/getuiext/util/b;->a(Landroid/content/Context;Lcom/igexin/download/DownloadInfo;Landroid/content/Intent;Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/igexin/getuiext/service/a;Landroid/app/NotificationManager;Lcom/igexin/download/DownloadInfo;)Landroid/app/Notification;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/igexin/getuiext/service/a;->a(Landroid/app/NotificationManager;Lcom/igexin/download/DownloadInfo;)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private a(I)Lcom/igexin/download/DownloadInfo;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/igexin/getuiext/service/a;->h:Ljava/util/Collection;

    if-nez v0, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/igexin/getuiext/service/a;->h:Ljava/util/Collection;

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

.method static synthetic a(Lcom/igexin/getuiext/service/a;I)Lcom/igexin/download/DownloadInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/igexin/getuiext/service/a;->a(I)Lcom/igexin/download/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/igexin/getuiext/service/a;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/service/a;->e:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/igexin/getuiext/service/a;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    iput-object p1, p0, Lcom/igexin/getuiext/service/a;->g:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic b(Lcom/igexin/getuiext/service/a;)Ljava/util/Timer;
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/service/a;->g:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic c(Lcom/igexin/getuiext/service/a;)J
    .locals 2

    iget-wide v0, p0, Lcom/igexin/getuiext/service/a;->d:J

    return-wide v0
.end method

.method static synthetic d(Lcom/igexin/getuiext/service/a;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/service/a;->f:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/service/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public update(Lcom/igexin/download/DownloadInfo;)V
    .locals 10

    const/4 v3, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lcom/igexin/getuiext/util/b;->a()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v2, p0, Lcom/igexin/getuiext/service/a;->i:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/igexin/getuiext/service/a;->b:Landroid/content/Context;

    const-string v2, "\u5f53\u524dSD\u5361\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u8bbe\u7f6e\u3002"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iput-boolean v3, p0, Lcom/igexin/getuiext/service/a;->i:Z

    :goto_1
    iget-object v1, p0, Lcom/igexin/getuiext/service/a;->b:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/app/NotificationManager;

    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/igexin/download/DownloadInfo;->refreshSpeed()V

    iget v1, p1, Lcom/igexin/download/DownloadInfo;->mStatus:I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/igexin/getuiext/service/a;->e:Ljava/util/Map;

    iget v2, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/igexin/getuiext/service/a;->g:Ljava/util/Timer;

    if-nez v1, :cond_3

    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/igexin/getuiext/service/a;->g:Ljava/util/Timer;

    iget-object v1, p0, Lcom/igexin/getuiext/service/a;->g:Ljava/util/Timer;

    new-instance v2, Lcom/igexin/getuiext/service/b;

    invoke-direct {v2, p0, v7}, Lcom/igexin/getuiext/service/b;-><init>(Lcom/igexin/getuiext/service/a;Landroid/app/NotificationManager;)V

    const-wide/16 v3, 0x64

    const-wide/16 v5, 0x1388

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_3
    sget-object v1, Lcom/igexin/getuiext/service/a;->a:Ljava/util/Map;

    iget v2, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Notification;

    iget v2, p1, Lcom/igexin/download/DownloadInfo;->mStatus:I

    sparse-switch v2, :sswitch_data_0

    iget-boolean v1, p1, Lcom/igexin/download/DownloadInfo;->mNotice:Z

    if-nez v1, :cond_8

    invoke-direct {p0, v7, p1}, Lcom/igexin/getuiext/service/a;->a(Landroid/app/NotificationManager;Lcom/igexin/download/DownloadInfo;)Landroid/app/Notification;

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/getuiext/service/a;->e:Ljava/util/Map;

    iget v3, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_3
    if-eqz v1, :cond_0

    sget-object v2, Lcom/igexin/getuiext/service/a;->a:Ljava/util/Map;

    iget v3, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v2, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-static {v2}, Lcom/igexin/getuiext/util/b;->a(I)I

    move-result v2

    invoke-virtual {v7, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_5
    iput-boolean v9, p0, Lcom/igexin/getuiext/service/a;->i:Z

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/igexin/getuiext/service/a;->e:Ljava/util/Map;

    iget v2, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/igexin/getuiext/service/a;->e:Ljava/util/Map;

    iget v2, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-wide v1, p1, Lcom/igexin/download/DownloadInfo;->mDownSpeed:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/igexin/getuiext/service/a;->e:Ljava/util/Map;

    iget v2, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :sswitch_0
    iget-object v2, p0, Lcom/igexin/getuiext/service/a;->b:Landroid/content/Context;

    invoke-static {v2, v1, p1}, Lcom/igexin/getuiext/util/b;->a(Landroid/content/Context;Landroid/app/Notification;Lcom/igexin/download/DownloadInfo;)Landroid/app/Notification;

    move-result-object v1

    goto :goto_3

    :sswitch_1
    invoke-direct {p0, p1, v7, v1}, Lcom/igexin/getuiext/service/a;->a(Lcom/igexin/download/DownloadInfo;Landroid/app/NotificationManager;Landroid/app/Notification;)Landroid/app/Notification;

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/getuiext/service/a;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/igexin/download/SdkDownLoader;->getInstantiate(Landroid/content/Context;)Lcom/igexin/download/SdkDownLoader;

    move-result-object v2

    iget v3, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v2, v3}, Lcom/igexin/download/SdkDownLoader;->deleteTask(I)Z

    new-instance v2, Lcom/igexin/getuiext/a/a;

    sget-object v3, Lcom/igexin/getuiext/service/GetuiExtService;->basicDataHelper:Lcom/igexin/getuiext/data/c;

    invoke-direct {v2, v3}, Lcom/igexin/getuiext/a/a;-><init>(Lcom/igexin/getuiext/data/c;)V

    iget v3, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v2, v3}, Lcom/igexin/getuiext/a/a;->b(I)V

    sget-object v2, Lcom/igexin/getuiext/service/GetuiExtService;->notificationInfoMap:Ljava/util/HashMap;

    iget v3, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/getuiext/data/b;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/igexin/getuiext/data/b;->k()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/igexin/getuiext/data/b;->k()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/igexin/getuiext/data/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/getuiext/service/GetuiExtService;->notifyDownloadSuccess(Ljava/lang/String;)V

    goto/16 :goto_3

    :sswitch_2
    iget v1, p1, Lcom/igexin/download/DownloadInfo;->mControl:I

    if-ne v1, v9, :cond_8

    iget v1, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-static {v1}, Lcom/igexin/getuiext/util/b;->a(I)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/app/NotificationManager;->cancel(I)V

    sget-object v1, Lcom/igexin/getuiext/service/a;->a:Ljava/util/Map;

    iget v2, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v9, p1, Lcom/igexin/download/DownloadInfo;->mNotify:Z

    move-object v1, v8

    goto/16 :goto_3

    :cond_8
    move-object v1, v8

    goto/16 :goto_3

    :sswitch_data_0
    .sparse-switch
        0xc0 -> :sswitch_0
        0xc1 -> :sswitch_2
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
