.class public Lcom/igexin/a/e/c/k;
.super Lcom/igexin/a/e/c/e;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/igexin/a/e/c/e;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/igexin/a/e/c/k;->i:I

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    add-int/lit8 v0, v3, 0x1

    aget-byte v1, p1, v3

    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_2

    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/igexin/a/e/c/k;->a:Z

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_3

    move v2, v4

    :goto_1
    iput-boolean v2, p0, Lcom/igexin/a/e/c/k;->b:Z

    iget-boolean v2, p0, Lcom/igexin/a/e/c/k;->b:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/igexin/a/e/c/k;->a(B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igexin/a/e/c/k;->c:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/igexin/b/a/b/g;->b([BI)I

    move-result v0

    add-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    :try_start_0
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/igexin/a/e/c/k;->c:Ljava/lang/String;

    invoke-direct {v2, p1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/igexin/a/e/c/k;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_0
    :goto_2
    array-length v1, p1

    if-le v1, v0, :cond_1

    invoke-static {p1, v0}, Lcom/igexin/b/a/b/g;->d([BI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/igexin/a/e/c/k;->e:J

    add-int/lit8 v0, v0, 0x8

    :cond_1
    return-void

    :cond_2
    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_2
.end method

.method public d()[B
    .locals 7

    const/4 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/igexin/a/e/c/k;->a:Z

    if-eqz v2, :cond_2

    or-int/lit8 v2, v5, 0x40

    int-to-byte v2, v2

    :goto_0
    iget-boolean v3, p0, Lcom/igexin/a/e/c/k;->b:Z

    if-eqz v3, :cond_1

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    add-int/lit8 v0, v0, 0x2

    :try_start_0
    iget-object v3, p0, Lcom/igexin/a/e/c/k;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/igexin/a/e/c/k;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v0, 0x3

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    :goto_1
    iget-object v4, p0, Lcom/igexin/a/e/c/k;->c:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/igexin/a/e/c/k;->a(Ljava/lang/String;)I

    move-result v4

    or-int/2addr v2, v4

    int-to-byte v2, v2

    :goto_2
    add-int/lit8 v3, v3, 0x8

    new-array v3, v3, [B

    invoke-static {v2, v3, v5}, Lcom/igexin/b/a/b/g;->c(I[BI)I

    move-result v2

    iget-boolean v4, p0, Lcom/igexin/a/e/c/k;->b:Z

    if-eqz v4, :cond_0

    invoke-static {v1, v3, v2}, Lcom/igexin/b/a/b/g;->b(I[BI)I

    move-result v2

    if-eqz v0, :cond_0

    invoke-static {v0, v5, v3, v2, v1}, Lcom/igexin/b/a/b/g;->a([BI[BII)I

    move-result v0

    add-int/2addr v0, v2

    :goto_3
    iget-wide v1, p0, Lcom/igexin/a/e/c/k;->e:J

    invoke-static {v1, v2, v3, v0}, Lcom/igexin/b/a/b/g;->a(J[BI)I

    move-result v1

    add-int/2addr v0, v1

    return-object v3

    :catch_0
    move-exception v3

    move v3, v0

    move-object v0, v1

    move v1, v5

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_3

    :cond_1
    move v3, v0

    move-object v0, v1

    move v1, v5

    goto :goto_2

    :cond_2
    move v2, v5

    goto :goto_0
.end method
