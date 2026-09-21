.class public Lcom/t4game/GUtil;
.super Ljava/lang/Object;


# static fields
.field public static BYTEMASK:[B = null

.field public static FPS:I = 0x0

.field public static final FP_ANGLE225_X:I = 0x12

.field public static final FP_ANGLE225_Y:I = 0x9

.field public static final FP_LEVEL:I = 0x10

.field public static final FP_LEVEL2:I = 0x8

.field public static final FP_LEVELB:I = 0x4

.field public static final FP_LEVELMASK:I = 0xf

.field public static final HEADChunk:[B

.field public static HITMASK:[[B = null

.field public static final IENDChunk:[B

.field public static MSPF:I = 0x0

.field public static final PNG_EXTRA_SIZE:I

.field public static final PNG_PREDATA_SIZE:I

.field public static TENS:[I = null

.field public static final TICKNUM_SENDMOVE:B = 0x8t

.field public static final TICKNUM_STILLMOVE:B = 0x14t

.field public static final TICKNUM_WAITMOVE:B = 0x8t

.field public static final TIME_SENDMOVE:S = 0x3e8s

.field public static final TIME_WAITMOVE:S = 0x3e8s

.field public static ZEROS:Ljava/lang/String;

.field public static dataPath:Ljava/lang/String;

.field public static imgPath:Ljava/lang/String;

.field public static random:Ljava/util/Random;

.field public static tRNSChunk:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v6, 0xc

    const/4 v5, 0x5

    const/16 v4, 0x8

    const/16 v3, 0x10

    new-array v0, v4, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/t4game/GUtil;->BYTEMASK:[B

    new-array v0, v6, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [B

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_6

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v2, v3, [B

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [B

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_9

    aput-object v1, v0, v4

    const/16 v1, 0x9

    new-array v2, v3, [B

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [B

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [B

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    sput-object v0, Lcom/t4game/GUtil;->HITMASK:[[B

    const/16 v0, 0x64

    sput v0, Lcom/t4game/GUtil;->MSPF:I

    const/16 v0, 0x3e8

    sget v1, Lcom/t4game/GUtil;->MSPF:I

    div-int/2addr v0, v1

    sput v0, Lcom/t4game/GUtil;->FPS:I

    const-string v0, "/img/"

    sput-object v0, Lcom/t4game/GUtil;->imgPath:Ljava/lang/String;

    const-string v0, "/data/"

    sput-object v0, Lcom/t4game/GUtil;->dataPath:Ljava/lang/String;

    new-instance v0, Ljava/util/Random;

    invoke-static {}, Lcom/t4game/Util;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/t4game/GUtil;->random:Ljava/util/Random;

    new-array v0, v4, [B

    fill-array-data v0, :array_d

    sput-object v0, Lcom/t4game/GUtil;->HEADChunk:[B

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_e

    sput-object v0, Lcom/t4game/GUtil;->tRNSChunk:[B

    new-array v0, v6, [B

    fill-array-data v0, :array_f

    sput-object v0, Lcom/t4game/GUtil;->IENDChunk:[B

    sget-object v0, Lcom/t4game/GUtil;->HEADChunk:[B

    array-length v0, v0

    sget-object v1, Lcom/t4game/GUtil;->tRNSChunk:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sget-object v1, Lcom/t4game/GUtil;->IENDChunk:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/t4game/GUtil;->PNG_EXTRA_SIZE:I

    sget-object v0, Lcom/t4game/GUtil;->HEADChunk:[B

    array-length v0, v0

    sget-object v1, Lcom/t4game/GUtil;->tRNSChunk:[B

    array-length v1, v1

    add-int/2addr v0, v1

    sput v0, Lcom/t4game/GUtil;->PNG_PREDATA_SIZE:I

    new-array v0, v5, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/t4game/GUtil;->TENS:[I

    const-string v0, "000000"

    sput-object v0, Lcom/t4game/GUtil;->ZEROS:Ljava/lang/String;

    return-void

    :array_0
    .array-data 1
        -0x80t
        0x40t
        0x20t
        0x10t
        0x8t
        0x4t
        0x2t
        0x1t
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        -0x2t
        -0x4t
        -0x8t
        -0x10t
        -0x20t
        -0x40t
        -0x80t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        -0x1t
        0x7ft
        0x3ft
        0x1ft
        0xft
        0x7t
        0x3t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x3t
        0x7t
        0xft
        0x1ft
        0x3ft
        0x7ft
        -0x1t
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x80t
        -0x40t
        -0x20t
        -0x10t
        -0x8t
        -0x4t
        -0x2t
        -0x1t
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x3t
        0x7t
        0xft
        0x1ft
        0x3ft
        0x7ft
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    :array_6
    .array-data 1
        -0x80t
        -0x40t
        -0x20t
        -0x10t
        -0x8t
        -0x4t
        -0x2t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    :array_7
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x2t
        -0x4t
        -0x8t
        -0x10t
        -0x20t
        -0x40t
        -0x80t
    .end array-data

    :array_8
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x7ft
        0x3ft
        0x1ft
        0xft
        0x7t
        0x3t
        0x1t
    .end array-data

    :array_9
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_a
    .array-data 1
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
    .end array-data

    :array_b
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data

    :array_c
    .array-data 1
        -0x10t
        -0x10t
        -0x10t
        -0x10t
        -0x10t
        -0x10t
        -0x10t
        -0x10t
        -0x10t
        -0x10t
        -0x10t
        -0x10t
        -0x10t
        -0x10t
        -0x10t
        -0x10t
    .end array-data

    :array_d
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_e
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x74t
        0x52t
        0x4et
        0x53t
        0x0t
        0x40t
        -0x1at
        -0x28t
        0x66t
    .end array-data

    nop

    :array_f
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x49t
        0x45t
        0x4et
        0x44t
        -0x52t
        0x42t
        0x60t
        -0x7et
    .end array-data

    :array_10
    .array-data 4
        0x0
        0xa
        0x64
        0x3e8
        0x2710
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final drawImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIZZ)V
    .locals 10

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    const/4 v0, 0x2

    :goto_0
    if-eqz p5, :cond_1

    const/4 v1, 0x1

    :goto_1
    or-int v6, v0, v1

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    const/16 v9, 0x14

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v7, p2

    move v8, p3

    invoke-virtual/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static final drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V
    .locals 0

    invoke-virtual/range {p0 .. p9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    return-void
.end method

.method public static final drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V
    .locals 10

    if-eqz p8, :cond_0

    const/16 p8, 0x2

    :goto_0
    if-eqz p9, :cond_1

    const/16 p9, 0x1

    :goto_1
    or-int v6, p8, p9

    const/16 v9, 0x14

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    return-void

    :cond_0
    const/16 p8, 0x0

    goto :goto_0

    :cond_1
    const/16 p9, 0x0

    goto :goto_1
.end method

.method public static getFloatString(II)Ljava/lang/String;
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v3, v1, p1

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/t4game/GUtil;->ZEROS:Ljava/lang/String;

    sub-int v1, p1, v1

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getTransFlag(ZZ)B
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    :cond_0
    if-eqz p1, :cond_1

    or-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    :cond_1
    return v0
.end method

.method public static loadFile(Ljava/lang/String;)[B
    .locals 5

    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    const-class v1, Lcom/t4game/GUtil;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method public static final paintFourCorner(Ljavax/microedition/lcdui/Graphics;IIIIIII)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0, p7}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int v0, p1, p3

    add-int v1, p2, p4

    invoke-virtual {p0, v0, p2, p1, v1}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int v0, p1, p3

    add-int v1, p2, p6

    sub-int/2addr v1, v4

    add-int v2, p2, p6

    sub-int/2addr v2, p4

    sub-int/2addr v2, v4

    invoke-virtual {p0, v0, v1, p1, v2}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int v0, p1, p5

    sub-int/2addr v0, p3

    sub-int/2addr v0, v4

    add-int v1, p1, p5

    sub-int/2addr v1, v4

    add-int v2, p2, p4

    invoke-virtual {p0, v0, p2, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int v0, p1, p5

    sub-int/2addr v0, p3

    sub-int/2addr v0, v4

    add-int v1, p2, p6

    sub-int/2addr v1, v4

    add-int v2, p1, p5

    sub-int/2addr v2, v4

    add-int v3, p2, p6

    sub-int/2addr v3, p4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int v0, p1, p3

    sub-int/2addr v0, v4

    add-int v1, p2, p4

    sub-int/2addr v1, v4

    invoke-virtual {p0, v0, p2, p1, v1}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int v0, p1, p5

    sub-int/2addr v0, p3

    add-int v1, p1, p5

    sub-int/2addr v1, v4

    add-int v2, p2, p4

    sub-int/2addr v2, v4

    invoke-virtual {p0, v0, p2, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int v0, p1, p3

    sub-int/2addr v0, v4

    add-int v1, p2, p6

    sub-int/2addr v1, v4

    add-int v2, p2, p6

    sub-int/2addr v2, p4

    invoke-virtual {p0, v0, v1, p1, v2}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int v0, p1, p5

    sub-int/2addr v0, p3

    add-int v1, p2, p6

    sub-int/2addr v1, v4

    add-int v2, p1, p5

    sub-int/2addr v2, v4

    add-int v3, p2, p6

    sub-int/2addr v3, p4

    invoke-virtual {p0, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    return-void
.end method

.method public static final random(I)I
    .locals 2

    sget-object v0, Lcom/t4game/GUtil;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/2addr v0, p0

    return v0
.end method

.method public static final random(II)I
    .locals 2

    if-lt p0, p1, :cond_0

    move v0, p0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/t4game/GUtil;->random:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    sub-int v1, p1, p0

    rem-int/2addr v0, v1

    add-int/2addr v0, p0

    goto :goto_0
.end method

.method public static final readBoolean(Ljava/io/InputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final readInt(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static final readInt([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static final readShort(Ljava/io/InputStream;)S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static final readShort([BI)S
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static final readUTF(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v0

    if-lez v0, :cond_0

    new-array v1, v0, [B

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "UTF-8"

    invoke-direct {v2, v1, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static final readUnsignedShort(Ljava/io/InputStream;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static final writeInt([BII)V
    .locals 2

    shr-int/lit8 v0, p2, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method

.method public static final writeShort([BII)V
    .locals 2

    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method
