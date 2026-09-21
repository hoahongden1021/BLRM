.class public Lcom/igexin/a/g/b/f;
.super Lcom/igexin/a/g/b/h;


# static fields
.field private static final a:Ljava/lang/String;

.field private static c:Lcom/igexin/a/g/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/igexin/a/a/h;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/a/g/b/f;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-wide/32 v0, 0x36ee80

    invoke-direct {p0, v0, v1}, Lcom/igexin/a/g/b/h;-><init>(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/a/g/b/f;->A:Z

    return-void
.end method

.method public static g()Lcom/igexin/a/g/b/f;
    .locals 1

    sget-object v0, Lcom/igexin/a/g/b/f;->c:Lcom/igexin/a/g/b/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/a/g/b/f;

    invoke-direct {v0}, Lcom/igexin/a/g/b/f;-><init>()V

    sput-object v0, Lcom/igexin/a/g/b/f;->c:Lcom/igexin/a/g/b/f;

    :cond_0
    sget-object v0, Lcom/igexin/a/g/b/f;->c:Lcom/igexin/a/g/b/f;

    return-object v0
.end method


# virtual methods
.method public final a_()I
    .locals 1

    const v0, -0x7ffffff9

    return v0
.end method

.method public c()V
    .locals 0

    invoke-super {p0}, Lcom/igexin/a/g/b/h;->c()V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 3

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/f;->f()Lcom/igexin/a/f/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/f/j;->c()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/a/g/b/f;->a(JLjava/util/concurrent/TimeUnit;)I

    return-void
.end method

.method protected i()V
    .locals 3

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/igexin/a/b/a/f;->a(J)Z

    move-result v0

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/a/b/a/f;->n()Z

    move-result v1

    sget-boolean v2, Lcom/igexin/a/b/g;->k:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/igexin/a/b/g;->l:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/igexin/a/b/g;->n:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    sget-boolean v0, Lcom/igexin/a/b/g;->n:Z

    if-eqz v0, :cond_1

    :cond_0
    const-wide/32 v0, 0x36ee80

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/a/g/b/f;->a(JLjava/util/concurrent/TimeUnit;)I

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/f;->h()Lcom/igexin/a/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/a/f;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    :cond_2
    :goto_1
    const-wide/32 v0, 0x1b7740

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/a/g/b/f;->a(JLjava/util/concurrent/TimeUnit;)I

    goto :goto_0

    :cond_3
    if-nez v0, :cond_2

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/a/e/b/a;

    invoke-direct {v1}, Lcom/igexin/a/e/b/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igexin/b/a/b/d;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/b/a/b/d;->d()V

    goto :goto_1
.end method
