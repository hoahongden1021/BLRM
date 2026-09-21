.class public abstract Lcom/igexin/b/a/b/c;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/igexin/b/a/b/c;

.field protected c:Lcom/igexin/b/a/b/c;

.field protected d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/igexin/b/a/b/c;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/igexin/b/a/b/c;->d:Z

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/igexin/b/a/b/f;Lcom/igexin/b/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected final a(Lcom/igexin/b/a/b/c;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/igexin/b/a/b/c;->b:Lcom/igexin/b/a/b/c;

    iput-object p0, p1, Lcom/igexin/b/a/b/c;->b:Lcom/igexin/b/a/b/c;

    iput-object p1, p0, Lcom/igexin/b/a/b/c;->c:Lcom/igexin/b/a/b/c;

    iput-object v0, p0, Lcom/igexin/b/a/b/c;->b:Lcom/igexin/b/a/b/c;

    goto :goto_0
.end method

.method public a(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/igexin/b/a/b/c;->d:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/igexin/b/a/b/c;->b:Lcom/igexin/b/a/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/b/a/b/c;->b:Lcom/igexin/b/a/b/c;

    iget-object v0, v0, Lcom/igexin/b/a/b/c;->b:Lcom/igexin/b/a/b/c;

    iget-object v1, p0, Lcom/igexin/b/a/b/c;->b:Lcom/igexin/b/a/b/c;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/igexin/b/a/b/c;->b:Lcom/igexin/b/a/b/c;

    iput-object v0, p0, Lcom/igexin/b/a/b/c;->b:Lcom/igexin/b/a/b/c;

    goto :goto_0
.end method

.method public abstract c(Lcom/igexin/b/a/b/f;Lcom/igexin/b/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public final d(Lcom/igexin/b/a/b/f;Lcom/igexin/b/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Nothing to encode!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/igexin/b/a/b/c;->b:Lcom/igexin/b/a/b/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igexin/b/a/b/c;->b:Lcom/igexin/b/a/b/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/igexin/b/a/b/c;->d(Lcom/igexin/b/a/b/f;Lcom/igexin/b/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/igexin/b/a/b/c;->a(Lcom/igexin/b/a/b/f;Lcom/igexin/b/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, p3

    goto :goto_0
.end method
