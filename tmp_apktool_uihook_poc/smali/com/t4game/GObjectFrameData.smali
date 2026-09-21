.class public Lcom/t4game/GObjectFrameData;
.super Ljava/lang/Object;


# static fields
.field private static mask_mirror:[B


# instance fields
.field public clipDatas:[B

.field public connectorPointX:B

.field public connectorPointY:B

.field public grid_h:I

.field public grid_ox:I

.field public grid_oy:I

.field public grid_w:I

.field public objectData:Lcom/t4game/GObjectData;

.field public tileDatas:[[[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/t4game/GObjectFrameData;->mask_mirror:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x10t
        0x20t
        0x40t
        -0x80t
    .end array-data
.end method

.method public constructor <init>(Lcom/t4game/GObjectData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/t4game/GObjectFrameData;->objectData:Lcom/t4game/GObjectData;

    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;IIZZ[Lcom/t4game/GImageData;IIIIB)V
    .locals 17

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectFrameData;->objectData:Lcom/t4game/GObjectData;

    move-object v2, v0

    iget-byte v2, v2, Lcom/t4game/GObjectData;->imageType:B

    if-nez v2, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectFrameData;->objectData:Lcom/t4game/GObjectData;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GObjectData;->imageDatas:[Lcom/t4game/GImageData;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/t4game/GImageData;->isReady()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-byte v10, v2, Lcom/t4game/GImageData;->tileW:B

    iget-byte v11, v2, Lcom/t4game/GImageData;->tileH:B

    const/4 v3, 0x0

    move v12, v3

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GObjectFrameData;->grid_h:I

    move v3, v0

    if-ge v12, v3, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GObjectFrameData;->grid_oy:I

    move v3, v0

    add-int/2addr v3, v12

    mul-int/2addr v3, v11

    add-int v7, p3, v3

    if-lez p10, :cond_3

    sub-int v3, p8, v11

    if-le v7, v3, :cond_2

    move v0, v7

    move/from16 v1, p10

    if-lt v0, v1, :cond_3

    :cond_2
    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    move v13, v3

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GObjectFrameData;->grid_w:I

    move v3, v0

    if-ge v13, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectFrameData;->tileDatas:[[[B

    move-object v3, v0

    aget-object v3, v3, v12

    aget-object v14, v3, v13

    if-nez v14, :cond_5

    :cond_4
    add-int/lit8 v3, v13, 0x1

    move v13, v3

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GObjectFrameData;->grid_ox:I

    move v3, v0

    add-int/2addr v3, v13

    mul-int/2addr v3, v10

    if-eqz p4, :cond_7

    sub-int v3, p2, v3

    move v6, v3

    :goto_2
    if-lez p9, :cond_6

    sub-int v3, p7, v10

    if-le v6, v3, :cond_4

    move v0, v6

    move/from16 v1, p9

    if-ge v0, v1, :cond_4

    :cond_6
    const/4 v3, 0x0

    aget-byte v15, v14, v3

    const/4 v3, 0x1

    move/from16 v16, v3

    :goto_3
    array-length v3, v14

    move/from16 v0, v16

    move v1, v3

    if-ge v0, v1, :cond_4

    sget-object v3, Lcom/t4game/GObjectFrameData;->mask_mirror:[B

    aget-byte v3, v3, v16

    and-int/2addr v3, v15

    if-lez v3, :cond_8

    const/4 v3, 0x1

    :goto_4
    if-eqz p4, :cond_a

    if-nez v3, :cond_9

    const/4 v3, 0x1

    move v8, v3

    :goto_5
    aget-byte v3, v14, v16

    and-int/lit8 v4, v3, 0xf

    aget-byte v3, v14, v16

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v5, v3, 0x4

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/t4game/GImageData;->drawTile(Ljavax/microedition/lcdui/Graphics;IIIIZZ)V

    add-int/lit8 v3, v16, 0x1

    move/from16 v16, v3

    goto :goto_3

    :cond_7
    add-int v3, v3, p2

    move v6, v3

    goto :goto_2

    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    move v8, v3

    goto :goto_5

    :cond_a
    move v8, v3

    goto :goto_5

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectFrameData;->clipDatas:[B

    move-object v2, v0

    array-length v2, v2

    div-int/lit8 v10, v2, 0x5

    const/4 v2, 0x0

    move v11, v2

    :goto_6
    if-ge v11, v10, :cond_0

    mul-int/lit8 v3, v11, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectFrameData;->clipDatas:[B

    move-object v5, v0

    aget-byte v2, v5, v3

    and-int/lit8 v2, v2, 0x3f

    const/4 v4, 0x0

    if-eqz p6, :cond_c

    move-object/from16 v0, p6

    array-length v0, v0

    move v6, v0

    if-ge v2, v6, :cond_c

    aget-object v4, p6, v2

    :cond_c
    if-nez v4, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectFrameData;->objectData:Lcom/t4game/GObjectData;

    move-object v6, v0

    iget-object v6, v6, Lcom/t4game/GObjectData;->imageDatas:[Lcom/t4game/GImageData;

    array-length v6, v6

    if-ge v2, v6, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectFrameData;->objectData:Lcom/t4game/GObjectData;

    move-object v4, v0

    iget-object v4, v4, Lcom/t4game/GObjectData;->imageDatas:[Lcom/t4game/GImageData;

    aget-object v2, v4, v2

    :goto_7
    if-nez v2, :cond_e

    :cond_d
    :goto_8
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_6

    :cond_e
    invoke-virtual {v2}, Lcom/t4game/GImageData;->isReady()Z

    move-result v4

    if-eqz v4, :cond_d

    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    if-ltz v4, :cond_d

    iget-short v6, v2, Lcom/t4game/GImageData;->xnum:S

    if-ge v4, v6, :cond_d

    if-eqz p4, :cond_f

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, v5, v6

    neg-int v6, v6

    :goto_9
    if-eqz p5, :cond_10

    add-int/lit8 v7, v3, 0x3

    aget-byte v7, v5, v7

    neg-int v7, v7

    move v9, v7

    :goto_a
    add-int/lit8 v3, v3, 0x4

    aget-byte v3, v5, v3

    and-int/lit8 v5, v3, 0x2

    if-lez v5, :cond_11

    const/4 v5, 0x1

    :goto_b
    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_12

    const/4 v3, 0x1

    :goto_c
    if-eqz p4, :cond_14

    if-nez v5, :cond_13

    const/4 v5, 0x1

    move v7, v5

    :goto_d
    if-eqz p5, :cond_16

    if-nez v3, :cond_15

    const/4 v3, 0x1

    move v8, v3

    :goto_e
    add-int v5, p2, v6

    add-int v6, p3, v9

    move-object/from16 v3, p1

    move/from16 v9, p11

    invoke-virtual/range {v2 .. v9}, Lcom/t4game/GImageData;->drawClip(Ljavax/microedition/lcdui/Graphics;IIIZZB)V

    goto :goto_8

    :cond_f
    add-int/lit8 v6, v3, 0x2

    aget-byte v6, v5, v6

    goto :goto_9

    :cond_10
    add-int/lit8 v7, v3, 0x3

    aget-byte v7, v5, v7

    move v9, v7

    goto :goto_a

    :cond_11
    const/4 v5, 0x0

    goto :goto_b

    :cond_12
    const/4 v3, 0x0

    goto :goto_c

    :cond_13
    const/4 v5, 0x0

    move v7, v5

    goto :goto_d

    :cond_14
    move v7, v5

    goto :goto_d

    :cond_15
    const/4 v3, 0x0

    move v8, v3

    goto :goto_e

    :cond_16
    move v8, v3

    goto :goto_e

    :cond_17
    move-object v2, v4

    goto :goto_7
.end method

.method public final draw(Ljavax/microedition/lcdui/Graphics;IIZZ[Lcom/t4game/GImageData;Lcom/t4game/GMap;B)V
    .locals 13

    if-nez p7, :cond_0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v12, p8

    invoke-virtual/range {v1 .. v12}, Lcom/t4game/GObjectFrameData;->draw(Ljavax/microedition/lcdui/Graphics;IIZZ[Lcom/t4game/GImageData;IIIIB)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p7

    iget v0, v0, Lcom/t4game/GMap;->WX:I

    move v8, v0

    move-object/from16 v0, p7

    iget v0, v0, Lcom/t4game/GMap;->WY:I

    move v9, v0

    move-object/from16 v0, p7

    iget v0, v0, Lcom/t4game/GMap;->WX2:I

    move v10, v0

    move-object/from16 v0, p7

    iget v0, v0, Lcom/t4game/GMap;->WY2:I

    move v11, v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v12, p8

    invoke-virtual/range {v1 .. v12}, Lcom/t4game/GObjectFrameData;->draw(Ljavax/microedition/lcdui/Graphics;IIZZ[Lcom/t4game/GImageData;IIIIB)V

    goto :goto_0
.end method

.method public drawClipLayer(Ljavax/microedition/lcdui/Graphics;IIZZ[Lcom/t4game/GImageData;IB)V
    .locals 12

    iget-object v2, p0, Lcom/t4game/GObjectFrameData;->clipDatas:[B

    array-length v2, v2

    div-int/lit8 v10, v2, 0x5

    const/4 v2, 0x0

    move v11, v2

    :goto_0
    if-ge v11, v10, :cond_b

    mul-int/lit8 v3, v11, 0x5

    iget-object v5, p0, Lcom/t4game/GObjectFrameData;->clipDatas:[B

    add-int/lit8 v2, v3, 0x4

    aget-byte v6, v5, v2

    shr-int/lit8 v2, v6, 0x4

    and-int/lit8 v2, v2, 0xf

    move v0, v2

    move/from16 v1, p7

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_0

    :cond_1
    aget-byte v2, v5, v3

    and-int/lit8 v2, v2, 0x3f

    const/4 v4, 0x0

    if-eqz p6, :cond_2

    move-object/from16 v0, p6

    array-length v0, v0

    move v7, v0

    if-ge v2, v7, :cond_2

    aget-object v4, p6, v2

    :cond_2
    if-nez v4, :cond_c

    iget-object v7, p0, Lcom/t4game/GObjectFrameData;->objectData:Lcom/t4game/GObjectData;

    iget-object v7, v7, Lcom/t4game/GObjectData;->imageDatas:[Lcom/t4game/GImageData;

    array-length v7, v7

    if-ge v2, v7, :cond_c

    iget-object v4, p0, Lcom/t4game/GObjectFrameData;->objectData:Lcom/t4game/GObjectData;

    iget-object v4, v4, Lcom/t4game/GObjectData;->imageDatas:[Lcom/t4game/GImageData;

    aget-object v2, v4, v2

    :goto_2
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/t4game/GImageData;->isReady()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v4, v3, 0x1

    aget-byte v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    if-ltz v4, :cond_0

    iget-short v7, v2, Lcom/t4game/GImageData;->xnum:S

    if-ge v4, v7, :cond_0

    if-eqz p4, :cond_3

    add-int/lit8 v7, v3, 0x2

    aget-byte v7, v5, v7

    neg-int v7, v7

    move v9, v7

    :goto_3
    if-eqz p5, :cond_4

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, v5, v3

    neg-int v3, v3

    :goto_4
    and-int/lit8 v5, v6, 0x2

    if-lez v5, :cond_5

    const/4 v5, 0x1

    :goto_5
    and-int/lit8 v6, v6, 0x1

    if-lez v6, :cond_6

    const/4 v6, 0x1

    :goto_6
    if-eqz p4, :cond_8

    if-nez v5, :cond_7

    const/4 v5, 0x1

    move v7, v5

    :goto_7
    if-eqz p5, :cond_a

    if-nez v6, :cond_9

    const/4 v5, 0x1

    move v8, v5

    :goto_8
    add-int v5, p2, v9

    add-int v6, p3, v3

    move-object v3, p1

    move/from16 v9, p8

    invoke-virtual/range {v2 .. v9}, Lcom/t4game/GImageData;->drawClip(Ljavax/microedition/lcdui/Graphics;IIIZZB)V

    goto :goto_1

    :cond_3
    add-int/lit8 v7, v3, 0x2

    aget-byte v7, v5, v7

    move v9, v7

    goto :goto_3

    :cond_4
    add-int/lit8 v3, v3, 0x3

    aget-byte v3, v5, v3

    goto :goto_4

    :cond_5
    const/4 v5, 0x0

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    goto :goto_6

    :cond_7
    const/4 v5, 0x0

    move v7, v5

    goto :goto_7

    :cond_8
    move v7, v5

    goto :goto_7

    :cond_9
    const/4 v5, 0x0

    move v8, v5

    goto :goto_8

    :cond_a
    move v8, v6

    goto :goto_8

    :cond_b
    return-void

    :cond_c
    move-object v2, v4

    goto :goto_2
.end method

.method public final init(Ljava/io/InputStream;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/t4game/GObjectFrameData;->objectData:Lcom/t4game/GObjectData;

    iget-byte v0, v0, Lcom/t4game/GObjectData;->imageType:B

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/t4game/GObjectFrameData;->grid_w:I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lcom/t4game/GObjectFrameData;->grid_h:I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput v0, p0, Lcom/t4game/GObjectFrameData;->grid_ox:I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput v0, p0, Lcom/t4game/GObjectFrameData;->grid_oy:I

    iget v0, p0, Lcom/t4game/GObjectFrameData;->grid_h:I

    iget v1, p0, Lcom/t4game/GObjectFrameData;->grid_w:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, [B

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[B

    iput-object v0, p0, Lcom/t4game/GObjectFrameData;->tileDatas:[[[B

    move v0, v6

    :goto_0
    iget v1, p0, Lcom/t4game/GObjectFrameData;->grid_h:I

    if-ge v0, v1, :cond_5

    move v1, v6

    :goto_1
    iget v2, p0, Lcom/t4game/GObjectFrameData;->grid_w:I

    if-ge v1, v2, :cond_2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    if-lez v2, :cond_1

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [B

    move v4, v6

    :goto_2
    if-gt v4, v2, :cond_0

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/t4game/GObjectFrameData;->tileDatas:[[[B

    aget-object v2, v2, v0

    aput-object v3, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    mul-int/lit8 v1, v0, 0x5

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/t4game/GObjectFrameData;->clipDatas:[B

    move v1, v6

    :goto_3
    if-ge v1, v0, :cond_5

    mul-int/lit8 v2, v1, 0x5

    iget-object v3, p0, Lcom/t4game/GObjectFrameData;->clipDatas:[B

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    iget-object v3, p0, Lcom/t4game/GObjectFrameData;->clipDatas:[B

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    iget-object v3, p0, Lcom/t4game/GObjectFrameData;->clipDatas:[B

    add-int/lit8 v4, v2, 0x2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    iget-object v3, p0, Lcom/t4game/GObjectFrameData;->clipDatas:[B

    add-int/lit8 v4, v2, 0x3

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    iget-object v3, p0, Lcom/t4game/GObjectFrameData;->clipDatas:[B

    add-int/lit8 v4, v2, 0x4

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    iget-object v3, p0, Lcom/t4game/GObjectFrameData;->clipDatas:[B

    aget-byte v3, v3, v2

    shr-int/lit8 v3, v3, 0x6

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v7, :cond_4

    iget-object v3, p0, Lcom/t4game/GObjectFrameData;->clipDatas:[B

    add-int/lit8 v4, v2, 0x2

    aget-byte v3, v3, v4

    iput-byte v3, p0, Lcom/t4game/GObjectFrameData;->connectorPointX:B

    iget-object v3, p0, Lcom/t4game/GObjectFrameData;->clipDatas:[B

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, v3, v2

    iput-byte v2, p0, Lcom/t4game/GObjectFrameData;->connectorPointY:B

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return v7
.end method

.method public release()V
    .locals 3

    const/4 v2, 0x0

    move-object v0, v2

    check-cast v0, [[[B

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/GObjectFrameData;->tileDatas:[[[B

    iput-object v2, p0, Lcom/t4game/GObjectFrameData;->clipDatas:[B

    return-void
.end method
