.class public Lcom/igexin/b/a/b/a/a/c;
.super Lcom/igexin/b/a/b/f;


# instance fields
.field e:Lcom/igexin/b/a/b/a/a/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/igexin/b/a/b/f;-><init>(Ljava/lang/String;Lcom/igexin/b/a/b/c;)V

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/c;->a:Ljava/lang/String;

    const-string v1, "disConnect"

    const-string v2, "socket"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/b/a/b/a/a/c;->a:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/b/a/b/a/a/c;->D:Z

    return-void
.end method


# virtual methods
.method public final a_()I
    .locals 1

    const/16 v0, -0x7fd

    return v0
.end method

.method public b()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lcom/igexin/b/a/b/f;->b()V

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/c;->e:Lcom/igexin/b/a/b/a/a/e;

    iget-object v0, v0, Lcom/igexin/b/a/b/a/a/e;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/igexin/b/a/b/a/a/c;->e:Lcom/igexin/b/a/b/a/a/e;

    iget-object v1, v1, Lcom/igexin/b/a/b/a/a/e;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    const/16 v2, 0xa

    if-le v0, v2, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/c;->e:Lcom/igexin/b/a/b/a/a/e;

    iget-object v0, v0, Lcom/igexin/b/a/b/a/a/e;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/c;->e:Lcom/igexin/b/a/b/a/a/e;

    invoke-virtual {v0}, Lcom/igexin/b/a/b/a/a/e;->i()V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public d()V
    .locals 2

    invoke-super {p0}, Lcom/igexin/b/a/b/f;->d()V

    iget-object v0, p0, Lcom/igexin/b/a/b/a/a/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/igexin/b/a/b/a/a/c;->b:Lcom/igexin/b/a/b/c;

    invoke-static {v0, v1}, Lcom/igexin/b/a/b/a/a/e;->a(Ljava/lang/String;Lcom/igexin/b/a/b/c;)Lcom/igexin/b/a/b/a/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/b/a/b/a/a/c;->e:Lcom/igexin/b/a/b/a/a/e;

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method
