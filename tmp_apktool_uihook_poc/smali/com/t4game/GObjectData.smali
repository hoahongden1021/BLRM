.class public Lcom/t4game/GObjectData;
.super Lcom/t4game/GBaseData;


# static fields
.field private static ACTIONSTATE_DATA_LENGTH:I = 0x0

.field public static STATE_TYPE_NUM:I = 0x0

.field public static final TYPE_COMMON:I = 0x0

.field public static final TYPE_SPECIALEFFECT:I = 0x2

.field public static final TYPE_SPRITE:I = 0x1


# instance fields
.field private actionAnimList:[B

.field public animDataOffsets:[S

.field public animDatas:[B

.field public boundH:S

.field public boundW:S

.field public boundX:S

.field public boundY:S

.field private clipH:I

.field private clipW:I

.field private clipX:I

.field private clipY:I

.field public imageDatas:[Lcom/t4game/GImageData;

.field public imageType:B

.field public objectFrameDataOffsets:[S

.field public objectFrameDatas:[B

.field public objectType:B

.field public specialEffectMap:[Lcom/t4game/GSEData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    sput v0, Lcom/t4game/GObjectData;->STATE_TYPE_NUM:I

    sget-byte v0, Lcom/t4game/GSprite;->DIR_NUM:B

    mul-int/lit8 v0, v0, 0x14

    sput v0, Lcom/t4game/GObjectData;->ACTIONSTATE_DATA_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/t4game/GBaseData;-><init>()V

    iput-byte v0, p0, Lcom/t4game/GObjectData;->imageType:B

    iput-byte v0, p0, Lcom/t4game/GObjectData;->objectType:B

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    iput-byte v0, p0, Lcom/t4game/GObjectData;->type:B

    const/16 v0, 0x8

    iput-byte v0, p0, Lcom/t4game/GObjectData;->poolId:B

    return-void
.end method


# virtual methods
.method public final drawActionAnimFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIZZLcom/t4game/GIRenderManager;B)V
    .locals 10

    invoke-virtual {p0, p2, p3, p4}, Lcom/t4game/GObjectData;->getActionAnimDataIndex(III)B

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move-object/from16 v8, p10

    move/from16 v9, p11

    invoke-virtual/range {v0 .. v9}, Lcom/t4game/GObjectData;->drawAnimFrame(Ljavax/microedition/lcdui/Graphics;IIIIZZLcom/t4game/GIRenderManager;B)V

    return-void
.end method

.method public drawAnimFrame(Ljavax/microedition/lcdui/Graphics;IIIIZZLcom/t4game/GIRenderManager;B)V
    .locals 9

    iget-object v0, p0, Lcom/t4game/GObjectData;->animDataOffsets:[S

    aget-short v0, v0, p2

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    if-gez p3, :cond_8

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_7

    rem-int v0, v1, v0

    :goto_1
    shl-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v1, v1, v2

    and-int/lit8 v2, v1, 0x2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_2
    and-int/lit8 v3, v1, 0x1

    if-lez v3, :cond_1

    const/4 v3, 0x1

    :goto_3
    if-eqz p6, :cond_3

    if-nez v2, :cond_2

    const/4 v2, 0x1

    move v5, v2

    :goto_4
    if-eqz p7, :cond_5

    if-nez v3, :cond_4

    const/4 v2, 0x1

    move v6, v2

    :goto_5
    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v2, v0, 0x2

    aget-byte v1, v1, v2

    add-int/2addr v1, p4

    iget-object v2, p0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v3, v0, 0x3

    aget-byte v2, v2, v3

    add-int/2addr v2, p5

    move v4, v2

    move v3, v1

    :goto_6
    iget-object v1, p0, Lcom/t4game/GObjectData;->animDatas:[B

    aget-byte v0, v1, v0

    and-int/lit16 v2, v0, 0xff

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/t4game/GObjectData;->drawObjectFrame(Ljavax/microedition/lcdui/Graphics;IIIZZLcom/t4game/GIRenderManager;B)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    move v5, v2

    goto :goto_4

    :cond_3
    move v5, v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    move v6, v2

    goto :goto_5

    :cond_5
    move v6, v3

    goto :goto_5

    :cond_6
    move v4, p5

    move v3, p4

    goto :goto_6

    :cond_7
    move v0, v1

    goto :goto_1

    :cond_8
    move v1, p3

    goto :goto_0
.end method

.method public drawClipLayer(Ljavax/microedition/lcdui/Graphics;IIIZZLcom/t4game/GIRenderManager;IB)V
    .locals 16

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0xff

    move v2, v0

    const/4 v3, 0x0

    if-eqz p7, :cond_11

    invoke-interface/range {p7 .. p7}, Lcom/t4game/GIRenderManager;->getImageList()[Lcom/t4game/GImageData;

    move-result-object v3

    move-object v12, v3

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->objectFrameDataOffsets:[S

    move-object v3, v0

    aget-short v2, v3, v2

    add-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    move-object v3, v0

    add-int/lit8 v4, v2, 0x1

    aget-byte v13, v3, v2

    const/4 v2, 0x0

    move v14, v2

    move v2, v4

    :goto_1
    if-ge v14, v13, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    move-object v3, v0

    add-int/lit8 v4, v2, 0x4

    aget-byte v3, v3, v4

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    move v0, v3

    move/from16 v1, p8

    if-eq v0, v1, :cond_0

    add-int/lit8 v2, v2, 0x5

    :goto_2
    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto :goto_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    move-object v3, v0

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, v3, v2

    and-int/lit8 v5, v2, 0x3f

    const/4 v2, 0x0

    if-eqz v12, :cond_1

    array-length v3, v12

    if-ge v5, v3, :cond_1

    aget-object v2, v12, v5

    :cond_1
    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->imageDatas:[Lcom/t4game/GImageData;

    move-object v3, v0

    array-length v3, v3

    if-ge v5, v3, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->imageDatas:[Lcom/t4game/GImageData;

    move-object v2, v0

    aget-object v2, v2, v5

    move-object v4, v2

    :goto_3
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/t4game/GImageData;->isReady()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    add-int/lit8 v2, v6, 0x4

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    move-object v2, v0

    add-int/lit8 v3, v6, 0x1

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    int-to-short v6, v2

    if-ltz v6, :cond_4

    iget-short v2, v4, Lcom/t4game/GImageData;->xnum:S

    if-lt v6, v2, :cond_5

    :cond_4
    add-int/lit8 v2, v3, 0x3

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    move-object v2, v0

    add-int/lit8 v7, v3, 0x1

    aget-byte v2, v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    move-object v3, v0

    add-int/lit8 v8, v7, 0x1

    aget-byte v3, v3, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    move-object v7, v0

    add-int/lit8 v15, v8, 0x1

    aget-byte v7, v7, v8

    if-eqz p5, :cond_8

    neg-int v2, v2

    move v9, v2

    :goto_4
    if-eqz p6, :cond_9

    neg-int v2, v3

    move v10, v2

    :goto_5
    and-int/lit8 v2, v7, 0x2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    :goto_6
    and-int/lit8 v3, v7, 0x1

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    :goto_7
    if-eqz p5, :cond_6

    if-nez v2, :cond_c

    const/4 v2, 0x1

    :cond_6
    :goto_8
    if-eqz p6, :cond_7

    if-nez v3, :cond_d

    const/4 v3, 0x1

    :cond_7
    :goto_9
    if-eqz p7, :cond_e

    add-int v7, p3, v9

    add-int v8, p4, v10

    invoke-static {v2, v3}, Lcom/t4game/GUtil;->getTransFlag(ZZ)B

    move-result v11

    move-object/from16 v2, p7

    move-object/from16 v3, p1

    invoke-interface/range {v2 .. v11}, Lcom/t4game/GIRenderManager;->renderImageClip(Ljavax/microedition/lcdui/Graphics;Lcom/t4game/GImageData;IIIIIIB)V

    move v2, v15

    goto/16 :goto_2

    :cond_8
    move v9, v2

    goto :goto_4

    :cond_9
    move v10, v3

    goto :goto_5

    :cond_a
    const/4 v2, 0x0

    goto :goto_6

    :cond_b
    const/4 v3, 0x0

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    goto :goto_8

    :cond_d
    const/4 v3, 0x0

    goto :goto_9

    :cond_e
    add-int v7, p3, v9

    add-int v8, p4, v10

    move-object/from16 v5, p1

    move v9, v2

    move v10, v3

    move/from16 v11, p9

    invoke-virtual/range {v4 .. v11}, Lcom/t4game/GImageData;->drawClip(Ljavax/microedition/lcdui/Graphics;IIIZZB)V

    move v2, v15

    goto/16 :goto_2

    :cond_f
    return-void

    :cond_10
    move-object v4, v2

    goto/16 :goto_3

    :cond_11
    move-object v12, v3

    goto/16 :goto_0
.end method

.method public drawObjectFrame(Ljavax/microedition/lcdui/Graphics;IIIZZLcom/t4game/GIRenderManager;B)V
    .locals 22

    move/from16 v0, p2

    and-int/lit16 v0, v0, 0xff

    move v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->objectFrameDataOffsets:[S

    move-object v3, v0

    aget-short v3, v3, v2

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GObjectData;->imageType:B

    move v2, v0

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->imageDatas:[Lcom/t4game/GImageData;

    move-object v2, v0

    const/4 v4, 0x0

    aget-object v2, v2, v4

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/t4game/GImageData;->isReady()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    move-object v4, v0

    add-int/lit8 v5, v3, 0x1

    aget-byte v10, v4, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    move-object v3, v0

    add-int/lit8 v4, v5, 0x1

    aget-byte v11, v3, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    move-object v3, v0

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    move-object v4, v0

    add-int/lit8 v6, v5, 0x1

    aget-byte v4, v4, v5

    iget-byte v12, v2, Lcom/t4game/GImageData;->tileW:B

    iget-byte v13, v2, Lcom/t4game/GImageData;->tileH:B

    mul-int/lit8 v14, v10, 0x3

    mul-int/2addr v4, v13

    add-int v4, v4, p4

    mul-int v15, v3, v12

    const/4 v3, 0x0

    move v7, v4

    move/from16 v16, v3

    move v3, v6

    :goto_0
    move/from16 v0, v16

    move v1, v11

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GObjectData;->clipH:I

    move v4, v0

    if-lez v4, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GObjectData;->clipY:I

    move v4, v0

    sub-int/2addr v4, v13

    if-le v7, v4, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GObjectData;->clipH:I

    move v4, v0

    if-lt v7, v4, :cond_3

    :cond_2
    add-int v4, v7, v13

    add-int/2addr v3, v14

    :goto_1
    add-int/lit8 v5, v16, 0x1

    move v7, v4

    move/from16 v16, v5

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    move/from16 v17, v15

    move/from16 v18, v4

    :goto_2
    move/from16 v0, v18

    move v1, v10

    if-ge v0, v1, :cond_f

    if-eqz p5, :cond_5

    sub-int v4, p3, v17

    move v6, v4

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GObjectData;->clipW:I

    move v4, v0

    if-lez v4, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GObjectData;->clipX:I

    move v4, v0

    sub-int/2addr v4, v12

    if-le v6, v4, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GObjectData;->clipW:I

    move v4, v0

    if-lt v6, v4, :cond_6

    :cond_4
    add-int v4, v17, v12

    add-int/lit8 v3, v3, 0x3

    :goto_4
    add-int/lit8 v5, v18, 0x1

    move/from16 v17, v4

    move/from16 v18, v5

    goto :goto_2

    :cond_5
    add-int v4, p3, v17

    move v6, v4

    goto :goto_3

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    move-object v4, v0

    add-int/lit8 v5, v3, 0x1

    aget-byte v19, v4, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    move-object v3, v0

    add-int/lit8 v4, v5, 0x1

    aget-byte v3, v3, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    move-object v5, v0

    add-int/lit8 v20, v4, 0x1

    aget-byte v21, v5, v4

    and-int/lit8 v4, v19, 0x1

    if-eqz v4, :cond_7

    and-int/lit8 v4, v19, 0x10

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    :goto_5
    if-eqz p5, :cond_b

    if-nez v4, :cond_a

    const/4 v4, 0x1

    move v8, v4

    :goto_6
    and-int/lit8 v4, v3, 0xf

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v5, v3, 0x4

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/t4game/GImageData;->drawTile(Ljavax/microedition/lcdui/Graphics;IIIIZZ)V

    :cond_7
    and-int/lit8 v3, v19, 0x2

    if-eqz v3, :cond_8

    and-int/lit8 v3, v19, 0x20

    if-eqz v3, :cond_c

    const/4 v3, 0x1

    :goto_7
    if-eqz p5, :cond_e

    if-nez v3, :cond_d

    const/4 v3, 0x1

    move v8, v3

    :goto_8
    and-int/lit8 v4, v21, 0xf

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xf0

    move v3, v0

    shr-int/lit8 v5, v3, 0x4

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/t4game/GImageData;->drawTile(Ljavax/microedition/lcdui/Graphics;IIIIZZ)V

    :cond_8
    add-int v3, v17, v12

    move v4, v3

    move/from16 v3, v20

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    move v8, v4

    goto :goto_6

    :cond_b
    move v8, v4

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    move v8, v3

    goto :goto_8

    :cond_e
    move v8, v3

    goto :goto_8

    :cond_f
    add-int v4, v7, v13

    goto/16 :goto_1

    :cond_10
    const/4 v2, 0x0

    if-eqz p7, :cond_20

    invoke-interface/range {p7 .. p7}, Lcom/t4game/GIRenderManager;->getImageList()[Lcom/t4game/GImageData;

    move-result-object v2

    move-object v12, v2

    :goto_9
    add-int/lit8 v2, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    move-object v3, v0

    add-int/lit8 v4, v2, 0x1

    aget-byte v13, v3, v2

    const/4 v2, 0x0

    move v14, v2

    move v2, v4

    :goto_a
    if-ge v14, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    move-object v3, v0

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, v3, v2

    and-int/lit8 v5, v2, 0x3f

    const/4 v2, 0x0

    if-eqz v12, :cond_11

    array-length v3, v12

    if-ge v5, v3, :cond_11

    aget-object v2, v12, v5

    :cond_11
    if-nez v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->imageDatas:[Lcom/t4game/GImageData;

    move-object v3, v0

    array-length v3, v3

    if-ge v5, v3, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->imageDatas:[Lcom/t4game/GImageData;

    move-object v2, v0

    aget-object v2, v2, v5

    move-object v4, v2

    :goto_b
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lcom/t4game/GImageData;->isReady()Z

    move-result v2

    if-nez v2, :cond_13

    :cond_12
    add-int/lit8 v2, v6, 0x4

    :goto_c
    add-int/lit8 v3, v14, 0x1

    move v14, v3

    goto :goto_a

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    move-object v2, v0

    add-int/lit8 v3, v6, 0x1

    aget-byte v2, v2, v6

    and-int/lit16 v2, v2, 0xff

    int-to-short v6, v2

    if-ltz v6, :cond_14

    iget-short v2, v4, Lcom/t4game/GImageData;->xnum:S

    if-lt v6, v2, :cond_15

    :cond_14
    add-int/lit8 v2, v3, 0x3

    goto :goto_c

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    move-object v2, v0

    add-int/lit8 v7, v3, 0x1

    aget-byte v2, v2, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    move-object v3, v0

    add-int/lit8 v8, v7, 0x1

    aget-byte v3, v3, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    move-object v7, v0

    add-int/lit8 v15, v8, 0x1

    aget-byte v7, v7, v8

    if-eqz p5, :cond_18

    neg-int v2, v2

    move v9, v2

    :goto_d
    if-eqz p6, :cond_19

    neg-int v2, v3

    move v10, v2

    :goto_e
    and-int/lit8 v2, v7, 0x2

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    :goto_f
    and-int/lit8 v3, v7, 0x1

    if-eqz v3, :cond_1b

    const/4 v3, 0x1

    :goto_10
    if-eqz p5, :cond_16

    if-nez v2, :cond_1c

    const/4 v2, 0x1

    :cond_16
    :goto_11
    if-eqz p6, :cond_17

    if-nez v3, :cond_1d

    const/4 v3, 0x1

    :cond_17
    :goto_12
    if-eqz p7, :cond_1e

    add-int v7, p3, v9

    add-int v8, p4, v10

    invoke-static {v2, v3}, Lcom/t4game/GUtil;->getTransFlag(ZZ)B

    move-result v11

    move-object/from16 v2, p7

    move-object/from16 v3, p1

    invoke-interface/range {v2 .. v11}, Lcom/t4game/GIRenderManager;->renderImageClip(Ljavax/microedition/lcdui/Graphics;Lcom/t4game/GImageData;IIIIIIB)V

    move v2, v15

    goto :goto_c

    :cond_18
    move v9, v2

    goto :goto_d

    :cond_19
    move v10, v3

    goto :goto_e

    :cond_1a
    const/4 v2, 0x0

    goto :goto_f

    :cond_1b
    const/4 v3, 0x0

    goto :goto_10

    :cond_1c
    const/4 v2, 0x0

    goto :goto_11

    :cond_1d
    const/4 v3, 0x0

    goto :goto_12

    :cond_1e
    add-int v7, p3, v9

    add-int v8, p4, v10

    move-object/from16 v5, p1

    move v9, v2

    move v10, v3

    move/from16 v11, p8

    invoke-virtual/range {v4 .. v11}, Lcom/t4game/GImageData;->drawClip(Ljavax/microedition/lcdui/Graphics;IIIZZB)V

    move v2, v15

    goto :goto_c

    :cond_1f
    move-object v4, v2

    goto/16 :goto_b

    :cond_20
    move-object v12, v2

    goto/16 :goto_9
.end method

.method public getActionAnimDataIndex(III)B
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/t4game/GObjectData;->actionAnimList:[B

    if-eqz v0, :cond_0

    if-ne p2, v2, :cond_2

    :cond_0
    move v0, v2

    :cond_1
    :goto_0
    return v0

    :cond_2
    sget v0, Lcom/t4game/GObjectData;->ACTIONSTATE_DATA_LENGTH:I

    mul-int/2addr v0, p1

    shl-int/lit8 v1, p2, 0x2

    add-int/2addr v0, v1

    add-int/2addr v0, p3

    iget-object v1, p0, Lcom/t4game/GObjectData;->actionAnimList:[B

    aget-byte v0, v1, v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/t4game/GObjectData;->actionAnimList:[B

    shl-int/lit8 v1, p2, 0x2

    add-int/2addr v1, p3

    aget-byte v0, v0, v1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/t4game/GObjectData;->actionAnimList:[B

    aget-byte v0, v0, p3

    goto :goto_0
.end method

.method public getAnimFrameBB(IIZZ[S)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/t4game/GObjectData;->animDataOffsets:[S

    aget-short v0, v0, p1

    add-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v1, v0

    if-gez p2, :cond_6

    move v1, v4

    :goto_0
    if-lt v1, v0, :cond_5

    rem-int v0, v1, v0

    :goto_1
    shl-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    iget-object v1, p0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v1, v1, v2

    and-int/lit8 v2, v1, 0x2

    if-lez v2, :cond_3

    move v2, v5

    :goto_2
    and-int/lit8 v3, v1, 0x1

    if-lez v3, :cond_4

    move v3, v5

    :goto_3
    if-eqz p3, :cond_0

    if-nez v2, :cond_0

    :cond_0
    if-eqz p4, :cond_1

    if-nez v3, :cond_1

    :cond_1
    and-int/lit8 v1, v1, 0x4

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v2, v0, 0x2

    aget-byte v1, v1, v2

    add-int/2addr v1, v4

    iget-object v1, p0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    add-int/2addr v0, v4

    :cond_2
    return-void

    :cond_3
    move v2, v4

    goto :goto_2

    :cond_4
    move v3, v4

    goto :goto_3

    :cond_5
    move v0, v1

    goto :goto_1

    :cond_6
    move v1, p2

    goto :goto_0
.end method

.method public final getAnimFrameNum(I)B
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/t4game/GObjectData;->animDataOffsets:[S

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GObjectData;->animDatas:[B

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/t4game/GObjectData;->animDataOffsets:[S

    aget-short v0, v0, p1

    iget-object v1, p0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v0, v0, 0x2

    aget-byte v0, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getAnimTriggerFrame(II)B
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/GObjectData;->animDataOffsets:[S

    aget-short v0, v0, p1

    iget-object v1, p0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/2addr v0, p2

    aget-byte v0, v1, v0

    goto :goto_0
.end method

.method public final getObjectFrameDataByte(II)B
    .locals 2

    iget-object v0, p0, Lcom/t4game/GObjectData;->objectFrameDataOffsets:[S

    aget-short v0, v0, p1

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    aget-byte v0, v1, v0

    return v0
.end method

.method public getSpecialEffectData(I)Lcom/t4game/GSEData;
    .locals 1

    iget-object v0, p0, Lcom/t4game/GObjectData;->specialEffectMap:[Lcom/t4game/GSEData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/GObjectData;->specialEffectMap:[Lcom/t4game/GSEData;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public final init(Ljava/io/InputStream;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GObjectData;->imageType:B

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GObjectData;->objectType:B

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    new-array v0, v1, [Lcom/t4game/GImageData;

    iput-object v0, p0, Lcom/t4game/GObjectData;->imageDatas:[Lcom/t4game/GImageData;

    move v2, v5

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/t4game/GObjectData;->imageDatas:[Lcom/t4game/GImageData;

    const/4 v3, 0x0

    aput-object v3, v0, v2

    :goto_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/t4game/GObjectData;->imageDatas:[Lcom/t4game/GImageData;

    sget-byte v4, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v5}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GImageData;

    aput-object v0, v3, v2

    goto :goto_1

    :cond_1
    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v0

    iput-short v0, p0, Lcom/t4game/GObjectData;->boundX:S

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v0

    iput-short v0, p0, Lcom/t4game/GObjectData;->boundY:S

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v0

    iput-short v0, p0, Lcom/t4game/GObjectData;->boundW:S

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v0

    iput-short v0, p0, Lcom/t4game/GObjectData;->boundH:S

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-lez v0, :cond_3

    new-array v1, v0, [S

    iput-object v1, p0, Lcom/t4game/GObjectData;->objectFrameDataOffsets:[S

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v1

    move v2, v5

    :goto_2
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lcom/t4game/GObjectData;->objectFrameDataOffsets:[S

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    iget-object v0, p0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    invoke-static {p1, v0, v1}, Lcom/t4game/Util;->read(Ljava/io/InputStream;[BI)V

    :cond_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-lez v0, :cond_5

    new-array v1, v0, [S

    iput-object v1, p0, Lcom/t4game/GObjectData;->animDataOffsets:[S

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v1

    move v2, v5

    :goto_3
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lcom/t4game/GObjectData;->animDataOffsets:[S

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v4

    aput-short v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/t4game/GObjectData;->animDatas:[B

    iget-object v0, p0, Lcom/t4game/GObjectData;->animDatas:[B

    invoke-static {p1, v0, v1}, Lcom/t4game/Util;->read(Ljava/io/InputStream;[BI)V

    :cond_5
    iget-byte v0, p0, Lcom/t4game/GObjectData;->objectType:B

    if-ne v0, v6, :cond_7

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    sget v0, Lcom/t4game/GObjectData;->STATE_TYPE_NUM:I

    mul-int/lit8 v0, v0, 0x14

    sget-byte v1, Lcom/t4game/GSprite;->DIR_NUM:B

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/GObjectData;->actionAnimList:[B

    iget-object v0, p0, Lcom/t4game/GObjectData;->actionAnimList:[B

    iget-object v1, p0, Lcom/t4game/GObjectData;->actionAnimList:[B

    array-length v1, v1

    invoke-static {p1, v0, v1}, Lcom/t4game/Util;->read(Ljava/io/InputStream;[BI)V

    :cond_6
    return v6

    :cond_7
    iget-byte v0, p0, Lcom/t4game/GObjectData;->objectType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    invoke-static {p1}, Lcom/t4game/GUtil;->readUnsignedShort(Ljava/io/InputStream;)I

    move-result v0

    new-array v1, v0, [Lcom/t4game/GSEData;

    iput-object v1, p0, Lcom/t4game/GObjectData;->specialEffectMap:[Lcom/t4game/GSEData;

    move v1, v5

    :goto_4
    if-ge v1, v0, :cond_6

    new-instance v2, Lcom/t4game/GSEData;

    invoke-direct {v2}, Lcom/t4game/GSEData;-><init>()V

    invoke-virtual {v2, p1}, Lcom/t4game/GSEData;->init(Ljava/io/InputStream;)V

    iget-object v3, p0, Lcom/t4game/GObjectData;->specialEffectMap:[Lcom/t4game/GSEData;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public isReady()Z
    .locals 4

    const/4 v3, 0x0

    iget-byte v0, p0, Lcom/t4game/GObjectData;->state:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/GObjectData;->imageDatas:[Lcom/t4game/GImageData;

    array-length v0, v0

    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/t4game/GObjectData;->imageDatas:[Lcom/t4game/GImageData;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/t4game/GObjectData;->imageDatas:[Lcom/t4game/GImageData;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/t4game/GImageData;->isReady()Z

    move-result v2

    if-nez v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public release()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/t4game/GBaseData;->release()V

    iget-object v0, p0, Lcom/t4game/GObjectData;->imageDatas:[Lcom/t4game/GImageData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/GObjectData;->imageDatas:[Lcom/t4game/GImageData;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/t4game/GObjectData;->imageDatas:[Lcom/t4game/GImageData;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    sget-byte v2, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    iget-object v3, p0, Lcom/t4game/GObjectData;->imageDatas:[Lcom/t4game/GImageData;

    aget-object v3, v3, v1

    iget-object v3, v3, Lcom/t4game/GImageData;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-object v4, p0, Lcom/t4game/GObjectData;->imageDatas:[Lcom/t4game/GImageData;

    :cond_2
    iput-object v4, p0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    iput-object v4, p0, Lcom/t4game/GObjectData;->animDatas:[B

    iput-object v4, p0, Lcom/t4game/GObjectData;->actionAnimList:[B

    iget-object v0, p0, Lcom/t4game/GObjectData;->specialEffectMap:[Lcom/t4game/GSEData;

    if-eqz v0, :cond_3

    iput-object v4, p0, Lcom/t4game/GObjectData;->specialEffectMap:[Lcom/t4game/GSEData;

    :cond_3
    return-void
.end method

.method public final resetClip()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/GObjectData;->clipH:I

    iput v0, p0, Lcom/t4game/GObjectData;->clipW:I

    iput v0, p0, Lcom/t4game/GObjectData;->clipY:I

    iput v0, p0, Lcom/t4game/GObjectData;->clipX:I

    return-void
.end method

.method public final setClip(IIII)V
    .locals 0

    iput p1, p0, Lcom/t4game/GObjectData;->clipX:I

    iput p2, p0, Lcom/t4game/GObjectData;->clipY:I

    iput p3, p0, Lcom/t4game/GObjectData;->clipW:I

    iput p4, p0, Lcom/t4game/GObjectData;->clipH:I

    return-void
.end method

.method public final setClip(Lcom/t4game/GMap;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/t4game/GMap;->WX:I

    iput v0, p0, Lcom/t4game/GObjectData;->clipX:I

    iget v0, p1, Lcom/t4game/GMap;->WY:I

    iput v0, p0, Lcom/t4game/GObjectData;->clipY:I

    iget v0, p1, Lcom/t4game/GMap;->WX2:I

    iput v0, p0, Lcom/t4game/GObjectData;->clipW:I

    iget v0, p1, Lcom/t4game/GMap;->WY2:I

    iput v0, p0, Lcom/t4game/GObjectData;->clipH:I

    goto :goto_0
.end method
