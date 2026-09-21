.class public Lcom/igexin/a/b/h;
.super Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    new-instance v1, Lcom/igexin/a/b/e;

    invoke-direct {v1}, Lcom/igexin/a/b/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igexin/a/b/f;->a(Lcom/igexin/a/b/e;)V

    :cond_0
    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/f;->b()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
