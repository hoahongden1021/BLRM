.class public Lcom/igexin/a/g/b/b;
.super Lcom/igexin/a/g/b/h;


# static fields
.field private static a:Lcom/igexin/a/g/b/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/32 v0, 0xea60

    invoke-direct {p0, v0, v1}, Lcom/igexin/a/g/b/h;-><init>(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/a/g/b/b;->A:Z

    return-void
.end method

.method public static g()Lcom/igexin/a/g/b/b;
    .locals 1

    sget-object v0, Lcom/igexin/a/g/b/b;->a:Lcom/igexin/a/g/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/a/g/b/b;

    invoke-direct {v0}, Lcom/igexin/a/g/b/b;-><init>()V

    sput-object v0, Lcom/igexin/a/g/b/b;->a:Lcom/igexin/a/g/b/b;

    :cond_0
    sget-object v0, Lcom/igexin/a/g/b/b;->a:Lcom/igexin/a/g/b/b;

    return-object v0
.end method

.method private h()V
    .locals 3

    const-wide/32 v0, 0x57e40

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/a/g/b/b;->a(JLjava/util/concurrent/TimeUnit;)I

    return-void
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

    iget-boolean v0, p0, Lcom/igexin/a/g/b/b;->x:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/igexin/a/g/b/b;->h()V

    :cond_0
    return-void
.end method

.method protected i()V
    .locals 1

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/a/f;->u()V

    return-void
.end method
