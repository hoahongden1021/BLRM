.class Lcom/igexin/b/a/b/a/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lcom/igexin/b/a/b/a/a/e;


# direct methods
.method constructor <init>(Lcom/igexin/b/a/b/a/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/b/a/b/a/a/f;->a:Lcom/igexin/b/a/b/a/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/b/a/b/a/a/g;Lcom/igexin/b/a/b/a/a/g;)I
    .locals 8

    const/4 v7, 0x1

    const/4 v6, -0x1

    if-nez p1, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    if-nez p2, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/igexin/b/a/b/a/a/g;->K:I

    int-to-long v0, v0

    iget-wide v2, p1, Lcom/igexin/b/a/b/a/a/g;->I:J

    add-long/2addr v0, v2

    iget v2, p2, Lcom/igexin/b/a/b/a/a/g;->K:I

    int-to-long v2, v2

    iget-wide v4, p2, Lcom/igexin/b/a/b/a/a/g;->I:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    move v0, v7

    goto :goto_0

    :cond_2
    iget v0, p1, Lcom/igexin/b/a/b/a/a/g;->K:I

    int-to-long v0, v0

    iget-wide v2, p1, Lcom/igexin/b/a/b/a/a/g;->I:J

    add-long/2addr v0, v2

    iget v2, p2, Lcom/igexin/b/a/b/a/a/g;->K:I

    int-to-long v2, v2

    iget-wide v4, p2, Lcom/igexin/b/a/b/a/a/g;->I:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    move v0, v6

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/igexin/b/a/b/a/a/g;

    check-cast p2, Lcom/igexin/b/a/b/a/a/g;

    invoke-virtual {p0, p1, p2}, Lcom/igexin/b/a/b/a/a/f;->a(Lcom/igexin/b/a/b/a/a/g;Lcom/igexin/b/a/b/a/a/g;)I

    move-result v0

    return v0
.end method
