.class public Lcom/igexin/a/b/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/b/a/d/a/c;


# static fields
.field private static l:Lcom/igexin/a/b/f;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/igexin/a/b/h;

.field private c:Landroid/os/Handler;

.field private d:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private e:Lcom/igexin/a/b/a/f;

.field private f:Landroid/net/ConnectivityManager;

.field private g:Lcom/igexin/b/a/b/d;

.field private h:Lcom/igexin/b/a/b/c;

.field private i:Lcom/igexin/a/f/j;

.field private j:Lcom/igexin/a/f/c;

.field private k:Lcom/igexin/a/c/b;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/b/f;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v0, Lcom/igexin/a/b/h;

    invoke-direct {v0}, Lcom/igexin/a/b/h;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/b/f;->b:Lcom/igexin/a/b/h;

    return-void
.end method

.method public static a()Lcom/igexin/a/b/f;
    .locals 1

    sget-object v0, Lcom/igexin/a/b/f;->l:Lcom/igexin/a/b/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/a/b/f;

    invoke-direct {v0}, Lcom/igexin/a/b/f;-><init>()V

    sput-object v0, Lcom/igexin/a/b/f;->l:Lcom/igexin/a/b/f;

    :cond_0
    sget-object v0, Lcom/igexin/a/b/f;->l:Lcom/igexin/a/b/f;

    return-object v0
.end method

.method private o()V
    .locals 8

    iget-object v0, p0, Lcom/igexin/a/b/f;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/b/f;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->services:[Landroid/content/pm/ServiceInfo;

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    sget-object v6, Lcom/igexin/a/b/a;->r:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/igexin/a/b/a;->q:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    sget-object v6, Lcom/igexin/a/b/a;->s:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/igexin/a/b/d/f;->a()Lcom/igexin/a/b/d/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igexin/a/b/d/f;->c()Ljava/util/Map;

    move-result-object v3

    iget-object v4, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private p()Z
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.igexin.sdk.action.snlrefresh"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.igexin.sdk.action.snlretire"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/igexin/a/b/g;->R:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.igexin.sdk.action.execute"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.igexin.sdk.action.doaction"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/a/b/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/igexin/a/b/n;->a()Lcom/igexin/a/b/n;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/igexin/a/b/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/igexin/a/b/m;->a()Lcom/igexin/a/b/m;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(Lcom/igexin/a/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/b/f;->c:Landroid/os/Handler;

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 1

    iput-object p1, p0, Lcom/igexin/a/b/f;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/igexin/a/b/f;->b:Lcom/igexin/a/b/h;

    invoke-virtual {v0}, Lcom/igexin/a/b/h;->start()V

    const/4 v0, 0x1

    return v0
.end method

.method public a(Landroid/content/Intent;)Z
    .locals 1

    sget-object v0, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/os/Message;)Z
    .locals 2

    const/4 v1, 0x1

    sget-object v0, Lcom/igexin/a/b/g;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/igexin/a/b/f;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/b/f;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Lcom/igexin/a/g/b/h;)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v2, v1}, Lcom/igexin/b/a/b/d;->a(Lcom/igexin/b/a/d/d;ZZ)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public a(Lcom/igexin/b/a/d/a/f;Lcom/igexin/b/a/d/e;)Z
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/f;->e:Lcom/igexin/a/b/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/b/f;->e:Lcom/igexin/a/b/a/f;

    invoke-virtual {v0, p1}, Lcom/igexin/a/b/a/f;->a(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/igexin/b/a/d/d;Lcom/igexin/b/a/d/e;)Z
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/f;->e:Lcom/igexin/a/b/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/b/f;->e:Lcom/igexin/a/b/a/f;

    invoke-virtual {v0, p1}, Lcom/igexin/a/b/a/f;->a(Lcom/igexin/b/a/d/d;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/b/f;->j:Lcom/igexin/a/f/c;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/igexin/a/b/q;

    sget-object v1, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/a/b/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/a/b/q;->b()V

    sput-boolean v2, Lcom/igexin/a/b/g;->l:Z

    sput-boolean v2, Lcom/igexin/a/b/g;->o:Z

    new-instance v0, Lcom/igexin/a/f/a;

    invoke-direct {v0}, Lcom/igexin/a/f/a;-><init>()V

    sget-object v1, Lcom/igexin/a/b/c;->g:Lcom/igexin/a/b/c;

    invoke-virtual {v0, v1}, Lcom/igexin/a/f/a;->a(Lcom/igexin/a/b/c;)V

    iget-object v1, p0, Lcom/igexin/a/b/f;->j:Lcom/igexin/a/f/c;

    invoke-virtual {v1, v0}, Lcom/igexin/a/f/c;->a(Lcom/igexin/a/f/a;)V

    sget-object v0, Lcom/igexin/a/a/k;->d:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/igexin/a/b/f;->d()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/igexin/a/b/f;->a:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/igexin/a/b/f;->f:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/igexin/a/b/f;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/a/b/g;->a(Landroid/content/Context;)Z

    new-instance v0, Lcom/igexin/a/c/b;

    iget-object v1, p0, Lcom/igexin/a/b/f;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/a/c/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/igexin/a/b/f;->k:Lcom/igexin/a/c/b;

    invoke-static {}, Lcom/igexin/a/a/g;->a()Lcom/igexin/a/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/a/g;->b()Z

    invoke-direct {p0}, Lcom/igexin/a/b/f;->p()Z

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/b/f;->g:Lcom/igexin/b/a/b/d;

    new-instance v0, Lcom/igexin/a/e/a;

    iget-object v1, p0, Lcom/igexin/a/b/f;->a:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/igexin/a/b/f;->i()Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/igexin/a/e/a;-><init>(Landroid/content/Context;Landroid/net/ConnectivityManager;)V

    iget-object v1, p0, Lcom/igexin/a/b/f;->g:Lcom/igexin/b/a/b/d;

    invoke-virtual {v1, v0}, Lcom/igexin/b/a/b/d;->a(Lcom/igexin/b/a/d/a/b;)V

    iget-object v0, p0, Lcom/igexin/a/b/f;->g:Lcom/igexin/b/a/b/d;

    invoke-virtual {v0, p0}, Lcom/igexin/b/a/b/d;->a(Lcom/igexin/b/a/d/a/c;)Z

    iget-object v0, p0, Lcom/igexin/a/b/f;->g:Lcom/igexin/b/a/b/d;

    iget-object v1, p0, Lcom/igexin/a/b/f;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/igexin/b/a/b/d;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/igexin/a/c/a;

    invoke-direct {v0}, Lcom/igexin/a/c/a;-><init>()V

    invoke-static {}, Lcom/igexin/a/b/d/f;->a()Lcom/igexin/a/b/d/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/c/a;->a(Lcom/igexin/a/b/d/a;)V

    invoke-static {}, Lcom/igexin/a/b/d/c;->a()Lcom/igexin/a/b/d/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/c/a;->a(Lcom/igexin/a/b/d/a;)V

    invoke-static {}, Lcom/igexin/a/b/d/b;->a()Lcom/igexin/a/b/d/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/c/a;->a(Lcom/igexin/a/b/d/a;)V

    invoke-static {}, Lcom/igexin/a/b/c/e;->a()Lcom/igexin/a/b/c/e;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/c/a;->a(Lcom/igexin/a/b/d/a;)V

    invoke-static {}, Lcom/igexin/a/a/a;->a()Lcom/igexin/a/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/c/a;->a(Lcom/igexin/a/b/d/a;)V

    iget-object v1, p0, Lcom/igexin/a/b/f;->g:Lcom/igexin/b/a/b/d;

    invoke-virtual {v1, v0, v4, v3}, Lcom/igexin/b/a/b/d;->a(Lcom/igexin/b/a/d/d;ZZ)Z

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v0

    sget-object v1, Lcom/igexin/a/b/g;->B:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/b/a;->a([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/b/a/b/d;->a([B)V

    iget-object v0, p0, Lcom/igexin/a/b/f;->g:Lcom/igexin/b/a/b/d;

    invoke-static {}, Lcom/igexin/a/g/b/d;->g()Lcom/igexin/a/g/b/d;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Lcom/igexin/b/a/b/d;->a(Lcom/igexin/b/a/d/d;ZZ)Z

    iget-object v0, p0, Lcom/igexin/a/b/f;->g:Lcom/igexin/b/a/b/d;

    invoke-static {}, Lcom/igexin/a/g/b/f;->g()Lcom/igexin/a/g/b/f;

    move-result-object v1

    invoke-virtual {v0, v1, v4, v4}, Lcom/igexin/b/a/b/d;->a(Lcom/igexin/b/a/d/d;ZZ)Z

    iget-object v0, p0, Lcom/igexin/a/b/f;->g:Lcom/igexin/b/a/b/d;

    invoke-static {}, Lcom/igexin/a/g/b/e;->g()Lcom/igexin/a/g/b/e;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Lcom/igexin/b/a/b/d;->a(Lcom/igexin/b/a/d/d;ZZ)Z

    iget-object v0, p0, Lcom/igexin/a/b/f;->g:Lcom/igexin/b/a/b/d;

    invoke-static {}, Lcom/igexin/a/g/b/g;->g()Lcom/igexin/a/g/b/g;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Lcom/igexin/b/a/b/d;->a(Lcom/igexin/b/a/d/d;ZZ)Z

    iget-object v0, p0, Lcom/igexin/a/b/f;->g:Lcom/igexin/b/a/b/d;

    invoke-static {}, Lcom/igexin/a/g/b/a;->g()Lcom/igexin/a/g/b/a;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Lcom/igexin/b/a/b/d;->a(Lcom/igexin/b/a/d/d;ZZ)Z

    iget-object v0, p0, Lcom/igexin/a/b/f;->g:Lcom/igexin/b/a/b/d;

    invoke-static {}, Lcom/igexin/a/g/b/b;->g()Lcom/igexin/a/g/b/b;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Lcom/igexin/b/a/b/d;->a(Lcom/igexin/b/a/d/d;ZZ)Z

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/b/f;->e:Lcom/igexin/a/b/a/f;

    invoke-static {}, Lcom/igexin/a/d/a;->a()Lcom/igexin/a/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/b/f;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/igexin/a/d/a;->a(Landroid/content/Context;)Z

    new-instance v0, Lcom/igexin/a/f/j;

    invoke-direct {v0}, Lcom/igexin/a/f/j;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/b/f;->i:Lcom/igexin/a/f/j;

    iget-object v0, p0, Lcom/igexin/a/b/f;->i:Lcom/igexin/a/f/j;

    iget-object v1, p0, Lcom/igexin/a/b/f;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/igexin/a/b/f;->g:Lcom/igexin/b/a/b/d;

    iget-object v3, p0, Lcom/igexin/a/b/f;->e:Lcom/igexin/a/b/a/f;

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/f/j;->a(Landroid/content/Context;Lcom/igexin/b/a/b/d;Lcom/igexin/a/f/k;)V

    new-instance v0, Lcom/igexin/a/f/c;

    invoke-direct {v0}, Lcom/igexin/a/f/c;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/b/f;->j:Lcom/igexin/a/f/c;

    iget-object v0, p0, Lcom/igexin/a/b/f;->j:Lcom/igexin/a/f/c;

    iget-object v1, p0, Lcom/igexin/a/b/f;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/igexin/a/f/c;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/igexin/a/f/a;

    invoke-direct {v0}, Lcom/igexin/a/f/a;-><init>()V

    sget-object v1, Lcom/igexin/a/b/c;->a:Lcom/igexin/a/b/c;

    invoke-virtual {v0, v1}, Lcom/igexin/a/f/a;->a(Lcom/igexin/a/b/c;)V

    iget-object v1, p0, Lcom/igexin/a/b/f;->j:Lcom/igexin/a/f/c;

    invoke-virtual {v1, v0}, Lcom/igexin/a/f/c;->a(Lcom/igexin/a/f/a;)V

    invoke-static {}, Lcom/igexin/a/g/b/g;->g()Lcom/igexin/a/g/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/g/b/g;->h()V

    sget-object v0, Lcom/igexin/a/b/g;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/igexin/a/b/f;->d:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    iget-object v2, p0, Lcom/igexin/a/b/f;->c:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/igexin/a/b/f;->c:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/a/f;->u()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iget-object v1, p0, Lcom/igexin/a/b/f;->e:Lcom/igexin/a/b/a/f;

    invoke-virtual {v1, v0}, Lcom/igexin/a/b/a/f;->a(I)V

    invoke-direct {p0}, Lcom/igexin/a/b/f;->o()V

    return-void
.end method

.method public c()Z
    .locals 3

    const/4 v2, 0x1

    sget-object v0, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/b/f;->j:Lcom/igexin/a/f/c;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/igexin/a/b/q;

    sget-object v1, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/igexin/a/b/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/a/b/q;->a()V

    sput-boolean v2, Lcom/igexin/a/b/g;->l:Z

    new-instance v0, Lcom/igexin/a/f/a;

    invoke-direct {v0}, Lcom/igexin/a/f/a;-><init>()V

    sget-object v1, Lcom/igexin/a/b/c;->a:Lcom/igexin/a/b/c;

    invoke-virtual {v0, v1}, Lcom/igexin/a/f/a;->a(Lcom/igexin/a/b/c;)V

    iget-object v1, p0, Lcom/igexin/a/b/f;->j:Lcom/igexin/a/f/c;

    invoke-virtual {v1, v0}, Lcom/igexin/a/f/c;->a(Lcom/igexin/a/f/a;)V

    :cond_0
    return v2
.end method

.method public d()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/igexin/a/b/f;->a:Landroid/content/Context;

    const-class v2, Lcom/igexin/sdk/PushService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/igexin/a/b/f;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public e()Lcom/igexin/b/a/b/c;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/f;->h:Lcom/igexin/b/a/b/c;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/igexin/a/e/a/c;->a()Lcom/igexin/b/a/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/b/f;->h:Lcom/igexin/b/a/b/c;

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/b/f;->h:Lcom/igexin/b/a/b/c;

    return-object v0
.end method

.method public f()Lcom/igexin/a/f/j;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/f;->i:Lcom/igexin/a/f/j;

    return-object v0
.end method

.method public g()Lcom/igexin/a/f/c;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/f;->j:Lcom/igexin/a/f/c;

    return-object v0
.end method

.method public h()Lcom/igexin/a/b/a/f;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/f;->e:Lcom/igexin/a/b/a/f;

    return-object v0
.end method

.method public i()Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/f;->f:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method public j()Lcom/igexin/a/c/b;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/f;->k:Lcom/igexin/a/c/b;

    return-object v0
.end method

.method public k()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/igexin/a/b/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/igexin/a/b/m;->a()Lcom/igexin/a/b/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/igexin/a/b/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/igexin/a/b/n;->a()Lcom/igexin/a/b/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/igexin/a/b/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/igexin/a/d/a;->a()Lcom/igexin/a/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/d/a;->b()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/igexin/a/b/f;->f:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/b/f;->f:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v0, "wifi"

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mobile"

    goto :goto_0

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public n()J
    .locals 2

    const-wide/32 v0, 0x17258

    return-wide v0
.end method
