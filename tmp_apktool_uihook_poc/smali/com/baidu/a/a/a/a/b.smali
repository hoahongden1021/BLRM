.class public final Lcom/baidu/a/a/a/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/baidu/a/a/a/a/b;->a:[B

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method public static a([BLjava/lang/String;)Ljava/lang/String;
    .locals 11

    const/16 v10, 0x3d

    const/4 v9, 0x0

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x3

    div-int/lit8 v1, v0, 0x4c

    add-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p0

    array-length v2, p0

    rem-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    move v2, v9

    move v3, v9

    move v4, v9

    :goto_0
    if-ge v3, v1, :cond_1

    add-int/lit8 v5, v4, 0x1

    sget-object v6, Lcom/baidu/a/a/a/a/b;->a:[B

    aget-byte v7, p0, v3

    and-int/lit16 v7, v7, 0xff

    shr-int/lit8 v7, v7, 0x2

    aget-byte v6, v6, v7

    aput-byte v6, v0, v4

    add-int/lit8 v4, v5, 0x1

    sget-object v6, Lcom/baidu/a/a/a/a/b;->a:[B

    aget-byte v7, p0, v3

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v8, v3, 0x1

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x4

    or-int/2addr v7, v8

    aget-byte v6, v6, v7

    aput-byte v6, v0, v5

    add-int/lit8 v5, v4, 0x1

    sget-object v6, Lcom/baidu/a/a/a/a/b;->a:[B

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0xf

    shl-int/lit8 v7, v7, 0x2

    add-int/lit8 v8, v3, 0x2

    aget-byte v8, p0, v8

    and-int/lit16 v8, v8, 0xff

    shr-int/lit8 v8, v8, 0x6

    or-int/2addr v7, v8

    aget-byte v6, v6, v7

    aput-byte v6, v0, v4

    add-int/lit8 v4, v5, 0x1

    sget-object v6, Lcom/baidu/a/a/a/a/b;->a:[B

    add-int/lit8 v7, v3, 0x2

    aget-byte v7, p0, v7

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, v0, v5

    sub-int v5, v4, v2

    rem-int/lit8 v5, v5, 0x4c

    if-nez v5, :cond_0

    if-eqz v4, :cond_0

    add-int/lit8 v5, v4, 0x1

    const/16 v6, 0xa

    aput-byte v6, v0, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    :cond_1
    array-length v2, p0

    rem-int/lit8 v2, v2, 0x3

    packed-switch v2, :pswitch_data_0

    move v1, v4

    :goto_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0, v9, v1, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2

    :pswitch_0
    add-int/lit8 v2, v4, 0x1

    sget-object v3, Lcom/baidu/a/a/a/a/b;->a:[B

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x2

    aget-byte v3, v3, v5

    aput-byte v3, v0, v4

    add-int/lit8 v3, v2, 0x1

    sget-object v4, Lcom/baidu/a/a/a/a/b;->a:[B

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x4

    aget-byte v1, v4, v1

    aput-byte v1, v0, v2

    add-int/lit8 v1, v3, 0x1

    aput-byte v10, v0, v3

    add-int/lit8 v2, v1, 0x1

    aput-byte v10, v0, v1

    move v1, v2

    goto :goto_1

    :pswitch_1
    add-int/lit8 v2, v4, 0x1

    sget-object v3, Lcom/baidu/a/a/a/a/b;->a:[B

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x2

    aget-byte v3, v3, v5

    aput-byte v3, v0, v4

    add-int/lit8 v3, v2, 0x1

    sget-object v4, Lcom/baidu/a/a/a/a/b;->a:[B

    aget-byte v5, p0, v1

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x4

    or-int/2addr v5, v6

    aget-byte v4, v4, v5

    aput-byte v4, v0, v2

    add-int/lit8 v2, v3, 0x1

    sget-object v4, Lcom/baidu/a/a/a/a/b;->a:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x2

    aget-byte v1, v4, v1

    aput-byte v1, v0, v3

    add-int/lit8 v1, v2, 0x1

    aput-byte v10, v0, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static a([B)[B
    .locals 1

    array-length v0, p0

    invoke-static {p0, v0}, Lcom/baidu/a/a/a/a/b;->a([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static a([BI)[B
    .locals 14

    const/16 v13, 0xd

    const/16 v12, 0xa

    const/16 v11, 0x9

    const/4 v10, 0x1

    const/4 v9, 0x0

    div-int/lit8 v0, p1, 0x4

    mul-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    new-array v0, v9, [B

    :goto_0
    return-object v0

    :cond_0
    new-array v0, v0, [B

    move v1, v9

    move v2, p1

    :goto_1
    sub-int v3, v2, v10

    aget-byte v3, p0, v3

    if-eq v3, v12, :cond_1

    if-eq v3, v13, :cond_1

    const/16 v4, 0x20

    if-eq v3, v4, :cond_1

    if-ne v3, v11, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    const/16 v4, 0x3d

    if-ne v3, v4, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v3, v9

    move v4, v9

    move v5, v9

    move v6, v9

    :goto_3
    if-ge v3, v2, :cond_c

    aget-byte v7, p0, v3

    if-eq v7, v12, :cond_4

    if-eq v7, v13, :cond_4

    const/16 v8, 0x20

    if-eq v7, v8, :cond_4

    if-ne v7, v11, :cond_5

    :cond_4
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    const/16 v8, 0x41

    if-lt v7, v8, :cond_7

    const/16 v8, 0x5a

    if-gt v7, v8, :cond_7

    const/16 v8, 0x41

    sub-int/2addr v7, v8

    :goto_5
    shl-int/lit8 v4, v4, 0x6

    int-to-byte v7, v7

    or-int/2addr v4, v7

    rem-int/lit8 v7, v5, 0x4

    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    add-int/lit8 v7, v6, 0x1

    const/high16 v8, 0xff0000

    and-int/2addr v8, v4

    shr-int/lit8 v8, v8, 0x10

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    add-int/lit8 v6, v7, 0x1

    const v8, 0xff00

    and-int/2addr v8, v4

    shr-int/lit8 v8, v8, 0x8

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    add-int/lit8 v7, v6, 0x1

    and-int/lit16 v8, v4, 0xff

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    move v6, v7

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    const/16 v8, 0x61

    if-lt v7, v8, :cond_8

    const/16 v8, 0x7a

    if-gt v7, v8, :cond_8

    const/16 v8, 0x47

    sub-int/2addr v7, v8

    goto :goto_5

    :cond_8
    const/16 v8, 0x30

    if-lt v7, v8, :cond_9

    const/16 v8, 0x39

    if-gt v7, v8, :cond_9

    add-int/lit8 v7, v7, 0x4

    goto :goto_5

    :cond_9
    const/16 v8, 0x2b

    if-ne v7, v8, :cond_a

    const/16 v7, 0x3e

    goto :goto_5

    :cond_a
    const/16 v8, 0x2f

    if-ne v7, v8, :cond_b

    const/16 v7, 0x3f

    goto :goto_5

    :cond_b
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_c
    if-lez v1, :cond_e

    mul-int/lit8 v2, v1, 0x6

    shl-int v2, v4, v2

    add-int/lit8 v3, v6, 0x1

    const/high16 v4, 0xff0000

    and-int/2addr v4, v2

    shr-int/lit8 v4, v4, 0x10

    int-to-byte v4, v4

    aput-byte v4, v0, v6

    if-ne v1, v10, :cond_d

    add-int/lit8 v1, v3, 0x1

    const v4, 0xff00

    and-int/2addr v2, v4

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    :goto_6
    new-array v2, v1, [B

    invoke-static {v0, v9, v2, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_d
    move v1, v3

    goto :goto_6

    :cond_e
    move v1, v6

    goto :goto_6
.end method
