.class public Lcom/igexin/a/d/a/a/e/e;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0xb

    return v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;Landroid/app/Notification;Lcom/igexin/download/DownloadInfo;Lcom/igexin/a/d/a/a/b/a;)Landroid/app/Notification;
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v7, "download_icon"

    const-string v6, "id"

    iget v0, p2, Lcom/igexin/download/DownloadInfo;->mTotalBytes:I

    if-gtz v0, :cond_0

    iput v5, p2, Lcom/igexin/download/DownloadInfo;->mCurrentBytes:I

    iput v4, p2, Lcom/igexin/download/DownloadInfo;->mTotalBytes:I

    :cond_0
    if-nez p1, :cond_a

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    :goto_0
    iget-boolean v1, p2, Lcom/igexin/download/DownloadInfo;->mNotify:Z

    if-eqz v1, :cond_3

    iput-boolean v5, p2, Lcom/igexin/download/DownloadInfo;->mNotify:Z

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v4, :cond_2

    iput-object v3, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v0, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/app/Notification;->defaults:I

    :cond_1
    :goto_1
    move-object v0, v1

    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.igexin.download.action.pause"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v5, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x1080081

    iput v2, v0, Landroid/app/Notification;->icon:I

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d"

    iput-object v2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget v2, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x20

    iput v2, v0, Landroid/app/Notification;->flags:I

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const-string v1, "app_download_notification"

    const-string v2, "layout"

    invoke-static {p0, v1, v2}, Lcom/igexin/a/d/a/a/e/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_4

    move-object v0, v3

    :goto_3
    return-object v0

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget v0, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/app/Notification;->defaults:I

    iget v0, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v1, Landroid/app/Notification;->defaults:I

    goto :goto_1

    :cond_3
    iput v5, v0, Landroid/app/Notification;->defaults:I

    iput-object v3, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v3, v0, Landroid/app/Notification;->vibrate:[J

    goto :goto_2

    :cond_4
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {p3}, Lcom/igexin/a/d/a/a/b/a;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x7

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_9

    const-string v2, "drawable"

    invoke-static {p0, v1, v2}, Lcom/igexin/a/d/a/a/e/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_9

    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v3, "download_icon"

    const-string v3, "id"

    invoke-static {p0, v7, v6}, Lcom/igexin/a/d/a/a/e/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    move v1, v4

    :goto_4
    if-nez v1, :cond_5

    const-string v1, "push"

    const-string v2, "drawable"

    invoke-static {p0, v1, v2}, Lcom/igexin/a/d/a/a/e/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_8

    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v3, "download_icon"

    const-string v3, "id"

    invoke-static {p0, v7, v6}, Lcom/igexin/a/d/a/a/e/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_5
    :goto_5
    iget v1, p2, Lcom/igexin/download/DownloadInfo;->mTotalBytes:I

    if-gtz v1, :cond_6

    iput v4, p2, Lcom/igexin/download/DownloadInfo;->mTotalBytes:I

    :cond_6
    iget v1, p2, Lcom/igexin/download/DownloadInfo;->mCurrentBytes:I

    int-to-long v1, v1

    const-wide/16 v3, 0x64

    mul-long/2addr v1, v3

    iget v3, p2, Lcom/igexin/download/DownloadInfo;->mTotalBytes:I

    int-to-long v3, v3

    div-long/2addr v1, v3

    long-to-int v1, v1

    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v3, "download_name"

    const-string v4, "id"

    invoke-static {p0, v3, v6}, Lcom/igexin/a/d/a/a/e/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v4, p2, Lcom/igexin/download/DownloadInfo;->mHint:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v3, "update_notification_progressbar"

    const-string v4, "id"

    invoke-static {p0, v3, v6}, Lcom/igexin/a/d/a/a/e/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v1, v5}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v3, "update_notification_progresstext"

    const-string v4, "id"

    invoke-static {p0, v3, v6}, Lcom/igexin/a/d/a/a/e/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "%"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_7
    if-eqz p3, :cond_9

    invoke-virtual {p3}, Lcom/igexin/a/d/a/a/b/a;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-virtual {p3}, Lcom/igexin/a/d/a/a/b/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v3, "download_icon"

    const-string v3, "id"

    invoke-static {p0, v7, v6}, Lcom/igexin/a/d/a/a/e/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    move v1, v4

    goto/16 :goto_4

    :cond_8
    iget-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v2, "download_icon"

    const-string v2, "id"

    invoke-static {p0, v7, v6}, Lcom/igexin/a/d/a/a/e/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const v3, 0x1080093

    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    :cond_9
    move v1, v5

    goto/16 :goto_4

    :cond_a
    move-object v0, p1

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/igexin/download/DownloadInfo;Landroid/content/Intent;)Landroid/app/Notification;
    .locals 4

    iget v0, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    const/4 v1, 0x0

    invoke-static {p0, v0, p2, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    const v2, 0x1080082

    iput v2, v1, Landroid/app/Notification;->icon:I

    const-string v2, "\u4e0b\u8f7d\u6210\u529f"

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v2, p1, Lcom/igexin/download/DownloadInfo;->mHint:Ljava/lang/String;

    const-string v3, "\u4e0b\u8f7d\u6210\u529f,\u70b9\u51fb\u5b89\u88c5\uff01"

    invoke-virtual {v1, p0, v2, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    iget v2, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/app/Notification;->flags:I

    const v2, 0x108008a

    iput v2, v1, Landroid/app/Notification;->icon:I

    const-string v2, "\u4e0b\u8f7d\u5931\u8d25\uff01"

    invoke-virtual {v1, p0, p1, v2, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-object v1
.end method
