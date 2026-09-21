.class public Lcom/igexin/a/g/b/e;
.super Lcom/igexin/a/g/b/h;


# static fields
.field private static a:Lcom/igexin/a/g/b/e;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/32 v0, 0x36ee80

    invoke-direct {p0, v0, v1}, Lcom/igexin/a/g/b/h;-><init>(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/a/g/b/e;->A:Z

    return-void
.end method

.method public static g()Lcom/igexin/a/g/b/e;
    .locals 1

    sget-object v0, Lcom/igexin/a/g/b/e;->a:Lcom/igexin/a/g/b/e;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/a/g/b/e;

    invoke-direct {v0}, Lcom/igexin/a/g/b/e;-><init>()V

    sput-object v0, Lcom/igexin/a/g/b/e;->a:Lcom/igexin/a/g/b/e;

    :cond_0
    sget-object v0, Lcom/igexin/a/g/b/e;->a:Lcom/igexin/a/g/b/e;

    return-object v0
.end method


# virtual methods
.method public a_()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 1

    invoke-super {p0}, Lcom/igexin/a/g/b/h;->c()V

    iget-boolean v0, p0, Lcom/igexin/a/g/b/e;->x:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/igexin/a/g/b/e;->h()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 3

    const-wide/32 v0, 0x36ee80

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/a/g/b/e;->a(JLjava/util/concurrent/TimeUnit;)I

    return-void
.end method

.method protected i()V
    .locals 1

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/a/f;->s()V

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/a/f;->t()V

    return-void
.end method
