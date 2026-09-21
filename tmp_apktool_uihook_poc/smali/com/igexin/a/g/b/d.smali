.class public Lcom/igexin/a/g/b/d;
.super Lcom/igexin/a/g/b/h;


# static fields
.field private static a:Lcom/igexin/a/g/b/d;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-static {}, Lcom/igexin/a/b/i;->a()Lcom/igexin/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/i;->b()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/igexin/a/g/b/h;-><init>(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/a/g/b/d;->A:Z

    return-void
.end method

.method public static g()Lcom/igexin/a/g/b/d;
    .locals 1

    sget-object v0, Lcom/igexin/a/g/b/d;->a:Lcom/igexin/a/g/b/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/a/g/b/d;

    invoke-direct {v0}, Lcom/igexin/a/g/b/d;-><init>()V

    sput-object v0, Lcom/igexin/a/g/b/d;->a:Lcom/igexin/a/g/b/d;

    :cond_0
    sget-object v0, Lcom/igexin/a/g/b/d;->a:Lcom/igexin/a/g/b/d;

    return-object v0
.end method


# virtual methods
.method public final a_()I
    .locals 1

    const v0, -0x7ffffffa

    return v0
.end method

.method public c()V
    .locals 1

    invoke-super {p0}, Lcom/igexin/a/g/b/h;->c()V

    iget-boolean v0, p0, Lcom/igexin/a/g/b/d;->x:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/igexin/a/g/b/d;->h()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 3

    invoke-static {}, Lcom/igexin/a/b/i;->a()Lcom/igexin/a/b/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/i;->b()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/a/g/b/d;->a(JLjava/util/concurrent/TimeUnit;)I

    return-void
.end method

.method protected i()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/igexin/a/b/g;->F:J

    sget-boolean v0, Lcom/igexin/a/b/g;->n:Z

    if-eqz v0, :cond_0

    const-string v0, "heartbeatReq"

    invoke-static {v0}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/f;->h()Lcom/igexin/a/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/a/f;->f()I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/igexin/a/g/b/d;->h()V

    goto :goto_0
.end method

.method public j()V
    .locals 0

    return-void
.end method
