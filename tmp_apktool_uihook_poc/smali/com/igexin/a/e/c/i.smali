.class public Lcom/igexin/a/e/c/i;
.super Lcom/igexin/a/e/c/e;


# instance fields
.field public a:J

.field public b:B

.field public c:I

.field public d:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/igexin/a/e/c/e;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/igexin/a/e/c/i;->i:I

    const/16 v0, 0x34

    iput-byte v0, p0, Lcom/igexin/a/e/c/i;->j:B

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 3

    const/16 v2, 0x8

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/igexin/b/a/b/g;->d([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/a/e/c/i;->a:J

    aget-byte v0, p1, v2

    iput-byte v0, p0, Lcom/igexin/a/e/c/i;->b:B

    invoke-static {p1, v2}, Lcom/igexin/b/a/b/g;->c([BI)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/igexin/a/e/c/i;->c:I

    return-void
.end method

.method public d()[B
    .locals 8

    const/4 v4, 0x0

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/igexin/a/e/c/i;->d:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/igexin/a/e/c/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/igexin/a/e/c/i;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v2, v0

    move-object v3, v4

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/e/c/j;

    invoke-virtual {v0}, Lcom/igexin/a/e/c/j;->d()[B

    move-result-object v0

    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v0

    move-object v0, v4

    :goto_1
    move-object v3, v2

    move-object v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v3

    :goto_2
    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v2, v0

    move-object v0, v4

    goto :goto_1

    :catch_1
    move-exception v3

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_1

    :cond_0
    move-object v0, v3

    :goto_3
    if-eqz v0, :cond_2

    array-length v1, v0

    add-int/lit8 v2, v1, 0x1

    :goto_4
    add-int/lit8 v2, v2, 0xc

    new-array v2, v2, [B

    iget-wide v3, p0, Lcom/igexin/a/e/c/i;->a:J

    invoke-static {v3, v4, v2, v6}, Lcom/igexin/b/a/b/g;->a(J[BI)I

    move-result v3

    iget-byte v4, p0, Lcom/igexin/a/e/c/i;->b:B

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    iget v5, p0, Lcom/igexin/a/e/c/i;->c:I

    or-int/2addr v4, v5

    invoke-static {v4, v2, v3}, Lcom/igexin/b/a/b/g;->a(I[BI)I

    move-result v4

    add-int/2addr v3, v4

    if-lez v1, :cond_1

    invoke-static {v1, v2, v3}, Lcom/igexin/b/a/b/g;->c(I[BI)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v0, v6, v2, v3, v1}, Lcom/igexin/b/a/b/g;->a([BI[BII)I

    move-result v0

    add-int/2addr v0, v3

    :cond_1
    return-object v2

    :catch_2
    move-exception v3

    goto :goto_2

    :cond_2
    move v1, v6

    move v2, v6

    goto :goto_4

    :cond_3
    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_1

    :cond_4
    move-object v0, v4

    goto :goto_3
.end method
