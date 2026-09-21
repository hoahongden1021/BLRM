.class public final Lj2ab/android/alipay/Base64;
.super Ljava/lang/Object;


# static fields
.field private static final BASELENGTH:I = 0x80

.field private static final EIGHTBIT:I = 0x8

.field private static final FOURBYTE:I = 0x4

.field private static final LOOKUPLENGTH:I = 0x40

.field private static final PAD:C = '='

.field private static final SIGN:I = -0x80

.field private static final SIXTEENBIT:I = 0x10

.field private static final TWENTYFOURBITGROUP:I = 0x18

.field private static final base64Alphabet:[B

.field private static final fDebug:Z

.field private static final lookUpBase64Alphabet:[C


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x3e

    const/16 v3, 0x30

    const/16 v6, 0x2f

    const/16 v5, 0x2b

    const/4 v4, 0x0

    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lj2ab/android/alipay/Base64;->base64Alphabet:[B

    const/16 v0, 0x40

    new-array v0, v0, [C

    sput-object v0, Lj2ab/android/alipay/Base64;->lookUpBase64Alphabet:[C

    move v0, v4

    :goto_0
    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    sget-object v1, Lj2ab/android/alipay/Base64;->base64Alphabet:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    :goto_1
    const/16 v1, 0x41

    if-lt v0, v1, :cond_1

    sget-object v1, Lj2ab/android/alipay/Base64;->base64Alphabet:[B

    const/16 v2, 0x41

    sub-int v2, v0, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x7a

    :goto_2
    const/16 v1, 0x61

    if-lt v0, v1, :cond_2

    sget-object v1, Lj2ab/android/alipay/Base64;->base64Alphabet:[B

    const/16 v2, 0x61

    sub-int v2, v0, v2

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    const/16 v0, 0x39

    :goto_3
    if-lt v0, v3, :cond_3

    sget-object v1, Lj2ab/android/alipay/Base64;->base64Alphabet:[B

    sub-int v2, v0, v3

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_3
    sget-object v0, Lj2ab/android/alipay/Base64;->base64Alphabet:[B

    aput-byte v7, v0, v5

    sget-object v0, Lj2ab/android/alipay/Base64;->base64Alphabet:[B

    const/16 v1, 0x3f

    aput-byte v1, v0, v6

    move v0, v4

    :goto_4
    const/16 v1, 0x19

    if-gt v0, v1, :cond_4

    sget-object v1, Lj2ab/android/alipay/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v2, v0, 0x41

    int-to-char v2, v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    const/16 v0, 0x1a

    move v1, v0

    move v0, v4

    :goto_5
    const/16 v2, 0x33

    if-gt v1, v2, :cond_5

    sget-object v2, Lj2ab/android/alipay/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v0, 0x61

    int-to-char v3, v3

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    const/16 v0, 0x34

    move v1, v0

    move v0, v4

    :goto_6
    const/16 v2, 0x3d

    if-gt v1, v2, :cond_6

    sget-object v2, Lj2ab/android/alipay/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v0, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    sget-object v0, Lj2ab/android/alipay/Base64;->lookUpBase64Alphabet:[C

    aput-char v5, v0, v7

    sget-object v0, Lj2ab/android/alipay/Base64;->lookUpBase64Alphabet:[C

    const/16 v1, 0x3f

    aput-char v6, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x0

    if-nez p0, :cond_0

    move-object v0, v13

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lj2ab/android/alipay/Base64;->removeWhiteSpace([C)I

    move-result v1

    rem-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_1

    move-object v0, v13

    goto :goto_0

    :cond_1
    div-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_2

    new-array v0, v12, [B

    goto :goto_0

    :cond_2
    mul-int/lit8 v2, v1, 0x3

    new-array v2, v2, [B

    move v3, v12

    move v4, v12

    move v5, v12

    :goto_1
    const/4 v6, 0x1

    sub-int v6, v1, v6

    if-ge v5, v6, :cond_5

    add-int/lit8 v6, v3, 0x1

    aget-char v3, v0, v3

    invoke-static {v3}, Lj2ab/android/alipay/Base64;->isData(C)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v7, v6, 0x1

    aget-char v6, v0, v6

    invoke-static {v6}, Lj2ab/android/alipay/Base64;->isData(C)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v8, v7, 0x1

    aget-char v7, v0, v7

    invoke-static {v7}, Lj2ab/android/alipay/Base64;->isData(C)Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v9, v8, 0x1

    aget-char v8, v0, v8

    invoke-static {v8}, Lj2ab/android/alipay/Base64;->isData(C)Z

    move-result v10

    if-nez v10, :cond_4

    :cond_3
    move-object v0, v13

    goto :goto_0

    :cond_4
    sget-object v10, Lj2ab/android/alipay/Base64;->base64Alphabet:[B

    aget-byte v3, v10, v3

    sget-object v10, Lj2ab/android/alipay/Base64;->base64Alphabet:[B

    aget-byte v6, v10, v6

    sget-object v10, Lj2ab/android/alipay/Base64;->base64Alphabet:[B

    aget-byte v7, v10, v7

    sget-object v10, Lj2ab/android/alipay/Base64;->base64Alphabet:[B

    aget-byte v8, v10, v8

    add-int/lit8 v10, v4, 0x1

    shl-int/lit8 v3, v3, 0x2

    shr-int/lit8 v11, v6, 0x4

    or-int/2addr v3, v11

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    add-int/lit8 v3, v10, 0x1

    and-int/lit8 v4, v6, 0xf

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v6, v7, 0x2

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, v2, v10

    add-int/lit8 v4, v3, 0x1

    shl-int/lit8 v6, v7, 0x6

    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v2, v3

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    move v3, v9

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v3, 0x1

    aget-char v3, v0, v3

    invoke-static {v3}, Lj2ab/android/alipay/Base64;->isData(C)Z

    move-result v6

    if-eqz v6, :cond_6

    add-int/lit8 v6, v1, 0x1

    aget-char v1, v0, v1

    invoke-static {v1}, Lj2ab/android/alipay/Base64;->isData(C)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_6
    move-object v0, v13

    goto/16 :goto_0

    :cond_7
    sget-object v7, Lj2ab/android/alipay/Base64;->base64Alphabet:[B

    aget-byte v3, v7, v3

    sget-object v7, Lj2ab/android/alipay/Base64;->base64Alphabet:[B

    aget-byte v1, v7, v1

    add-int/lit8 v7, v6, 0x1

    aget-char v6, v0, v6

    add-int/lit8 v8, v7, 0x1

    aget-char v0, v0, v7

    invoke-static {v6}, Lj2ab/android/alipay/Base64;->isData(C)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v0}, Lj2ab/android/alipay/Base64;->isData(C)Z

    move-result v7

    if-nez v7, :cond_d

    :cond_8
    invoke-static {v6}, Lj2ab/android/alipay/Base64;->isPad(C)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-static {v0}, Lj2ab/android/alipay/Base64;->isPad(C)Z

    move-result v7

    if-eqz v7, :cond_a

    and-int/lit8 v0, v1, 0xf

    if-eqz v0, :cond_9

    move-object v0, v13

    goto/16 :goto_0

    :cond_9
    mul-int/lit8 v0, v5, 0x3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    mul-int/lit8 v5, v5, 0x3

    invoke-static {v2, v12, v0, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v2, v3, 0x2

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    goto/16 :goto_0

    :cond_a
    invoke-static {v6}, Lj2ab/android/alipay/Base64;->isPad(C)Z

    move-result v7

    if-nez v7, :cond_c

    invoke-static {v0}, Lj2ab/android/alipay/Base64;->isPad(C)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lj2ab/android/alipay/Base64;->base64Alphabet:[B

    aget-byte v0, v0, v6

    and-int/lit8 v6, v0, 0x3

    if-eqz v6, :cond_b

    move-object v0, v13

    goto/16 :goto_0

    :cond_b
    mul-int/lit8 v6, v5, 0x3

    add-int/lit8 v6, v6, 0x2

    new-array v6, v6, [B

    mul-int/lit8 v5, v5, 0x3

    invoke-static {v2, v12, v6, v12, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v4, 0x1

    shl-int/lit8 v3, v3, 0x2

    shr-int/lit8 v5, v1, 0x4

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v6, v4

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x4

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0xf

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v6, v2

    move-object v0, v6

    goto/16 :goto_0

    :cond_c
    move-object v0, v13

    goto/16 :goto_0

    :cond_d
    sget-object v5, Lj2ab/android/alipay/Base64;->base64Alphabet:[B

    aget-byte v5, v5, v6

    sget-object v6, Lj2ab/android/alipay/Base64;->base64Alphabet:[B

    aget-byte v0, v6, v0

    add-int/lit8 v6, v4, 0x1

    shl-int/lit8 v3, v3, 0x2

    shr-int/lit8 v7, v1, 0x4

    or-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    add-int/lit8 v3, v6, 0x1

    and-int/lit8 v1, v1, 0xf

    shl-int/lit8 v1, v1, 0x4

    shr-int/lit8 v4, v5, 0x2

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, v2, v6

    add-int/lit8 v1, v3, 0x1

    shl-int/lit8 v1, v5, 0x6

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    move-object v0, v2

    goto/16 :goto_0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 15

    const/16 v14, 0x3d

    const/4 v3, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0

    :cond_1
    rem-int/lit8 v1, v0, 0x18

    div-int/lit8 v0, v0, 0x18

    if-eqz v1, :cond_2

    add-int/lit8 v2, v0, 0x1

    :goto_1
    mul-int/lit8 v2, v2, 0x4

    new-array v2, v2, [C

    move v4, v3

    move v5, v3

    :goto_2
    if-ge v3, v0, :cond_6

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p0, v4

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, p0, v7

    and-int/lit8 v9, v6, 0xf

    int-to-byte v9, v9

    and-int/lit8 v10, v4, 0x3

    int-to-byte v10, v10

    and-int/lit8 v11, v4, -0x80

    if-nez v11, :cond_3

    shr-int/lit8 v4, v4, 0x2

    int-to-byte v4, v4

    :goto_3
    and-int/lit8 v11, v6, -0x80

    if-nez v11, :cond_4

    shr-int/lit8 v6, v6, 0x4

    int-to-byte v6, v6

    :goto_4
    and-int/lit8 v11, v7, -0x80

    if-nez v11, :cond_5

    shr-int/lit8 v11, v7, 0x6

    int-to-byte v11, v11

    :goto_5
    add-int/lit8 v12, v5, 0x1

    sget-object v13, Lj2ab/android/alipay/Base64;->lookUpBase64Alphabet:[C

    aget-char v4, v13, v4

    aput-char v4, v2, v5

    add-int/lit8 v4, v12, 0x1

    sget-object v5, Lj2ab/android/alipay/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v10, v10, 0x4

    or-int/2addr v6, v10

    aget-char v5, v5, v6

    aput-char v5, v2, v12

    add-int/lit8 v5, v4, 0x1

    sget-object v6, Lj2ab/android/alipay/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v9, v9, 0x2

    or-int/2addr v9, v11

    aget-char v6, v6, v9

    aput-char v6, v2, v4

    add-int/lit8 v4, v5, 0x1

    sget-object v6, Lj2ab/android/alipay/Base64;->lookUpBase64Alphabet:[C

    and-int/lit8 v7, v7, 0x3f

    aget-char v6, v6, v7

    aput-char v6, v2, v5

    add-int/lit8 v3, v3, 0x1

    move v5, v4

    move v4, v8

    goto :goto_2

    :cond_2
    move v2, v0

    goto :goto_1

    :cond_3
    shr-int/lit8 v4, v4, 0x2

    xor-int/lit16 v4, v4, 0xc0

    int-to-byte v4, v4

    goto :goto_3

    :cond_4
    shr-int/lit8 v6, v6, 0x4

    xor-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    goto :goto_4

    :cond_5
    shr-int/lit8 v11, v7, 0x6

    xor-int/lit16 v11, v11, 0xfc

    int-to-byte v11, v11

    goto :goto_5

    :cond_6
    const/16 v0, 0x8

    if-ne v1, v0, :cond_9

    aget-byte v0, p0, v4

    and-int/lit8 v1, v0, 0x3

    int-to-byte v1, v1

    and-int/lit8 v3, v0, -0x80

    if-nez v3, :cond_8

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    :goto_6
    add-int/lit8 v3, v5, 0x1

    sget-object v4, Lj2ab/android/alipay/Base64;->lookUpBase64Alphabet:[C

    aget-char v0, v4, v0

    aput-char v0, v2, v5

    add-int/lit8 v0, v3, 0x1

    sget-object v4, Lj2ab/android/alipay/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v1, v1, 0x4

    aget-char v1, v4, v1

    aput-char v1, v2, v3

    add-int/lit8 v1, v0, 0x1

    aput-char v14, v2, v0

    add-int/lit8 v0, v1, 0x1

    aput-char v14, v2, v1

    :cond_7
    :goto_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    goto/16 :goto_0

    :cond_8
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    goto :goto_6

    :cond_9
    const/16 v0, 0x10

    if-ne v1, v0, :cond_7

    aget-byte v0, p0, v4

    add-int/lit8 v1, v4, 0x1

    aget-byte v1, p0, v1

    and-int/lit8 v3, v1, 0xf

    int-to-byte v3, v3

    and-int/lit8 v4, v0, 0x3

    int-to-byte v4, v4

    and-int/lit8 v6, v0, -0x80

    if-nez v6, :cond_a

    shr-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    :goto_8
    and-int/lit8 v6, v1, -0x80

    if-nez v6, :cond_b

    shr-int/lit8 v1, v1, 0x4

    int-to-byte v1, v1

    :goto_9
    add-int/lit8 v6, v5, 0x1

    sget-object v7, Lj2ab/android/alipay/Base64;->lookUpBase64Alphabet:[C

    aget-char v0, v7, v0

    aput-char v0, v2, v5

    add-int/lit8 v0, v6, 0x1

    sget-object v5, Lj2ab/android/alipay/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v1, v4

    aget-char v1, v5, v1

    aput-char v1, v2, v6

    add-int/lit8 v1, v0, 0x1

    sget-object v4, Lj2ab/android/alipay/Base64;->lookUpBase64Alphabet:[C

    shl-int/lit8 v3, v3, 0x2

    aget-char v3, v4, v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v1, 0x1

    aput-char v14, v2, v1

    goto :goto_7

    :cond_a
    shr-int/lit8 v0, v0, 0x2

    xor-int/lit16 v0, v0, 0xc0

    int-to-byte v0, v0

    goto :goto_8

    :cond_b
    shr-int/lit8 v1, v1, 0x4

    xor-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    goto :goto_9
.end method

.method private static isData(C)Z
    .locals 2

    const/16 v0, 0x80

    if-ge p0, v0, :cond_0

    sget-object v0, Lj2ab/android/alipay/Base64;->base64Alphabet:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPad(C)Z
    .locals 1

    const/16 v0, 0x3d

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isWhiteSpace(C)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static removeWhiteSpace([C)I
    .locals 5

    const/4 v1, 0x0

    if-nez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    array-length v0, p0

    move v2, v1

    :goto_1
    if-ge v1, v0, :cond_2

    aget-char v3, p0, v1

    invoke-static {v3}, Lj2ab/android/alipay/Base64;->isWhiteSpace(C)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget-char v4, p0, v1

    aput-char v4, p0, v2

    move v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method
