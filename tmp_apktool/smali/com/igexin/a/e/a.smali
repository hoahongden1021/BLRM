.class public Lcom/igexin/a/e/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/b/a/d/a/b;


# instance fields
.field public a:Landroid/net/ConnectivityManager;

.field public b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/ConnectivityManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/igexin/a/e/a;->a:Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/igexin/a/e/a;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Integer;Lcom/igexin/b/a/b/c;)Lcom/igexin/b/a/b/f;
    .locals 2

    const/4 v1, 0x0

    const-string v0, "socket"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/igexin/a/e/a;->a:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/e/a;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/igexin/b/a/b/a/a/g;

    invoke-direct {v0, p1, p3}, Lcom/igexin/b/a/b/a/a/g;-><init>(Ljava/lang/String;Lcom/igexin/b/a/b/c;)V

    goto :goto_0

    :cond_3
    const-string v0, "disConnect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/igexin/b/a/b/a/a/c;

    invoke-direct {v0, p1}, Lcom/igexin/b/a/b/a/a/c;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/igexin/b/a/d/d;
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    check-cast p3, Lcom/igexin/b/a/b/c;

    invoke-virtual {p0, p1, p2, p3}, Lcom/igexin/a/e/a;->a(Ljava/lang/String;Ljava/lang/Integer;Lcom/igexin/b/a/b/c;)Lcom/igexin/b/a/b/f;

    move-result-object v0

    return-object v0
.end method
