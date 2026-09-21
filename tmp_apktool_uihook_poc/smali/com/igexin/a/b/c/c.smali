.class public Lcom/igexin/a/b/c/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/igexin/a/b/c/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/igexin/a/b/c/c;
    .locals 1

    sget-object v0, Lcom/igexin/a/b/c/c;->a:Lcom/igexin/a/b/c/c;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/a/b/c/c;

    invoke-direct {v0}, Lcom/igexin/a/b/c/c;-><init>()V

    sput-object v0, Lcom/igexin/a/b/c/c;->a:Lcom/igexin/a/b/c/c;

    :cond_0
    sget-object v0, Lcom/igexin/a/b/c/c;->a:Lcom/igexin/a/b/c/c;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/igexin/a/b/c/i;)I
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/igexin/a/b/c/e;->a()Lcom/igexin/a/b/c/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/a/b/c/e;->a(Ljava/lang/String;)Lcom/igexin/a/b/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/c/h;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v3, v1

    if-lez v1, :cond_0

    move v0, v5

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/igexin/a/b/c/h;->e()Ljava/util/List;

    move-result-object v0

    move v1, v6

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    const/4 v0, -0x2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    move v1, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    aget-object v0, v2, v4

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Landroid/content/Intent;)V
    .locals 9

    const-string v2, "pkgname"

    const-string v1, "action"

    if-eqz p1, :cond_2

    const-string v0, "action"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "action"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "connected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "pkgname"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/igexin/a/b/c/b;->a()Lcom/igexin/a/b/c/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/a/b/c/b;->a(Ljava/lang/String;)Lcom/igexin/a/b/c/a;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/igexin/a/b/c/e;->a()Lcom/igexin/a/b/c/e;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/igexin/a/b/c/e;->a(Ljava/lang/String;)Lcom/igexin/a/b/c/h;

    move-result-object v7

    invoke-virtual {v7}, Lcom/igexin/a/b/c/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/igexin/a/b/c/h;->c()J

    move-result-wide v4

    cmp-long v8, v1, v4

    if-lez v8, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/igexin/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-wide/32 v4, 0x93a80

    add-long/2addr v1, v4

    invoke-virtual {v7, v3}, Lcom/igexin/a/b/c/h;->b(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2}, Lcom/igexin/a/b/c/h;->a(J)V

    move-wide v4, v1

    :cond_0
    invoke-static {}, Lcom/igexin/a/b/c/e;->a()Lcom/igexin/a/b/c/e;

    move-result-object v1

    invoke-virtual {v1, v0, v7}, Lcom/igexin/a/b/c/e;->a(Ljava/lang/String;Lcom/igexin/a/b/c/h;)V

    :try_start_0
    invoke-virtual {v6}, Lcom/igexin/a/b/c/a;->b()Lcom/igexin/sdk/aidl/ICACallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Lcom/igexin/a/b/c/a;->b()Lcom/igexin/sdk/aidl/ICACallback;

    move-result-object v0

    sget-object v1, Lcom/igexin/a/b/g;->g:Ljava/lang/String;

    const-string v2, "com.igexin.sdk.PushService"

    invoke-interface/range {v0 .. v5}, Lcom/igexin/sdk/aidl/ICACallback;->onAuthenticated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_1
    :goto_0
    :try_start_1
    invoke-virtual {v6}, Lcom/igexin/a/b/c/a;->b()Lcom/igexin/sdk/aidl/ICACallback;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    invoke-virtual {v6}, Lcom/igexin/a/b/c/a;->a()Landroid/content/ServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v1, "disconnected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "pkgname"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/igexin/a/b/c/b;->a()Lcom/igexin/a/b/c/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/a/b/c/b;->a(Ljava/lang/String;)Lcom/igexin/a/b/c/a;

    move-result-object v0

    :try_start_2
    invoke-virtual {v0}, Lcom/igexin/a/b/c/a;->b()Lcom/igexin/sdk/aidl/ICACallback;

    move-result-object v1

    if-eqz v1, :cond_2

    sget-object v1, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/igexin/a/b/c/a;->a()Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method public b(Landroid/content/Intent;)V
    .locals 5

    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.igexin.sdk.action.refreshls"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "callback_pkgname"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "callback_classname"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/igexin/a/b/c/a;

    invoke-direct {v2}, Lcom/igexin/a/b/c/a;-><init>()V

    invoke-virtual {v2, v0}, Lcom/igexin/a/b/c/a;->a(Ljava/lang/String;)V

    new-instance v3, Lcom/igexin/a/b/c/d;

    invoke-direct {v3, p0}, Lcom/igexin/a/b/c/d;-><init>(Lcom/igexin/a/b/c/c;)V

    invoke-virtual {v2, v3}, Lcom/igexin/a/b/c/a;->a(Landroid/content/ServiceConnection;)V

    invoke-static {}, Lcom/igexin/a/b/c/b;->a()Lcom/igexin/a/b/c/b;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/igexin/a/b/c/b;->a(Ljava/lang/String;Lcom/igexin/a/b/c/a;)V

    :try_start_0
    sget-object v3, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object v0, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/igexin/a/b/c/a;->a()Landroid/content/ServiceConnection;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
