.class public Lcom/igexin/a/e/c/c;
.super Lcom/igexin/a/e/c/e;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Lcom/igexin/a/g/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/igexin/a/e/c/e;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/igexin/a/e/c/c;->e:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/igexin/a/e/c/c;->f:I

    const/16 v0, 0x1b

    iput v0, p0, Lcom/igexin/a/e/c/c;->i:I

    const/16 v0, 0x34

    iput-byte v0, p0, Lcom/igexin/a/e/c/c;->j:B

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/igexin/a/e/c/c;->f:I

    return-void
.end method

.method public a(Lcom/igexin/a/g/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/e/c/c;->g:Lcom/igexin/a/g/b/c;

    return-void
.end method

.method public a([B)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/igexin/b/a/b/g;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/igexin/a/e/c/c;->a:I

    add-int/lit8 v0, v4, 0x2

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xc0

    iput v1, p0, Lcom/igexin/a/e/c/c;->b:I

    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/igexin/a/e/c/c;->a(B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igexin/a/e/c/c;->e:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    move v0, v4

    :goto_0
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0x7f

    or-int/2addr v0, v2

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    shl-int/lit8 v0, v0, 0x7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    if-lez v0, :cond_1

    iget v2, p0, Lcom/igexin/a/e/c/c;->b:I

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_3

    new-array v2, v0, [B

    iput-object v2, p0, Lcom/igexin/a/e/c/c;->c:Ljava/lang/Object;

    iget-object v2, p0, Lcom/igexin/a/e/c/c;->c:Ljava/lang/Object;

    invoke-static {p1, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_1
    add-int/2addr v0, v1

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v0, v0, 0x1

    array-length v2, p1

    if-le v2, v0, :cond_2

    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/a/e/c/c;->e:Ljava/lang/String;

    invoke-direct {v2, p1, v0, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/igexin/a/e/c/c;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_2
    add-int/2addr v0, v1

    :cond_2
    return-void

    :cond_3
    :try_start_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/a/e/c/c;->e:Ljava/lang/String;

    invoke-direct {v2, p1, v1, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/igexin/a/e/c/c;->c:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public final b()V
    .locals 1

    const/16 v0, 0x40

    iput v0, p0, Lcom/igexin/a/e/c/c;->b:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/igexin/a/e/c/c;->f:I

    return v0
.end method

.method public d()[B
    .locals 8

    const/4 v6, 0x0

    const/4 v3, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/igexin/a/e/c/c;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/igexin/a/e/c/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    const-string v0, ""

    iget-object v2, p0, Lcom/igexin/a/e/c/c;->c:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/igexin/a/e/c/c;->b:I

    const/16 v2, 0xc0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/igexin/a/e/c/c;->c:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    :goto_0
    const/4 v2, 0x4

    if-nez v0, :cond_3

    :goto_1
    invoke-static {v3}, Lcom/igexin/b/a/b/g;->a(I)[B

    move-result-object v4

    array-length v5, v4

    add-int/2addr v2, v5

    add-int/2addr v2, v3

    array-length v5, v1

    add-int/2addr v2, v5

    new-array v2, v2, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v5, p0, Lcom/igexin/a/e/c/c;->a:I

    const/4 v6, 0x0

    invoke-static {v5, v2, v6}, Lcom/igexin/b/a/b/g;->b(I[BI)I

    move-result v5

    iget v6, p0, Lcom/igexin/a/e/c/c;->b:I

    iget-object v7, p0, Lcom/igexin/a/e/c/c;->e:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/igexin/a/e/c/c;->a(Ljava/lang/String;)I

    move-result v7

    or-int/2addr v6, v7

    invoke-static {v6, v2, v5}, Lcom/igexin/b/a/b/g;->c(I[BI)I

    move-result v6

    add-int/2addr v5, v6

    const/4 v6, 0x0

    array-length v7, v4

    invoke-static {v4, v6, v2, v5, v7}, Lcom/igexin/b/a/b/g;->a([BI[BII)I

    move-result v4

    add-int/2addr v4, v5

    if-lez v3, :cond_4

    const/4 v5, 0x0

    invoke-static {v0, v5, v2, v4, v3}, Lcom/igexin/b/a/b/g;->a([BI[BII)I

    move-result v0

    add-int/2addr v0, v4

    :goto_2
    array-length v3, v1

    invoke-static {v3, v2, v0}, Lcom/igexin/b/a/b/g;->c(I[BI)I

    move-result v3

    add-int/2addr v0, v3

    const/4 v3, 0x0

    array-length v4, v1

    invoke-static {v1, v3, v2, v0, v4}, Lcom/igexin/b/a/b/g;->a([BI[BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    add-int/2addr v0, v1

    move-object v0, v2

    :goto_3
    if-eqz v0, :cond_0

    array-length v1, v0

    const/16 v2, 0x200

    if-lt v1, v2, :cond_0

    iget-byte v1, p0, Lcom/igexin/a/e/c/c;->j:B

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/igexin/a/e/c/c;->j:B

    :cond_0
    return-object v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/igexin/a/e/c/c;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/igexin/a/e/c/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v6

    goto :goto_0

    :cond_3
    array-length v3, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v6

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v2

    goto :goto_3

    :cond_4
    move v0, v4

    goto :goto_2
.end method

.method public e()Lcom/igexin/a/g/b/c;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/e/c/c;->g:Lcom/igexin/a/g/b/c;

    return-object v0
.end method
