.class Lcom/igexin/a/f/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/igexin/a/f/c;


# direct methods
.method constructor <init>(Lcom/igexin/a/f/c;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/f/g;->a:Lcom/igexin/a/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    iget-object v1, p0, Lcom/igexin/a/f/g;->a:Lcom/igexin/a/f/c;

    invoke-static {v1}, Lcom/igexin/a/f/c;->b(Lcom/igexin/a/f/c;)Lcom/igexin/a/b/d;

    move-result-object v1

    sget-object v2, Lcom/igexin/a/b/d;->c:Lcom/igexin/a/b/d;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/igexin/a/f/g;->a:Lcom/igexin/a/f/c;

    invoke-static {v1, p0}, Lcom/igexin/a/f/c;->a(Lcom/igexin/a/f/c;Landroid/content/ServiceConnection;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/igexin/a/f/g;->a:Lcom/igexin/a/f/c;

    invoke-static {v2}, Lcom/igexin/a/f/c;->e(Lcom/igexin/a/f/c;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/igexin/a/f/b;

    move-object v7, v0

    :try_start_0
    invoke-static {p2}, Lcom/igexin/sdk/aidl/c;->a(Landroid/os/IBinder;)Lcom/igexin/sdk/aidl/IGexinMsgService;

    move-result-object v1

    invoke-virtual {v7, v1}, Lcom/igexin/a/f/b;->a(Lcom/igexin/sdk/aidl/IGexinMsgService;)V

    iget-object v1, p0, Lcom/igexin/a/f/g;->a:Lcom/igexin/a/f/c;

    invoke-static {v1}, Lcom/igexin/a/f/c;->e(Lcom/igexin/a/f/c;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v7}, Lcom/igexin/a/f/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v7}, Lcom/igexin/a/f/b;->c()Lcom/igexin/sdk/aidl/IGexinMsgService;

    move-result-object v1

    invoke-virtual {v7}, Lcom/igexin/a/f/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/igexin/a/f/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/igexin/a/f/b;->e()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/igexin/sdk/aidl/IGexinMsgService;->onASNLConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/igexin/a/f/g;->a:Lcom/igexin/a/f/c;

    invoke-static {v1}, Lcom/igexin/a/f/c;->e(Lcom/igexin/a/f/c;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v7}, Lcom/igexin/a/f/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v1, Lcom/igexin/a/b/g;->n:Z

    if-eqz v1, :cond_0

    invoke-virtual {v7}, Lcom/igexin/a/f/b;->c()Lcom/igexin/sdk/aidl/IGexinMsgService;

    move-result-object v1

    invoke-interface {v1}, Lcom/igexin/sdk/aidl/IGexinMsgService;->onASNLNetworkConnected()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v1, p0, Lcom/igexin/a/f/g;->a:Lcom/igexin/a/f/c;

    invoke-static {v1}, Lcom/igexin/a/f/c;->e(Lcom/igexin/a/f/c;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v7}, Lcom/igexin/a/f/b;->e()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 9

    const-string v8, "S-"

    iget-object v0, p0, Lcom/igexin/a/f/g;->a:Lcom/igexin/a/f/c;

    invoke-static {v0}, Lcom/igexin/a/f/c;->b(Lcom/igexin/a/f/c;)Lcom/igexin/a/b/d;

    move-result-object v0

    sget-object v1, Lcom/igexin/a/b/d;->c:Lcom/igexin/a/b/d;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/igexin/a/f/g;->a:Lcom/igexin/a/f/c;

    invoke-static {v0, p0}, Lcom/igexin/a/f/c;->a(Lcom/igexin/a/f/c;Landroid/content/ServiceConnection;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/igexin/a/f/g;->a:Lcom/igexin/a/f/c;

    invoke-static {v0}, Lcom/igexin/a/f/c;->e(Lcom/igexin/a/f/c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/f/b;

    iget-object v2, p0, Lcom/igexin/a/f/g;->a:Lcom/igexin/a/f/c;

    invoke-static {v2}, Lcom/igexin/a/f/c;->e(Lcom/igexin/a/f/c;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/igexin/a/f/g;->a:Lcom/igexin/a/f/c;

    invoke-virtual {v0}, Lcom/igexin/a/f/b;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/igexin/a/f/c;->a(Lcom/igexin/a/f/c;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "S-"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/igexin/a/e/c/l;

    invoke-direct {v3}, Lcom/igexin/a/e/c/l;-><init>()V

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/igexin/a/e/c/l;->a:J

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igexin/a/b/f;->f()Lcom/igexin/a/f/j;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "S-"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v3, Lcom/igexin/a/e/c/l;->a:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/igexin/a/f/j;->a(Ljava/lang/String;Lcom/igexin/a/e/c/e;)I

    :cond_0
    iget-object v3, p0, Lcom/igexin/a/f/g;->a:Lcom/igexin/a/f/c;

    invoke-static {v3}, Lcom/igexin/a/f/c;->f(Lcom/igexin/a/f/c;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method
