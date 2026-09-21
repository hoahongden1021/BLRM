.class public Lcom/igexin/download/g;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/igexin/download/DownloadInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/igexin/download/DownloadInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget-object v0, v0, Lcom/igexin/download/DownloadInfo;->mUserAgent:Ljava/lang/String;

    if-eqz v0, :cond_0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "AndroidDownloadManager"

    :cond_1
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

.method private a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/igexin/download/g;->b(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const-string v4, "numfailed"

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "_data"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p7, :cond_0

    const-string v1, "uri"

    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "mimetype"

    invoke-virtual {v0, v1, p8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "lastmod"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "method"

    shl-int/lit8 v2, p4, 0x1c

    add-int/2addr v2, p3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez p2, :cond_1

    const-string v1, "numfailed"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :goto_0
    iget-object v1, p0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;

    iget-object v3, p0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget v3, v3, Lcom/igexin/download/DownloadInfo;->mId:I

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void

    :cond_1
    if-eqz p5, :cond_2

    const-string v1, "numfailed"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_2
    const-string v1, "numfailed"

    iget-object v1, p0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    iget v1, v1, Lcom/igexin/download/DownloadInfo;->mNumFailed:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 36

    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    const/16 v13, 0x1eb

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mRedirectCount:I

    move/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v5, v0

    iget-object v5, v5, Lcom/igexin/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/igexin/download/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v7, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/igexin/download/Downloads;->a:Landroid/net/Uri;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v8, v0

    iget v8, v8, Lcom/igexin/download/DownloadInfo;->mId:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v22

    const/16 v23, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/16 v24, 0x0

    const/16 v5, 0x1000

    :try_start_0
    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    move-object v5, v0

    const-string v11, "power"

    invoke-virtual {v5, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    const/4 v11, 0x1

    const-string v27, "GexinSdkDownloadService"

    move-object v0, v5

    move v1, v11

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_22
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v27

    :try_start_1
    invoke-virtual/range {v27 .. v27}, Landroid/os/PowerManager$WakeLock;->acquire()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v5, v0

    iget-object v11, v5, Lcom/igexin/download/DownloadInfo;->mFileName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_b9
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_9d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7e
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_40
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v11, :cond_7a

    :try_start_2
    invoke-static {v11}, Lcom/igexin/download/h;->a(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_ba
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_9e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_7f
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_60
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_41
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result v5

    if-nez v5, :cond_7

    const/16 v6, 0x1ec

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v5, v0

    iget-object v13, v5, Lcom/igexin/download/DownloadInfo;->mMimeType:Ljava/lang/String;

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_ba
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_9e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_80
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_61
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_42
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v5, v0

    const/4 v7, 0x0

    iput-boolean v7, v5, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z

    if-eqz v27, :cond_0

    invoke-virtual/range {v27 .. v27}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    if-eqz v21, :cond_1

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    :try_start_4
    const-string v7, "close"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    move-object v0, v5

    move-object/from16 v1, v21

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_dc
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_db
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_da
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_d9
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_d8

    :cond_1
    :goto_0
    if-eqz v20, :cond_2

    :try_start_5
    invoke-virtual/range {v20 .. v20}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2b

    :cond_2
    :goto_1
    if-eqz v11, :cond_3

    invoke-static {v6}, Lcom/igexin/download/Downloads;->isStatusError(I)Z

    move-result v5

    if-eqz v5, :cond_4

    if-nez v23, :cond_3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    const/4 v5, 0x0

    move-object v11, v5

    :cond_3
    :goto_2
    move-object/from16 v5, p0

    move v7, v14

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, v18

    move-object/from16 v12, v17

    move-object/from16 v13, v19

    invoke-direct/range {v5 .. v13}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    return-void

    :cond_4
    invoke-static {v6}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "android.os.FileUtils"

    :try_start_6
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_4
    array-length v9, v5

    if-ge v8, v9, :cond_7b

    aget-object v9, v5, v8

    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "setPermissions"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    aget-object v5, v5, v8

    :goto_5
    if-eqz v5, :cond_5

    const/4 v7, 0x0

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v11, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x1a4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const/4 v10, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_d7

    :cond_5
    :goto_6
    :try_start_7
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v5, v11, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/SyncFailedException; {:try_start_7 .. :try_end_7} :catch_d6
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_d5
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_d4

    goto :goto_2

    :catch_0
    move-exception v5

    goto :goto_2

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_7
    :try_start_8
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_7a

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v28, 0x0

    cmp-long v12, v6, v28

    if-nez v12, :cond_79

    invoke-virtual {v5}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_ba
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_9e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_8 .. :try_end_8} :catch_7f
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_8} :catch_60
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_8} :catch_41
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const/4 v5, 0x0

    :goto_7
    :try_start_9
    new-instance v11, Ljava/io/FileOutputStream;

    const/4 v12, 0x1

    invoke-direct {v11, v5, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_bb
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_9f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_9 .. :try_end_9} :catch_81
    .catch Ljava/lang/IllegalAccessException; {:try_start_9 .. :try_end_9} :catch_62
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_9 .. :try_end_9} :catch_43
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    long-to-int v6, v6

    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v7, v0

    iget v7, v7, Lcom/igexin/download/DownloadInfo;->mTotalBytes:I

    const/4 v12, -0x1

    if-eq v7, v12, :cond_78

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v7, v0

    iget v7, v7, Lcom/igexin/download/DownloadInfo;->mTotalBytes:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v9, v0

    iget-object v9, v9, Lcom/igexin/download/DownloadInfo;->mETag:Ljava/lang/String;
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_bc
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_a0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_82
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_63
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_a .. :try_end_a} :catch_44
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    const/4 v12, 0x1

    move/from16 v20, v6

    move/from16 v23, v12

    move-object/from16 v26, v5

    move-object v5, v11

    move-object v6, v9

    :goto_9
    const-wide/16 v28, 0x0

    :try_start_b
    const-string v9, "android.net.http.AndroidHttpClient"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_a
    move-object v0, v9

    array-length v0, v0

    move/from16 v30, v0

    move v0, v12

    move/from16 v1, v30

    if-ge v0, v1, :cond_77

    aget-object v30, v9, v12

    invoke-virtual/range {v30 .. v30}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v30

    const-string v31, "newInstance"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_10

    aget-object v9, v9, v12

    :goto_b
    if-eqz v9, :cond_8

    const/4 v11, 0x0

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/16 v30, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/igexin/download/g;->a()Ljava/lang/String;

    move-result-object v31

    aput-object v31, v12, v30

    invoke-virtual {v9, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_bd
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_a1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_b} :catch_83
    .catch Ljava/lang/IllegalAccessException; {:try_start_b .. :try_end_b} :catch_64
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_b .. :try_end_b} :catch_45
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    move-result-object v9

    move-object/from16 v21, v9

    :cond_8
    if-eqz v5, :cond_76

    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v9, v0

    iget v9, v9, Lcom/igexin/download/DownloadInfo;->mDestination:I
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_be
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_a2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_c .. :try_end_c} :catch_84
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_c} :catch_65
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_c} :catch_46
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-nez v9, :cond_76

    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_be
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_a2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_d .. :try_end_d} :catch_84
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_d} :catch_65
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_d} :catch_46
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    const/4 v5, 0x0

    move-object/from16 v30, v5

    :goto_c
    :try_start_e
    new-instance v31, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v5, v0

    iget-object v5, v5, Lcom/igexin/download/DownloadInfo;->mUri:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v5, v0

    iget-object v5, v5, Lcom/igexin/download/DownloadInfo;->mCookies:Ljava/lang/String;

    if-eqz v5, :cond_9

    const-string v5, "Cookie"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v9, v0

    iget-object v9, v9, Lcom/igexin/download/DownloadInfo;->mCookies:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object v1, v5

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v5, v0

    iget-object v5, v5, Lcom/igexin/download/DownloadInfo;->mReferer:Ljava/lang/String;

    if-eqz v5, :cond_a

    const-string v5, "Referer"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v9, v0

    iget-object v9, v9, Lcom/igexin/download/DownloadInfo;->mReferer:Ljava/lang/String;

    move-object/from16 v0, v31

    move-object v1, v5

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    if-eqz v23, :cond_c

    if-eqz v6, :cond_b

    const-string v5, "If-Match"

    move-object/from16 v0, v31

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const-string v5, "Range"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bytes="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object v0, v9

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "-"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, v31

    move-object v1, v5

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_bf
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_a3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_e} :catch_85
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_e} :catch_66
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_e} :catch_47
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    :cond_c
    const/4 v9, 0x0

    :try_start_f
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_3
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_bf
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_a3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_f .. :try_end_f} :catch_85
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_f} :catch_66
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_f .. :try_end_f} :catch_47
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    move-result-object v5

    :try_start_10
    const-string v11, "execute"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Class;

    const/16 v32, 0x0

    const-class v33, Lorg/apache/http/client/methods/HttpUriRequest;

    aput-object v33, v12, v32

    invoke-virtual {v5, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v31, v11, v12

    move-object v0, v5

    move-object/from16 v1, v21

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/http/HttpResponse;
    :try_end_10
    .catch Ljava/lang/NoSuchMethodException; {:try_start_10 .. :try_end_10} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_3
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_10 .. :try_end_10} :catch_bf
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_a3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_10 .. :try_end_10} :catch_85
    .catch Ljava/lang/IllegalAccessException; {:try_start_10 .. :try_end_10} :catch_66
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_10 .. :try_end_10} :catch_47
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    move-object/from16 v32, v5

    :goto_d
    :try_start_11
    invoke-interface/range {v32 .. v32}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v5

    const/16 v9, 0x1f7

    if-ne v5, v9, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v9, v0

    iget v9, v9, Lcom/igexin/download/DownloadInfo;->mNumFailed:I
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_bf
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_a3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_11 .. :try_end_11} :catch_85
    .catch Ljava/lang/IllegalAccessException; {:try_start_11 .. :try_end_11} :catch_66
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_11 .. :try_end_11} :catch_47
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    const/4 v11, 0x5

    if-ge v9, v11, :cond_16

    const/16 v5, 0xc1

    const/4 v6, 0x1

    :try_start_12
    const-string v7, "Retry-After"

    move-object/from16 v0, v32

    move-object v1, v7

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_12} :catch_c1
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_a5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_12} :catch_87
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_12} :catch_68
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_12} :catch_49
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    move-result-object v7

    if-eqz v7, :cond_75

    :try_start_13
    invoke-interface {v7}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_c1
    .catch Ljava/lang/RuntimeException; {:try_start_13 .. :try_end_13} :catch_a5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_13} :catch_87
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_13} :catch_68
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_13 .. :try_end_13} :catch_49
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    move-result v7

    if-gez v7, :cond_13

    const/4 v7, 0x0

    :goto_e
    :try_start_14
    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_c2
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_a6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_14} :catch_88
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_14} :catch_69
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_14 .. :try_end_14} :catch_4a
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    move-object/from16 v11, v30

    move-object/from16 v13, v19

    move-object/from16 v14, v26

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v7

    move v7, v6

    move v6, v5

    move/from16 v5, v23

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v15, v0

    const/16 v16, 0x0

    move/from16 v0, v16

    move-object v1, v15

    iput-boolean v0, v1, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z

    if-eqz v27, :cond_d

    invoke-virtual/range {v27 .. v27}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_d
    if-eqz v21, :cond_e

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    :try_start_15
    const-string v16, "close"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object v0, v15

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_15} :catch_d2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_15 .. :try_end_15} :catch_d1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_d0
    .catch Ljava/lang/IllegalAccessException; {:try_start_15 .. :try_end_15} :catch_cf
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_15 .. :try_end_15} :catch_ce

    :cond_e
    :goto_10
    if-eqz v11, :cond_f

    :try_start_16
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_2d

    :cond_f
    :goto_11
    if-eqz v14, :cond_6e

    invoke-static {v6}, Lcom/igexin/download/Downloads;->isStatusError(I)Z

    move-result v11

    if-eqz v11, :cond_3d

    if-nez v5, :cond_6e

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    const/4 v5, 0x0

    move-object v11, v5

    :goto_12
    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_10
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_a

    :catch_1
    move-exception v9

    move-object/from16 v30, v5

    goto/16 :goto_c

    :catch_2
    move-exception v5

    move-object/from16 v32, v9

    goto/16 :goto_d

    :catch_3
    move-exception v5

    const/4 v5, 0x1

    const/16 v6, 0x190

    :try_start_17
    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_17
    .catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_17} :catch_c0
    .catch Ljava/lang/RuntimeException; {:try_start_17 .. :try_end_17} :catch_a4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_17} :catch_86
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_17} :catch_67
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_17 .. :try_end_17} :catch_48
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    move-object/from16 v11, v30

    move-object/from16 v13, v19

    move-object/from16 v14, v26

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v5

    move/from16 v5, v23

    goto :goto_f

    :catch_4
    move-exception v5

    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Lcom/igexin/download/h;->a(Landroid/content/Context;)Z
    :try_end_18
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_18} :catch_bf
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_18} :catch_a3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_18 .. :try_end_18} :catch_85
    .catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_18} :catch_66
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_18 .. :try_end_18} :catch_47
    .catchall {:try_start_18 .. :try_end_18} :catchall_9

    move-result v5

    if-nez v5, :cond_11

    const/16 v5, 0xc1

    move v6, v5

    move v5, v14

    :goto_13
    :try_start_19
    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_c0
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_a4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_19 .. :try_end_19} :catch_86
    .catch Ljava/lang/IllegalAccessException; {:try_start_19 .. :try_end_19} :catch_67
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_19 .. :try_end_19} :catch_48
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    move-object/from16 v11, v30

    move-object/from16 v13, v19

    move-object/from16 v14, v26

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v5

    move/from16 v5, v23

    goto/16 :goto_f

    :cond_11
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v5, v0

    iget v5, v5, Lcom/igexin/download/DownloadInfo;->mNumFailed:I
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1a} :catch_bf
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_a3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1a .. :try_end_1a} :catch_85
    .catch Ljava/lang/IllegalAccessException; {:try_start_1a .. :try_end_1a} :catch_66
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1a .. :try_end_1a} :catch_47
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    const/4 v6, 0x5

    if-ge v5, v6, :cond_12

    const/16 v5, 0xc1

    const/4 v6, 0x1

    move/from16 v34, v6

    move v6, v5

    move/from16 v5, v34

    goto :goto_13

    :cond_12
    const/16 v5, 0x1ef

    move v6, v5

    move v5, v14

    goto :goto_13

    :cond_13
    const/16 v8, 0x1e

    if-ge v7, v8, :cond_15

    const/16 v7, 0x1e

    :cond_14
    :goto_14
    :try_start_1b
    sget-object v8, Lcom/igexin/download/h;->a:Ljava/util/Random;

    const/16 v9, 0x1f

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1b} :catch_d3
    .catch Ljava/io/FileNotFoundException; {:try_start_1b .. :try_end_1b} :catch_c2
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_1b} :catch_a6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1b .. :try_end_1b} :catch_88
    .catch Ljava/lang/IllegalAccessException; {:try_start_1b .. :try_end_1b} :catch_69
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1b .. :try_end_1b} :catch_4a
    .catchall {:try_start_1b .. :try_end_1b} :catchall_c

    move-result v8

    add-int/2addr v7, v8

    mul-int/lit16 v7, v7, 0x3e8

    goto/16 :goto_e

    :cond_15
    const v8, 0x15180

    if-le v7, v8, :cond_14

    const v7, 0x15180

    goto :goto_14

    :catch_5
    move-exception v7

    move v8, v15

    :goto_15
    :try_start_1c
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_1c} :catch_c3
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_a7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1c .. :try_end_1c} :catch_89
    .catch Ljava/lang/IllegalAccessException; {:try_start_1c .. :try_end_1c} :catch_6a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1c .. :try_end_1c} :catch_4b
    .catchall {:try_start_1c .. :try_end_1c} :catchall_d

    move v7, v8

    goto/16 :goto_e

    :cond_16
    const/16 v9, 0x12d

    if-eq v5, v9, :cond_17

    const/16 v9, 0x12e

    if-eq v5, v9, :cond_17

    const/16 v9, 0x12f

    if-eq v5, v9, :cond_17

    const/16 v9, 0x133

    if-ne v5, v9, :cond_19

    :cond_17
    const/4 v9, 0x5

    move/from16 v0, v16

    move v1, v9

    if-lt v0, v1, :cond_18

    const/16 v5, 0x1f1

    :try_start_1d
    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_1d} :catch_bf
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_1d} :catch_a3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1d .. :try_end_1d} :catch_8a
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_1d} :catch_6b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1d .. :try_end_1d} :catch_4c
    .catchall {:try_start_1d .. :try_end_1d} :catchall_e

    move-object/from16 v11, v30

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v5

    move/from16 v5, v23

    move-object/from16 v14, v26

    goto/16 :goto_f

    :cond_18
    :try_start_1e
    const-string v9, "Location"

    move-object/from16 v0, v32

    move-object v1, v9

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_1e} :catch_bf
    .catch Ljava/lang/RuntimeException; {:try_start_1e .. :try_end_1e} :catch_a3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1e .. :try_end_1e} :catch_85
    .catch Ljava/lang/IllegalAccessException; {:try_start_1e .. :try_end_1e} :catch_66
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1e .. :try_end_1e} :catch_47
    .catchall {:try_start_1e .. :try_end_1e} :catchall_9

    move-result-object v9

    if-eqz v9, :cond_19

    :try_start_1f
    new-instance v5, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v6, v0

    iget-object v6, v6, Lcom/igexin/download/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/net/URI;

    invoke-interface {v9}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_1f
    .catch Ljava/net/URISyntaxException; {:try_start_1f .. :try_end_1f} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_bf
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_1f} :catch_a3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1f .. :try_end_1f} :catch_85
    .catch Ljava/lang/IllegalAccessException; {:try_start_1f .. :try_end_1f} :catch_66
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1f .. :try_end_1f} :catch_47
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    move-result-object v5

    add-int/lit8 v6, v16, 0x1

    const/16 v7, 0xc1

    :try_start_20
    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_20 .. :try_end_20} :catch_c4
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_20} :catch_a8
    .catch Ljava/lang/ClassNotFoundException; {:try_start_20 .. :try_end_20} :catch_8b
    .catch Ljava/lang/IllegalAccessException; {:try_start_20 .. :try_end_20} :catch_6c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_20 .. :try_end_20} :catch_4d
    .catchall {:try_start_20 .. :try_end_20} :catchall_f

    move-object/from16 v11, v30

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object v12, v5

    move v9, v6

    move v8, v15

    move/from16 v5, v23

    move v6, v7

    move v7, v14

    move-object/from16 v14, v26

    goto/16 :goto_f

    :catch_6
    move-exception v5

    const/16 v5, 0x190

    :try_start_21
    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_21} :catch_bf
    .catch Ljava/lang/RuntimeException; {:try_start_21 .. :try_end_21} :catch_a3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_21 .. :try_end_21} :catch_8a
    .catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_21} :catch_6b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_21 .. :try_end_21} :catch_4c
    .catchall {:try_start_21 .. :try_end_21} :catchall_e

    move-object/from16 v11, v30

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v5

    move/from16 v5, v23

    move-object/from16 v14, v26

    goto/16 :goto_f

    :cond_19
    if-nez v23, :cond_1a

    const/16 v9, 0xc8

    if-ne v5, v9, :cond_1b

    :cond_1a
    if-eqz v23, :cond_20

    const/16 v9, 0xce

    if-eq v5, v9, :cond_20

    :cond_1b
    :try_start_22
    invoke-static {v5}, Lcom/igexin/download/Downloads;->isStatusError(I)Z
    :try_end_22
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_22} :catch_bf
    .catch Ljava/lang/RuntimeException; {:try_start_22 .. :try_end_22} :catch_a3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_22 .. :try_end_22} :catch_85
    .catch Ljava/lang/IllegalAccessException; {:try_start_22 .. :try_end_22} :catch_66
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_22 .. :try_end_22} :catch_47
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    move-result v6

    if-eqz v6, :cond_1c

    move v6, v5

    move/from16 v5, v23

    :goto_16
    :try_start_23
    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_23} :catch_c6
    .catch Ljava/lang/RuntimeException; {:try_start_23 .. :try_end_23} :catch_aa
    .catch Ljava/lang/ClassNotFoundException; {:try_start_23 .. :try_end_23} :catch_8d
    .catch Ljava/lang/IllegalAccessException; {:try_start_23 .. :try_end_23} :catch_6e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_23 .. :try_end_23} :catch_4f
    .catchall {:try_start_23 .. :try_end_23} :catchall_11

    const/4 v7, 0x1

    move-object/from16 v11, v30

    move-object/from16 v13, v19

    move-object/from16 v14, v26

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    goto/16 :goto_f

    :cond_1c
    const/16 v6, 0x12c

    if-lt v5, v6, :cond_1d

    const/16 v6, 0x190

    if-ge v5, v6, :cond_1d

    const/16 v5, 0x1ed

    move v6, v5

    move/from16 v5, v23

    goto :goto_16

    :cond_1d
    if-eqz v23, :cond_1f

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_1f

    const/16 v5, 0x19c

    const/4 v6, 0x0

    :try_start_24
    new-instance v7, Ljava/io/File;

    move-object v0, v7

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1e

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_24} :catch_c5
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_24} :catch_a9
    .catch Ljava/lang/ClassNotFoundException; {:try_start_24 .. :try_end_24} :catch_8c
    .catch Ljava/lang/IllegalAccessException; {:try_start_24 .. :try_end_24} :catch_6d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_24 .. :try_end_24} :catch_4e
    .catchall {:try_start_24 .. :try_end_24} :catchall_10

    :cond_1e
    move/from16 v34, v6

    move v6, v5

    move/from16 v5, v34

    goto :goto_16

    :cond_1f
    const/16 v5, 0x1ee

    move v6, v5

    move/from16 v5, v23

    goto :goto_16

    :cond_20
    if-nez v23, :cond_74

    :try_start_25
    const-string v5, "Accept-Ranges"

    move-object/from16 v0, v32

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_21

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    :cond_21
    const-string v5, "Content-Disposition"

    move-object/from16 v0, v32

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_22

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    :cond_22
    const-string v5, "Content-Location"

    move-object/from16 v0, v32

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_73

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    :goto_17
    if-nez v19, :cond_72

    const-string v5, "Content-Type"

    move-object/from16 v0, v32

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_72

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/igexin/download/g;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_25 .. :try_end_25} :catch_bf
    .catch Ljava/lang/RuntimeException; {:try_start_25 .. :try_end_25} :catch_a3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_25 .. :try_end_25} :catch_85
    .catch Ljava/lang/IllegalAccessException; {:try_start_25 .. :try_end_25} :catch_66
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_25 .. :try_end_25} :catch_47
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    move-result-object v5

    move-object v10, v5

    :goto_18
    :try_start_26
    const-string v5, "ETag"

    move-object/from16 v0, v32

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_71

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v19, v5

    :goto_19
    const-string v5, "Transfer-Encoding"

    move-object/from16 v0, v32

    move-object v1, v5

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v5

    if-eqz v5, :cond_70

    invoke-interface {v5}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    :goto_1a
    if-nez v5, :cond_6f

    const-string v6, "Content-Length"

    move-object/from16 v0, v32

    move-object v1, v6

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    if-eqz v6, :cond_6f

    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v24, v6

    :goto_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/igexin/download/DownloadInfo;->mNoIntegrity:Z

    if-nez v6, :cond_24

    if-nez v24, :cond_24

    if-eqz v5, :cond_23

    const-string v6, "chunked"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_26} :catch_c7
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_26} :catch_ab
    .catch Ljava/lang/ClassNotFoundException; {:try_start_26 .. :try_end_26} :catch_8e
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_26} :catch_6f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_26 .. :try_end_26} :catch_50
    .catchall {:try_start_26 .. :try_end_26} :catchall_12

    move-result v5

    if-nez v5, :cond_24

    :cond_23
    const/16 v5, 0x19b

    :try_start_27
    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_27
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_27} :catch_c7
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_27} :catch_ab
    .catch Ljava/lang/ClassNotFoundException; {:try_start_27 .. :try_end_27} :catch_8f
    .catch Ljava/lang/IllegalAccessException; {:try_start_27 .. :try_end_27} :catch_70
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_27 .. :try_end_27} :catch_51
    .catchall {:try_start_27 .. :try_end_27} :catchall_13

    move-object/from16 v11, v30

    move-object v13, v10

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v5

    move/from16 v10, v18

    move/from16 v5, v23

    move-object/from16 v14, v26

    goto/16 :goto_f

    :cond_24
    :try_start_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v6, v0

    iget-object v6, v6, Lcom/igexin/download/DownloadInfo;->mUri:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v7, v0

    iget-object v7, v7, Lcom/igexin/download/DownloadInfo;->mHint:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v11, v0

    iget v11, v11, Lcom/igexin/download/DownloadInfo;->mDestination:I

    if-eqz v24, :cond_25

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    :goto_1c
    invoke-static/range {v5 .. v12}, Lcom/igexin/download/h;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/igexin/download/a;

    move-result-object v5

    iget-object v6, v5, Lcom/igexin/download/a;->a:Ljava/lang/String;

    if-nez v6, :cond_26

    iget v5, v5, Lcom/igexin/download/a;->c:I
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_28} :catch_c7
    .catch Ljava/lang/RuntimeException; {:try_start_28 .. :try_end_28} :catch_ab
    .catch Ljava/lang/ClassNotFoundException; {:try_start_28 .. :try_end_28} :catch_8e
    .catch Ljava/lang/IllegalAccessException; {:try_start_28 .. :try_end_28} :catch_6f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_28 .. :try_end_28} :catch_50
    .catchall {:try_start_28 .. :try_end_28} :catchall_12

    :try_start_29
    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_29} :catch_c7
    .catch Ljava/lang/RuntimeException; {:try_start_29 .. :try_end_29} :catch_ab
    .catch Ljava/lang/ClassNotFoundException; {:try_start_29 .. :try_end_29} :catch_8f
    .catch Ljava/lang/IllegalAccessException; {:try_start_29 .. :try_end_29} :catch_70
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_29 .. :try_end_29} :catch_51
    .catchall {:try_start_29 .. :try_end_29} :catchall_13

    move-object/from16 v11, v30

    move-object v13, v10

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v5

    move/from16 v10, v18

    move/from16 v5, v23

    move-object/from16 v14, v26

    goto/16 :goto_f

    :cond_25
    const/4 v12, 0x0

    goto :goto_1c

    :cond_26
    :try_start_2a
    iget-object v6, v5, Lcom/igexin/download/a;->a:Ljava/lang/String;
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_2a .. :try_end_2a} :catch_c7
    .catch Ljava/lang/RuntimeException; {:try_start_2a .. :try_end_2a} :catch_ab
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2a .. :try_end_2a} :catch_8e
    .catch Ljava/lang/IllegalAccessException; {:try_start_2a .. :try_end_2a} :catch_6f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2a .. :try_end_2a} :catch_50
    .catchall {:try_start_2a .. :try_end_2a} :catchall_12

    :try_start_2b
    iget-object v5, v5, Lcom/igexin/download/a;->b:Ljava/io/FileOutputStream;
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_2b} :catch_c8
    .catch Ljava/lang/RuntimeException; {:try_start_2b .. :try_end_2b} :catch_ac
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2b .. :try_end_2b} :catch_90
    .catch Ljava/lang/IllegalAccessException; {:try_start_2b .. :try_end_2b} :catch_71
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2b .. :try_end_2b} :catch_52
    .catchall {:try_start_2b .. :try_end_2b} :catchall_14

    :try_start_2c
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "_data"

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v19, :cond_27

    const-string v8, "etag"

    move-object v0, v7

    move-object v1, v8

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_27
    if-eqz v10, :cond_28

    const-string v8, "mimetype"

    invoke-virtual {v7, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    const/4 v8, -0x1

    if-eqz v24, :cond_29

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    :cond_29
    const-string v9, "total_bytes"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v0, v8

    move-object/from16 v1, v22

    move-object v2, v7

    move-object v3, v9

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_2c .. :try_end_2c} :catch_c9
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_2c} :catch_ad
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2c .. :try_end_2c} :catch_91
    .catch Ljava/lang/IllegalAccessException; {:try_start_2c .. :try_end_2c} :catch_72
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2c .. :try_end_2c} :catch_53
    .catchall {:try_start_2c .. :try_end_2c} :catchall_15

    move-object v7, v10

    move-object v8, v6

    move-object v6, v5

    move-object/from16 v5, v24

    :goto_1d
    :try_start_2d
    invoke-interface/range {v32 .. v32}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_7
    .catch Ljava/io/FileNotFoundException; {:try_start_2d .. :try_end_2d} :catch_ca
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_2d} :catch_ae
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2d .. :try_end_2d} :catch_92
    .catch Ljava/lang/IllegalAccessException; {:try_start_2d .. :try_end_2d} :catch_73
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2d .. :try_end_2d} :catch_54
    .catchall {:try_start_2d .. :try_end_2d} :catchall_16

    move-result-object v9

    move-wide/from16 v10, v28

    move/from16 v12, v20

    move-object/from16 v19, v6

    move/from16 v6, v20

    move/from16 v20, v18

    move/from16 v18, v23

    :cond_2a
    :try_start_2e
    move-object v0, v9

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_2e} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_2e .. :try_end_2e} :catch_b0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2e .. :try_end_2e} :catch_94
    .catch Ljava/lang/IllegalAccessException; {:try_start_2e .. :try_end_2e} :catch_75
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2e .. :try_end_2e} :catch_56
    .catchall {:try_start_2e .. :try_end_2e} :catchall_18

    move-result v23

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_32

    :try_start_2f
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v9, "current_bytes"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez v5, :cond_2b

    const-string v9, "total_bytes"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, v9

    move-object/from16 v1, v22

    move-object v2, v6

    move-object v3, v10

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-eqz v5, :cond_3c

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eq v12, v5, :cond_3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Lcom/igexin/download/h;->a(Landroid/content/Context;)Z
    :try_end_2f
    .catch Ljava/io/FileNotFoundException; {:try_start_2f .. :try_end_2f} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_2f .. :try_end_2f} :catch_b0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2f .. :try_end_2f} :catch_94
    .catch Ljava/lang/IllegalAccessException; {:try_start_2f .. :try_end_2f} :catch_75
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2f .. :try_end_2f} :catch_56
    .catchall {:try_start_2f .. :try_end_2f} :catchall_18

    move-result v5

    if-nez v5, :cond_30

    const/16 v5, 0xc1

    move-object/from16 v11, v19

    move-object v13, v7

    move/from16 v10, v20

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v6, v5

    move/from16 v5, v18

    move v7, v14

    move-object v14, v8

    move v8, v15

    goto/16 :goto_f

    :catch_7
    move-exception v5

    :try_start_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Lcom/igexin/download/h;->a(Landroid/content/Context;)Z
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_30} :catch_ca
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_30} :catch_ae
    .catch Ljava/lang/ClassNotFoundException; {:try_start_30 .. :try_end_30} :catch_92
    .catch Ljava/lang/IllegalAccessException; {:try_start_30 .. :try_end_30} :catch_73
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_30 .. :try_end_30} :catch_54
    .catchall {:try_start_30 .. :try_end_30} :catchall_16

    move-result v5

    if-nez v5, :cond_2c

    const/16 v5, 0xc1

    move v9, v5

    move v5, v14

    :goto_1e
    :try_start_31
    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_31
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_31} :catch_cb
    .catch Ljava/lang/RuntimeException; {:try_start_31 .. :try_end_31} :catch_af
    .catch Ljava/lang/ClassNotFoundException; {:try_start_31 .. :try_end_31} :catch_93
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_31} :catch_74
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_31 .. :try_end_31} :catch_55
    .catchall {:try_start_31 .. :try_end_31} :catchall_17

    move-object v11, v6

    move-object v13, v7

    move-object v14, v8

    move/from16 v10, v18

    move-object/from16 v12, v17

    move v8, v15

    move v7, v5

    move v6, v9

    move/from16 v9, v16

    move/from16 v5, v23

    goto/16 :goto_f

    :cond_2c
    :try_start_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v5, v0

    iget v5, v5, Lcom/igexin/download/DownloadInfo;->mNumFailed:I
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_32 .. :try_end_32} :catch_ca
    .catch Ljava/lang/RuntimeException; {:try_start_32 .. :try_end_32} :catch_ae
    .catch Ljava/lang/ClassNotFoundException; {:try_start_32 .. :try_end_32} :catch_92
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_32} :catch_73
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_32 .. :try_end_32} :catch_54
    .catchall {:try_start_32 .. :try_end_32} :catchall_16

    const/4 v9, 0x5

    if-ge v5, v9, :cond_2d

    const/16 v5, 0xc1

    const/4 v9, 0x1

    move/from16 v34, v9

    move v9, v5

    move/from16 v5, v34

    goto :goto_1e

    :cond_2d
    const/16 v5, 0x1ef

    move v9, v5

    move v5, v14

    goto :goto_1e

    :catch_8
    move-exception v5

    :try_start_33
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v6, "current_bytes"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v6, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, v6

    move-object/from16 v1, v22

    move-object v2, v5

    move-object v3, v9

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Lcom/igexin/download/h;->a(Landroid/content/Context;)Z
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_33 .. :try_end_33} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_33} :catch_b0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_33 .. :try_end_33} :catch_94
    .catch Ljava/lang/IllegalAccessException; {:try_start_33 .. :try_end_33} :catch_75
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_33 .. :try_end_33} :catch_56
    .catchall {:try_start_33 .. :try_end_33} :catchall_18

    move-result v5

    if-nez v5, :cond_2e

    const/16 v5, 0xc1

    move v6, v5

    move v5, v14

    :goto_1f
    :try_start_34
    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_34
    .catch Ljava/io/FileNotFoundException; {:try_start_34 .. :try_end_34} :catch_cc
    .catch Ljava/lang/RuntimeException; {:try_start_34 .. :try_end_34} :catch_b1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_34 .. :try_end_34} :catch_95
    .catch Ljava/lang/IllegalAccessException; {:try_start_34 .. :try_end_34} :catch_76
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_34 .. :try_end_34} :catch_57
    .catchall {:try_start_34 .. :try_end_34} :catchall_19

    move-object/from16 v11, v19

    move-object v13, v7

    move-object v14, v8

    move/from16 v10, v20

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v5

    move/from16 v5, v18

    goto/16 :goto_f

    :cond_2e
    :try_start_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v5, v0

    iget v5, v5, Lcom/igexin/download/DownloadInfo;->mNumFailed:I

    const/4 v6, 0x5

    if-ge v5, v6, :cond_2f

    const/16 v5, 0xc1

    const/4 v6, 0x1

    move/from16 v34, v6

    move v6, v5

    move/from16 v5, v34

    goto :goto_1f

    :cond_2f
    const/16 v5, 0x1ef

    move v6, v5

    move v5, v14

    goto :goto_1f

    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object v5, v0

    iget v5, v5, Lcom/igexin/download/DownloadInfo;->mNumFailed:I
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_35 .. :try_end_35} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_35 .. :try_end_35} :catch_b0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_35 .. :try_end_35} :catch_94
    .catch Ljava/lang/IllegalAccessException; {:try_start_35 .. :try_end_35} :catch_75
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_35 .. :try_end_35} :catch_56
    .catchall {:try_start_35 .. :try_end_35} :catchall_18

    const/4 v6, 0x5

    if-ge v5, v6, :cond_31

    const/16 v5, 0xc1

    const/4 v6, 0x1

    move-object/from16 v11, v19

    move-object v13, v7

    move-object v14, v8

    move/from16 v10, v20

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v6

    move v6, v5

    move/from16 v5, v18

    goto/16 :goto_f

    :cond_31
    const/16 v5, 0x1ef

    move-object/from16 v11, v19

    move-object v13, v7

    move/from16 v10, v20

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v6, v5

    move/from16 v5, v18

    move v7, v14

    move-object v14, v8

    move v8, v15

    goto/16 :goto_f

    :cond_32
    const/16 v20, 0x1

    :cond_33
    :goto_20
    if-nez v19, :cond_34

    :try_start_36
    new-instance v24, Ljava/io/FileOutputStream;

    const/16 v26, 0x1

    move-object/from16 v0, v24

    move-object v1, v8

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    move-object/from16 v19, v24

    :cond_34
    const/16 v24, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    move/from16 v2, v24

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mDestination:I

    move/from16 v24, v0
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_36} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_36 .. :try_end_36} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_36} :catch_b0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_36 .. :try_end_36} :catch_94
    .catch Ljava/lang/IllegalAccessException; {:try_start_36 .. :try_end_36} :catch_75
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_36 .. :try_end_36} :catch_56
    .catchall {:try_start_36 .. :try_end_36} :catchall_18

    if-nez v24, :cond_35

    :try_start_37
    invoke-virtual/range {v19 .. v19}, Ljava/io/FileOutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_37} :catch_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_37 .. :try_end_37} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_37 .. :try_end_37} :catch_b0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_37 .. :try_end_37} :catch_94
    .catch Ljava/lang/IllegalAccessException; {:try_start_37 .. :try_end_37} :catch_75
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_37 .. :try_end_37} :catch_56
    .catchall {:try_start_37 .. :try_end_37} :catchall_18

    const/16 v19, 0x0

    :cond_35
    :goto_21
    add-int v12, v12, v23

    :try_start_38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    sub-int v26, v12, v6

    const/16 v28, 0x1000

    move/from16 v0, v26

    move/from16 v1, v28

    if-le v0, v1, :cond_36

    sub-long v28, v23, v10

    const-wide/16 v32, 0x5dc

    cmp-long v26, v28, v32

    if-lez v26, :cond_36

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v10, "current_bytes"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    move-object v10, v0

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const/4 v11, 0x0

    const/16 v26, 0x0

    move-object v0, v10

    move-object/from16 v1, v22

    move-object v2, v6

    move-object v3, v11

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-wide/from16 v10, v23

    move v6, v12

    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object/from16 v23, v0

    monitor-enter v23
    :try_end_38
    .catch Ljava/io/FileNotFoundException; {:try_start_38 .. :try_end_38} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_38 .. :try_end_38} :catch_b0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_38 .. :try_end_38} :catch_94
    .catch Ljava/lang/IllegalAccessException; {:try_start_38 .. :try_end_38} :catch_75
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_38 .. :try_end_38} :catch_56
    .catchall {:try_start_38 .. :try_end_38} :catchall_18

    :try_start_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mControl:I

    move/from16 v24, v0
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_0

    const/16 v26, 0x1

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_38

    const/16 v5, 0xc1

    :try_start_3a
    invoke-virtual/range {v31 .. v31}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    monitor-exit v23
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_1b

    move-object/from16 v11, v19

    move-object v13, v7

    move/from16 v10, v20

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v6, v5

    move/from16 v5, v18

    move v7, v14

    move-object v14, v8

    move v8, v15

    goto/16 :goto_f

    :catch_9
    move-exception v24

    :try_start_3b
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v24

    const-string v26, "mounted"

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_37

    const/16 v18, 0x1

    goto/16 :goto_20

    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->a:Landroid/content/Context;

    move-object/from16 v24, v0

    const-wide/16 v28, 0x1000

    move-object/from16 v0, v24

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/igexin/download/h;->a(Landroid/content/Context;J)Z
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_3b .. :try_end_3b} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_3b .. :try_end_3b} :catch_b0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3b .. :try_end_3b} :catch_94
    .catch Ljava/lang/IllegalAccessException; {:try_start_3b .. :try_end_3b} :catch_75
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3b .. :try_end_3b} :catch_56
    .catchall {:try_start_3b .. :try_end_3b} :catchall_18

    move-result v24

    if-nez v24, :cond_33

    const/16 v5, 0x1ec

    move-object/from16 v11, v19

    move-object v13, v7

    move/from16 v10, v20

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v6, v5

    move/from16 v5, v18

    move v7, v14

    move-object v14, v8

    move v8, v15

    goto/16 :goto_f

    :cond_38
    :try_start_3c
    monitor-exit v23
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_0

    :try_start_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/igexin/download/DownloadInfo;->mStatus:I

    move/from16 v23, v0
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_3d .. :try_end_3d} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_3d .. :try_end_3d} :catch_b0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3d .. :try_end_3d} :catch_94
    .catch Ljava/lang/IllegalAccessException; {:try_start_3d .. :try_end_3d} :catch_75
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3d .. :try_end_3d} :catch_56
    .catchall {:try_start_3d .. :try_end_3d} :catchall_18

    const/16 v24, 0x1ea

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2a

    const/16 v5, 0x1ea

    move-object/from16 v11, v19

    move-object v13, v7

    move/from16 v10, v20

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v6, v5

    move/from16 v5, v18

    move v7, v14

    move-object v14, v8

    move v8, v15

    goto/16 :goto_f

    :catchall_0
    move-exception v5

    move v6, v13

    :goto_22
    :try_start_3e
    monitor-exit v23
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_1c

    :try_start_3f
    throw v5
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_3f .. :try_end_3f} :catch_a
    .catch Ljava/lang/RuntimeException; {:try_start_3f .. :try_end_3f} :catch_b0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3f .. :try_end_3f} :catch_96
    .catch Ljava/lang/IllegalAccessException; {:try_start_3f .. :try_end_3f} :catch_77
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3f .. :try_end_3f} :catch_58
    .catchall {:try_start_3f .. :try_end_3f} :catchall_1a

    :catch_a
    move-exception v5

    move/from16 v5, v18

    move-object/from16 v11, v27

    move-object v13, v7

    move/from16 v10, v20

    move-object/from16 v12, v17

    move/from16 v9, v16

    move-object/from16 v16, v8

    move v7, v14

    move v8, v15

    move-object/from16 v14, v21

    move-object/from16 v15, v19

    :goto_23
    const/16 v6, 0x1ec

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z

    if-eqz v11, :cond_39

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_39
    if-eqz v14, :cond_3a

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    :try_start_40
    const-string v17, "close"

    const/16 v18, 0x0

    move-object v0, v11

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object v0, v11

    move-object v1, v14

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/SecurityException; {:try_start_40 .. :try_end_40} :catch_b7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_40 .. :try_end_40} :catch_b6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_40 .. :try_end_40} :catch_b5
    .catch Ljava/lang/IllegalAccessException; {:try_start_40 .. :try_end_40} :catch_b4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_40 .. :try_end_40} :catch_b3

    :cond_3a
    :goto_24
    if-eqz v15, :cond_3b

    :try_start_41
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_41} :catch_2e

    :cond_3b
    :goto_25
    if-eqz v16, :cond_6c

    invoke-static {v6}, Lcom/igexin/download/Downloads;->isStatusError(I)Z

    move-result v11

    if-eqz v11, :cond_40

    if-nez v5, :cond_6c

    new-instance v5, Ljava/io/File;

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    const/4 v5, 0x0

    move-object v11, v5

    :goto_26
    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3c
    const/16 v5, 0xc8

    move-object/from16 v11, v19

    move-object v13, v7

    move/from16 v10, v20

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v6, v5

    move/from16 v5, v18

    move v7, v14

    move-object v14, v8

    move v8, v15

    goto/16 :goto_f

    :cond_3d
    invoke-static {v6}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_6e

    const-string v5, "android.os.FileUtils"

    :try_start_42
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_27
    move-object v0, v5

    array-length v0, v0

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_6d

    aget-object v16, v5, v15

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v17, "setPermissions"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3f

    aget-object v5, v5, v15

    :goto_28
    if-eqz v5, :cond_3e

    const/4 v11, 0x0

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v14, v15, v16

    const/16 v16, 0x1

    const/16 v17, 0x1a4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v5, v11, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_42} :catch_cd

    :cond_3e
    :goto_29
    :try_start_43
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v5, v14, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_43 .. :try_end_43} :catch_b
    .catch Ljava/io/SyncFailedException; {:try_start_43 .. :try_end_43} :catch_c
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_43} :catch_d
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_43} :catch_e

    move-object v11, v14

    goto/16 :goto_12

    :cond_3f
    add-int/lit8 v15, v15, 0x1

    goto :goto_27

    :catch_b
    move-exception v5

    move-object v11, v14

    goto/16 :goto_12

    :catch_c
    move-exception v5

    move-object v11, v14

    goto/16 :goto_12

    :catch_d
    move-exception v5

    move-object v11, v14

    goto/16 :goto_12

    :catch_e
    move-exception v5

    move-object v11, v14

    goto/16 :goto_12

    :cond_40
    invoke-static {v6}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_6c

    const-string v5, "android.os.FileUtils"

    :try_start_44
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_2a
    array-length v15, v5

    if-ge v14, v15, :cond_6b

    aget-object v15, v5, v14

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v17, "setPermissions"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_42

    aget-object v5, v5, v14

    :goto_2b
    if-eqz v5, :cond_41

    const/4 v11, 0x0

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v17, 0x1a4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v14, v15

    const/4 v15, 0x2

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v14, v15

    const/4 v15, 0x3

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v14, v15

    invoke-virtual {v5, v11, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_44} :catch_b2

    :cond_41
    :goto_2c
    :try_start_45
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    move-object v0, v5

    move-object/from16 v1, v16

    move v2, v11

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_45
    .catch Ljava/io/FileNotFoundException; {:try_start_45 .. :try_end_45} :catch_f
    .catch Ljava/io/SyncFailedException; {:try_start_45 .. :try_end_45} :catch_10
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_45} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_45} :catch_12

    move-object/from16 v11, v16

    goto/16 :goto_26

    :cond_42
    add-int/lit8 v14, v14, 0x1

    goto :goto_2a

    :catch_f
    move-exception v5

    move-object/from16 v11, v16

    goto/16 :goto_26

    :catch_10
    move-exception v5

    move-object/from16 v11, v16

    goto/16 :goto_26

    :catch_11
    move-exception v5

    move-object/from16 v11, v16

    goto/16 :goto_26

    :catch_12
    move-exception v5

    move-object/from16 v11, v16

    goto/16 :goto_26

    :catch_13
    move-exception v5

    move/from16 v5, v23

    move-object v11, v7

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move-object/from16 v16, v6

    move-object/from16 v15, v20

    move v7, v14

    move-object/from16 v14, v21

    :goto_2d
    const/16 v6, 0x1eb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z

    if-eqz v11, :cond_43

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_43
    if-eqz v14, :cond_44

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    :try_start_46
    const-string v17, "close"

    const/16 v18, 0x0

    move-object v0, v11

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object v0, v11

    move-object v1, v14

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Ljava/lang/SecurityException; {:try_start_46 .. :try_end_46} :catch_9c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_46 .. :try_end_46} :catch_9b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_46 .. :try_end_46} :catch_9a
    .catch Ljava/lang/IllegalAccessException; {:try_start_46 .. :try_end_46} :catch_99
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_46 .. :try_end_46} :catch_98

    :cond_44
    :goto_2e
    if-eqz v15, :cond_45

    :try_start_47
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_47} :catch_2f

    :cond_45
    :goto_2f
    if-eqz v16, :cond_6a

    invoke-static {v6}, Lcom/igexin/download/Downloads;->isStatusError(I)Z

    move-result v11

    if-eqz v11, :cond_46

    if-nez v5, :cond_6a

    new-instance v5, Ljava/io/File;

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    const/4 v5, 0x0

    move-object v11, v5

    :goto_30
    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_46
    invoke-static {v6}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_6a

    const-string v5, "android.os.FileUtils"

    :try_start_48
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_31
    array-length v15, v5

    if-ge v14, v15, :cond_69

    aget-object v15, v5, v14

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v17, "setPermissions"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_48

    aget-object v5, v5, v14

    :goto_32
    if-eqz v5, :cond_47

    const/4 v11, 0x0

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v17, 0x1a4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v14, v15

    const/4 v15, 0x2

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v14, v15

    const/4 v15, 0x3

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v14, v15

    invoke-virtual {v5, v11, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_48} :catch_97

    :cond_47
    :goto_33
    :try_start_49
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    move-object v0, v5

    move-object/from16 v1, v16

    move v2, v11

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_49 .. :try_end_49} :catch_14
    .catch Ljava/io/SyncFailedException; {:try_start_49 .. :try_end_49} :catch_15
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_49} :catch_16
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_49} :catch_17

    move-object/from16 v11, v16

    goto :goto_30

    :cond_48
    add-int/lit8 v14, v14, 0x1

    goto :goto_31

    :catch_14
    move-exception v5

    move-object/from16 v11, v16

    goto :goto_30

    :catch_15
    move-exception v5

    move-object/from16 v11, v16

    goto :goto_30

    :catch_16
    move-exception v5

    move-object/from16 v11, v16

    goto :goto_30

    :catch_17
    move-exception v5

    move-object/from16 v11, v16

    goto :goto_30

    :catch_18
    move-exception v5

    move/from16 v5, v23

    move-object v11, v7

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v6

    move v7, v14

    move-object/from16 v14, v21

    move v6, v13

    move-object/from16 v13, v19

    :goto_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z

    if-eqz v11, :cond_49

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_49
    if-eqz v14, :cond_4a

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    :try_start_4a
    const-string v17, "close"

    const/16 v18, 0x0

    move-object v0, v11

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object v0, v11

    move-object v1, v14

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Ljava/lang/SecurityException; {:try_start_4a .. :try_end_4a} :catch_7d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4a .. :try_end_4a} :catch_7c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4a .. :try_end_4a} :catch_7b
    .catch Ljava/lang/IllegalAccessException; {:try_start_4a .. :try_end_4a} :catch_7a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4a .. :try_end_4a} :catch_79

    :cond_4a
    :goto_35
    if-eqz v15, :cond_4b

    :try_start_4b
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4b} :catch_30

    :cond_4b
    :goto_36
    if-eqz v16, :cond_68

    invoke-static {v6}, Lcom/igexin/download/Downloads;->isStatusError(I)Z

    move-result v11

    if-eqz v11, :cond_4c

    if-nez v5, :cond_68

    new-instance v5, Ljava/io/File;

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    const/4 v5, 0x0

    move-object v11, v5

    :goto_37
    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_4c
    invoke-static {v6}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_68

    const-string v5, "android.os.FileUtils"

    :try_start_4c
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_38
    array-length v15, v5

    if-ge v14, v15, :cond_67

    aget-object v15, v5, v14

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v17, "setPermissions"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4e

    aget-object v5, v5, v14

    :goto_39
    if-eqz v5, :cond_4d

    const/4 v11, 0x0

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v17, 0x1a4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v14, v15

    const/4 v15, 0x2

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v14, v15

    const/4 v15, 0x3

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v14, v15

    invoke-virtual {v5, v11, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_78

    :cond_4d
    :goto_3a
    :try_start_4d
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    move-object v0, v5

    move-object/from16 v1, v16

    move v2, v11

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4d
    .catch Ljava/io/FileNotFoundException; {:try_start_4d .. :try_end_4d} :catch_19
    .catch Ljava/io/SyncFailedException; {:try_start_4d .. :try_end_4d} :catch_1a
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_4d} :catch_1b
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_4d} :catch_1c

    move-object/from16 v11, v16

    goto :goto_37

    :cond_4e
    add-int/lit8 v14, v14, 0x1

    goto :goto_38

    :catch_19
    move-exception v5

    move-object/from16 v11, v16

    goto :goto_37

    :catch_1a
    move-exception v5

    move-object/from16 v11, v16

    goto :goto_37

    :catch_1b
    move-exception v5

    move-object/from16 v11, v16

    goto :goto_37

    :catch_1c
    move-exception v5

    move-object/from16 v11, v16

    goto :goto_37

    :catch_1d
    move-exception v5

    move/from16 v5, v23

    move-object v11, v7

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v6

    move v7, v14

    move-object/from16 v14, v21

    move v6, v13

    move-object/from16 v13, v19

    :goto_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z

    if-eqz v11, :cond_4f

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_4f
    if-eqz v14, :cond_50

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    :try_start_4e
    const-string v17, "close"

    const/16 v18, 0x0

    move-object v0, v11

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object v0, v11

    move-object v1, v14

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4e
    .catch Ljava/lang/SecurityException; {:try_start_4e .. :try_end_4e} :catch_5e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4e .. :try_end_4e} :catch_5d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_4e} :catch_5c
    .catch Ljava/lang/IllegalAccessException; {:try_start_4e .. :try_end_4e} :catch_5b
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4e .. :try_end_4e} :catch_5a

    :cond_50
    :goto_3c
    if-eqz v15, :cond_51

    :try_start_4f
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_4f} :catch_31

    :cond_51
    :goto_3d
    if-eqz v16, :cond_66

    invoke-static {v6}, Lcom/igexin/download/Downloads;->isStatusError(I)Z

    move-result v11

    if-eqz v11, :cond_52

    if-nez v5, :cond_66

    new-instance v5, Ljava/io/File;

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    const/4 v5, 0x0

    move-object v11, v5

    :goto_3e
    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_52
    invoke-static {v6}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_66

    const-string v5, "android.os.FileUtils"

    :try_start_50
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_3f
    array-length v15, v5

    if-ge v14, v15, :cond_65

    aget-object v15, v5, v14

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v17, "setPermissions"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_54

    aget-object v5, v5, v14

    :goto_40
    if-eqz v5, :cond_53

    const/4 v11, 0x0

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v17, 0x1a4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v14, v15

    const/4 v15, 0x2

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v14, v15

    const/4 v15, 0x3

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v14, v15

    invoke-virtual {v5, v11, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_59

    :cond_53
    :goto_41
    :try_start_51
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    move-object v0, v5

    move-object/from16 v1, v16

    move v2, v11

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_51
    .catch Ljava/io/FileNotFoundException; {:try_start_51 .. :try_end_51} :catch_1e
    .catch Ljava/io/SyncFailedException; {:try_start_51 .. :try_end_51} :catch_1f
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_51} :catch_20
    .catch Ljava/lang/RuntimeException; {:try_start_51 .. :try_end_51} :catch_21

    move-object/from16 v11, v16

    goto :goto_3e

    :cond_54
    add-int/lit8 v14, v14, 0x1

    goto :goto_3f

    :catch_1e
    move-exception v5

    move-object/from16 v11, v16

    goto :goto_3e

    :catch_1f
    move-exception v5

    move-object/from16 v11, v16

    goto :goto_3e

    :catch_20
    move-exception v5

    move-object/from16 v11, v16

    goto :goto_3e

    :catch_21
    move-exception v5

    move-object/from16 v11, v16

    goto :goto_3e

    :catch_22
    move-exception v5

    move/from16 v5, v23

    move-object v11, v7

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move-object/from16 v15, v20

    move-object/from16 v16, v6

    move v7, v14

    move-object/from16 v14, v21

    move v6, v13

    move-object/from16 v13, v19

    :goto_42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z

    if-eqz v11, :cond_55

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_55
    if-eqz v14, :cond_56

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    :try_start_52
    const-string v17, "close"

    const/16 v18, 0x0

    move-object v0, v11

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    move-object v0, v11

    move-object v1, v14

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/SecurityException; {:try_start_52 .. :try_end_52} :catch_3f
    .catch Ljava/lang/NoSuchMethodException; {:try_start_52 .. :try_end_52} :catch_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_52 .. :try_end_52} :catch_3d
    .catch Ljava/lang/IllegalAccessException; {:try_start_52 .. :try_end_52} :catch_3c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_52 .. :try_end_52} :catch_3b

    :cond_56
    :goto_43
    if-eqz v15, :cond_57

    :try_start_53
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_53} :catch_32

    :cond_57
    :goto_44
    if-eqz v16, :cond_64

    invoke-static {v6}, Lcom/igexin/download/Downloads;->isStatusError(I)Z

    move-result v11

    if-eqz v11, :cond_58

    if-nez v5, :cond_64

    new-instance v5, Ljava/io/File;

    move-object v0, v5

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    const/4 v5, 0x0

    move-object v11, v5

    :goto_45
    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_58
    invoke-static {v6}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_64

    const-string v5, "android.os.FileUtils"

    :try_start_54
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_46
    array-length v15, v5

    if-ge v14, v15, :cond_63

    aget-object v15, v5, v14

    invoke-virtual {v15}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v17, "setPermissions"

    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5a

    aget-object v5, v5, v14

    :goto_47
    if-eqz v5, :cond_59

    const/4 v11, 0x0

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v17, 0x1a4

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v14, v15

    const/4 v15, 0x2

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v14, v15

    const/4 v15, 0x3

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v14, v15

    invoke-virtual {v5, v11, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_3a

    :cond_59
    :goto_48
    :try_start_55
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    move-object v0, v5

    move-object/from16 v1, v16

    move v2, v11

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_55
    .catch Ljava/io/FileNotFoundException; {:try_start_55 .. :try_end_55} :catch_23
    .catch Ljava/io/SyncFailedException; {:try_start_55 .. :try_end_55} :catch_24
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_55} :catch_25
    .catch Ljava/lang/RuntimeException; {:try_start_55 .. :try_end_55} :catch_26

    move-object/from16 v11, v16

    goto :goto_45

    :cond_5a
    add-int/lit8 v14, v14, 0x1

    goto :goto_46

    :catch_23
    move-exception v5

    move-object/from16 v11, v16

    goto :goto_45

    :catch_24
    move-exception v5

    move-object/from16 v11, v16

    goto :goto_45

    :catch_25
    move-exception v5

    move-object/from16 v11, v16

    goto :goto_45

    :catch_26
    move-exception v5

    move-object/from16 v11, v16

    goto :goto_45

    :catchall_1
    move-exception v5

    move-object v11, v7

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move-object/from16 v17, v6

    move-object/from16 v15, v21

    move-object/from16 v16, v20

    move v7, v14

    move-object v14, v5

    move v6, v13

    move-object/from16 v13, v19

    move/from16 v5, v23

    :goto_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/igexin/download/g;->b:Lcom/igexin/download/DownloadInfo;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/igexin/download/DownloadInfo;->mHasActiveThread:Z

    if-eqz v11, :cond_5b

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_5b
    if-eqz v15, :cond_5c

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    :try_start_56
    const-string v18, "close"

    const/16 v19, 0x0

    move-object v0, v11

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    const/16 v18, 0x0

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    move-object v0, v11

    move-object v1, v15

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_56
    .catch Ljava/lang/SecurityException; {:try_start_56 .. :try_end_56} :catch_39
    .catch Ljava/lang/NoSuchMethodException; {:try_start_56 .. :try_end_56} :catch_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_56 .. :try_end_56} :catch_37
    .catch Ljava/lang/IllegalAccessException; {:try_start_56 .. :try_end_56} :catch_36
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_56 .. :try_end_56} :catch_35

    :cond_5c
    :goto_4a
    if-eqz v16, :cond_5d

    :try_start_57
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_57} :catch_33

    :cond_5d
    :goto_4b
    if-eqz v17, :cond_62

    invoke-static {v6}, Lcom/igexin/download/Downloads;->isStatusError(I)Z

    move-result v11

    if-eqz v11, :cond_5e

    if-nez v5, :cond_62

    new-instance v5, Ljava/io/File;

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    const/4 v5, 0x0

    move-object v11, v5

    :goto_4c
    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v13}, Lcom/igexin/download/g;->a(IZIIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v14

    :cond_5e
    invoke-static {v6}, Lcom/igexin/download/Downloads;->isStatusSuccess(I)Z

    move-result v5

    if-eqz v5, :cond_62

    const-string v5, "android.os.FileUtils"

    :try_start_58
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_4d
    move-object v0, v5

    array-length v0, v0

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_61

    aget-object v16, v5, v15

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v16

    const-string v18, "setPermissions"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_60

    aget-object v5, v5, v15

    :goto_4e
    if-eqz v5, :cond_5f

    const/4 v11, 0x0

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const/16 v18, 0x1a4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v15, v16

    const/16 v16, 0x2

    const/16 v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v15, v16

    const/16 v16, 0x3

    const/16 v18, -0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v15, v16

    invoke-virtual {v5, v11, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_34

    :cond_5f
    :goto_4f
    :try_start_59
    new-instance v5, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    move-object v0, v5

    move-object/from16 v1, v17

    move v2, v11

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V
    :try_end_59
    .catch Ljava/io/FileNotFoundException; {:try_start_59 .. :try_end_59} :catch_27
    .catch Ljava/io/SyncFailedException; {:try_start_59 .. :try_end_59} :catch_28
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_59} :catch_29
    .catch Ljava/lang/RuntimeException; {:try_start_59 .. :try_end_59} :catch_2a

    move-object/from16 v11, v17

    goto :goto_4c

    :cond_60
    add-int/lit8 v15, v15, 0x1

    goto :goto_4d

    :catch_27
    move-exception v5

    move-object/from16 v11, v17

    goto :goto_4c

    :catch_28
    move-exception v5

    move-object/from16 v11, v17

    goto :goto_4c

    :catch_29
    move-exception v5

    move-object/from16 v11, v17

    goto/16 :goto_4c

    :catch_2a
    move-exception v5

    move-object/from16 v11, v17

    goto/16 :goto_4c

    :catch_2b
    move-exception v5

    goto/16 :goto_1

    :catch_2c
    move-exception v24

    goto/16 :goto_21

    :catch_2d
    move-exception v11

    goto/16 :goto_11

    :catch_2e
    move-exception v11

    goto/16 :goto_25

    :catch_2f
    move-exception v11

    goto/16 :goto_2f

    :catch_30
    move-exception v11

    goto/16 :goto_36

    :catch_31
    move-exception v11

    goto/16 :goto_3d

    :catch_32
    move-exception v11

    goto/16 :goto_44

    :catch_33
    move-exception v11

    goto/16 :goto_4b

    :catch_34
    move-exception v5

    goto :goto_4f

    :catch_35
    move-exception v11

    goto/16 :goto_4a

    :catch_36
    move-exception v11

    goto/16 :goto_4a

    :catch_37
    move-exception v11

    goto/16 :goto_4a

    :catch_38
    move-exception v11

    goto/16 :goto_4a

    :catch_39
    move-exception v11

    goto/16 :goto_4a

    :catchall_2
    move-exception v5

    move-object/from16 v11, v27

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v17, v6

    move-object v14, v5

    move-object/from16 v15, v21

    move-object/from16 v16, v20

    move/from16 v5, v23

    move v6, v13

    move-object/from16 v13, v19

    goto/16 :goto_49

    :catchall_3
    move-exception v5

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v13

    move-object/from16 v17, v11

    move-object v14, v5

    move-object/from16 v15, v21

    move-object/from16 v16, v20

    move-object/from16 v13, v19

    move-object/from16 v11, v27

    move/from16 v5, v23

    goto/16 :goto_49

    :catchall_4
    move-exception v5

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v17, v11

    move-object/from16 v15, v21

    move-object/from16 v16, v20

    move-object v14, v5

    move-object/from16 v11, v27

    move/from16 v5, v23

    goto/16 :goto_49

    :catchall_5
    move-exception v6

    move-object/from16 v11, v27

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v17, v5

    move-object v14, v6

    move-object/from16 v15, v21

    move-object/from16 v16, v20

    move/from16 v5, v23

    move v6, v13

    move-object/from16 v13, v19

    goto/16 :goto_49

    :catchall_6
    move-exception v6

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v17, v5

    move-object v14, v6

    move-object/from16 v15, v21

    move-object/from16 v16, v11

    move-object/from16 v11, v27

    move/from16 v5, v23

    move v6, v13

    move-object/from16 v13, v19

    goto/16 :goto_49

    :catchall_7
    move-exception v6

    move-object/from16 v11, v27

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v17, v26

    move-object v14, v6

    move-object/from16 v15, v21

    move-object/from16 v16, v5

    move/from16 v5, v23

    move v6, v13

    move-object/from16 v13, v19

    goto/16 :goto_49

    :catchall_8
    move-exception v6

    move-object/from16 v11, v27

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v17, v26

    move-object v14, v6

    move-object/from16 v15, v21

    move-object/from16 v16, v5

    move/from16 v5, v23

    move v6, v13

    move-object/from16 v13, v19

    goto/16 :goto_49

    :catchall_9
    move-exception v5

    move-object/from16 v11, v27

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v13

    move-object v14, v5

    move-object/from16 v15, v21

    move-object/from16 v16, v30

    move-object/from16 v13, v19

    move-object/from16 v17, v26

    move/from16 v5, v23

    goto/16 :goto_49

    :catchall_a
    move-exception v7

    move-object v14, v7

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v30

    move-object/from16 v17, v26

    move v7, v5

    move/from16 v5, v23

    goto/16 :goto_49

    :catchall_b
    move-exception v7

    move-object v14, v7

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v30

    move-object/from16 v17, v26

    move v7, v6

    move v6, v5

    move/from16 v5, v23

    goto/16 :goto_49

    :catchall_c
    move-exception v8

    move-object v14, v8

    move-object/from16 v11, v27

    move-object/from16 v15, v21

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move-object/from16 v16, v30

    move-object/from16 v17, v26

    move v8, v7

    move v7, v6

    move v6, v5

    move/from16 v5, v23

    goto/16 :goto_49

    :catchall_d
    move-exception v7

    move-object v14, v7

    move-object/from16 v11, v27

    move-object/from16 v15, v21

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move-object/from16 v16, v30

    move-object/from16 v17, v26

    move v7, v6

    move v6, v5

    move/from16 v5, v23

    goto/16 :goto_49

    :catchall_e
    move-exception v6

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object v14, v6

    move-object/from16 v15, v21

    move-object/from16 v16, v30

    move-object/from16 v17, v26

    move v6, v5

    move/from16 v5, v23

    goto/16 :goto_49

    :catchall_f
    move-exception v8

    move-object/from16 v11, v27

    move-object/from16 v16, v30

    move-object/from16 v13, v19

    move-object/from16 v17, v26

    move/from16 v10, v18

    move-object v12, v5

    move v9, v6

    move/from16 v5, v23

    move v6, v7

    move v7, v14

    move-object v14, v8

    move v8, v15

    move-object/from16 v15, v21

    goto/16 :goto_49

    :catchall_10
    move-exception v7

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move-object/from16 v17, v26

    move-object/from16 v15, v21

    move-object/from16 v16, v30

    move-object/from16 v34, v7

    move v7, v14

    move-object/from16 v14, v34

    move/from16 v35, v6

    move v6, v5

    move/from16 v5, v35

    goto/16 :goto_49

    :catchall_11
    move-exception v7

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move-object/from16 v15, v21

    move-object/from16 v16, v30

    move-object/from16 v17, v26

    move-object/from16 v34, v7

    move v7, v14

    move-object/from16 v14, v34

    goto/16 :goto_49

    :catchall_12
    move-exception v5

    move-object/from16 v11, v27

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v13

    move-object/from16 v17, v26

    move-object v14, v5

    move-object/from16 v15, v21

    move-object/from16 v16, v30

    move-object v13, v10

    move/from16 v10, v18

    move/from16 v5, v23

    goto/16 :goto_49

    :catchall_13
    move-exception v6

    move-object/from16 v11, v27

    move-object v13, v10

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v17, v26

    move/from16 v10, v18

    move-object v14, v6

    move-object/from16 v15, v21

    move-object/from16 v16, v30

    move v6, v5

    move/from16 v5, v23

    goto/16 :goto_49

    :catchall_14
    move-exception v5

    move-object/from16 v11, v27

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v17, v6

    move-object v14, v5

    move-object/from16 v15, v21

    move-object/from16 v16, v30

    move/from16 v5, v23

    move v6, v13

    move-object v13, v10

    move/from16 v10, v18

    goto/16 :goto_49

    :catchall_15
    move-exception v7

    move-object/from16 v11, v27

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    move-object/from16 v15, v21

    move/from16 v5, v23

    move v6, v13

    move-object v13, v10

    move/from16 v10, v18

    move/from16 v34, v14

    move-object v14, v7

    move/from16 v7, v34

    goto/16 :goto_49

    :catchall_16
    move-exception v5

    move-object/from16 v11, v27

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move-object/from16 v16, v6

    move-object/from16 v17, v8

    move v8, v15

    move v6, v13

    move-object/from16 v15, v21

    move-object v13, v7

    move v7, v14

    move-object v14, v5

    move/from16 v5, v23

    goto/16 :goto_49

    :catchall_17
    move-exception v10

    move-object v14, v10

    move-object/from16 v11, v27

    move-object v13, v7

    move-object/from16 v12, v17

    move-object/from16 v17, v8

    move/from16 v10, v18

    move v7, v5

    move/from16 v5, v23

    move v8, v15

    move-object/from16 v15, v21

    move/from16 v34, v16

    move-object/from16 v16, v6

    move v6, v9

    move/from16 v9, v34

    goto/16 :goto_49

    :catchall_18
    move-exception v5

    move-object/from16 v11, v27

    move/from16 v10, v20

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v6, v13

    move-object v13, v7

    move-object/from16 v17, v8

    move-object/from16 v16, v19

    move v8, v15

    move v7, v14

    move-object v14, v5

    move-object/from16 v15, v21

    move/from16 v5, v18

    goto/16 :goto_49

    :catchall_19
    move-exception v9

    move-object v14, v9

    move-object/from16 v11, v27

    move-object v13, v7

    move/from16 v10, v20

    move-object/from16 v12, v17

    move-object/from16 v17, v8

    move/from16 v9, v16

    move v7, v5

    move-object/from16 v16, v19

    move/from16 v5, v18

    move v8, v15

    move-object/from16 v15, v21

    goto/16 :goto_49

    :catchall_1a
    move-exception v5

    move-object/from16 v11, v27

    move-object v13, v7

    move/from16 v10, v20

    move-object/from16 v12, v17

    move/from16 v9, v16

    move-object/from16 v17, v8

    move-object/from16 v16, v19

    move v7, v14

    move v8, v15

    move-object v14, v5

    move-object/from16 v15, v21

    move/from16 v5, v18

    goto/16 :goto_49

    :catch_3a
    move-exception v5

    goto/16 :goto_48

    :catch_3b
    move-exception v11

    goto/16 :goto_43

    :catch_3c
    move-exception v11

    goto/16 :goto_43

    :catch_3d
    move-exception v11

    goto/16 :goto_43

    :catch_3e
    move-exception v11

    goto/16 :goto_43

    :catch_3f
    move-exception v11

    goto/16 :goto_43

    :catch_40
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v15, v20

    move-object/from16 v16, v6

    move-object/from16 v14, v21

    move v6, v13

    move-object/from16 v13, v19

    goto/16 :goto_42

    :catch_41
    move-exception v5

    move/from16 v5, v23

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v13

    move-object/from16 v14, v21

    move-object/from16 v15, v20

    move-object/from16 v13, v19

    move-object/from16 v16, v11

    move-object/from16 v11, v27

    goto/16 :goto_42

    :catch_42
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v15, v20

    move-object/from16 v16, v11

    move-object/from16 v14, v21

    move-object/from16 v11, v27

    goto/16 :goto_42

    :catch_43
    move-exception v6

    move-object/from16 v11, v27

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v13

    move-object/from16 v14, v21

    move-object/from16 v15, v20

    move-object/from16 v13, v19

    move-object/from16 v16, v5

    move/from16 v5, v23

    goto/16 :goto_42

    :catch_44
    move-exception v6

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v13

    move-object/from16 v14, v21

    move-object v15, v11

    move-object/from16 v13, v19

    move-object/from16 v16, v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    goto/16 :goto_42

    :catch_45
    move-exception v6

    move-object/from16 v11, v27

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v13

    move-object/from16 v14, v21

    move-object v15, v5

    move-object/from16 v13, v19

    move-object/from16 v16, v26

    move/from16 v5, v23

    goto/16 :goto_42

    :catch_46
    move-exception v6

    move-object/from16 v11, v27

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v13

    move-object/from16 v14, v21

    move-object v15, v5

    move-object/from16 v13, v19

    move-object/from16 v16, v26

    move/from16 v5, v23

    goto/16 :goto_42

    :catch_47
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v13

    move-object/from16 v13, v19

    move-object/from16 v16, v26

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    goto/16 :goto_42

    :catch_48
    move-exception v7

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v5

    move-object/from16 v16, v26

    move-object/from16 v15, v30

    move/from16 v5, v23

    goto/16 :goto_42

    :catch_49
    move-exception v7

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v6

    move-object/from16 v16, v26

    move-object/from16 v15, v30

    move v6, v5

    move/from16 v5, v23

    goto/16 :goto_42

    :catch_4a
    move-exception v8

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v7

    move-object/from16 v16, v26

    move v7, v6

    move v6, v5

    move/from16 v5, v23

    goto/16 :goto_42

    :catch_4b
    move-exception v7

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v7, v6

    move-object/from16 v16, v26

    move v6, v5

    move/from16 v5, v23

    goto/16 :goto_42

    :catch_4c
    move-exception v6

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v5

    move/from16 v5, v23

    move-object/from16 v16, v26

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    goto/16 :goto_42

    :catch_4d
    move-exception v8

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move-object/from16 v16, v26

    move/from16 v10, v18

    move-object v12, v5

    move v9, v6

    move v8, v15

    move/from16 v5, v23

    move-object/from16 v15, v30

    move v6, v7

    move v7, v14

    move-object/from16 v14, v21

    goto/16 :goto_42

    :catch_4e
    move-exception v7

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v15, v30

    move-object/from16 v16, v26

    move-object/from16 v14, v21

    move/from16 v34, v6

    move v6, v5

    move/from16 v5, v34

    goto/16 :goto_42

    :catch_4f
    move-exception v7

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v16, v26

    move-object/from16 v15, v30

    move-object/from16 v14, v21

    goto/16 :goto_42

    :catch_50
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v13

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    move-object v13, v10

    move-object/from16 v16, v26

    move/from16 v10, v18

    goto/16 :goto_42

    :catch_51
    move-exception v6

    move-object/from16 v11, v27

    move-object v13, v10

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v5

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    move/from16 v5, v23

    move-object/from16 v16, v26

    move/from16 v10, v18

    goto/16 :goto_42

    :catch_52
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    move-object/from16 v16, v6

    move v6, v13

    move-object v13, v10

    move/from16 v10, v18

    goto/16 :goto_42

    :catch_53
    move-exception v7

    move-object/from16 v11, v27

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v16, v6

    move-object/from16 v14, v21

    move-object v15, v5

    move/from16 v5, v23

    move v6, v13

    move-object v13, v10

    move/from16 v10, v18

    goto/16 :goto_42

    :catch_54
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move-object/from16 v16, v8

    move v8, v15

    move-object v15, v6

    move v6, v13

    move-object v13, v7

    move v7, v14

    move-object/from16 v14, v21

    goto/16 :goto_42

    :catch_55
    move-exception v10

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object v13, v7

    move/from16 v10, v18

    move-object/from16 v12, v17

    move v7, v5

    move/from16 v5, v23

    move-object/from16 v34, v6

    move v6, v9

    move/from16 v9, v16

    move-object/from16 v16, v8

    move v8, v15

    move-object/from16 v15, v34

    goto/16 :goto_42

    :catch_56
    move-exception v5

    move/from16 v5, v18

    move-object/from16 v11, v27

    move/from16 v10, v20

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v6, v13

    move-object v13, v7

    move-object/from16 v16, v8

    move v8, v15

    move v7, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v19

    goto/16 :goto_42

    :catch_57
    move-exception v9

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object v13, v7

    move/from16 v10, v20

    move-object/from16 v12, v17

    move/from16 v9, v16

    move-object/from16 v16, v8

    move v7, v5

    move v8, v15

    move/from16 v5, v18

    move-object/from16 v15, v19

    goto/16 :goto_42

    :catch_58
    move-exception v5

    move/from16 v5, v18

    move-object/from16 v11, v27

    move-object v13, v7

    move/from16 v10, v20

    move-object/from16 v12, v17

    move/from16 v9, v16

    move-object/from16 v16, v8

    move v7, v14

    move v8, v15

    move-object/from16 v14, v21

    move-object/from16 v15, v19

    goto/16 :goto_42

    :catch_59
    move-exception v5

    goto/16 :goto_41

    :catch_5a
    move-exception v11

    goto/16 :goto_3c

    :catch_5b
    move-exception v11

    goto/16 :goto_3c

    :catch_5c
    move-exception v11

    goto/16 :goto_3c

    :catch_5d
    move-exception v11

    goto/16 :goto_3c

    :catch_5e
    move-exception v11

    goto/16 :goto_3c

    :catch_5f
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v15, v20

    move-object/from16 v16, v6

    move-object/from16 v14, v21

    move v6, v13

    move-object/from16 v13, v19

    goto/16 :goto_3b

    :catch_60
    move-exception v5

    move/from16 v5, v23

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v13

    move-object/from16 v14, v21

    move-object/from16 v15, v20

    move-object/from16 v13, v19

    move-object/from16 v16, v11

    move-object/from16 v11, v27

    goto/16 :goto_3b

    :catch_61
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v15, v20

    move-object/from16 v16, v11

    move-object/from16 v14, v21

    move-object/from16 v11, v27

    goto/16 :goto_3b

    :catch_62
    move-exception v6

    move-object/from16 v11, v27

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v13

    move-object/from16 v14, v21

    move-object/from16 v15, v20

    move-object/from16 v13, v19

    move-object/from16 v16, v5

    move/from16 v5, v23

    goto/16 :goto_3b

    :catch_63
    move-exception v6

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v13

    move-object/from16 v14, v21

    move-object v15, v11

    move-object/from16 v13, v19

    move-object/from16 v16, v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    goto/16 :goto_3b

    :catch_64
    move-exception v6

    move-object/from16 v11, v27

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v13

    move-object/from16 v14, v21

    move-object v15, v5

    move-object/from16 v13, v19

    move-object/from16 v16, v26

    move/from16 v5, v23

    goto/16 :goto_3b

    :catch_65
    move-exception v6

    move-object/from16 v11, v27

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v13

    move-object/from16 v14, v21

    move-object v15, v5

    move-object/from16 v13, v19

    move-object/from16 v16, v26

    move/from16 v5, v23

    goto/16 :goto_3b

    :catch_66
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v13

    move-object/from16 v13, v19

    move-object/from16 v16, v26

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    goto/16 :goto_3b

    :catch_67
    move-exception v7

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v5

    move-object/from16 v16, v26

    move-object/from16 v15, v30

    move/from16 v5, v23

    goto/16 :goto_3b

    :catch_68
    move-exception v7

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v6

    move-object/from16 v16, v26

    move-object/from16 v15, v30

    move v6, v5

    move/from16 v5, v23

    goto/16 :goto_3b

    :catch_69
    move-exception v8

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v7

    move-object/from16 v16, v26

    move v7, v6

    move v6, v5

    move/from16 v5, v23

    goto/16 :goto_3b

    :catch_6a
    move-exception v7

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v7, v6

    move-object/from16 v16, v26

    move v6, v5

    move/from16 v5, v23

    goto/16 :goto_3b

    :catch_6b
    move-exception v6

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v5

    move/from16 v5, v23

    move-object/from16 v16, v26

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    goto/16 :goto_3b

    :catch_6c
    move-exception v8

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move-object/from16 v16, v26

    move/from16 v10, v18

    move-object v12, v5

    move v9, v6

    move v8, v15

    move/from16 v5, v23

    move-object/from16 v15, v30

    move v6, v7

    move v7, v14

    move-object/from16 v14, v21

    goto/16 :goto_3b

    :catch_6d
    move-exception v7

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v15, v30

    move-object/from16 v16, v26

    move-object/from16 v14, v21

    move/from16 v34, v6

    move v6, v5

    move/from16 v5, v34

    goto/16 :goto_3b

    :catch_6e
    move-exception v7

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v16, v26

    move-object/from16 v15, v30

    move-object/from16 v14, v21

    goto/16 :goto_3b

    :catch_6f
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v13

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    move-object v13, v10

    move-object/from16 v16, v26

    move/from16 v10, v18

    goto/16 :goto_3b

    :catch_70
    move-exception v6

    move-object/from16 v11, v27

    move-object v13, v10

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v5

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    move/from16 v5, v23

    move-object/from16 v16, v26

    move/from16 v10, v18

    goto/16 :goto_3b

    :catch_71
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    move-object/from16 v16, v6

    move v6, v13

    move-object v13, v10

    move/from16 v10, v18

    goto/16 :goto_3b

    :catch_72
    move-exception v7

    move-object/from16 v11, v27

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v16, v6

    move-object/from16 v14, v21

    move-object v15, v5

    move/from16 v5, v23

    move v6, v13

    move-object v13, v10

    move/from16 v10, v18

    goto/16 :goto_3b

    :catch_73
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move-object/from16 v16, v8

    move v8, v15

    move-object v15, v6

    move v6, v13

    move-object v13, v7

    move v7, v14

    move-object/from16 v14, v21

    goto/16 :goto_3b

    :catch_74
    move-exception v10

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object v13, v7

    move/from16 v10, v18

    move-object/from16 v12, v17

    move v7, v5

    move/from16 v5, v23

    move-object/from16 v34, v6

    move v6, v9

    move/from16 v9, v16

    move-object/from16 v16, v8

    move v8, v15

    move-object/from16 v15, v34

    goto/16 :goto_3b

    :catch_75
    move-exception v5

    move/from16 v5, v18

    move-object/from16 v11, v27

    move/from16 v10, v20

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v6, v13

    move-object v13, v7

    move-object/from16 v16, v8

    move v8, v15

    move v7, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v19

    goto/16 :goto_3b

    :catch_76
    move-exception v9

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object v13, v7

    move/from16 v10, v20

    move-object/from16 v12, v17

    move/from16 v9, v16

    move-object/from16 v16, v8

    move v7, v5

    move v8, v15

    move/from16 v5, v18

    move-object/from16 v15, v19

    goto/16 :goto_3b

    :catch_77
    move-exception v5

    move/from16 v5, v18

    move-object/from16 v11, v27

    move-object v13, v7

    move/from16 v10, v20

    move-object/from16 v12, v17

    move/from16 v9, v16

    move-object/from16 v16, v8

    move v7, v14

    move v8, v15

    move-object/from16 v14, v21

    move-object/from16 v15, v19

    goto/16 :goto_3b

    :catch_78
    move-exception v5

    goto/16 :goto_3a

    :catch_79
    move-exception v11

    goto/16 :goto_35

    :catch_7a
    move-exception v11

    goto/16 :goto_35

    :catch_7b
    move-exception v11

    goto/16 :goto_35

    :catch_7c
    move-exception v11

    goto/16 :goto_35

    :catch_7d
    move-exception v11

    goto/16 :goto_35

    :catch_7e
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v15, v20

    move-object/from16 v16, v6

    move-object/from16 v14, v21

    move v6, v13

    move-object/from16 v13, v19

    goto/16 :goto_34

    :catch_7f
    move-exception v5

    move/from16 v5, v23

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v13

    move-object/from16 v14, v21

    move-object/from16 v15, v20

    move-object/from16 v13, v19

    move-object/from16 v16, v11

    move-object/from16 v11, v27

    goto/16 :goto_34

    :catch_80
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v15, v20

    move-object/from16 v16, v11

    move-object/from16 v14, v21

    move-object/from16 v11, v27

    goto/16 :goto_34

    :catch_81
    move-exception v6

    move-object/from16 v11, v27

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v13

    move-object/from16 v14, v21

    move-object/from16 v15, v20

    move-object/from16 v13, v19

    move-object/from16 v16, v5

    move/from16 v5, v23

    goto/16 :goto_34

    :catch_82
    move-exception v6

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v13

    move-object/from16 v14, v21

    move-object v15, v11

    move-object/from16 v13, v19

    move-object/from16 v16, v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    goto/16 :goto_34

    :catch_83
    move-exception v6

    move-object/from16 v11, v27

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v13

    move-object/from16 v14, v21

    move-object v15, v5

    move-object/from16 v13, v19

    move-object/from16 v16, v26

    move/from16 v5, v23

    goto/16 :goto_34

    :catch_84
    move-exception v6

    move-object/from16 v11, v27

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v13

    move-object/from16 v14, v21

    move-object v15, v5

    move-object/from16 v13, v19

    move-object/from16 v16, v26

    move/from16 v5, v23

    goto/16 :goto_34

    :catch_85
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v13

    move-object/from16 v13, v19

    move-object/from16 v16, v26

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    goto/16 :goto_34

    :catch_86
    move-exception v7

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v5

    move-object/from16 v16, v26

    move-object/from16 v15, v30

    move/from16 v5, v23

    goto/16 :goto_34

    :catch_87
    move-exception v7

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v6

    move-object/from16 v16, v26

    move-object/from16 v15, v30

    move v6, v5

    move/from16 v5, v23

    goto/16 :goto_34

    :catch_88
    move-exception v8

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v7

    move-object/from16 v16, v26

    move v7, v6

    move v6, v5

    move/from16 v5, v23

    goto/16 :goto_34

    :catch_89
    move-exception v7

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v7, v6

    move-object/from16 v16, v26

    move v6, v5

    move/from16 v5, v23

    goto/16 :goto_34

    :catch_8a
    move-exception v6

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v5

    move/from16 v5, v23

    move-object/from16 v16, v26

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    goto/16 :goto_34

    :catch_8b
    move-exception v8

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move-object/from16 v16, v26

    move/from16 v10, v18

    move-object v12, v5

    move v9, v6

    move v8, v15

    move/from16 v5, v23

    move-object/from16 v15, v30

    move v6, v7

    move v7, v14

    move-object/from16 v14, v21

    goto/16 :goto_34

    :catch_8c
    move-exception v7

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v15, v30

    move-object/from16 v16, v26

    move-object/from16 v14, v21

    move/from16 v34, v6

    move v6, v5

    move/from16 v5, v34

    goto/16 :goto_34

    :catch_8d
    move-exception v7

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v16, v26

    move-object/from16 v15, v30

    move-object/from16 v14, v21

    goto/16 :goto_34

    :catch_8e
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v13

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    move-object v13, v10

    move-object/from16 v16, v26

    move/from16 v10, v18

    goto/16 :goto_34

    :catch_8f
    move-exception v6

    move-object/from16 v11, v27

    move-object v13, v10

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move v6, v5

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    move/from16 v5, v23

    move-object/from16 v16, v26

    move/from16 v10, v18

    goto/16 :goto_34

    :catch_90
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    move-object/from16 v16, v6

    move v6, v13

    move-object v13, v10

    move/from16 v10, v18

    goto/16 :goto_34

    :catch_91
    move-exception v7

    move-object/from16 v11, v27

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v16, v6

    move-object/from16 v14, v21

    move-object v15, v5

    move/from16 v5, v23

    move v6, v13

    move-object v13, v10

    move/from16 v10, v18

    goto/16 :goto_34

    :catch_92
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move-object/from16 v16, v8

    move v8, v15

    move-object v15, v6

    move v6, v13

    move-object v13, v7

    move v7, v14

    move-object/from16 v14, v21

    goto/16 :goto_34

    :catch_93
    move-exception v10

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object v13, v7

    move/from16 v10, v18

    move-object/from16 v12, v17

    move v7, v5

    move/from16 v5, v23

    move-object/from16 v34, v6

    move v6, v9

    move/from16 v9, v16

    move-object/from16 v16, v8

    move v8, v15

    move-object/from16 v15, v34

    goto/16 :goto_34

    :catch_94
    move-exception v5

    move/from16 v5, v18

    move-object/from16 v11, v27

    move/from16 v10, v20

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v6, v13

    move-object v13, v7

    move-object/from16 v16, v8

    move v8, v15

    move v7, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v19

    goto/16 :goto_34

    :catch_95
    move-exception v9

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object v13, v7

    move/from16 v10, v20

    move-object/from16 v12, v17

    move/from16 v9, v16

    move-object/from16 v16, v8

    move v7, v5

    move v8, v15

    move/from16 v5, v18

    move-object/from16 v15, v19

    goto/16 :goto_34

    :catch_96
    move-exception v5

    move/from16 v5, v18

    move-object/from16 v11, v27

    move-object v13, v7

    move/from16 v10, v20

    move-object/from16 v12, v17

    move/from16 v9, v16

    move-object/from16 v16, v8

    move v7, v14

    move v8, v15

    move-object/from16 v14, v21

    move-object/from16 v15, v19

    goto/16 :goto_34

    :catch_97
    move-exception v5

    goto/16 :goto_33

    :catch_98
    move-exception v11

    goto/16 :goto_2e

    :catch_99
    move-exception v11

    goto/16 :goto_2e

    :catch_9a
    move-exception v11

    goto/16 :goto_2e

    :catch_9b
    move-exception v11

    goto/16 :goto_2e

    :catch_9c
    move-exception v11

    goto/16 :goto_2e

    :catch_9d
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v16, v6

    move-object/from16 v15, v20

    move-object/from16 v14, v21

    goto/16 :goto_2d

    :catch_9e
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v15, v20

    move-object/from16 v16, v11

    move-object/from16 v14, v21

    move-object/from16 v11, v27

    goto/16 :goto_2d

    :catch_9f
    move-exception v6

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v15, v20

    move-object/from16 v16, v5

    move-object/from16 v14, v21

    move/from16 v5, v23

    goto/16 :goto_2d

    :catch_a0
    move-exception v6

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v14, v21

    move-object v15, v11

    move-object/from16 v16, v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    goto/16 :goto_2d

    :catch_a1
    move-exception v6

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object v15, v5

    move-object/from16 v16, v26

    move-object/from16 v14, v21

    move/from16 v5, v23

    goto/16 :goto_2d

    :catch_a2
    move-exception v6

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object v15, v5

    move-object/from16 v16, v26

    move-object/from16 v14, v21

    move/from16 v5, v23

    goto/16 :goto_2d

    :catch_a3
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v16, v26

    move-object/from16 v15, v30

    move-object/from16 v14, v21

    goto/16 :goto_2d

    :catch_a4
    move-exception v6

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v5

    move-object/from16 v16, v26

    move-object/from16 v15, v30

    move/from16 v5, v23

    goto/16 :goto_2d

    :catch_a5
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v6

    move-object/from16 v16, v26

    move-object/from16 v15, v30

    goto/16 :goto_2d

    :catch_a6
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v7

    move-object/from16 v16, v26

    move v7, v6

    goto/16 :goto_2d

    :catch_a7
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v7, v6

    move-object/from16 v16, v26

    goto/16 :goto_2d

    :catch_a8
    move-exception v7

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move-object/from16 v16, v26

    move/from16 v10, v18

    move-object v12, v5

    move v9, v6

    move v8, v15

    move v7, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    move/from16 v5, v23

    goto/16 :goto_2d

    :catch_a9
    move-exception v5

    move v5, v6

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v16, v26

    move-object/from16 v15, v30

    move-object/from16 v14, v21

    goto/16 :goto_2d

    :catch_aa
    move-exception v6

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v16, v26

    move-object/from16 v15, v30

    move-object/from16 v14, v21

    goto/16 :goto_2d

    :catch_ab
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move-object v13, v10

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v15, v30

    move-object/from16 v14, v21

    move-object/from16 v16, v26

    move/from16 v10, v18

    goto/16 :goto_2d

    :catch_ac
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move-object v13, v10

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v15, v30

    move-object/from16 v14, v21

    move-object/from16 v16, v6

    move/from16 v10, v18

    goto/16 :goto_2d

    :catch_ad
    move-exception v7

    move-object/from16 v11, v27

    move-object v13, v10

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move/from16 v10, v18

    move-object/from16 v14, v21

    move-object v15, v5

    move-object/from16 v16, v6

    move/from16 v5, v23

    goto/16 :goto_2d

    :catch_ae
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move-object v13, v7

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move-object/from16 v16, v8

    move v7, v14

    move v8, v15

    move-object/from16 v14, v21

    move-object v15, v6

    goto/16 :goto_2d

    :catch_af
    move-exception v9

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object v13, v7

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move-object/from16 v16, v8

    move v7, v5

    move v8, v15

    move/from16 v5, v23

    move-object v15, v6

    goto/16 :goto_2d

    :catch_b0
    move-exception v5

    move/from16 v5, v18

    move-object/from16 v11, v27

    move-object v13, v7

    move/from16 v10, v20

    move-object/from16 v12, v17

    move/from16 v9, v16

    move-object/from16 v16, v8

    move v7, v14

    move v8, v15

    move-object/from16 v14, v21

    move-object/from16 v15, v19

    goto/16 :goto_2d

    :catch_b1
    move-exception v6

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object v13, v7

    move/from16 v10, v20

    move-object/from16 v12, v17

    move/from16 v9, v16

    move-object/from16 v16, v8

    move v7, v5

    move v8, v15

    move/from16 v5, v18

    move-object/from16 v15, v19

    goto/16 :goto_2d

    :catch_b2
    move-exception v5

    goto/16 :goto_2c

    :catch_b3
    move-exception v11

    goto/16 :goto_24

    :catch_b4
    move-exception v11

    goto/16 :goto_24

    :catch_b5
    move-exception v11

    goto/16 :goto_24

    :catch_b6
    move-exception v11

    goto/16 :goto_24

    :catch_b7
    move-exception v11

    goto/16 :goto_24

    :catch_b8
    move-exception v5

    move/from16 v5, v23

    move-object v11, v7

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move-object/from16 v16, v6

    move-object/from16 v15, v20

    move v7, v14

    move-object/from16 v14, v21

    goto/16 :goto_23

    :catch_b9
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v16, v6

    move-object/from16 v15, v20

    move-object/from16 v14, v21

    goto/16 :goto_23

    :catch_ba
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v15, v20

    move-object/from16 v16, v11

    move-object/from16 v14, v21

    move-object/from16 v11, v27

    goto/16 :goto_23

    :catch_bb
    move-exception v6

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v15, v20

    move-object/from16 v16, v5

    move-object/from16 v14, v21

    move/from16 v5, v23

    goto/16 :goto_23

    :catch_bc
    move-exception v6

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v14, v21

    move-object v15, v11

    move-object/from16 v16, v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    goto/16 :goto_23

    :catch_bd
    move-exception v6

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object v15, v5

    move-object/from16 v16, v26

    move-object/from16 v14, v21

    move/from16 v5, v23

    goto/16 :goto_23

    :catch_be
    move-exception v6

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object v15, v5

    move-object/from16 v16, v26

    move-object/from16 v14, v21

    move/from16 v5, v23

    goto/16 :goto_23

    :catch_bf
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v16, v26

    move-object/from16 v15, v30

    move-object/from16 v14, v21

    goto/16 :goto_23

    :catch_c0
    move-exception v6

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v5

    move-object/from16 v16, v26

    move-object/from16 v15, v30

    move/from16 v5, v23

    goto/16 :goto_23

    :catch_c1
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v6

    move-object/from16 v16, v26

    move-object/from16 v15, v30

    goto/16 :goto_23

    :catch_c2
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v7

    move-object/from16 v16, v26

    move v7, v6

    goto/16 :goto_23

    :catch_c3
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v7, v6

    move-object/from16 v16, v26

    goto/16 :goto_23

    :catch_c4
    move-exception v7

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move-object/from16 v16, v26

    move/from16 v10, v18

    move-object v12, v5

    move v9, v6

    move v8, v15

    move v7, v14

    move-object/from16 v14, v21

    move-object/from16 v15, v30

    move/from16 v5, v23

    goto/16 :goto_23

    :catch_c5
    move-exception v5

    move v5, v6

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v16, v26

    move-object/from16 v15, v30

    move-object/from16 v14, v21

    goto/16 :goto_23

    :catch_c6
    move-exception v6

    move-object/from16 v11, v27

    move-object/from16 v13, v19

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v16, v26

    move-object/from16 v15, v30

    move-object/from16 v14, v21

    goto/16 :goto_23

    :catch_c7
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move-object v13, v10

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v15, v30

    move-object/from16 v14, v21

    move-object/from16 v16, v26

    move/from16 v10, v18

    goto/16 :goto_23

    :catch_c8
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move-object v13, v10

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move-object/from16 v15, v30

    move-object/from16 v14, v21

    move-object/from16 v16, v6

    move/from16 v10, v18

    goto/16 :goto_23

    :catch_c9
    move-exception v7

    move-object/from16 v11, v27

    move-object v13, v10

    move-object/from16 v12, v17

    move/from16 v9, v16

    move v8, v15

    move v7, v14

    move/from16 v10, v18

    move-object/from16 v14, v21

    move-object v15, v5

    move-object/from16 v16, v6

    move/from16 v5, v23

    goto/16 :goto_23

    :catch_ca
    move-exception v5

    move/from16 v5, v23

    move-object/from16 v11, v27

    move-object v13, v7

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move-object/from16 v16, v8

    move v7, v14

    move v8, v15

    move-object/from16 v14, v21

    move-object v15, v6

    goto/16 :goto_23

    :catch_cb
    move-exception v9

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object v13, v7

    move/from16 v10, v18

    move-object/from16 v12, v17

    move/from16 v9, v16

    move-object/from16 v16, v8

    move v7, v5

    move v8, v15

    move/from16 v5, v23

    move-object v15, v6

    goto/16 :goto_23

    :catch_cc
    move-exception v6

    move-object/from16 v11, v27

    move-object/from16 v14, v21

    move-object v13, v7

    move/from16 v10, v20

    move-object/from16 v12, v17

    move/from16 v9, v16

    move-object/from16 v16, v8

    move v7, v5

    move v8, v15

    move/from16 v5, v18

    move-object/from16 v15, v19

    goto/16 :goto_23

    :catch_cd
    move-exception v5

    goto/16 :goto_29

    :catch_ce
    move-exception v15

    goto/16 :goto_10

    :catch_cf
    move-exception v15

    goto/16 :goto_10

    :catch_d0
    move-exception v15

    goto/16 :goto_10

    :catch_d1
    move-exception v15

    goto/16 :goto_10

    :catch_d2
    move-exception v15

    goto/16 :goto_10

    :catchall_1b
    move-exception v6

    move-object/from16 v34, v6

    move v6, v5

    move-object/from16 v5, v34

    goto/16 :goto_22

    :catchall_1c
    move-exception v5

    goto/16 :goto_22

    :catch_d3
    move-exception v8

    move-object/from16 v34, v8

    move v8, v7

    move-object/from16 v7, v34

    goto/16 :goto_15

    :catch_d4
    move-exception v5

    goto/16 :goto_2

    :catch_d5
    move-exception v5

    goto/16 :goto_2

    :catch_d6
    move-exception v5

    goto/16 :goto_2

    :catch_d7
    move-exception v5

    goto/16 :goto_6

    :catch_d8
    move-exception v5

    goto/16 :goto_0

    :catch_d9
    move-exception v5

    goto/16 :goto_0

    :catch_da
    move-exception v5

    goto/16 :goto_0

    :catch_db
    move-exception v5

    goto/16 :goto_0

    :catch_dc
    move-exception v5

    goto/16 :goto_0

    :cond_61
    move-object v5, v11

    goto/16 :goto_4e

    :cond_62
    move-object/from16 v11, v17

    goto/16 :goto_4c

    :cond_63
    move-object v5, v11

    goto/16 :goto_47

    :cond_64
    move-object/from16 v11, v16

    goto/16 :goto_45

    :cond_65
    move-object v5, v11

    goto/16 :goto_40

    :cond_66
    move-object/from16 v11, v16

    goto/16 :goto_3e

    :cond_67
    move-object v5, v11

    goto/16 :goto_39

    :cond_68
    move-object/from16 v11, v16

    goto/16 :goto_37

    :cond_69
    move-object v5, v11

    goto/16 :goto_32

    :cond_6a
    move-object/from16 v11, v16

    goto/16 :goto_30

    :cond_6b
    move-object v5, v11

    goto/16 :goto_2b

    :cond_6c
    move-object/from16 v11, v16

    goto/16 :goto_26

    :cond_6d
    move-object v5, v11

    goto/16 :goto_28

    :cond_6e
    move-object v11, v14

    goto/16 :goto_12

    :cond_6f
    move-object/from16 v24, v7

    goto/16 :goto_1b

    :cond_70
    move-object/from16 v5, v24

    goto/16 :goto_1a

    :cond_71
    move-object/from16 v19, v6

    goto/16 :goto_19

    :cond_72
    move-object/from16 v10, v19

    goto/16 :goto_18

    :cond_73
    move-object v9, v10

    goto/16 :goto_17

    :cond_74
    move-object v5, v7

    move-object/from16 v6, v30

    move-object/from16 v8, v26

    move-object/from16 v7, v19

    goto/16 :goto_1d

    :cond_75
    move v7, v15

    goto/16 :goto_e

    :cond_76
    move-object/from16 v30, v5

    goto/16 :goto_c

    :cond_77
    move-object v9, v11

    goto/16 :goto_b

    :cond_78
    move-object v7, v9

    goto/16 :goto_8

    :cond_79
    move-object v5, v11

    goto/16 :goto_7

    :cond_7a
    move-object v6, v12

    move-object v7, v9

    move-object/from16 v5, v20

    move/from16 v20, v26

    move-object/from16 v26, v11

    goto/16 :goto_9

    :cond_7b
    move-object v5, v7

    goto/16 :goto_5
.end method
