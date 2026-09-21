.class public Lcom/igexin/getuiext/util/b;
.super Ljava/lang/Object;


# direct methods
.method public static a(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0xb

    return v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
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

.method public static a(Landroid/content/Context;Landroid/app/Notification;Lcom/igexin/download/DownloadInfo;)Landroid/app/Notification;
    .locals 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v10, 0x0

    const-string v8, "notification_icon"

    const-string v9, "id"

    iget v0, p2, Lcom/igexin/download/DownloadInfo;->mTotalBytes:I

    if-gtz v0, :cond_0

    iput v10, p2, Lcom/igexin/download/DownloadInfo;->mCurrentBytes:I

    iput v7, p2, Lcom/igexin/download/DownloadInfo;->mTotalBytes:I

    :cond_0
    if-nez p1, :cond_e

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    move-object v1, v0

    :goto_0
    const-string v0, "notification_inc"

    const-string v2, "layout"

    invoke-static {p0, v0, v2}, Lcom/igexin/getuiext/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v6

    :goto_1
    return-object v0

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :goto_2
    sget-object v0, Lcom/igexin/getuiext/service/GetuiExtService;->notificationInfoMap:Ljava/util/HashMap;

    iget v2, p2, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/getuiext/data/b;

    if-nez v0, :cond_4

    new-instance v0, Lcom/igexin/getuiext/a/a;

    sget-object v2, Lcom/igexin/getuiext/service/GetuiExtService;->basicDataHelper:Lcom/igexin/getuiext/data/c;

    invoke-direct {v0, v2}, Lcom/igexin/getuiext/a/a;-><init>(Lcom/igexin/getuiext/data/c;)V

    iget v2, p2, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v0, v2}, Lcom/igexin/getuiext/a/a;->a(I)Lcom/igexin/getuiext/data/b;

    move-result-object v0

    if-nez v0, :cond_3

    move-object v0, v6

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_2

    :cond_3
    sget-object v2, Lcom/igexin/getuiext/service/GetuiExtService;->notificationInfoMap:Ljava/util/HashMap;

    iget v3, p2, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v2, v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "notification_right"

    const-string v4, "id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v9, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/16 v4, 0x8

    invoke-virtual {v3, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "download_layout"

    const-string v5, "id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v9, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3, v10}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-boolean v0, p2, Lcom/igexin/download/DownloadInfo;->mNotify:Z

    if-eqz v0, :cond_c

    iput-boolean v10, p2, Lcom/igexin/download/DownloadInfo;->mNotify:Z

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-ne v0, v7, :cond_a

    iput-object v6, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iget v0, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/app/Notification;->defaults:I

    :cond_5
    :goto_3
    sget-object v0, Lcom/igexin/getuiext/service/GetuiExtService;->logoMaps:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/igexin/getuiext/data/b;->k()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_6

    invoke-virtual {v2}, Lcom/igexin/getuiext/data/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/igexin/getuiext/data/b;->k()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/igexin/getuiext/util/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    if-eqz v0, :cond_b

    iget-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v4, "notification_icon"

    const-string v4, "id"

    invoke-static {p0, v8, v9}, Lcom/igexin/getuiext/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_4
    if-eqz v2, :cond_7

    iget-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v3, "download_app_name"

    const-string v4, "id"

    invoke-static {p0, v3, v9}, Lcom/igexin/getuiext/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Lcom/igexin/getuiext/data/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v3, "download_app_version"

    const-string v4, "id"

    invoke-static {p0, v3, v9}, Lcom/igexin/getuiext/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2}, Lcom/igexin/getuiext/data/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_7
    :goto_5
    iget-boolean v0, v2, Lcom/igexin/getuiext/data/b;->r:Z

    if-nez v0, :cond_8

    sget-object v0, Lcom/igexin/getuiext/service/GetuiExtService;->logoMaps:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/igexin/getuiext/data/b;->k()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_8

    invoke-virtual {v2, v7}, Lcom/igexin/getuiext/data/b;->a(Z)V

    iget-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v4, "notification_icon"

    const-string v4, "id"

    invoke-static {p0, v8, v9}, Lcom/igexin/getuiext/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_8
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x8000000

    invoke-static {p0, v10, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    const v3, 0x1080081

    iput v3, v1, Landroid/app/Notification;->icon:I

    const-string v3, "\u6b63\u5728\u4e0b\u8f7d"

    iput-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v1, Landroid/app/Notification;->flags:I

    iput-object v0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/igexin/getuiext/data/b;->j()Ljava/lang/String;

    move-result-object v0

    const-string v3, "diff"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v2}, Lcom/igexin/getuiext/data/b;->e()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/igexin/getuiext/data/b;->f()J

    move-result-wide v5

    iget v0, p2, Lcom/igexin/download/DownloadInfo;->mCurrentBytes:I

    int-to-long v7, v0

    sub-long v5, v3, v5

    add-long/2addr v5, v7

    const-wide/16 v7, 0x64

    mul-long/2addr v5, v7

    div-long v2, v5, v3

    long-to-int v0, v2

    :goto_6
    iget-object v2, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v3, "downlaod_progress_horizontal"

    const-string v4, "id"

    invoke-static {p0, v3, v9}, Lcom/igexin/getuiext/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v0, v10}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget v2, p2, Lcom/igexin/download/DownloadInfo;->mId:I

    const-string v3, ""

    invoke-static {v2, v0, v3}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->updateProcessBarStatus(IILjava/lang/String;)V

    :cond_9
    move-object v0, v1

    goto/16 :goto_1

    :cond_a
    const/4 v3, 0x2

    if-ne v0, v3, :cond_5

    iget v0, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v1, Landroid/app/Notification;->defaults:I

    iget v0, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v0, v0, 0x1

    iput v0, v1, Landroid/app/Notification;->defaults:I

    goto/16 :goto_3

    :cond_b
    iget-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v3, "notification_icon"

    const-string v3, "id"

    invoke-static {p0, v8, v9}, Lcom/igexin/getuiext/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_4

    :cond_c
    iput v10, v1, Landroid/app/Notification;->defaults:I

    iput-object v6, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    iput-object v6, v1, Landroid/app/Notification;->vibrate:[J

    goto/16 :goto_5

    :cond_d
    iget v0, p2, Lcom/igexin/download/DownloadInfo;->mCurrentBytes:I

    int-to-long v2, v0

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    iget v0, p2, Lcom/igexin/download/DownloadInfo;->mTotalBytes:I

    int-to-long v4, v0

    div-long/2addr v2, v4

    long-to-int v0, v2

    goto :goto_6

    :cond_e
    move-object v1, p1

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/igexin/download/DownloadInfo;Landroid/content/Intent;Landroid/app/Notification;)Landroid/app/Notification;
    .locals 9

    const/4 v7, 0x0

    const-string v8, "notification_icon"

    const-string v6, "id"

    const-string v0, "notification_inc"

    const-string v1, "layout"

    invoke-static {p0, v0, v1}, Lcom/igexin/getuiext/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v7

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, p2, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-nez p3, :cond_4

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    new-instance v3, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    :goto_1
    iget v0, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, v2, Landroid/app/Notification;->flags:I

    const v0, 0x1080082

    iput v0, v2, Landroid/app/Notification;->icon:I

    const-string v0, "\u4e0b\u8f7d\u6210\u529f"

    iput-object v0, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v3, "download_layout"

    const-string v4, "id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const/16 v4, 0x8

    invoke-virtual {v3, v0, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    iget-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "setup_layout"

    const-string v5, "id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v6, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    sget-object v0, Lcom/igexin/getuiext/service/GetuiExtService;->notificationInfoMap:Ljava/util/HashMap;

    iget v3, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/getuiext/data/b;

    if-nez v0, :cond_2

    new-instance v0, Lcom/igexin/getuiext/a/a;

    sget-object v3, Lcom/igexin/getuiext/service/GetuiExtService;->basicDataHelper:Lcom/igexin/getuiext/data/c;

    invoke-direct {v0, v3}, Lcom/igexin/getuiext/a/a;-><init>(Lcom/igexin/getuiext/data/c;)V

    iget v3, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v0, v3}, Lcom/igexin/getuiext/a/a;->a(I)Lcom/igexin/getuiext/data/b;

    move-result-object v0

    if-nez v0, :cond_1

    move-object v0, v7

    goto/16 :goto_0

    :cond_1
    sget-object v3, Lcom/igexin/getuiext/service/GetuiExtService;->notificationInfoMap:Ljava/util/HashMap;

    iget v4, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    sget-object v3, Lcom/igexin/getuiext/service/GetuiExtService;->logoMaps:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/igexin/getuiext/data/b;->k()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v4, "notification_icon"

    const-string v4, "id"

    invoke-static {p0, v8, v6}, Lcom/igexin/getuiext/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_2
    :try_start_0
    iget-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v3, "setup_icon"

    const-string v4, "id"

    invoke-static {p0, v3, v4}, Lcom/igexin/getuiext/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "inc_setup.png"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v0, "setup_app_name"

    const-string v4, "id"

    invoke-static {p0, v0, v6}, Lcom/igexin/getuiext/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    sget-object v0, Lcom/igexin/getuiext/service/GetuiExtService;->notificationInfoMap:Ljava/util/HashMap;

    iget v5, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/getuiext/data/b;

    invoke-virtual {v0}, Lcom/igexin/getuiext/data/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v0, "setup_app_version"

    const-string v4, "id"

    invoke-static {p0, v0, v6}, Lcom/igexin/getuiext/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    sget-object v0, Lcom/igexin/getuiext/service/GetuiExtService;->notificationInfoMap:Ljava/util/HashMap;

    iget v5, p1, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/getuiext/data/b;

    invoke-virtual {v0}, Lcom/igexin/getuiext/data/b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v3, "setup_message"

    const-string v4, "id"

    invoke-static {p0, v3, v6}, Lcom/igexin/getuiext/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v4, "\u4e0b\u8f7d\u5b8c\u6210"

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v3, "setup_text"

    const-string v4, "id"

    invoke-static {p0, v3, v6}, Lcom/igexin/getuiext/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v4, "\u5b89\u88c5"

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iput-object v1, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object v0, v2

    goto/16 :goto_0

    :cond_3
    iget-object v0, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const-string v3, "notification_icon"

    const-string v3, "id"

    invoke-static {p0, v8, v6}, Lcom/igexin/getuiext/util/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_4
    move-object v2, p3

    goto/16 :goto_1
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

.method public static a(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, p0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-interface {v1, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v3

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v0, v3

    goto :goto_0

    :catch_2
    move-exception v0

    move-object v0, v3

    goto :goto_0

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/igexin/getuiext/util/c;

    invoke-direct {v0}, Lcom/igexin/getuiext/util/c;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/igexin/getuiext/util/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static a()Z
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
