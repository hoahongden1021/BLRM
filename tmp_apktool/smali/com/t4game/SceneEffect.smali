.class public Lcom/t4game/SceneEffect;
.super Ljava/lang/Object;


# static fields
.field static final EFF_TYPE_FLOWERS:B = 0x0t

.field static final finalTick:S = 0xfas


# instance fields
.field DePos:I

.field f:[I

.field f1:[I

.field flag:Z

.field private flowerXy:[B

.field img:Lcom/t4game/GImageData;

.field public loop:B

.field public loopTick:B

.field ran:Ljava/util/Random;

.field size:I

.field private start:[Z

.field tick:S

.field tick1:S

.field type:[B

.field type1:[B

.field private typeEffect:B

.field x:[I

.field x1:[I

.field y:[I

.field y1:[I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0xfa

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/t4game/SceneEffect;->ran:Ljava/util/Random;

    iput-byte v1, p0, Lcom/t4game/SceneEffect;->typeEffect:B

    iput-byte v1, p0, Lcom/t4game/SceneEffect;->loop:B

    iput-byte v1, p0, Lcom/t4game/SceneEffect;->loopTick:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/SceneEffect;->img:Lcom/t4game/GImageData;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/SceneEffect;->flag:Z

    iput-short v2, p0, Lcom/t4game/SceneEffect;->tick:S

    iput-short v2, p0, Lcom/t4game/SceneEffect;->tick1:S

    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/t4game/SceneEffect;->start:[Z

    const/16 v0, 0x2e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/t4game/SceneEffect;->flowerXy:[B

    iget-object v0, p0, Lcom/t4game/SceneEffect;->flowerXy:[B

    array-length v0, v0

    iput v0, p0, Lcom/t4game/SceneEffect;->DePos:I

    return-void

    nop

    :array_0
    .array-data 1
        -0x15t
        -0x13t
        -0x11t
        -0xft
        -0xdt
        -0xbt
        -0x9t
        -0x7t
        -0x5t
        -0x3t
        -0x1t
        0x0t
        0x1t
        0x3t
        0x5t
        0x7t
        0x9t
        0xbt
        0xdt
        0xft
        0x11t
        0x13t
        0x15t
        0x15t
        0x13t
        0x11t
        0xft
        0xdt
        0xbt
        0x9t
        0x7t
        0x5t
        0x3t
        0x1t
        0x0t
        -0x1t
        -0x3t
        -0x5t
        -0x7t
        -0x9t
        -0xbt
        -0xdt
        -0xft
        -0x11t
        -0x13t
        -0x15t
    .end array-data
.end method

.method private eff_Flowers(Ljavax/microedition/lcdui/Graphics;)V
    .locals 13

    const/16 v12, 0x7d

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/t4game/SceneEffect;->flag:Z

    if-eqz v0, :cond_8

    move v9, v2

    :goto_0
    iget v0, p0, Lcom/t4game/SceneEffect;->size:I

    if-ge v9, v0, :cond_6

    iget-object v0, p0, Lcom/t4game/SceneEffect;->start:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/SceneEffect;->type:[B

    aget-byte v0, v0, v9

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/t4game/SceneEffect;->img:Lcom/t4game/GImageData;

    iget-object v1, p0, Lcom/t4game/SceneEffect;->x:[I

    aget v1, v1, v9

    iget-object v3, p0, Lcom/t4game/SceneEffect;->flowerXy:[B

    iget-object v4, p0, Lcom/t4game/SceneEffect;->f:[I

    aget v4, v4, v9

    iget v5, p0, Lcom/t4game/SceneEffect;->DePos:I

    rem-int/2addr v4, v5

    aget-byte v3, v3, v4

    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/t4game/SceneEffect;->y:[I

    aget v4, v1, v9

    iget-object v1, p0, Lcom/t4game/SceneEffect;->type:[B

    aget-byte v5, v1, v9

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GImageData;->drawClip(Ljavax/microedition/lcdui/Graphics;IIIB)V

    :goto_1
    iget-object v0, p0, Lcom/t4game/SceneEffect;->y:[I

    aget v1, v0, v9

    add-int/lit8 v1, v1, 0x2

    aput v1, v0, v9

    iget-object v0, p0, Lcom/t4game/SceneEffect;->f:[I

    iget-object v1, p0, Lcom/t4game/SceneEffect;->f:[I

    aget v1, v1, v9

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/t4game/Util;->abs(I)I

    move-result v1

    int-to-short v1, v1

    aput v1, v0, v9

    :cond_0
    iget-object v0, p0, Lcom/t4game/SceneEffect;->start:[Z

    aget-boolean v0, v0, v10

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/SceneEffect;->type1:[B

    aget-byte v0, v0, v9

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/t4game/SceneEffect;->img:Lcom/t4game/GImageData;

    iget-object v1, p0, Lcom/t4game/SceneEffect;->x1:[I

    aget v1, v1, v9

    iget-object v3, p0, Lcom/t4game/SceneEffect;->flowerXy:[B

    iget-object v4, p0, Lcom/t4game/SceneEffect;->f1:[I

    aget v4, v4, v9

    iget v5, p0, Lcom/t4game/SceneEffect;->DePos:I

    rem-int/2addr v4, v5

    aget-byte v3, v3, v4

    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/t4game/SceneEffect;->y1:[I

    aget v4, v1, v9

    iget-object v1, p0, Lcom/t4game/SceneEffect;->type:[B

    aget-byte v5, v1, v9

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GImageData;->drawClip(Ljavax/microedition/lcdui/Graphics;IIIB)V

    :goto_2
    iget-object v0, p0, Lcom/t4game/SceneEffect;->y1:[I

    aget v1, v0, v9

    add-int/lit8 v1, v1, 0x2

    aput v1, v0, v9

    iget-object v0, p0, Lcom/t4game/SceneEffect;->f1:[I

    iget-object v1, p0, Lcom/t4game/SceneEffect;->f1:[I

    aget v1, v1, v9

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/t4game/Util;->abs(I)I

    move-result v1

    int-to-short v1, v1

    aput v1, v0, v9

    :cond_1
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_0

    :cond_2
    iget-short v0, p0, Lcom/t4game/SceneEffect;->tick:S

    rem-int/lit8 v0, v0, 0x4

    if-ge v0, v11, :cond_3

    iget-object v3, p0, Lcom/t4game/SceneEffect;->img:Lcom/t4game/GImageData;

    iget-object v0, p0, Lcom/t4game/SceneEffect;->x:[I

    aget v0, v0, v9

    iget-object v1, p0, Lcom/t4game/SceneEffect;->flowerXy:[B

    iget-object v4, p0, Lcom/t4game/SceneEffect;->f:[I

    aget v4, v4, v9

    iget v5, p0, Lcom/t4game/SceneEffect;->DePos:I

    rem-int/2addr v4, v5

    aget-byte v1, v1, v4

    add-int v6, v0, v1

    iget-object v0, p0, Lcom/t4game/SceneEffect;->y:[I

    aget v7, v0, v9

    iget-object v0, p0, Lcom/t4game/SceneEffect;->type:[B

    aget-byte v8, v0, v9

    move-object v4, p1

    move v5, v10

    invoke-virtual/range {v3 .. v8}, Lcom/t4game/GImageData;->drawClip(Ljavax/microedition/lcdui/Graphics;IIIB)V

    :goto_3
    iget-object v0, p0, Lcom/t4game/SceneEffect;->type:[B

    iget-object v1, p0, Lcom/t4game/SceneEffect;->type:[B

    aget-byte v1, v1, v9

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v0, v9

    goto/16 :goto_1

    :cond_3
    iget-object v3, p0, Lcom/t4game/SceneEffect;->img:Lcom/t4game/GImageData;

    iget-object v0, p0, Lcom/t4game/SceneEffect;->x:[I

    aget v0, v0, v9

    iget-object v1, p0, Lcom/t4game/SceneEffect;->flowerXy:[B

    iget-object v4, p0, Lcom/t4game/SceneEffect;->f:[I

    aget v4, v4, v9

    iget v5, p0, Lcom/t4game/SceneEffect;->DePos:I

    rem-int/2addr v4, v5

    aget-byte v1, v1, v4

    add-int v6, v0, v1

    iget-object v0, p0, Lcom/t4game/SceneEffect;->y:[I

    aget v7, v0, v9

    iget-object v0, p0, Lcom/t4game/SceneEffect;->type:[B

    aget-byte v8, v0, v9

    move-object v4, p1

    move v5, v11

    invoke-virtual/range {v3 .. v8}, Lcom/t4game/GImageData;->drawClip(Ljavax/microedition/lcdui/Graphics;IIIB)V

    goto :goto_3

    :cond_4
    iget-short v0, p0, Lcom/t4game/SceneEffect;->tick:S

    rem-int/lit8 v0, v0, 0x4

    if-ge v0, v11, :cond_5

    iget-object v3, p0, Lcom/t4game/SceneEffect;->img:Lcom/t4game/GImageData;

    iget-object v0, p0, Lcom/t4game/SceneEffect;->x1:[I

    aget v0, v0, v9

    iget-object v1, p0, Lcom/t4game/SceneEffect;->flowerXy:[B

    iget-object v4, p0, Lcom/t4game/SceneEffect;->f1:[I

    aget v4, v4, v9

    iget v5, p0, Lcom/t4game/SceneEffect;->DePos:I

    rem-int/2addr v4, v5

    aget-byte v1, v1, v4

    add-int v6, v0, v1

    iget-object v0, p0, Lcom/t4game/SceneEffect;->y1:[I

    aget v7, v0, v9

    iget-object v0, p0, Lcom/t4game/SceneEffect;->type:[B

    aget-byte v8, v0, v9

    move-object v4, p1

    move v5, v10

    invoke-virtual/range {v3 .. v8}, Lcom/t4game/GImageData;->drawClip(Ljavax/microedition/lcdui/Graphics;IIIB)V

    :goto_4
    iget-object v0, p0, Lcom/t4game/SceneEffect;->type1:[B

    iget-object v1, p0, Lcom/t4game/SceneEffect;->type1:[B

    aget-byte v1, v1, v9

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v0, v9

    goto/16 :goto_2

    :cond_5
    iget-object v3, p0, Lcom/t4game/SceneEffect;->img:Lcom/t4game/GImageData;

    iget-object v0, p0, Lcom/t4game/SceneEffect;->x1:[I

    aget v0, v0, v9

    iget-object v1, p0, Lcom/t4game/SceneEffect;->flowerXy:[B

    iget-object v4, p0, Lcom/t4game/SceneEffect;->f1:[I

    aget v4, v4, v9

    iget v5, p0, Lcom/t4game/SceneEffect;->DePos:I

    rem-int/2addr v4, v5

    aget-byte v1, v1, v4

    add-int v6, v0, v1

    iget-object v0, p0, Lcom/t4game/SceneEffect;->y1:[I

    aget v7, v0, v9

    iget-object v0, p0, Lcom/t4game/SceneEffect;->type:[B

    aget-byte v8, v0, v9

    move-object v4, p1

    move v5, v11

    invoke-virtual/range {v3 .. v8}, Lcom/t4game/GImageData;->drawClip(Ljavax/microedition/lcdui/Graphics;IIIB)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/t4game/SceneEffect;->start:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_7

    iget-short v0, p0, Lcom/t4game/SceneEffect;->tick:S

    sub-int/2addr v0, v10

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/SceneEffect;->tick:S

    iget-short v0, p0, Lcom/t4game/SceneEffect;->tick:S

    if-gtz v0, :cond_a

    iget-byte v0, p0, Lcom/t4game/SceneEffect;->loopTick:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SceneEffect;->loopTick:B

    iget-object v0, p0, Lcom/t4game/SceneEffect;->start:[Z

    aput-boolean v2, v0, v2

    :cond_7
    :goto_5
    iget-object v0, p0, Lcom/t4game/SceneEffect;->start:[Z

    aget-boolean v0, v0, v10

    if-eqz v0, :cond_8

    iget-short v0, p0, Lcom/t4game/SceneEffect;->tick1:S

    sub-int/2addr v0, v10

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/SceneEffect;->tick1:S

    iget-short v0, p0, Lcom/t4game/SceneEffect;->tick1:S

    if-gtz v0, :cond_b

    iget-byte v0, p0, Lcom/t4game/SceneEffect;->loopTick:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SceneEffect;->loopTick:B

    iget-object v0, p0, Lcom/t4game/SceneEffect;->start:[Z

    aput-boolean v2, v0, v10

    :cond_8
    :goto_6
    iget-byte v0, p0, Lcom/t4game/SceneEffect;->loopTick:B

    iget-byte v1, p0, Lcom/t4game/SceneEffect;->loop:B

    if-lt v0, v1, :cond_9

    iput-boolean v2, p0, Lcom/t4game/SceneEffect;->flag:Z

    iget-object v0, p0, Lcom/t4game/SceneEffect;->start:[Z

    iget-object v1, p0, Lcom/t4game/SceneEffect;->start:[Z

    aput-boolean v2, v1, v10

    aput-boolean v2, v0, v2

    :cond_9
    return-void

    :cond_a
    iget-short v0, p0, Lcom/t4game/SceneEffect;->tick:S

    if-ne v0, v12, :cond_7

    iget-byte v0, p0, Lcom/t4game/SceneEffect;->loopTick:B

    iget-byte v1, p0, Lcom/t4game/SceneEffect;->loop:B

    if-ge v0, v1, :cond_7

    invoke-direct {p0}, Lcom/t4game/SceneEffect;->ready1()V

    iget-byte v0, p0, Lcom/t4game/SceneEffect;->loopTick:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SceneEffect;->loopTick:B

    goto :goto_5

    :cond_b
    iget-short v0, p0, Lcom/t4game/SceneEffect;->tick1:S

    if-ne v0, v12, :cond_8

    iget-byte v0, p0, Lcom/t4game/SceneEffect;->loopTick:B

    iget-byte v1, p0, Lcom/t4game/SceneEffect;->loop:B

    if-ge v0, v1, :cond_8

    invoke-direct {p0}, Lcom/t4game/SceneEffect;->ready()V

    iget-byte v0, p0, Lcom/t4game/SceneEffect;->loopTick:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SceneEffect;->loopTick:B

    goto :goto_6
.end method

.method private ready()V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/t4game/SceneEffect;->start:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    const/16 v0, 0xfa

    iput-short v0, p0, Lcom/t4game/SceneEffect;->tick:S

    move v0, v2

    :goto_0
    iget v1, p0, Lcom/t4game/SceneEffect;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/SceneEffect;->x:[I

    iget-object v2, p0, Lcom/t4game/SceneEffect;->ran:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    sget v3, Lcom/t4game/Defaults;->CANVAS_WW:I

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x64

    aput v2, v1, v0

    iget-object v1, p0, Lcom/t4game/SceneEffect;->y:[I

    iget-object v2, p0, Lcom/t4game/SceneEffect;->ran:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    rem-int/lit16 v2, v2, 0x82

    const/16 v3, 0x5a

    sub-int/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/t4game/SceneEffect;->f:[I

    iget-object v2, p0, Lcom/t4game/SceneEffect;->ran:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    iget-short v3, p0, Lcom/t4game/SceneEffect;->tick:S

    rem-int/2addr v2, v3

    invoke-static {v2}, Lcom/t4game/Util;->abs(I)I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/t4game/SceneEffect;->type:[B

    iget-object v2, p0, Lcom/t4game/SceneEffect;->ran:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Lcom/t4game/Util;->abs(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ready1()V
    .locals 4

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/t4game/SceneEffect;->start:[Z

    aput-boolean v1, v0, v1

    const/16 v0, 0xfa

    iput-short v0, p0, Lcom/t4game/SceneEffect;->tick1:S

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/t4game/SceneEffect;->size:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/SceneEffect;->x1:[I

    iget-object v2, p0, Lcom/t4game/SceneEffect;->ran:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    sget v3, Lcom/t4game/Defaults;->CANVAS_WW:I

    rem-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x64

    aput v2, v1, v0

    iget-object v1, p0, Lcom/t4game/SceneEffect;->y1:[I

    iget-object v2, p0, Lcom/t4game/SceneEffect;->ran:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    rem-int/lit16 v2, v2, 0x82

    const/16 v3, 0x5a

    sub-int/2addr v2, v3

    aput v2, v1, v0

    iget-object v1, p0, Lcom/t4game/SceneEffect;->f1:[I

    iget-object v2, p0, Lcom/t4game/SceneEffect;->ran:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    iget-short v3, p0, Lcom/t4game/SceneEffect;->tick:S

    rem-int/2addr v2, v3

    invoke-static {v2}, Lcom/t4game/Util;->abs(I)I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/t4game/SceneEffect;->type1:[B

    iget-object v2, p0, Lcom/t4game/SceneEffect;->ran:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    invoke-static {v2}, Lcom/t4game/Util;->abs(I)I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public InitFlower(BI)V
    .locals 2

    iget-byte v0, p0, Lcom/t4game/SceneEffect;->typeEffect:B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/SceneEffect;->img:Lcom/t4game/GImageData;

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GImageData;

    iput-object v0, p0, Lcom/t4game/SceneEffect;->img:Lcom/t4game/GImageData;

    :cond_0
    return-void
.end method

.method public effectInWorld(Ljavax/microedition/lcdui/Graphics;)V
    .locals 1

    iget-byte v0, p0, Lcom/t4game/SceneEffect;->typeEffect:B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/SceneEffect;->img:Lcom/t4game/GImageData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/SceneEffect;->img:Lcom/t4game/GImageData;

    invoke-virtual {v0}, Lcom/t4game/GImageData;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/t4game/SceneEffect;->eff_Flowers(Ljavax/microedition/lcdui/Graphics;)V

    :cond_0
    return-void
.end method

.method public raining(Ljavax/microedition/lcdui/Graphics;)V
    .locals 5

    const/4 v4, 0x0

    const v0, 0xffffff

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    move v0, v4

    :goto_0
    sget v1, Lcom/t4game/Defaults;->CANVAS_W:I

    if-ge v0, v1, :cond_1

    move v1, v4

    :goto_1
    const/16 v2, 0xf

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/t4game/SceneEffect;->ran:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    mul-int/lit8 v3, v1, 0x14

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/t4game/SceneEffect;->ran:Ljava/util/Random;

    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v3

    rem-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v2

    invoke-virtual {p1, v0, v2, v0, v3}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/t4game/SceneEffect;->ran:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_1
    return-void
.end method

.method public set(IIZ)V
    .locals 1

    iput p1, p0, Lcom/t4game/SceneEffect;->size:I

    div-int/lit8 v0, p2, 0x7d

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/SceneEffect;->loop:B

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/SceneEffect;->loopTick:B

    iget v0, p0, Lcom/t4game/SceneEffect;->size:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/t4game/SceneEffect;->x:[I

    iget v0, p0, Lcom/t4game/SceneEffect;->size:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/t4game/SceneEffect;->y:[I

    iget v0, p0, Lcom/t4game/SceneEffect;->size:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/t4game/SceneEffect;->f:[I

    iget v0, p0, Lcom/t4game/SceneEffect;->size:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/SceneEffect;->type:[B

    iget-byte v0, p0, Lcom/t4game/SceneEffect;->loop:B

    if-lez v0, :cond_0

    iget v0, p0, Lcom/t4game/SceneEffect;->size:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/t4game/SceneEffect;->x1:[I

    iget v0, p0, Lcom/t4game/SceneEffect;->size:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/t4game/SceneEffect;->y1:[I

    iget v0, p0, Lcom/t4game/SceneEffect;->size:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/t4game/SceneEffect;->f1:[I

    iget v0, p0, Lcom/t4game/SceneEffect;->size:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/SceneEffect;->type1:[B

    :cond_0
    invoke-direct {p0}, Lcom/t4game/SceneEffect;->ready()V

    iput-boolean p3, p0, Lcom/t4game/SceneEffect;->flag:Z

    return-void
.end method

.method public setTypeEffect(B)V
    .locals 0

    iput-byte p1, p0, Lcom/t4game/SceneEffect;->typeEffect:B

    return-void
.end method
