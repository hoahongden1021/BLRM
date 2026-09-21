.class public Lcom/t4game/GZIP;
.super Ljava/lang/Object;


# static fields
.field private static final BTYPE_DYNAMIC:I = 0x2

.field private static final BTYPE_FIXED:I = 0x1

.field private static final BTYPE_NONE:I = 0x0

.field private static final BTYPE_RESERVED:I = 0x3

.field private static final DISTANCE_EXTRA_BITS:[I

.field private static final DISTANCE_VALUES:[I

.field private static final DYNAMIC_LENGTH_ORDER:[I

.field private static final EOB_CODE:I = 0x100

.field private static final FCOMMENT_MASK:I = 0x10

.field private static final FEXTRA_MASK:I = 0x4

.field private static final FHCRC_MASK:I = 0x2

.field private static final FNAME_MASK:I = 0x8

.field private static final FTEXT_MASK:I = 0x1

.field private static final LENGTH_EXTRA_BITS:[I

.field private static final LENGTH_VALUES:[I

.field private static final MAX_BITS:I = 0x10

.field private static final MAX_CODE_DISTANCES:I = 0x1f

.field private static final MAX_CODE_LENGTHS:I = 0x12

.field private static final MAX_CODE_LITERALS:I = 0x11f

.field private static gzipBit:I

.field private static gzipByte:I

.field private static gzipIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x1f

    const/16 v1, 0x1e

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/t4game/GZIP;->LENGTH_EXTRA_BITS:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/t4game/GZIP;->LENGTH_VALUES:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/t4game/GZIP;->DISTANCE_EXTRA_BITS:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/t4game/GZIP;->DISTANCE_VALUES:[I

    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/t4game/GZIP;->DYNAMIC_LENGTH_ORDER:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x0
        0x63
        0x63
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xd
        0xf
        0x11
        0x13
        0x17
        0x1b
        0x1f
        0x23
        0x2b
        0x33
        0x3b
        0x43
        0x53
        0x63
        0x73
        0x83
        0xa3
        0xc3
        0xe3
        0x102
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0x9
        0x9
        0xa
        0xa
        0xb
        0xb
        0xc
        0xc
        0xd
        0xd
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x7
        0x9
        0xd
        0x11
        0x19
        0x21
        0x31
        0x41
        0x61
        0x81
        0xc1
        0x101
        0x181
        0x201
        0x301
        0x401
        0x601
        0x801
        0xc01
        0x1001
        0x1801
        0x2001
        0x3001
        0x4001
        0x6001
    .end array-data

    :array_4
    .array-data 4
        0x10
        0x11
        0x12
        0x0
        0x8
        0x7
        0x9
        0x6
        0xa
        0x5
        0xb
        0x4
        0xc
        0x3
        0xd
        0x2
        0xe
        0x1
        0xf
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createHuffmanTree([BI)[I
    .locals 12

    const/16 v4, 0x11

    const/4 v10, 0x1

    const/4 v9, 0x0

    new-array v0, v4, [I

    move v1, v9

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-byte v2, p0, v1

    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    aput v9, v0, v9

    new-array v1, v4, [I

    move v2, v10

    move v3, v9

    :goto_1
    const/16 v4, 0x10

    if-gt v2, v4, :cond_1

    sub-int v4, v2, v10

    aget v4, v0, v4

    add-int/2addr v3, v4

    shl-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x10

    new-array v0, v0, [I

    move v2, v9

    move v3, v10

    :goto_2
    if-gt v2, p1, :cond_7

    aget-byte v4, p0, v2

    if-eqz v4, :cond_6

    aget v5, v1, v4

    add-int/lit8 v6, v5, 0x1

    aput v6, v1, v4

    sub-int/2addr v4, v10

    move v6, v3

    move v3, v4

    move v4, v9

    :goto_3
    if-ltz v3, :cond_5

    shl-int v7, v10, v3

    and-int/2addr v7, v5

    if-nez v7, :cond_3

    aget v7, v0, v4

    shr-int/lit8 v7, v7, 0x10

    if-nez v7, :cond_2

    aget v7, v0, v4

    shl-int/lit8 v8, v6, 0x10

    or-int/2addr v7, v8

    aput v7, v0, v4

    add-int/lit8 v4, v6, 0x1

    move v11, v6

    move v6, v4

    move v4, v11

    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_2
    move v4, v7

    goto :goto_4

    :cond_3
    aget v7, v0, v4

    const v8, 0xffff

    and-int/2addr v7, v8

    if-nez v7, :cond_4

    aget v7, v0, v4

    or-int/2addr v7, v6

    aput v7, v0, v4

    add-int/lit8 v4, v6, 0x1

    move v11, v6

    move v6, v4

    move v4, v11

    goto :goto_4

    :cond_4
    move v4, v7

    goto :goto_4

    :cond_5
    const/high16 v3, -0x80000000

    or-int/2addr v3, v2

    aput v3, v0, v4

    move v3, v6

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    return-object v0
.end method

.method private static decodeCodeLengths([B[II)[B
    .locals 9

    const/16 v7, 0x10

    const/4 v6, 0x0

    new-array v0, p2, [B

    move v1, v6

    move v2, v6

    :goto_0
    if-ge v2, p2, :cond_4

    invoke-static {p0, p1}, Lcom/t4game/GZIP;->readCode([B[I)I

    move-result v3

    if-lt v3, v7, :cond_3

    if-ne v3, v7, :cond_0

    const/4 v3, 0x2

    invoke-static {p0, v3}, Lcom/t4game/GZIP;->readBits([BI)I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    move v8, v3

    move v3, v2

    move v2, v1

    move v1, v8

    :goto_1
    add-int/lit8 v4, v1, -0x1

    if-lez v1, :cond_2

    add-int/lit8 v1, v3, 0x1

    int-to-byte v5, v2

    aput-byte v5, v0, v3

    move v3, v1

    move v1, v4

    goto :goto_1

    :cond_0
    const/16 v1, 0x11

    if-ne v3, v1, :cond_1

    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/t4game/GZIP;->readBits([BI)I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    :goto_2
    move v3, v2

    move v2, v6

    goto :goto_1

    :cond_1
    const/4 v1, 0x7

    invoke-static {p0, v1}, Lcom/t4game/GZIP;->readBits([BI)I

    move-result v1

    add-int/lit8 v1, v1, 0xb

    goto :goto_2

    :cond_2
    move v1, v2

    move v2, v3

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v2, 0x1

    int-to-byte v4, v3

    aput-byte v4, v0, v2

    move v2, v1

    move v1, v3

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public static inflate([B)[B
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    sput v0, Lcom/t4game/GZIP;->gzipBit:I

    sput v0, Lcom/t4game/GZIP;->gzipByte:I

    sput v0, Lcom/t4game/GZIP;->gzipIndex:I

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/t4game/GZIP;->readBits([BI)I

    move-result v0

    const v1, 0x8b1f

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/t4game/GZIP;->readBits([BI)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Invalid GZIP format"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/t4game/GZIP;->readBits([BI)I

    move-result v0

    sget v1, Lcom/t4game/GZIP;->gzipIndex:I

    add-int/lit8 v1, v1, 0x6

    sput v1, Lcom/t4game/GZIP;->gzipIndex:I

    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_2

    sget v1, Lcom/t4game/GZIP;->gzipIndex:I

    const/16 v2, 0x10

    invoke-static {p0, v2}, Lcom/t4game/GZIP;->readBits([BI)I

    move-result v2

    add-int/2addr v1, v2

    sput v1, Lcom/t4game/GZIP;->gzipIndex:I

    :cond_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_4

    :cond_3
    sget v1, Lcom/t4game/GZIP;->gzipIndex:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/t4game/GZIP;->gzipIndex:I

    aget-byte v1, p0, v1

    if-nez v1, :cond_3

    :cond_4
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_6

    :cond_5
    sget v1, Lcom/t4game/GZIP;->gzipIndex:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/t4game/GZIP;->gzipIndex:I

    aget-byte v1, p0, v1

    if-nez v1, :cond_5

    :cond_6
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    sget v0, Lcom/t4game/GZIP;->gzipIndex:I

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/t4game/GZIP;->gzipIndex:I

    :cond_7
    sget v0, Lcom/t4game/GZIP;->gzipIndex:I

    array-length v1, p0

    const/4 v2, 0x4

    sub-int/2addr v1, v2

    sput v1, Lcom/t4game/GZIP;->gzipIndex:I

    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/t4game/GZIP;->readBits([BI)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {p0, v2}, Lcom/t4game/GZIP;->readBits([BI)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    new-array v1, v1, [B

    const/4 v2, 0x0

    sput v0, Lcom/t4game/GZIP;->gzipIndex:I

    move v0, v2

    :cond_8
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/t4game/GZIP;->readBits([BI)I

    move-result v2

    const/4 v3, 0x2

    invoke-static {p0, v3}, Lcom/t4game/GZIP;->readBits([BI)I

    move-result v3

    if-nez v3, :cond_a

    const/4 v3, 0x0

    sput v3, Lcom/t4game/GZIP;->gzipBit:I

    const/16 v3, 0x10

    invoke-static {p0, v3}, Lcom/t4game/GZIP;->readBits([BI)I

    move-result v3

    const/16 v4, 0x10

    invoke-static {p0, v4}, Lcom/t4game/GZIP;->readBits([BI)I

    sget v4, Lcom/t4game/GZIP;->gzipIndex:I

    invoke-static {p0, v4, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget v4, Lcom/t4game/GZIP;->gzipIndex:I

    add-int/2addr v4, v3

    sput v4, Lcom/t4game/GZIP;->gzipIndex:I

    add-int/2addr v0, v3

    :cond_9
    if-eqz v2, :cond_8

    return-object v1

    :cond_a
    const/4 v4, 0x2

    if-ne v3, v4, :cond_c

    const/4 v3, 0x5

    invoke-static {p0, v3}, Lcom/t4game/GZIP;->readBits([BI)I

    move-result v3

    add-int/lit16 v3, v3, 0x101

    const/4 v4, 0x5

    invoke-static {p0, v4}, Lcom/t4game/GZIP;->readBits([BI)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x4

    invoke-static {p0, v5}, Lcom/t4game/GZIP;->readBits([BI)I

    move-result v5

    add-int/lit8 v5, v5, 0x4

    const/16 v6, 0x13

    new-array v6, v6, [B

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_b

    sget-object v8, Lcom/t4game/GZIP;->DYNAMIC_LENGTH_ORDER:[I

    aget v8, v8, v7

    const/4 v9, 0x3

    invoke-static {p0, v9}, Lcom/t4game/GZIP;->readBits([BI)I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v6, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_b
    const/16 v5, 0x12

    invoke-static {v6, v5}, Lcom/t4game/GZIP;->createHuffmanTree([BI)[I

    move-result-object v5

    invoke-static {p0, v5, v3}, Lcom/t4game/GZIP;->decodeCodeLengths([B[II)[B

    move-result-object v6

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-static {v6, v3}, Lcom/t4game/GZIP;->createHuffmanTree([BI)[I

    move-result-object v3

    invoke-static {p0, v5, v4}, Lcom/t4game/GZIP;->decodeCodeLengths([B[II)[B

    move-result-object v5

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    invoke-static {v5, v4}, Lcom/t4game/GZIP;->createHuffmanTree([BI)[I

    move-result-object v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    :goto_1
    invoke-static {p0, v4}, Lcom/t4game/GZIP;->readCode([B[I)I

    move-result v5

    const/16 v6, 0x100

    if-eq v5, v6, :cond_9

    const/16 v6, 0x100

    if-le v5, v6, :cond_13

    add-int/lit16 v5, v5, -0x101

    sget-object v6, Lcom/t4game/GZIP;->LENGTH_VALUES:[I

    aget v6, v6, v5

    sget-object v7, Lcom/t4game/GZIP;->LENGTH_EXTRA_BITS:[I

    aget v5, v7, v5

    if-lez v5, :cond_15

    invoke-static {p0, v5}, Lcom/t4game/GZIP;->readBits([BI)I

    move-result v5

    add-int/2addr v5, v6

    :goto_2
    invoke-static {p0, v3}, Lcom/t4game/GZIP;->readCode([B[I)I

    move-result v6

    sget-object v7, Lcom/t4game/GZIP;->DISTANCE_VALUES:[I

    aget v7, v7, v6

    sget-object v8, Lcom/t4game/GZIP;->DISTANCE_EXTRA_BITS:[I

    aget v6, v8, v6

    if-lez v6, :cond_14

    invoke-static {p0, v6}, Lcom/t4game/GZIP;->readBits([BI)I

    move-result v6

    add-int/2addr v6, v7

    :goto_3
    sub-int v7, v0, v6

    move v10, v6

    move v6, v0

    move v0, v10

    :goto_4
    if-ge v0, v5, :cond_12

    invoke-static {v1, v7, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v6, v0

    sub-int/2addr v5, v0

    shl-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_c
    const/16 v3, 0x120

    new-array v3, v3, [B

    const/4 v4, 0x0

    :goto_5
    const/16 v5, 0x90

    if-ge v4, v5, :cond_d

    const/16 v5, 0x8

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_d
    const/16 v4, 0x90

    :goto_6
    const/16 v5, 0x100

    if-ge v4, v5, :cond_e

    const/16 v5, 0x9

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_e
    const/16 v4, 0x100

    :goto_7
    const/16 v5, 0x118

    if-ge v4, v5, :cond_f

    const/4 v5, 0x7

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_f
    const/16 v4, 0x118

    :goto_8
    const/16 v5, 0x120

    if-ge v4, v5, :cond_10

    const/16 v5, 0x8

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_10
    const/16 v4, 0x11f

    invoke-static {v3, v4}, Lcom/t4game/GZIP;->createHuffmanTree([BI)[I

    move-result-object v3

    const/16 v4, 0x20

    new-array v4, v4, [B

    const/4 v5, 0x0

    :goto_9
    array-length v6, v4

    if-ge v5, v6, :cond_11

    const/4 v6, 0x5

    aput-byte v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_11
    const/16 v5, 0x1f

    invoke-static {v4, v5}, Lcom/t4game/GZIP;->createHuffmanTree([BI)[I

    move-result-object v4

    move-object v10, v4

    move-object v4, v3

    move-object v3, v10

    goto/16 :goto_1

    :cond_12
    invoke-static {v1, v7, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v6, v5

    goto/16 :goto_1

    :cond_13
    add-int/lit8 v6, v0, 0x1

    int-to-byte v5, v5

    aput-byte v5, v1, v0

    move v0, v6

    goto/16 :goto_1

    :cond_14
    move v6, v7

    goto :goto_3

    :cond_15
    move v5, v6

    goto/16 :goto_2
.end method

.method private static readBits([BI)I
    .locals 6

    const/4 v4, 0x1

    sget v0, Lcom/t4game/GZIP;->gzipBit:I

    if-nez v0, :cond_0

    sget v0, Lcom/t4game/GZIP;->gzipIndex:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/t4game/GZIP;->gzipIndex:I

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    sput v0, Lcom/t4game/GZIP;->gzipByte:I

    :goto_0
    const/16 v1, 0x8

    sget v2, Lcom/t4game/GZIP;->gzipBit:I

    sub-int/2addr v1, v2

    move v5, v1

    move v1, v0

    move v0, v5

    :goto_1
    if-ge v0, p1, :cond_1

    sget v2, Lcom/t4game/GZIP;->gzipIndex:I

    add-int/lit8 v3, v2, 0x1

    sput v3, Lcom/t4game/GZIP;->gzipIndex:I

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    sput v2, Lcom/t4game/GZIP;->gzipByte:I

    sget v2, Lcom/t4game/GZIP;->gzipByte:I

    shl-int/2addr v2, v0

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_0
    sget v0, Lcom/t4game/GZIP;->gzipByte:I

    sget v1, Lcom/t4game/GZIP;->gzipBit:I

    shr-int/2addr v0, v1

    goto :goto_0

    :cond_1
    sget v0, Lcom/t4game/GZIP;->gzipBit:I

    add-int/2addr v0, p1

    and-int/lit8 v0, v0, 0x7

    sput v0, Lcom/t4game/GZIP;->gzipBit:I

    shl-int v0, v4, p1

    sub-int/2addr v0, v4

    and-int/2addr v0, v1

    return v0
.end method

.method private static readCode([B[I)I
    .locals 5

    const v4, 0xffff

    const/4 v0, 0x0

    aget v0, p1, v0

    :goto_0
    if-ltz v0, :cond_2

    sget v1, Lcom/t4game/GZIP;->gzipBit:I

    if-nez v1, :cond_0

    sget v1, Lcom/t4game/GZIP;->gzipIndex:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/t4game/GZIP;->gzipIndex:I

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    sput v1, Lcom/t4game/GZIP;->gzipByte:I

    :cond_0
    sget v1, Lcom/t4game/GZIP;->gzipByte:I

    const/4 v2, 0x1

    sget v3, Lcom/t4game/GZIP;->gzipBit:I

    shl-int/2addr v2, v3

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    shr-int/lit8 v0, v0, 0x10

    aget v0, p1, v0

    :goto_1
    sget v1, Lcom/t4game/GZIP;->gzipBit:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x7

    sput v1, Lcom/t4game/GZIP;->gzipBit:I

    goto :goto_0

    :cond_1
    and-int/2addr v0, v4

    aget v0, p1, v0

    goto :goto_1

    :cond_2
    and-int/2addr v0, v4

    return v0
.end method
