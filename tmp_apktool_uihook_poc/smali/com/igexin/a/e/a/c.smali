.class public Lcom/igexin/a/e/a/c;
.super Lcom/igexin/b/a/b/c;


# instance fields
.field private e:[B

.field private f:Z

.field private g:Z


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/igexin/b/a/b/c;-><init>(Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/a/e/a/c;->e:[B

    iput-boolean v1, p0, Lcom/igexin/a/e/a/c;->f:Z

    iput-boolean v1, p0, Lcom/igexin/a/e/a/c;->g:Z

    return-void
.end method

.method static a(I)Lcom/igexin/a/e/c/g;
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/igexin/a/e/c/g;

    invoke-direct {v0}, Lcom/igexin/a/e/c/g;-><init>()V

    const v1, 0x73ea68fb

    iput v1, v0, Lcom/igexin/a/e/c/g;->b:I

    const/4 v1, 0x3

    iput v1, v0, Lcom/igexin/a/e/c/g;->c:I

    sget v1, Lcom/igexin/a/e/c/g;->a:I

    iput v1, v0, Lcom/igexin/a/e/c/g;->d:I

    iput-byte v2, v0, Lcom/igexin/a/e/c/g;->i:B

    iput-byte v2, v0, Lcom/igexin/a/e/c/g;->h:B

    iput p0, v0, Lcom/igexin/a/e/c/g;->f:I

    invoke-static {}, Lcom/igexin/b/a/b/d;->e()V

    return-object v0
.end method

.method static a(IB)Lcom/igexin/a/e/c/g;
    .locals 3

    new-instance v0, Lcom/igexin/a/e/c/g;

    invoke-direct {v0}, Lcom/igexin/a/e/c/g;-><init>()V

    const v1, 0x73ea68fb

    iput v1, v0, Lcom/igexin/a/e/c/g;->b:I

    invoke-virtual {v0, p1}, Lcom/igexin/a/e/c/g;->a(B)V

    const/4 v1, 0x3

    iput v1, v0, Lcom/igexin/a/e/c/g;->c:I

    iget-byte v1, v0, Lcom/igexin/a/e/c/g;->h:B

    const/16 v2, 0x30

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/igexin/a/e/c/g;->c:I

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/b/a/b/d;->a()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/igexin/a/e/c/g;->c:I

    :cond_0
    sget v1, Lcom/igexin/a/e/c/g;->a:I

    iput v1, v0, Lcom/igexin/a/e/c/g;->d:I

    iput p0, v0, Lcom/igexin/a/e/c/g;->f:I

    invoke-static {}, Lcom/igexin/b/a/b/d;->e()V

    return-object v0
.end method

.method public static a()Lcom/igexin/b/a/b/c;
    .locals 3

    new-instance v0, Lcom/igexin/a/e/a/c;

    const-string v1, "socketProtocol"

    invoke-direct {v0, v1}, Lcom/igexin/a/e/a/c;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/igexin/a/e/a/a;

    const-string v2, "command"

    invoke-direct {v1, v2, v0}, Lcom/igexin/a/e/a/a;-><init>(Ljava/lang/String;Lcom/igexin/b/a/b/c;)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/igexin/b/a/b/f;Lcom/igexin/b/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    const v6, 0x73ea68fb

    const/16 v4, 0x30

    const/4 v5, 0x0

    instance-of v0, p3, Lcom/igexin/a/e/c/b;

    if-eqz v0, :cond_5

    check-cast p3, Lcom/igexin/a/e/c/b;

    iget-byte v0, p3, Lcom/igexin/a/e/c/b;->b:B

    if-lez v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iget-byte v1, p3, Lcom/igexin/a/e/c/b;->c:B

    invoke-static {v0, v1}, Lcom/igexin/a/e/a/c;->a(IB)Lcom/igexin/a/e/c/g;

    move-result-object v0

    iget-byte v1, p3, Lcom/igexin/a/e/c/b;->b:B

    if-lez v1, :cond_1

    iget v1, p3, Lcom/igexin/a/e/c/b;->a:I

    if-lez v1, :cond_1

    iget-byte v1, v0, Lcom/igexin/a/e/c/g;->g:B

    and-int/lit16 v1, v1, 0xc0

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    iget-object v1, p3, Lcom/igexin/a/e/c/b;->d:[B

    invoke-static {v1}, Lcom/igexin/b/a/b/g;->a([B)[B

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/igexin/a/e/c/b;->a([B)V

    :cond_0
    iget-byte v1, v0, Lcom/igexin/a/e/c/g;->h:B

    and-int/lit8 v1, v1, 0x30

    if-ne v1, v4, :cond_1

    iget-object v1, p3, Lcom/igexin/a/e/c/b;->d:[B

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/b/a/b/d;->b()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/igexin/b/a/a/a;->a([B[B)[B

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/igexin/a/e/c/b;->a([B)V

    :cond_1
    iget v1, v0, Lcom/igexin/a/e/c/g;->c:I

    add-int/lit8 v1, v1, 0x5

    iget-byte v2, p3, Lcom/igexin/a/e/c/b;->b:B

    if-lez v2, :cond_4

    iget v2, p3, Lcom/igexin/a/e/c/b;->a:I

    add-int/lit8 v2, v2, 0x3

    :goto_1
    add-int/2addr v1, v2

    new-array v1, v1, [B

    invoke-static {v6, v1, v5}, Lcom/igexin/b/a/b/g;->a(I[BI)I

    move-result v2

    iget v3, v0, Lcom/igexin/a/e/c/g;->c:I

    invoke-static {v3, v1, v2}, Lcom/igexin/b/a/b/g;->c(I[BI)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lcom/igexin/a/e/c/g;->d:I

    invoke-static {v3, v1, v2}, Lcom/igexin/b/a/b/g;->c(I[BI)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lcom/igexin/a/e/c/g;->c()I

    move-result v3

    invoke-static {v3, v1, v2}, Lcom/igexin/b/a/b/g;->c(I[BI)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lcom/igexin/a/e/c/g;->f:I

    invoke-static {v3, v1, v2}, Lcom/igexin/b/a/b/g;->c(I[BI)I

    move-result v3

    add-int/2addr v2, v3

    iget-byte v0, v0, Lcom/igexin/a/e/c/g;->h:B

    and-int/lit8 v0, v0, 0x30

    if-ne v0, v4, :cond_8

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/b/a/b/d;->a()[B

    move-result-object v0

    array-length v3, v0

    invoke-static {v3, v1, v2}, Lcom/igexin/b/a/b/g;->c(I[BI)I

    move-result v3

    add-int/2addr v2, v3

    array-length v3, v0

    invoke-static {v0, v5, v1, v2, v3}, Lcom/igexin/b/a/b/g;->a([BI[BII)I

    move-result v0

    add-int/2addr v0, v2

    :goto_2
    iget-byte v2, p3, Lcom/igexin/a/e/c/b;->b:B

    if-lez v2, :cond_2

    iget v2, p3, Lcom/igexin/a/e/c/b;->a:I

    invoke-static {v2, v1, v0}, Lcom/igexin/b/a/b/g;->b(I[BI)I

    move-result v2

    add-int/2addr v0, v2

    iget-byte v2, p3, Lcom/igexin/a/e/c/b;->b:B

    invoke-static {v2, v1, v0}, Lcom/igexin/b/a/b/g;->c(I[BI)I

    move-result v2

    add-int/2addr v0, v2

    iget v2, p3, Lcom/igexin/a/e/c/b;->a:I

    if-lez v2, :cond_2

    iget-object v2, p3, Lcom/igexin/a/e/c/b;->d:[B

    iget v3, p3, Lcom/igexin/a/e/c/b;->a:I

    invoke-static {v2, v5, v1, v0, v3}, Lcom/igexin/b/a/b/g;->a([BI[BII)I

    move-result v2

    add-int/2addr v0, v2

    :cond_2
    move-object v0, v1

    :goto_3
    return-object v0

    :cond_3
    move v0, v5

    goto/16 :goto_0

    :cond_4
    move v2, v5

    goto :goto_1

    :cond_5
    check-cast p3, [Lcom/igexin/a/e/c/b;

    check-cast p3, [Lcom/igexin/a/e/c/b;

    array-length v0, p3

    invoke-static {v0}, Lcom/igexin/a/e/a/c;->a(I)Lcom/igexin/a/e/c/g;

    move-result-object v0

    move v1, v5

    move v2, v5

    :goto_4
    array-length v3, p3

    if-ge v1, v3, :cond_6

    aget-object v3, p3, v1

    iget v3, v3, Lcom/igexin/a/e/c/b;->a:I

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v1, v2, 0x5

    iget v2, v0, Lcom/igexin/a/e/c/g;->c:I

    add-int/2addr v1, v2

    new-array v1, v1, [B

    invoke-static {v6, v1, v5}, Lcom/igexin/b/a/b/g;->a(I[BI)I

    move-result v2

    iget v3, v0, Lcom/igexin/a/e/c/g;->c:I

    invoke-static {v3, v1, v2}, Lcom/igexin/b/a/b/g;->c(I[BI)I

    move-result v3

    add-int/2addr v2, v3

    iget v3, v0, Lcom/igexin/a/e/c/g;->d:I

    invoke-static {v3, v1, v2}, Lcom/igexin/b/a/b/g;->c(I[BI)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0}, Lcom/igexin/a/e/c/g;->c()I

    move-result v3

    invoke-static {v3, v1, v2}, Lcom/igexin/b/a/b/g;->c(I[BI)I

    move-result v3

    add-int/2addr v2, v3

    iget v0, v0, Lcom/igexin/a/e/c/g;->f:I

    invoke-static {v0, v1, v2}, Lcom/igexin/b/a/b/g;->c(I[BI)I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    move v0, v5

    :goto_5
    array-length v3, p3

    if-ge v0, v3, :cond_7

    aget-object v3, p3, v0

    iget v3, v3, Lcom/igexin/a/e/c/b;->a:I

    invoke-static {v3, v1, v2}, Lcom/igexin/b/a/b/g;->b(I[BI)I

    move-result v3

    add-int/2addr v2, v3

    aget-object v3, p3, v0

    iget-byte v3, v3, Lcom/igexin/a/e/c/b;->b:B

    invoke-static {v3, v1, v2}, Lcom/igexin/b/a/b/g;->c(I[BI)I

    move-result v3

    add-int/2addr v2, v3

    aget-object v3, p3, v0

    iget-object v3, v3, Lcom/igexin/a/e/c/b;->d:[B

    aget-object v4, p3, v0

    iget v4, v4, Lcom/igexin/a/e/c/b;->a:I

    invoke-static {v3, v5, v1, v2, v4}, Lcom/igexin/b/a/b/g;->a([BI[BII)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    move-object v0, v1

    goto :goto_3

    :cond_8
    move v0, v2

    goto/16 :goto_2
.end method

.method public b(Lcom/igexin/b/a/b/f;Lcom/igexin/b/a/b/e;Ljava/lang/Object;)Lcom/igexin/b/a/d/a/f;
    .locals 11

    const/4 v6, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    invoke-virtual {p2}, Lcom/igexin/b/a/b/e;->b()Lcom/igexin/b/a/d/a/a;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/a/e/a/b;

    invoke-direct {v0}, Lcom/igexin/a/e/a/b;-><init>()V

    invoke-virtual {p2, v0}, Lcom/igexin/b/a/b/e;->a(Lcom/igexin/b/a/d/a/a;)V

    :cond_0
    invoke-virtual {p2}, Lcom/igexin/b/a/b/e;->b()Lcom/igexin/b/a/d/a/a;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/e/a/b;

    instance-of v1, p3, [B

    if-eqz v1, :cond_3

    check-cast p3, [B

    check-cast p3, [B

    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    :goto_0
    iget v2, v0, Lcom/igexin/a/e/a/b;->a:I

    if-nez v2, :cond_9

    iget v2, v0, Lcom/igexin/a/e/a/b;->d:I

    if-nez v2, :cond_1

    const/16 v2, 0x8

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/igexin/a/e/a/b;->f:[B

    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iget-object v3, v0, Lcom/igexin/a/e/a/b;->f:[B

    iget v4, v0, Lcom/igexin/a/e/a/b;->d:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lcom/igexin/a/e/a/b;->d:I

    aput-byte v2, v3, v4

    iget v2, v0, Lcom/igexin/a/e/a/b;->d:I

    if-ne v2, v6, :cond_2

    iget-object v2, v0, Lcom/igexin/a/e/a/b;->f:[B

    invoke-static {v2, v7}, Lcom/igexin/b/a/b/g;->c([BI)I

    move-result v2

    const v3, 0x73ea68fb

    if-eq v2, v3, :cond_2

    iput v7, v0, Lcom/igexin/a/e/a/b;->d:I

    :cond_2
    iget v2, v0, Lcom/igexin/a/e/a/b;->d:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_1

    new-instance v2, Lcom/igexin/a/e/c/g;

    invoke-direct {v2}, Lcom/igexin/a/e/c/g;-><init>()V

    iget-object v3, v0, Lcom/igexin/a/e/a/b;->f:[B

    aget-byte v3, v3, v6

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Lcom/igexin/a/e/c/g;->c:I

    iget-object v3, v0, Lcom/igexin/a/e/a/b;->f:[B

    const/4 v4, 0x5

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Lcom/igexin/a/e/c/g;->d:I

    iget-object v3, v0, Lcom/igexin/a/e/a/b;->f:[B

    const/4 v4, 0x6

    aget-byte v3, v3, v4

    invoke-virtual {v2, v3}, Lcom/igexin/a/e/c/g;->a(B)V

    iget-byte v3, v2, Lcom/igexin/a/e/c/g;->h:B

    const/16 v4, 0x30

    if-ne v3, v4, :cond_5

    iput-boolean v9, p0, Lcom/igexin/a/e/a/c;->g:Z

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    new-array v4, v3, [B

    iput-object v4, p0, Lcom/igexin/a/e/a/c;->e:[B

    move v4, v7

    :goto_1
    if-ge v4, v3, :cond_6

    iget-object v5, p0, Lcom/igexin/a/e/a/c;->e:[B

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v6

    aput-byte v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    check-cast p3, Ljava/nio/ByteBuffer;

    move-object v1, p3

    goto :goto_0

    :cond_4
    move-object v0, v8

    :goto_2
    return-object v0

    :cond_5
    iput-boolean v7, p0, Lcom/igexin/a/e/a/c;->g:Z

    :cond_6
    iget-byte v3, v2, Lcom/igexin/a/e/c/g;->g:B

    const/16 v4, -0x80

    if-ne v3, v4, :cond_7

    iput-boolean v9, p0, Lcom/igexin/a/e/a/c;->f:Z

    :goto_3
    iget-object v3, v0, Lcom/igexin/a/e/a/b;->f:[B

    const/4 v4, 0x7

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, v2, Lcom/igexin/a/e/c/g;->f:I

    iget v3, v2, Lcom/igexin/a/e/c/g;->f:I

    invoke-virtual {v0, v3}, Lcom/igexin/a/e/a/b;->a(I)V

    iput v7, v0, Lcom/igexin/a/e/a/b;->d:I

    iput-object v8, v0, Lcom/igexin/a/e/a/b;->f:[B

    iget v2, v2, Lcom/igexin/a/e/c/g;->f:I

    if-lez v2, :cond_8

    iput v9, v0, Lcom/igexin/a/e/a/b;->a:I

    invoke-virtual {p0, p1, p2, v1}, Lcom/igexin/a/e/a/c;->b(Lcom/igexin/b/a/b/f;Lcom/igexin/b/a/b/e;Ljava/lang/Object;)Lcom/igexin/b/a/d/a/f;

    move-result-object v0

    goto :goto_2

    :cond_7
    iput-boolean v7, p0, Lcom/igexin/a/e/a/c;->f:Z

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v0

    new-instance v2, Lcom/igexin/a/e/c/h;

    invoke-direct {v2}, Lcom/igexin/a/e/c/h;-><init>()V

    invoke-virtual {v0, v2}, Lcom/igexin/b/a/b/d;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/b/a/b/d;->d()V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_13

    invoke-virtual {p0, p1, p2, v1}, Lcom/igexin/a/e/a/c;->b(Lcom/igexin/b/a/b/f;Lcom/igexin/b/a/b/e;Ljava/lang/Object;)Lcom/igexin/b/a/d/a/f;

    move-result-object v0

    goto :goto_2

    :cond_9
    :goto_4
    iget v2, v0, Lcom/igexin/a/e/a/b;->a:I

    if-ne v2, v9, :cond_11

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_11

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iget v3, v0, Lcom/igexin/a/e/a/b;->d:I

    if-nez v3, :cond_a

    new-array v3, v10, [B

    iput-object v3, v0, Lcom/igexin/a/e/a/b;->f:[B

    :cond_a
    iget-object v3, v0, Lcom/igexin/a/e/a/b;->f:[B

    iget v4, v0, Lcom/igexin/a/e/a/b;->d:I

    add-int/lit8 v5, v4, 0x1

    iput v5, v0, Lcom/igexin/a/e/a/b;->d:I

    aput-byte v2, v3, v4

    iget v2, v0, Lcom/igexin/a/e/a/b;->d:I

    if-lt v2, v10, :cond_9

    iget v2, v0, Lcom/igexin/a/e/a/b;->d:I

    if-ne v2, v10, :cond_b

    iget-object v2, v0, Lcom/igexin/a/e/a/b;->f:[B

    invoke-static {v2, v7}, Lcom/igexin/b/a/b/g;->b([BI)I

    move-result v2

    iput v2, v0, Lcom/igexin/a/e/a/b;->e:I

    iput-object v8, v0, Lcom/igexin/a/e/a/b;->f:[B

    iget v2, v0, Lcom/igexin/a/e/a/b;->e:I

    add-int/lit8 v2, v2, 0x3

    new-array v2, v2, [B

    iput-object v2, v0, Lcom/igexin/a/e/a/b;->f:[B

    iget v2, v0, Lcom/igexin/a/e/a/b;->e:I

    iget-object v3, v0, Lcom/igexin/a/e/a/b;->f:[B

    invoke-static {v2, v3, v7}, Lcom/igexin/b/a/b/g;->b(I[BI)I

    goto :goto_4

    :cond_b
    iget v2, v0, Lcom/igexin/a/e/a/b;->d:I

    iget v3, v0, Lcom/igexin/a/e/a/b;->e:I

    add-int/lit8 v3, v3, 0x3

    if-lt v2, v3, :cond_9

    new-instance v2, Lcom/igexin/a/e/c/b;

    invoke-direct {v2}, Lcom/igexin/a/e/c/b;-><init>()V

    iget v3, v0, Lcom/igexin/a/e/a/b;->e:I

    iput v3, v2, Lcom/igexin/a/e/c/b;->a:I

    iget-object v3, v0, Lcom/igexin/a/e/a/b;->f:[B

    aget-byte v3, v3, v10

    iput-byte v3, v2, Lcom/igexin/a/e/c/b;->b:B

    iget v3, v2, Lcom/igexin/a/e/c/b;->a:I

    if-lez v3, :cond_e

    iget v3, v2, Lcom/igexin/a/e/c/b;->a:I

    new-array v3, v3, [B

    iget-object v4, v0, Lcom/igexin/a/e/a/b;->f:[B

    const/4 v5, 0x3

    iget v6, v2, Lcom/igexin/a/e/c/b;->a:I

    invoke-static {v4, v5, v3, v7, v6}, Lcom/igexin/b/a/b/g;->a([BI[BII)I

    iget-boolean v4, p0, Lcom/igexin/a/e/a/c;->g:Z

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/igexin/a/e/a/c;->e:[B

    if-nez v4, :cond_10

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igexin/b/a/b/d;->b()[B

    move-result-object v4

    :goto_5
    invoke-static {v3, v4}, Lcom/igexin/b/a/a/a;->a([B[B)[B

    move-result-object v3

    :cond_c
    iget-boolean v4, p0, Lcom/igexin/a/e/a/c;->f:Z

    if-eqz v4, :cond_d

    invoke-static {v3}, Lcom/igexin/b/a/b/g;->b([B)[B

    move-result-object v3

    :cond_d
    invoke-virtual {v2, v3}, Lcom/igexin/a/e/c/b;->a([B)V

    :cond_e
    iput v7, v0, Lcom/igexin/a/e/a/b;->e:I

    iput v7, v0, Lcom/igexin/a/e/a/b;->d:I

    iput-object v8, v0, Lcom/igexin/a/e/a/b;->f:[B

    iget-object v3, p0, Lcom/igexin/a/e/a/c;->b:Lcom/igexin/b/a/b/c;

    if-eqz v3, :cond_f

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v3

    iget-object v4, p0, Lcom/igexin/a/e/a/c;->b:Lcom/igexin/b/a/b/c;

    invoke-virtual {v4, p1, p2, v2}, Lcom/igexin/b/a/b/c;->c(Lcom/igexin/b/a/b/f;Lcom/igexin/b/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/igexin/b/a/b/d;->a(Ljava/lang/Object;)Z

    :cond_f
    iget v2, v0, Lcom/igexin/a/e/a/b;->b:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/igexin/a/e/a/b;->b:I

    iget v2, v0, Lcom/igexin/a/e/a/b;->b:I

    iget v3, v0, Lcom/igexin/a/e/a/b;->c:I

    if-ne v2, v3, :cond_9

    iput v7, v0, Lcom/igexin/a/e/a/b;->a:I

    goto/16 :goto_4

    :cond_10
    iget-object v4, p0, Lcom/igexin/a/e/a/c;->e:[B

    invoke-static {v4}, Lcom/igexin/b/b/a;->a([B)[B

    move-result-object v4

    goto :goto_5

    :cond_11
    iget v0, v0, Lcom/igexin/a/e/a/b;->b:I

    if-lez v0, :cond_12

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/b/a/b/d;->d()V

    :cond_12
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-lez v0, :cond_13

    invoke-virtual {p0, p1, p2, v1}, Lcom/igexin/a/e/a/c;->b(Lcom/igexin/b/a/b/f;Lcom/igexin/b/a/b/e;Ljava/lang/Object;)Lcom/igexin/b/a/d/a/f;

    move-result-object v0

    goto/16 :goto_2

    :cond_13
    move-object v0, v8

    goto/16 :goto_2
.end method

.method public synthetic c(Lcom/igexin/b/a/b/f;Lcom/igexin/b/a/b/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2, p3}, Lcom/igexin/a/e/a/c;->b(Lcom/igexin/b/a/b/f;Lcom/igexin/b/a/b/e;Ljava/lang/Object;)Lcom/igexin/b/a/d/a/f;

    move-result-object v0

    return-object v0
.end method
