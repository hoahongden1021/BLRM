.class public Lcom/igexin/a/e/c/n;
.super Lcom/igexin/a/e/c/e;


# instance fields
.field public a:I

.field public b:I

.field public c:J

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/igexin/a/e/c/e;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/igexin/a/e/c/n;->h:Ljava/lang/String;

    const/16 v0, 0x1a

    iput v0, p0, Lcom/igexin/a/e/c/n;->i:I

    return-void
.end method


# virtual methods
.method public a([B)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {p1, v4}, Lcom/igexin/b/a/b/g;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/igexin/a/e/c/n;->a:I

    add-int/lit8 v0, v4, 0x2

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xc0

    iput v1, p0, Lcom/igexin/a/e/c/n;->b:I

    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/igexin/a/e/c/n;->a(B)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/igexin/a/e/c/n;->h:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/igexin/b/a/b/g;->d([BI)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/igexin/a/e/c/n;->c:J

    add-int/lit8 v0, v0, 0x8

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v0, v0, 0x1

    :try_start_0
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/a/e/c/n;->h:Ljava/lang/String;

    invoke-direct {v2, p1, v0, v1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/igexin/a/e/c/n;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    add-int/lit8 v0, v1, 0xc

    move v1, v0

    move v0, v4

    :goto_1
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0x7f

    or-int/2addr v0, v2

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_0

    shl-int/lit8 v0, v0, 0x7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, ""

    iput-object v0, p0, Lcom/igexin/a/e/c/n;->d:Ljava/lang/String;

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    if-lez v0, :cond_1

    iget v2, p0, Lcom/igexin/a/e/c/n;->b:I

    const/16 v3, 0xc0

    if-ne v2, v3, :cond_2

    new-array v2, v0, [B

    iput-object v2, p0, Lcom/igexin/a/e/c/n;->e:Ljava/lang/Object;

    iget-object v2, p0, Lcom/igexin/a/e/c/n;->e:Ljava/lang/Object;

    invoke-static {p1, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    add-int/2addr v0, v1

    move v1, v0

    move v0, v4

    :goto_3
    aget-byte v2, p1, v1

    and-int/lit8 v2, v2, 0x7f

    or-int/2addr v0, v2

    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_3

    shl-int/lit8 v0, v0, 0x7

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/a/e/c/n;->h:Ljava/lang/String;

    invoke-direct {v2, p1, v1, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/igexin/a/e/c/n;->e:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    if-lez v0, :cond_4

    new-array v2, v0, [B

    iput-object v2, p0, Lcom/igexin/a/e/c/n;->f:Ljava/lang/Object;

    iget-object v2, p0, Lcom/igexin/a/e/c/n;->f:Ljava/lang/Object;

    invoke-static {p1, v1, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    add-int/2addr v0, v1

    array-length v1, p1

    if-le v1, v0, :cond_5

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    :try_start_2
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/a/e/c/n;->h:Ljava/lang/String;

    invoke-direct {v2, p1, v1, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/igexin/a/e/c/n;->g:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_4
    add-int/2addr v0, v1

    :cond_5
    return-void

    :catch_2
    move-exception v2

    goto :goto_4
.end method

.method public final b()Z
    .locals 2

    iget v0, p0, Lcom/igexin/a/e/c/n;->b:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()[B
    .locals 12

    const/4 v10, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/igexin/a/e/c/n;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/igexin/a/e/c/n;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v0, p0, Lcom/igexin/a/e/c/n;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/igexin/a/e/c/n;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v0, ""

    iget-object v3, p0, Lcom/igexin/a/e/c/n;->e:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/igexin/a/e/c/n;->b:I

    const/16 v3, 0xc0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/igexin/a/e/c/n;->e:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    move-object v3, v0

    :goto_0
    iget-object v0, p0, Lcom/igexin/a/e/c/n;->f:Ljava/lang/Object;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/igexin/a/e/c/n;->f:Ljava/lang/Object;

    check-cast v0, [B

    check-cast v0, [B

    :goto_1
    const/16 v4, 0xd

    if-nez v3, :cond_4

    move v5, v6

    :goto_2
    if-nez v0, :cond_5

    :goto_3
    invoke-static {v5}, Lcom/igexin/b/a/b/g;->a(I)[B

    move-result-object v7

    invoke-static {v6}, Lcom/igexin/b/a/b/g;->a(I)[B

    move-result-object v8

    array-length v9, v1

    add-int/2addr v4, v9

    array-length v9, v7

    add-int/2addr v4, v9

    add-int/2addr v4, v5

    array-length v9, v8

    add-int/2addr v4, v9

    add-int/2addr v4, v6

    array-length v9, v2

    add-int/2addr v4, v9

    new-array v4, v4, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v9, p0, Lcom/igexin/a/e/c/n;->a:I

    const/4 v10, 0x0

    invoke-static {v9, v4, v10}, Lcom/igexin/b/a/b/g;->b(I[BI)I

    move-result v9

    iget v10, p0, Lcom/igexin/a/e/c/n;->b:I

    iget-object v11, p0, Lcom/igexin/a/e/c/n;->h:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/igexin/a/e/c/n;->a(Ljava/lang/String;)I

    move-result v11

    or-int/2addr v10, v11

    invoke-static {v10, v4, v9}, Lcom/igexin/b/a/b/g;->c(I[BI)I

    move-result v10

    add-int/2addr v9, v10

    iget-wide v10, p0, Lcom/igexin/a/e/c/n;->c:J

    invoke-static {v10, v11, v4, v9}, Lcom/igexin/b/a/b/g;->a(J[BI)I

    move-result v10

    add-int/2addr v9, v10

    array-length v10, v1

    invoke-static {v10, v4, v9}, Lcom/igexin/b/a/b/g;->c(I[BI)I

    move-result v10

    add-int/2addr v9, v10

    const/4 v10, 0x0

    array-length v11, v1

    invoke-static {v1, v10, v4, v9, v11}, Lcom/igexin/b/a/b/g;->a([BI[BII)I

    move-result v1

    add-int/2addr v1, v9

    const/4 v9, 0x0

    array-length v10, v7

    invoke-static {v7, v9, v4, v1, v10}, Lcom/igexin/b/a/b/g;->a([BI[BII)I

    move-result v7

    add-int/2addr v1, v7

    if-lez v5, :cond_0

    const/4 v7, 0x0

    invoke-static {v3, v7, v4, v1, v5}, Lcom/igexin/b/a/b/g;->a([BI[BII)I

    move-result v3

    add-int/2addr v1, v3

    :cond_0
    const/4 v3, 0x0

    array-length v5, v8

    invoke-static {v8, v3, v4, v1, v5}, Lcom/igexin/b/a/b/g;->a([BI[BII)I

    move-result v3

    add-int/2addr v1, v3

    if-lez v6, :cond_6

    const/4 v3, 0x0

    invoke-static {v0, v3, v4, v1, v6}, Lcom/igexin/b/a/b/g;->a([BI[BII)I

    move-result v0

    add-int/2addr v0, v1

    :goto_4
    array-length v1, v2

    invoke-static {v1, v4, v0}, Lcom/igexin/b/a/b/g;->c(I[BI)I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    array-length v3, v2

    invoke-static {v2, v1, v4, v0, v3}, Lcom/igexin/b/a/b/g;->a([BI[BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    add-int/2addr v0, v1

    move-object v0, v4

    :goto_5
    return-object v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/igexin/a/e/c/n;->e:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/a/e/c/n;->h:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_0

    :cond_2
    move-object v3, v10

    goto/16 :goto_0

    :cond_3
    move-object v0, v10

    goto/16 :goto_1

    :cond_4
    array-length v5, v3

    goto :goto_2

    :cond_5
    array-length v6, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v0, v10

    goto :goto_5

    :catch_1
    move-exception v0

    move-object v0, v4

    goto :goto_5

    :cond_6
    move v0, v1

    goto :goto_4
.end method
