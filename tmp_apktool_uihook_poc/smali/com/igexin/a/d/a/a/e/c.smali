.class public Lcom/igexin/a/d/a/a/e/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Landroid/os/Message;

.field public b:Ljava/io/File;

.field c:Z

.field public d:Landroid/os/Handler;

.field private e:Landroid/content/Context;

.field private f:Lcom/igexin/a/b/b/e;

.field private g:Lcom/igexin/a/d/a/a/b/a;

.field private h:Landroid/app/NotificationManager;

.field private i:Landroid/app/Notification;

.field private j:Landroid/content/Intent;

.field private k:Landroid/app/PendingIntent;

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Lcom/igexin/a/d/a/a/b/a;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/igexin/a/d/a/a/e/c;->h:Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/igexin/a/d/a/a/e/c;->i:Landroid/app/Notification;

    iput-object v1, p0, Lcom/igexin/a/d/a/a/e/c;->j:Landroid/content/Intent;

    iput-object v1, p0, Lcom/igexin/a/d/a/a/e/c;->k:Landroid/app/PendingIntent;

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->a:Landroid/os/Message;

    iput-object v1, p0, Lcom/igexin/a/d/a/a/e/c;->d:Landroid/os/Handler;

    iput-object p2, p0, Lcom/igexin/a/d/a/a/e/c;->e:Landroid/content/Context;

    iput-object p1, p0, Lcom/igexin/a/d/a/a/e/c;->g:Lcom/igexin/a/d/a/a/b/a;

    invoke-virtual {p1}, Lcom/igexin/a/d/a/a/b/a;->m()Lcom/igexin/a/b/b/e;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->f:Lcom/igexin/a/b/b/e;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/igexin/a/d/a/a/e/c;->l:I

    return-void
.end method

.method static synthetic a(Lcom/igexin/a/d/a/a/e/c;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/d/a/a/e/c;->i:Landroid/app/Notification;

    return-object p1
.end method

.method static synthetic a(Lcom/igexin/a/d/a/a/e/c;Landroid/app/NotificationManager;)Landroid/app/NotificationManager;
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/d/a/a/e/c;->h:Landroid/app/NotificationManager;

    return-object p1
.end method

.method static synthetic a(Lcom/igexin/a/d/a/a/e/c;)Lcom/igexin/a/b/b/e;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->f:Lcom/igexin/a/b/b/e;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(IILandroid/app/Notification;)V
    .locals 5

    const-string v4, "id"

    iget-object v0, p3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v1, "update_notification_progressbar"

    const-string v2, "id"

    invoke-virtual {p0, v1, v4}, Lcom/igexin/a/d/a/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, p2, v3}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v0, p3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v1, "update_notification_progresstext"

    const-string v2, "id"

    invoke-virtual {p0, v1, v4}, Lcom/igexin/a/d/a/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->h:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1, p3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic b(Lcom/igexin/a/d/a/a/e/c;)I
    .locals 1

    iget v0, p0, Lcom/igexin/a/d/a/a/e/c;->m:I

    return v0
.end method

.method private b()Landroid/app/Notification;
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v7, "download_icon"

    const-string v5, "id"

    const-string v0, "app_download_notification"

    const-string v1, "layout"

    invoke-virtual {p0, v0, v1}, Lcom/igexin/a/d/a/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->e:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->h:Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->j:Landroid/content/Intent;

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->e:Landroid/content/Context;

    iget-object v3, p0, Lcom/igexin/a/d/a/a/e/c;->j:Landroid/content/Intent;

    invoke-static {v0, v6, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->k:Landroid/app/PendingIntent;

    const v0, 0x1080081

    iput v0, v2, Landroid/app/Notification;->icon:I

    const-string v0, "\u6b63\u5728\u4e0b\u8f7d"

    iput-object v0, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/app/Notification;->flags:I

    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, v2, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->e:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v8, :cond_3

    iput-object v4, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v0, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/app/Notification;->defaults:I

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->k:Landroid/app/PendingIntent;

    iput-object v0, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lcom/igexin/a/d/a/a/e/c;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->g:Lcom/igexin/a/d/a/a/b/a;

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/b/a;->e()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->g:Lcom/igexin/a/d/a/a/b/a;

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/b/a;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->g:Lcom/igexin/a/d/a/a/b/a;

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/b/a;->e()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    iget-object v3, p0, Lcom/igexin/a/d/a/a/e/c;->g:Lcom/igexin/a/d/a/a/b/a;

    invoke-virtual {v3}, Lcom/igexin/a/d/a/a/b/a;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, "drawable"

    invoke-virtual {p0, v0, v1}, Lcom/igexin/a/d/a/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_6

    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v3, "download_icon"

    const-string v3, "id"

    invoke-virtual {p0, v7, v5}, Lcom/igexin/a/d/a/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    move v0, v8

    :goto_2
    if-nez v0, :cond_2

    const-string v0, "push"

    const-string v1, "drawable"

    invoke-virtual {p0, v0, v1}, Lcom/igexin/a/d/a/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v3, "download_icon"

    const-string v3, "id"

    invoke-virtual {p0, v7, v5}, Lcom/igexin/a/d/a/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_2
    :goto_3
    iget-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v1, "download_name"

    const-string v3, "id"

    invoke-virtual {p0, v1, v5}, Lcom/igexin/a/d/a/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/igexin/a/d/a/a/e/c;->g:Lcom/igexin/a/d/a/a/b/a;

    invoke-virtual {v3}, Lcom/igexin/a/d/a/a/b/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v1, "update_notification_progressbar"

    const-string v3, "id"

    invoke-virtual {p0, v1, v5}, Lcom/igexin/a/d/a/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v3, v6, v6}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v1, "update_notification_progresstext"

    const-string v3, "id"

    invoke-virtual {p0, v1, v5}, Lcom/igexin/a/d/a/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const-string v3, "0%"

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget v0, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v2, Landroid/app/Notification;->defaults:I

    iget v0, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v2, Landroid/app/Notification;->defaults:I

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->g:Lcom/igexin/a/d/a/a/b/a;

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/b/a;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->g:Lcom/igexin/a/d/a/a/b/a;

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/b/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v3, "download_icon"

    const-string v3, "id"

    invoke-virtual {p0, v7, v5}, Lcom/igexin/a/d/a/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    move v0, v8

    goto :goto_2

    :cond_5
    iget-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v1, "download_icon"

    const-string v1, "id"

    invoke-virtual {p0, v7, v5}, Lcom/igexin/a/d/a/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const v3, 0x1080093

    invoke-virtual {v0, v1, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_3

    :cond_6
    move v0, v6

    goto/16 :goto_2
.end method

.method static synthetic c(Lcom/igexin/a/d/a/a/e/c;)Lcom/igexin/a/d/a/a/b/a;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->g:Lcom/igexin/a/d/a/a/b/a;

    return-object v0
.end method

.method static synthetic d(Lcom/igexin/a/d/a/a/e/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/igexin/a/d/a/a/e/c;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->h:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic f(Lcom/igexin/a/d/a/a/e/c;)I
    .locals 1

    iget v0, p0, Lcom/igexin/a/d/a/a/e/c;->l:I

    return v0
.end method

.method static synthetic g(Lcom/igexin/a/d/a/a/e/c;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->i:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic h(Lcom/igexin/a/d/a/a/e/c;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->k:Landroid/app/PendingIntent;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/d/a/a/e/c;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/igexin/a/d/a/a/e/c;->m:I

    return-void
.end method

.method public a()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 22

    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/c;->g:Lcom/igexin/a/d/a/a/b/a;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/igexin/a/d/a/a/b/a;->k()Z

    move-result v6

    invoke-direct/range {p0 .. p0}, Lcom/igexin/a/d/a/a/e/c;->b()Landroid/app/Notification;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/igexin/a/d/a/a/e/c;->i:Landroid/app/Notification;

    if-nez v6, :cond_3

    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    sget v8, Lcom/igexin/a/d/a/a/c/a;->b:I

    iput v8, v7, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/igexin/a/d/a/a/c/c;->a()Lcom/igexin/a/d/a/a/c/c;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/igexin/a/d/a/a/c/c;->a(Landroid/os/Message;)Z

    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_10

    :cond_1
    const-string v7, "/"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    :goto_1
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_4

    :cond_2
    const/4 v4, 0x0

    :goto_2
    return v4

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/c;->i:Landroid/app/Notification;

    move-object v7, v0

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/c;->h:Landroid/app/NotificationManager;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/igexin/a/d/a/a/e/c;->l:I

    move v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/c;->i:Landroid/app/Notification;

    move-object v9, v0

    invoke-virtual {v7, v8, v9}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/c;->i:Landroid/app/Notification;

    move-object v7, v0

    const/4 v8, 0x0

    iput v8, v7, Landroid/app/Notification;->defaults:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/c;->i:Landroid/app/Notification;

    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/app/Notification;->sound:Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/c;->i:Landroid/app/Notification;

    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Landroid/app/Notification;->vibrate:[J

    goto :goto_0

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/igexin/a/d/a/a/e/c;->a()Z

    move-result v8

    move v0, v8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/igexin/a/d/a/a/e/c;->c:Z

    if-eqz v8, :cond_9

    const-string v8, "DOWN"

    const-string v9, "SDCard is ok"

    invoke-static {v8, v9}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/sdk/Downloads"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    move-result v9

    if-nez v9, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/c;->e:Landroid/content/Context;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    :cond_5
    :goto_3
    const/4 v9, 0x0

    const/16 v10, 0xa

    invoke-static {v10}, Landroid/os/Process;->setThreadPriority(I)V

    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    new-instance v11, Lorg/apache/http/client/methods/HttpGet;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-interface {v10, v11}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    const/16 v12, 0xc8

    if-ne v11, v12, :cond_e

    invoke-interface {v10}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v12

    invoke-interface {v11}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v11

    const-string v14, "."

    invoke-virtual {v7, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-ne v14, v15, :cond_7

    const-string v14, "Content-Type"

    invoke-interface {v10, v14}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-interface {v10}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/igexin/a/d/a/a/e/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const/4 v14, 0x0

    if-eqz v10, :cond_6

    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v14

    invoke-virtual {v14, v10}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_6

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "."

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    :cond_6
    if-nez v14, :cond_f

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string v15, "text/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    const-string v14, "text/html"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    const-string v10, ".html"

    :goto_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_7
    new-instance v10, Ljava/io/File;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v14, "/"

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v10, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v8, 0x400

    new-array v8, v8, [B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-wide/from16 v20, v14

    move-wide v14, v4

    move-wide/from16 v4, v20

    :cond_8
    :goto_5
    invoke-virtual {v11, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/16 v16, -0x1

    move v0, v9

    move/from16 v1, v16

    if-eq v0, v1, :cond_d

    const/16 v16, 0x0

    move-object v0, v7

    move-object v1, v8

    move/from16 v2, v16

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    if-eqz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/c;->i:Landroid/app/Notification;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    move v0, v9

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    cmp-long v9, v14, v12

    if-nez v9, :cond_c

    const-wide/16 v16, 0x64

    mul-long v16, v16, v14

    div-long v16, v16, v12

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/igexin/a/d/a/a/e/c;->l:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/c;->i:Landroid/app/Notification;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v9

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/igexin/a/d/a/a/e/c;->a(IILandroid/app/Notification;)V
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_0
    move-exception v4

    move-object v4, v10

    :goto_6
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/igexin/a/d/a/a/e/c;->b:Ljava/io/File;

    const/4 v4, 0x1

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/c;->e:Landroid/content/Context;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    goto/16 :goto_3

    :cond_a
    :try_start_2
    const-string v10, ".txt"

    goto/16 :goto_4

    :cond_b
    const-string v10, ".bin"
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    :cond_c
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v4

    const-wide/16 v18, 0x7d0

    cmp-long v9, v16, v18

    if-lez v9, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v16, 0x64

    mul-long v16, v16, v14

    div-long v16, v16, v12

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/igexin/a/d/a/a/e/c;->l:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/a/d/a/a/e/c;->i:Landroid/app/Notification;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move v2, v9

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/igexin/a/d/a/a/e/c;->a(IILandroid/app/Notification;)V

    goto/16 :goto_5

    :catch_1
    move-exception v4

    move-object v4, v10

    goto :goto_6

    :cond_d
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-object v4, v10

    goto :goto_6

    :cond_e
    const/4 v4, 0x0

    goto/16 :goto_2

    :catch_2
    move-exception v4

    move-object v4, v9

    goto :goto_6

    :catch_3
    move-exception v4

    move-object v4, v9

    goto :goto_6

    :cond_f
    move-object v10, v14

    goto/16 :goto_4

    :cond_10
    move-object/from16 v7, p3

    goto/16 :goto_1
.end method

.method public run()V
    .locals 4

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/igexin/a/d/a/a/e/d;

    invoke-direct {v0, p0}, Lcom/igexin/a/d/a/a/e/d;-><init>(Lcom/igexin/a/d/a/a/e/c;)V

    iput-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->d:Landroid/os/Handler;

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->g:Lcom/igexin/a/d/a/a/b/a;

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/b/a;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/d/a/a/e/c;->f:Lcom/igexin/a/b/b/e;

    const-string v2, "10050"

    invoke-virtual {v0, v1, v2}, Lcom/igexin/a/b/a/f;->a(Lcom/igexin/a/b/b/e;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->g:Lcom/igexin/a/d/a/a/b/a;

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/b/a;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/d/a/a/e/c;->g:Lcom/igexin/a/d/a/a/b/a;

    invoke-virtual {v1}, Lcom/igexin/a/d/a/a/b/a;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/a/d/a/a/e/c;->g:Lcom/igexin/a/d/a/a/b/a;

    invoke-virtual {v2}, Lcom/igexin/a/d/a/a/b/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/a/d/a/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/d/a/a/e/c;->f:Lcom/igexin/a/b/b/e;

    const-string v2, "10060"

    invoke-virtual {v0, v1, v2}, Lcom/igexin/a/b/a/f;->a(Lcom/igexin/a/b/b/e;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->a:Landroid/os/Message;

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/igexin/a/d/a/a/e/c;->a:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->a:Landroid/os/Message;

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/igexin/a/d/a/a/e/c;->a:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->a:Landroid/os/Message;

    iput v3, v0, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/igexin/a/d/a/a/e/c;->d:Landroid/os/Handler;

    iget-object v1, p0, Lcom/igexin/a/d/a/a/e/c;->a:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
