.class Lcom/igexin/a/b/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/igexin/a/b/a/f;


# direct methods
.method constructor <init>(Lcom/igexin/a/b/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/b/a/g;->a:Lcom/igexin/a/b/a/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/a/b/b/h;Lcom/igexin/a/b/b/h;)I
    .locals 2

    invoke-virtual {p1}, Lcom/igexin/a/b/b/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/igexin/a/b/b/h;->c()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/igexin/a/b/b/h;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/igexin/a/b/b/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/igexin/a/b/b/h;

    check-cast p2, Lcom/igexin/a/b/b/h;

    invoke-virtual {p0, p1, p2}, Lcom/igexin/a/b/a/g;->a(Lcom/igexin/a/b/b/h;Lcom/igexin/a/b/b/h;)I

    move-result v0

    return v0
.end method
