.class public Lcom/t4game/IoBuffer;
.super Ljava/lang/Object;


# instance fields
.field private StringTemp:[B

.field private buffer:[B

.field private index:I

.field private intTemp:[B

.field public length:I

.field private longTemp:[B

.field private returnByte:B

.field private returnInt:I

.field private returnLong:J

.field private returnShort:S

.field private returnString:Ljava/lang/String;

.field private shortTemp:[B

.field private tempByte:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/t4game/IoBuffer;->index:I

    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/IoBuffer;->longTemp:[B

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/IoBuffer;->intTemp:[B

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/IoBuffer;->shortTemp:[B

    const/16 v0, 0x10e

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/IoBuffer;->tempByte:[B

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iput v1, p0, Lcom/t4game/IoBuffer;->index:I

    return-void
.end method


# virtual methods
.method public clearRecived()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/IoBuffer;->index:I

    iput v0, p0, Lcom/t4game/IoBuffer;->length:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/IoBuffer;->buffer:[B

    return-void
.end method

.method public clearSend()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/IoBuffer;->index:I

    return-void
.end method

.method public getBoolean()Z
    .locals 1

    invoke-virtual {p0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getByte()B
    .locals 2

    iget-object v0, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v1, p0, Lcom/t4game/IoBuffer;->index:I

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/t4game/IoBuffer;->returnByte:B

    iget v0, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/IoBuffer;->index:I

    iget-byte v0, p0, Lcom/t4game/IoBuffer;->returnByte:B

    return v0
.end method

.method public getByteBuffer(S)[B
    .locals 4

    new-array v0, p1, [B

    iget-object v1, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v2, p0, Lcom/t4game/IoBuffer;->index:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/t4game/IoBuffer;->index:I

    return-object v0
.end method

.method public getByteBuffer([BIS)[B
    .locals 2

    iget-object v0, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v1, p0, Lcom/t4game/IoBuffer;->index:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/t4game/IoBuffer;->index:I

    return-object p1
.end method

.method public getDataInputStream()Ljava/io/DataInputStream;
    .locals 5

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v2, p0, Lcom/t4game/IoBuffer;->index:I

    iget v3, p0, Lcom/t4game/IoBuffer;->length:I

    iget v4, p0, Lcom/t4game/IoBuffer;->index:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    iget v1, p0, Lcom/t4game/IoBuffer;->length:I

    iput v1, p0, Lcom/t4game/IoBuffer;->index:I

    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v1
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/t4game/IoBuffer;->index:I

    return v0
.end method

.method public final getInt()I
    .locals 3

    iget-object v0, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v1, p0, Lcom/t4game/IoBuffer;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    iget-object v1, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v2, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v2, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v2, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/lit8 v2, v2, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/IoBuffer;->returnInt:I

    iget v0, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/t4game/IoBuffer;->index:I

    iget v0, p0, Lcom/t4game/IoBuffer;->returnInt:I

    return v0
.end method

.method public getLong()J
    .locals 7

    const-wide/16 v5, 0xff

    iget-object v0, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v1, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/lit8 v1, v1, 0x0

    aget-byte v0, v0, v1

    int-to-long v0, v0

    and-long/2addr v0, v5

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    iget-object v2, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v3, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/lit8 v3, v3, 0x1

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v3, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/lit8 v3, v3, 0x2

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v3, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/lit8 v3, v3, 0x3

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v3, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/lit8 v3, v3, 0x4

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v3, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/lit8 v3, v3, 0x5

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v3, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/lit8 v3, v3, 0x6

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iget-object v2, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v3, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/lit8 v3, v3, 0x7

    aget-byte v2, v2, v3

    int-to-long v2, v2

    and-long/2addr v2, v5

    const/4 v4, 0x0

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lcom/t4game/IoBuffer;->returnLong:J

    iget v0, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/t4game/IoBuffer;->index:I

    iget-wide v0, p0, Lcom/t4game/IoBuffer;->returnLong:J

    return-wide v0
.end method

.method public getShort()S
    .locals 3

    iget-object v0, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v1, p0, Lcom/t4game/IoBuffer;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v2, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/IoBuffer;->returnShort:S

    iget v0, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/t4game/IoBuffer;->index:I

    iget-short v0, p0, Lcom/t4game/IoBuffer;->returnShort:S

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v3, p0, Lcom/t4game/IoBuffer;->index:I

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v1, p0, Lcom/t4game/IoBuffer;->returnString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v1, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/IoBuffer;->index:I

    iget-object v0, p0, Lcom/t4game/IoBuffer;->returnString:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v2, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v3, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/t4game/IoBuffer;->tempByte:[B

    iget-object v3, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v4, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/2addr v4, v0

    aget-byte v3, v3, v4

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/IoBuffer;->tempByte:[B

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v0, p0, Lcom/t4game/IoBuffer;->returnString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget v0, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/t4game/IoBuffer;->index:I

    iget-object v0, p0, Lcom/t4game/IoBuffer;->returnString:Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public getUnsignedByte()I
    .locals 2

    iget-object v0, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v1, p0, Lcom/t4game/IoBuffer;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/t4game/IoBuffer;->returnInt:I

    iget v0, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/IoBuffer;->index:I

    iget v0, p0, Lcom/t4game/IoBuffer;->returnInt:I

    return v0
.end method

.method public getUnsignedShort()I
    .locals 3

    iget-object v0, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v1, p0, Lcom/t4game/IoBuffer;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v2, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/IoBuffer;->returnInt:I

    iget v0, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/t4game/IoBuffer;->index:I

    iget v0, p0, Lcom/t4game/IoBuffer;->returnInt:I

    return v0
.end method

.method public putBoolean(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/t4game/IoBuffer;->putByte(B)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/t4game/IoBuffer;->putByte(B)V

    goto :goto_0
.end method

.method public putByte(B)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v1, p0, Lcom/t4game/IoBuffer;->index:I

    aput-byte p1, v0, v1

    iget v0, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/IoBuffer;->index:I

    return-void
.end method

.method public putInt(I)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/t4game/IoBuffer;->intTemp:[B

    const/4 v1, 0x3

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/t4game/IoBuffer;->intTemp:[B

    const/4 v1, 0x2

    const v2, 0xff00

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/t4game/IoBuffer;->intTemp:[B

    const/4 v1, 0x1

    const/high16 v2, 0xff0000

    and-int/2addr v2, p1

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/t4game/IoBuffer;->intTemp:[B

    const/high16 v1, -0x1000000

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x18

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/t4game/IoBuffer;->intTemp:[B

    iget-object v1, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v2, p0, Lcom/t4game/IoBuffer;->index:I

    const/4 v3, 0x4

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/t4game/IoBuffer;->index:I

    return-void
.end method

.method public putLong(J)V
    .locals 11

    const/16 v10, 0x18

    const/16 v9, 0x10

    const/4 v8, 0x0

    const/16 v7, 0x8

    const/16 v6, 0x20

    iget-object v0, p0, Lcom/t4game/IoBuffer;->longTemp:[B

    const/4 v1, 0x3

    shr-long v2, p1, v6

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/t4game/IoBuffer;->longTemp:[B

    const/4 v1, 0x2

    shr-long v2, p1, v6

    const-wide/32 v4, 0xff00

    and-long/2addr v2, v4

    shr-long/2addr v2, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/t4game/IoBuffer;->longTemp:[B

    const/4 v1, 0x1

    shr-long v2, p1, v6

    const-wide/32 v4, 0xff0000

    and-long/2addr v2, v4

    shr-long/2addr v2, v9

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/t4game/IoBuffer;->longTemp:[B

    shr-long v1, p1, v6

    const-wide/32 v3, -0x1000000

    and-long/2addr v1, v3

    shr-long/2addr v1, v10

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v0, v8

    iget-object v0, p0, Lcom/t4game/IoBuffer;->longTemp:[B

    const/4 v1, 0x7

    const-wide/16 v2, 0xff

    and-long/2addr v2, p1

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/t4game/IoBuffer;->longTemp:[B

    const/4 v1, 0x6

    const-wide/32 v2, 0xff00

    and-long/2addr v2, p1

    shr-long/2addr v2, v7

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/t4game/IoBuffer;->longTemp:[B

    const/4 v1, 0x5

    const-wide/32 v2, 0xff0000

    and-long/2addr v2, p1

    shr-long/2addr v2, v9

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/t4game/IoBuffer;->longTemp:[B

    const/4 v1, 0x4

    const-wide/32 v2, -0x1000000

    and-long/2addr v2, p1

    shr-long/2addr v2, v10

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/t4game/IoBuffer;->longTemp:[B

    iget-object v1, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v2, p0, Lcom/t4game/IoBuffer;->index:I

    invoke-static {v0, v8, v1, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/t4game/IoBuffer;->index:I

    return-void
.end method

.method public putShort(S)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/t4game/IoBuffer;->shortTemp:[B

    const/4 v1, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/t4game/IoBuffer;->shortTemp:[B

    const v1, 0xff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    iget-object v0, p0, Lcom/t4game/IoBuffer;->shortTemp:[B

    iget-object v1, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v2, p0, Lcom/t4game/IoBuffer;->index:I

    const/4 v3, 0x2

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/t4game/IoBuffer;->index:I

    return-void
.end method

.method public putString(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, v4}, Lcom/t4game/IoBuffer;->putShort(S)V

    :goto_0
    return-void

    :cond_1
    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/IoBuffer;->StringTemp:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/t4game/IoBuffer;->StringTemp:[B

    array-length v0, v0

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lcom/t4game/IoBuffer;->putShort(S)V

    iget-object v1, p0, Lcom/t4game/IoBuffer;->StringTemp:[B

    iget-object v2, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v3, p0, Lcom/t4game/IoBuffer;->index:I

    invoke-static {v1, v4, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/IoBuffer;->index:I

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public setBuffer([B)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/IoBuffer;->index:I

    iput-object p1, p0, Lcom/t4game/IoBuffer;->buffer:[B

    return-void
.end method

.method public setBuffer([BI)V
    .locals 2

    const/4 v1, 0x0

    iput p2, p0, Lcom/t4game/IoBuffer;->length:I

    iput v1, p0, Lcom/t4game/IoBuffer;->index:I

    new-array v0, p2, [B

    iput-object v0, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget-object v0, p0, Lcom/t4game/IoBuffer;->buffer:[B

    invoke-static {p1, v1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public skipByte(I)V
    .locals 1

    iget v0, p0, Lcom/t4game/IoBuffer;->index:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/t4game/IoBuffer;->index:I

    return-void
.end method

.method public toBuffer()[B
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/t4game/IoBuffer;->index:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/t4game/IoBuffer;->buffer:[B

    iget v2, p0, Lcom/t4game/IoBuffer;->index:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
