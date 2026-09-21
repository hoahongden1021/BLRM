.class final Lcom/igexin/a/b/p;
.super Lcom/igexin/sdk/aidl/c;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/sdk/aidl/c;-><init>()V

    return-void
.end method


# virtual methods
.method public extFunction([B)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isStarted(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/igexin/a/b/c/e;->a()Lcom/igexin/a/b/c/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/a/b/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/igexin/a/b/c/c;->a()Lcom/igexin/a/b/c/c;

    move-result-object v1

    sget-object v2, Lcom/igexin/a/b/c/i;->c:Lcom/igexin/a/b/c/i;

    invoke-virtual {v1, v0, v2}, Lcom/igexin/a/b/c/c;->a(Ljava/lang/String;Lcom/igexin/a/b/c/i;)I

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v1, Lcom/igexin/a/b/g;->l:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onASNLConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)I
    .locals 1

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/f;->g()Lcom/igexin/a/f/c;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/igexin/a/f/c;->a(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onASNLNetworkConnected()I
    .locals 1

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/f;->f()Lcom/igexin/a/f/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/f/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/f;->f()Lcom/igexin/a/f/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/f/j;->b()V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onASNLNetworkDisconnected()I
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/f;->f()Lcom/igexin/a/f/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/f/j;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/f;->f()Lcom/igexin/a/f/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/igexin/a/f/j;->b(Z)V

    move v0, v1

    goto :goto_0
.end method

.method public onPSNLConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)I
    .locals 2

    const-string v1, ""

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/f;->g()Lcom/igexin/a/f/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/igexin/a/f/c;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public receiveToPSNL(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 2

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/f;->f()Lcom/igexin/a/f/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/f/j;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/f;->g()Lcom/igexin/a/f/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/igexin/a/f/c;->b(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    goto :goto_0
.end method

.method public sendByASNL(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 2

    const/4 v1, -0x1

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/f;->f()Lcom/igexin/a/f/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/f/j;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/f;->g()Lcom/igexin/a/f/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/igexin/a/f/c;->a(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public setSilentTime(IILjava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/igexin/a/b/c/e;->a()Lcom/igexin/a/b/c/e;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/igexin/a/b/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/igexin/a/b/c/c;->a()Lcom/igexin/a/b/c/c;

    move-result-object v1

    sget-object v2, Lcom/igexin/a/b/c/i;->d:Lcom/igexin/a/b/c/i;

    invoke-virtual {v1, v0, v2}, Lcom/igexin/a/b/c/c;->a(Ljava/lang/String;Lcom/igexin/a/b/c/i;)I

    move-result v1

    if-nez v1, :cond_0

    sget-boolean v2, Lcom/igexin/a/a/i;->o:Z

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v2

    invoke-virtual {v2, p1, p2, v0}, Lcom/igexin/a/b/a/f;->a(IILjava/lang/String;)V

    :cond_0
    return v1
.end method

.method public startService(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/igexin/a/b/c/e;->a()Lcom/igexin/a/b/c/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/a/b/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/igexin/a/b/c/c;->a()Lcom/igexin/a/b/c/c;

    move-result-object v1

    sget-object v2, Lcom/igexin/a/b/c/i;->a:Lcom/igexin/a/b/c/i;

    invoke-virtual {v1, v0, v2}, Lcom/igexin/a/b/c/c;->a(Ljava/lang/String;Lcom/igexin/a/b/c/i;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/a/b/f;->c()Z

    sput-object v0, Lcom/igexin/a/b/g;->D:Ljava/lang/String;

    :cond_0
    return v1
.end method

.method public stopService(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/igexin/a/b/c/e;->a()Lcom/igexin/a/b/c/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/igexin/a/b/c/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/igexin/a/b/c/c;->a()Lcom/igexin/a/b/c/c;

    move-result-object v1

    sget-object v2, Lcom/igexin/a/b/c/i;->b:Lcom/igexin/a/b/c/i;

    invoke-virtual {v1, v0, v2}, Lcom/igexin/a/b/c/c;->a(Ljava/lang/String;Lcom/igexin/a/b/c/i;)I

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/igexin/a/b/f;->a(Ljava/lang/String;)Z

    :cond_0
    return v1
.end method
