.class public Lcom/t4game/GPNGGroupData;
.super Lcom/t4game/GBaseData;


# instance fields
.field HashType:B

.field private dataNum:S

.field private dataOffset:[I

.field private dataSize:[S

.field private dataStartPos:S

.field private dataType:B

.field getIndex:I

.field indece:[S

.field private inputStream:Ljava/io/InputStream;

.field maxSize:I

.field offsetSkip:I

.field private paletteData:[B

.field private transparent:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/t4game/GBaseData;-><init>()V

    iput-short v1, p0, Lcom/t4game/GPNGGroupData;->dataStartPos:S

    iput-boolean v1, p0, Lcom/t4game/GPNGGroupData;->transparent:Z

    iput-byte v1, p0, Lcom/t4game/GPNGGroupData;->HashType:B

    iput v1, p0, Lcom/t4game/GPNGGroupData;->getIndex:I

    iput v1, p0, Lcom/t4game/GPNGGroupData;->maxSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GPNGGroupData;->indece:[S

    iput v1, p0, Lcom/t4game/GPNGGroupData;->offsetSkip:I

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_PNGGROUP:B

    iput-byte v0, p0, Lcom/t4game/GPNGGroupData;->type:B

    const/16 v0, 0x9

    iput-byte v0, p0, Lcom/t4game/GPNGGroupData;->poolId:B

    return-void
.end method

.method private readImage(I)Ljavax/microedition/lcdui/Image;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget v0, Lcom/t4game/GUtil;->PNG_EXTRA_SIZE:I

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/t4game/GPNGGroupData;->paletteData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    sget-object v1, Lcom/t4game/GUtil;->HEADChunk:[B

    array-length v1, v1

    sget-object v2, Lcom/t4game/GUtil;->HEADChunk:[B

    invoke-static {v2, v4, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/t4game/GPNGGroupData;->paletteData:[B

    array-length v2, v2

    iget-object v3, p0, Lcom/t4game/GPNGGroupData;->paletteData:[B

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/t4game/GPNGGroupData;->transparent:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/t4game/GUtil;->tRNSChunk:[B

    array-length v2, v2

    sget-object v3, Lcom/t4game/GUtil;->tRNSChunk:[B

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    :cond_0
    const/4 v2, 0x4

    sub-int v2, p1, v2

    invoke-static {v0, v1, v2}, Lcom/t4game/GUtil;->writeInt([BII)V

    add-int/lit8 v1, v1, 0x4

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x49

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x44

    aput-byte v3, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v3, 0x41

    aput-byte v3, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v3, 0x54

    aput-byte v3, v0, v2

    iget-object v2, p0, Lcom/t4game/GPNGGroupData;->inputStream:Ljava/io/InputStream;

    invoke-static {v2, v0, v1, p1}, Lcom/t4game/Util;->read(Ljava/io/InputStream;[BII)V

    add-int/2addr v1, p1

    sget-object v2, Lcom/t4game/GUtil;->IENDChunk:[B

    array-length v2, v2

    sget-object v3, Lcom/t4game/GUtil;->IENDChunk:[B

    invoke-static {v3, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5, v5}, Ljavax/microedition/lcdui/Image;->createImage(II)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3}, Ljavax/microedition/lcdui/Image;->createImage([BII)Ljavax/microedition/lcdui/Image;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private skipBytesFromStream(Ljava/io/InputStream;J)J
    .locals 10

    const/4 v3, 0x0

    const-wide/16 v8, 0x0

    const/16 v0, 0x800

    const/4 v1, 0x0

    if-nez v1, :cond_0

    new-array v1, v0, [B

    :cond_0
    cmp-long v2, p2, v8

    if-gtz v2, :cond_3

    move-wide v0, v8

    :goto_0
    return-wide v0

    :cond_1
    int-to-long v5, v2

    sub-long/2addr v3, v5

    :goto_1
    cmp-long v5, v3, v8

    if-lez v5, :cond_2

    const/4 v5, 0x0

    int-to-long v6, v0

    :try_start_0
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {p1, v1, v5, v6}, Ljava/io/InputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_2
    if-gez v2, :cond_1

    :cond_2
    sub-long v0, p2, v3

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_3
    move v2, v3

    move-wide v3, p2

    goto :goto_1
.end method


# virtual methods
.method public clean()V
    .locals 2

    iget-byte v0, p0, Lcom/t4game/GPNGGroupData;->type:B

    iget-object v1, p0, Lcom/t4game/GPNGGroupData;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    return-void
.end method

.method public getIconIdList()[S
    .locals 4

    iget-short v0, p0, Lcom/t4game/GPNGGroupData;->dataNum:S

    new-array v0, v0, [S

    iget-object v1, p0, Lcom/t4game/GPNGGroupData;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    add-int v3, v1, v2

    int-to-short v3, v3

    aput-short v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getImageMap(Ljava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 7

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/t4game/GPNGGroupData;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_1

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lcom/t4game/GPNGGroupData;->getIndex:I

    iget v1, p0, Lcom/t4game/GPNGGroupData;->maxSize:I

    if-ne v0, v1, :cond_2

    iget-byte v0, p0, Lcom/t4game/GPNGGroupData;->type:B

    iget-object v1, p0, Lcom/t4game/GPNGGroupData;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    move-object v0, v2

    goto :goto_0

    :cond_2
    if-nez p1, :cond_5

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/t4game/GPNGGroupData;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    iget-object v2, p0, Lcom/t4game/GPNGGroupData;->indece:[S

    iget v3, p0, Lcom/t4game/GPNGGroupData;->getIndex:I

    aget-short v2, v2, v3

    sub-int v1, v2, v1

    if-ltz v1, :cond_0

    iget-short v2, p0, Lcom/t4game/GPNGGroupData;->dataNum:S

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/t4game/GPNGGroupData;->dataSize:[S

    aget-short v2, v2, v1

    iget-object v3, p0, Lcom/t4game/GPNGGroupData;->dataOffset:[I

    aget v3, v3, v1

    iget v4, p0, Lcom/t4game/GPNGGroupData;->offsetSkip:I

    sub-int/2addr v3, v4

    if-ltz v3, :cond_0

    if-lez v3, :cond_3

    iget-object v4, p0, Lcom/t4game/GPNGGroupData;->inputStream:Ljava/io/InputStream;

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/io/InputStream;->skip(J)J

    :cond_3
    invoke-direct {p0, v2}, Lcom/t4game/GPNGGroupData;->readImage(I)Ljavax/microedition/lcdui/Image;

    move-result-object v3

    iget-object v4, p0, Lcom/t4game/GPNGGroupData;->indece:[S

    iget v5, p0, Lcom/t4game/GPNGGroupData;->getIndex:I

    aget-short v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/t4game/GPNGGroupData;->indece:[S

    iget v5, p0, Lcom/t4game/GPNGGroupData;->getIndex:I

    aget-short v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v3, p0, Lcom/t4game/GPNGGroupData;->dataOffset:[I

    aget v1, v3, v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/t4game/GPNGGroupData;->offsetSkip:I

    iget v1, p0, Lcom/t4game/GPNGGroupData;->getIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/t4game/GPNGGroupData;->getIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_5
    move-object v0, p1

    goto :goto_1
.end method

.method public getImageMap([SLjava/util/Hashtable;)Ljava/util/Hashtable;
    .locals 11

    const/4 v3, 0x0

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/t4game/GPNGGroupData;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    move-object v0, v10

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    iget-byte v0, p0, Lcom/t4game/GPNGGroupData;->type:B

    iget-object v1, p0, Lcom/t4game/GPNGGroupData;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    move-object v0, v10

    goto :goto_0

    :cond_1
    if-nez p2, :cond_8

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    :goto_1
    :try_start_0
    iget-object v1, p0, Lcom/t4game/GPNGGroupData;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    array-length v2, p1

    move v4, v3

    :goto_2
    if-ge v4, v2, :cond_4

    aget-short v5, p1, v4

    sub-int/2addr v5, v1

    if-ltz v5, :cond_2

    iget-short v6, p0, Lcom/t4game/GPNGGroupData;->dataNum:S

    if-lt v5, v6, :cond_3

    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lcom/t4game/GPNGGroupData;->dataSize:[S

    aget-short v6, v6, v5

    iget-object v7, p0, Lcom/t4game/GPNGGroupData;->dataOffset:[I

    aget v7, v7, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sub-int v3, v7, v3

    if-gez v3, :cond_5

    :cond_4
    iget-byte v1, p0, Lcom/t4game/GPNGGroupData;->type:B

    iget-object v2, p0, Lcom/t4game/GPNGGroupData;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    goto :goto_0

    :cond_5
    if-lez v3, :cond_6

    :try_start_1
    iget-object v7, p0, Lcom/t4game/GPNGGroupData;->inputStream:Ljava/io/InputStream;

    int-to-long v8, v3

    invoke-direct {p0, v7, v8, v9}, Lcom/t4game/GPNGGroupData;->skipBytesFromStream(Ljava/io/InputStream;J)J

    :cond_6
    invoke-direct {p0, v6}, Lcom/t4game/GPNGGroupData;->readImage(I)Ljavax/microedition/lcdui/Image;

    move-result-object v3

    aget-short v7, p1, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    aget-short v7, p1, v4

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    iget-object v3, p0, Lcom/t4game/GPNGGroupData;->dataOffset:[I

    aget v3, v3, v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v3, v6

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v10

    goto :goto_0

    :cond_8
    move-object v0, p2

    goto :goto_1
.end method

.method public init(Ljava/io/InputStream;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/t4game/GPNGGroupData;->inputStream:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GPNGGroupData;->dataType:B

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v0

    iput-short v0, p0, Lcom/t4game/GPNGGroupData;->dataNum:S

    const/4 v0, 0x3

    iput-short v0, p0, Lcom/t4game/GPNGGroupData;->dataStartPos:S

    iget-short v0, p0, Lcom/t4game/GPNGGroupData;->dataNum:S

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-byte v0, p0, Lcom/t4game/GPNGGroupData;->dataType:B

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/t4game/GUtil;->readBoolean(Ljava/io/InputStream;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/t4game/GPNGGroupData;->transparent:Z

    invoke-static {p1}, Lcom/t4game/GUtil;->readUnsignedShort(Ljava/io/InputStream;)I

    move-result v0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/t4game/GPNGGroupData;->paletteData:[B

    iget-object v1, p0, Lcom/t4game/GPNGGroupData;->paletteData:[B

    invoke-static {p1, v1, v0}, Lcom/t4game/Util;->read(Ljava/io/InputStream;[BI)V

    iget-short v1, p0, Lcom/t4game/GPNGGroupData;->dataStartPos:S

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GPNGGroupData;->dataStartPos:S

    :cond_1
    iget-short v0, p0, Lcom/t4game/GPNGGroupData;->dataNum:S

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/t4game/GPNGGroupData;->dataSize:[S

    iget-short v0, p0, Lcom/t4game/GPNGGroupData;->dataNum:S

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/t4game/GPNGGroupData;->dataOffset:[I

    move v0, v2

    move v1, v2

    :goto_1
    iget-short v2, p0, Lcom/t4game/GPNGGroupData;->dataNum:S

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/t4game/GPNGGroupData;->dataSize:[S

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v3

    aput-short v3, v2, v1

    iget-object v2, p0, Lcom/t4game/GPNGGroupData;->dataOffset:[I

    aput v0, v2, v1

    iget-object v2, p0, Lcom/t4game/GPNGGroupData;->dataSize:[S

    aget-short v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-short v0, p0, Lcom/t4game/GPNGGroupData;->dataStartPos:S

    iget-short v1, p0, Lcom/t4game/GPNGGroupData;->dataNum:S

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GPNGGroupData;->dataStartPos:S

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/t4game/GBaseData;->release()V

    iput-byte v1, p0, Lcom/t4game/GPNGGroupData;->HashType:B

    iput v1, p0, Lcom/t4game/GPNGGroupData;->getIndex:I

    iput v1, p0, Lcom/t4game/GPNGGroupData;->maxSize:I

    iput-object v0, p0, Lcom/t4game/GPNGGroupData;->indece:[S

    iput v1, p0, Lcom/t4game/GPNGGroupData;->offsetSkip:I

    iput-object v0, p0, Lcom/t4game/GPNGGroupData;->paletteData:[B

    iput-object v0, p0, Lcom/t4game/GPNGGroupData;->dataSize:[S

    iput-object v0, p0, Lcom/t4game/GPNGGroupData;->dataOffset:[I

    :try_start_0
    iget-object v0, p0, Lcom/t4game/GPNGGroupData;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GPNGGroupData;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GPNGGroupData;->inputStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setImageMap([SB)V
    .locals 2

    const/4 v1, 0x0

    iput-byte p2, p0, Lcom/t4game/GPNGGroupData;->HashType:B

    iget-object v0, p0, Lcom/t4game/GPNGGroupData;->inputStream:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/t4game/GPNGGroupData;->maxSize:I

    iput v0, p0, Lcom/t4game/GPNGGroupData;->getIndex:I

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-byte v0, p0, Lcom/t4game/GPNGGroupData;->type:B

    iget-object v1, p0, Lcom/t4game/GPNGGroupData;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    iget v0, p0, Lcom/t4game/GPNGGroupData;->maxSize:I

    iput v0, p0, Lcom/t4game/GPNGGroupData;->getIndex:I

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/t4game/GPNGGroupData;->indece:[S

    array-length v0, p1

    iput v0, p0, Lcom/t4game/GPNGGroupData;->maxSize:I

    iput v1, p0, Lcom/t4game/GPNGGroupData;->getIndex:I

    iput v1, p0, Lcom/t4game/GPNGGroupData;->offsetSkip:I

    goto :goto_0
.end method

.method public testOver()Z
    .locals 3

    iget v0, p0, Lcom/t4game/GPNGGroupData;->getIndex:I

    iget v1, p0, Lcom/t4game/GPNGGroupData;->maxSize:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iget-byte v1, p0, Lcom/t4game/GPNGGroupData;->type:B

    iget-object v2, p0, Lcom/t4game/GPNGGroupData;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
