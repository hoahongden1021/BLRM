.class public Lcom/t4game/GSEItemObject;
.super Lcom/t4game/AbstractPoolObject;


# instance fields
.field public animDataIndex:B

.field public effectColorList:[I

.field public flag1:B

.field public flag2:B

.field public flag3:B

.field public flag4:B

.field public imageData:Lcom/t4game/GImageData;

.field public inited:Z

.field public nextSEItem:Lcom/t4game/GSEItemObject;

.field public nowFrameNum:I

.field private objectData:Lcom/t4game/GObjectData;

.field public objectFrameDataIndex:B

.field public offsetX:S

.field public offsetY:S

.field public preSEItem:Lcom/t4game/GSEItemObject;

.field private seObject:Lcom/t4game/GSEObject;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/t4game/AbstractPoolObject;-><init>()V

    iput v0, p0, Lcom/t4game/GSEItemObject;->nowFrameNum:I

    iput-short v1, p0, Lcom/t4game/GSEItemObject;->offsetX:S

    iput-short v1, p0, Lcom/t4game/GSEItemObject;->offsetY:S

    iput-byte v0, p0, Lcom/t4game/GSEItemObject;->objectFrameDataIndex:B

    iput-byte v0, p0, Lcom/t4game/GSEItemObject;->animDataIndex:B

    iput-boolean v1, p0, Lcom/t4game/GSEItemObject;->inited:Z

    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/t4game/GSEItemObject;->poolId:B

    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;II)Z
    .locals 24

    const/16 v23, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSEItemObject;->seObject:Lcom/t4game/GSEObject;

    move-object v5, v0

    iget-object v5, v5, Lcom/t4game/GSEObject;->scene:Lcom/t4game/GScene;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GSEItemObject;->nowFrameNum:I

    move v6, v0

    const/4 v7, -0x1

    if-ne v6, v7, :cond_0

    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/t4game/GSEItemObject;->nowFrameNum:I

    :cond_0
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSEItemObject;->flag1:B

    move v6, v0

    and-int/lit8 v6, v6, 0xf

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSEItemObject;->flag1:B

    move v7, v0

    and-int/lit8 v7, v7, 0x20

    if-lez v7, :cond_1

    const/4 v7, 0x1

    move v10, v7

    :goto_0
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSEItemObject;->flag1:B

    move v7, v0

    and-int/lit8 v7, v7, 0x10

    if-lez v7, :cond_2

    const/4 v7, 0x1

    move v11, v7

    :goto_1
    if-nez v6, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSEItemObject;->imageData:Lcom/t4game/GImageData;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSEItemObject;->flag3:B

    move v6, v0

    and-int/lit16 v7, v6, 0xff

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSEItemObject;->offsetX:S

    move v6, v0

    add-int v8, p2, v6

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSEItemObject;->offsetY:S

    move v6, v0

    add-int v9, p3, v6

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/t4game/GImageData;->drawClip(Ljavax/microedition/lcdui/Graphics;IIIZZB)V

    move/from16 v5, v23

    :goto_2
    return v5

    :cond_1
    const/4 v7, 0x0

    move v10, v7

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    move v11, v7

    goto :goto_1

    :cond_3
    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSEItemObject;->objectFrameDataIndex:B

    move v6, v0

    and-int/lit16 v15, v6, 0xff

    const/16 v6, 0xff

    if-eq v15, v6, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSEItemObject;->objectData:Lcom/t4game/GObjectData;

    move-object v6, v0

    invoke-virtual {v6, v5}, Lcom/t4game/GObjectData;->setClip(Lcom/t4game/GMap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSEItemObject;->objectData:Lcom/t4game/GObjectData;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSEItemObject;->offsetX:S

    move v5, v0

    add-int v16, p2, v5

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSEItemObject;->offsetY:S

    move v5, v0

    add-int v17, p3, v5

    const/16 v20, 0x0

    move-object/from16 v14, p1

    move/from16 v18, v10

    move/from16 v19, v11

    move/from16 v21, v12

    invoke-virtual/range {v13 .. v21}, Lcom/t4game/GObjectData;->drawObjectFrame(Ljavax/microedition/lcdui/Graphics;IIIZZLcom/t4game/GIRenderManager;B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSEItemObject;->objectData:Lcom/t4game/GObjectData;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/t4game/GObjectData;->resetClip()V

    move/from16 v5, v23

    goto :goto_2

    :cond_4
    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSEItemObject;->objectData:Lcom/t4game/GObjectData;

    move-object v6, v0

    invoke-virtual {v6, v5}, Lcom/t4game/GObjectData;->setClip(Lcom/t4game/GMap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSEItemObject;->objectData:Lcom/t4game/GObjectData;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSEItemObject;->animDataIndex:B

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GSEItemObject;->nowFrameNum:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSEItemObject;->offsetX:S

    move v5, v0

    add-int v17, p2, v5

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSEItemObject;->offsetY:S

    move v5, v0

    add-int v18, p3, v5

    const/16 v21, 0x0

    move-object/from16 v14, p1

    move/from16 v19, v10

    move/from16 v20, v11

    move/from16 v22, v12

    invoke-virtual/range {v13 .. v22}, Lcom/t4game/GObjectData;->drawAnimFrame(Ljavax/microedition/lcdui/Graphics;IIIIZZLcom/t4game/GIRenderManager;B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSEItemObject;->objectData:Lcom/t4game/GObjectData;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/t4game/GObjectData;->resetClip()V

    move/from16 v5, v23

    goto/16 :goto_2

    :cond_5
    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSEItemObject;->effectColorList:[I

    move-object v6, v0

    array-length v6, v6

    if-lez v6, :cond_e

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GSEItemObject;->nowFrameNum:I

    move v6, v0

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSEItemObject;->effectColorList:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget v6, v5, Lcom/t4game/GMap;->WX:I

    iget v7, v5, Lcom/t4game/GMap;->WY:I

    iget v8, v5, Lcom/t4game/GMap;->WW:I

    iget v5, v5, Lcom/t4game/GMap;->WH:I

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GSEItemObject;->nowFrameNum:I

    move v7, v0

    rem-int v6, v7, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSEItemObject;->effectColorList:[I

    move-object v7, v0

    aget v6, v7, v6

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget v6, v5, Lcom/t4game/GMap;->WX:I

    iget v7, v5, Lcom/t4game/GMap;->WY:I

    iget v8, v5, Lcom/t4game/GMap;->WW:I

    iget v5, v5, Lcom/t4game/GMap;->WH:I

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_7
    const/4 v5, 0x5

    if-ne v6, v5, :cond_9

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSEItemObject;->flag3:B

    move v5, v0

    shr-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x7

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSEItemObject;->flag4:B

    move v6, v0

    and-int/lit8 v12, v6, 0xf

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSEItemObject;->flag3:B

    move v6, v0

    shr-int/lit8 v6, v6, 0x5

    and-int/lit8 v8, v6, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSEItemObject;->effectColorList:[I

    move-object v6, v0

    array-length v13, v6

    if-lez v13, :cond_8

    if-lez v12, :cond_8

    sget v14, Lcom/t4game/GScene;->WIN_DIAGONAL:I

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSEItemObject;->offsetX:S

    move v6, v0

    sub-int/2addr v6, v14

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSEItemObject;->offsetY:S

    move v7, v0

    sub-int/2addr v7, v14

    const/16 v9, 0x168

    div-int v15, v9, v12

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GSEItemObject;->nowFrameNum:I

    move v10, v0

    add-int/lit8 v10, v10, 0x1

    mul-int/2addr v8, v10

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v5, v8

    mul-int v11, v10, v5

    const/4 v5, 0x0

    move v10, v9

    move/from16 v16, v5

    :goto_3
    move/from16 v0, v16

    move v1, v12

    if-ge v0, v1, :cond_8

    rem-int v5, v16, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSEItemObject;->effectColorList:[I

    move-object v8, v0

    aget v5, v8, v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    shl-int/lit8 v8, v14, 0x1

    shl-int/lit8 v9, v14, 0x1

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Ljavax/microedition/lcdui/Graphics;->fillArc(IIIIII)V

    add-int v5, v10, v15

    add-int/lit8 v8, v16, 0x1

    move v10, v5

    move/from16 v16, v8

    goto :goto_3

    :cond_8
    move/from16 v5, v23

    goto/16 :goto_2

    :cond_9
    const/4 v5, 0x6

    if-ne v6, v5, :cond_c

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSEItemObject;->flag3:B

    move v5, v0

    shr-int/lit8 v5, v5, 0x2

    and-int/lit8 v12, v5, 0x7

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSEItemObject;->flag4:B

    move v5, v0

    and-int/lit8 v5, v5, 0xf

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSEItemObject;->flag3:B

    move v6, v0

    shr-int/lit8 v6, v6, 0x5

    and-int/lit8 v13, v6, 0x7

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSEItemObject;->flag3:B

    move v6, v0

    and-int/lit8 v14, v6, 0x3

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSEItemObject;->flag2:B

    move v6, v0

    and-int/lit8 v6, v6, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSEItemObject;->effectColorList:[I

    move-object v7, v0

    array-length v15, v7

    if-lez v15, :cond_b

    if-lez v14, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GSEItemObject;->nowFrameNum:I

    move v7, v0

    div-int/2addr v7, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GSEItemObject;->nowFrameNum:I

    move v8, v0

    rem-int v16, v8, v14

    if-lt v7, v5, :cond_f

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    :goto_4
    sget-byte v7, Lcom/t4game/GSEObject;->SPECIALEFFECT_SPRITE_LAYER:B

    if-ge v6, v7, :cond_a

    move/from16 v17, v5

    :goto_5
    if-ltz v17, :cond_b

    mul-int v5, v17, v14

    add-int v5, v5, v16

    add-int/lit8 v5, v5, 0x1

    mul-int v6, v5, v13

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v12

    mul-int v9, v5, v6

    sub-int v5, p2, v9

    rem-int v5, v17, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSEItemObject;->effectColorList:[I

    move-object v6, v0

    aget v5, v6, v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSEItemObject;->offsetX:S

    move v5, v0

    add-int v5, v5, p2

    sub-int/2addr v5, v9

    const/16 v6, 0xc8

    sub-int v6, p3, v6

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSEItemObject;->offsetY:S

    move v7, v0

    add-int/2addr v6, v7

    mul-int/lit8 v7, v9, 0x2

    const/16 v8, 0xc8

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSEItemObject;->offsetX:S

    move v5, v0

    add-int v5, v5, p2

    sub-int v6, v5, v9

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSEItemObject;->offsetY:S

    move v5, v0

    add-int v5, v5, p3

    div-int/lit8 v7, v9, 0x2

    sub-int v7, v5, v7

    mul-int/lit8 v8, v9, 0x2

    const/4 v10, 0x0

    const/16 v11, -0xb4

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Ljavax/microedition/lcdui/Graphics;->fillArc(IIIIII)V

    add-int/lit8 v5, v17, -0x1

    move/from16 v17, v5

    goto :goto_5

    :cond_a
    mul-int v6, v5, v14

    add-int v6, v6, v16

    add-int/lit8 v6, v6, 0x1

    mul-int v7, v6, v13

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v12

    mul-int v9, v6, v7

    rem-int/2addr v5, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSEItemObject;->effectColorList:[I

    move-object v6, v0

    aget v5, v6, v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSEItemObject;->offsetX:S

    move v5, v0

    add-int v5, v5, p2

    sub-int/2addr v5, v9

    const/16 v6, 0xc8

    sub-int v6, p3, v6

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSEItemObject;->offsetY:S

    move v7, v0

    add-int/2addr v6, v7

    mul-int/lit8 v7, v9, 0x2

    const/16 v8, 0xc8

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSEItemObject;->offsetX:S

    move v5, v0

    add-int v5, v5, p2

    sub-int v6, v5, v9

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSEItemObject;->offsetY:S

    move v5, v0

    add-int v5, v5, p3

    div-int/lit8 v7, v9, 0x2

    sub-int v7, v5, v7

    mul-int/lit8 v8, v9, 0x2

    const/4 v10, 0x0

    const/16 v11, -0xb4

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Ljavax/microedition/lcdui/Graphics;->fillArc(IIIIII)V

    :cond_b
    move/from16 v5, v23

    goto/16 :goto_2

    :cond_c
    const/4 v5, 0x7

    if-ne v6, v5, :cond_e

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSEItemObject;->flag3:B

    move v5, v0

    shr-int/lit8 v5, v5, 0x2

    and-int/lit8 v12, v5, 0x7

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSEItemObject;->flag4:B

    move v5, v0

    and-int/lit8 v13, v5, 0xf

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSEItemObject;->flag3:B

    move v5, v0

    shr-int/lit8 v5, v5, 0x5

    and-int/lit8 v14, v5, 0x7

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSEItemObject;->flag3:B

    move v5, v0

    and-int/lit8 v15, v5, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSEItemObject;->effectColorList:[I

    move-object v5, v0

    move-object v0, v5

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_e

    if-lez v15, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GSEItemObject;->nowFrameNum:I

    move v5, v0

    div-int/2addr v5, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GSEItemObject;->nowFrameNum:I

    move v6, v0

    rem-int v17, v6, v15

    const/4 v6, 0x0

    move/from16 v18, v6

    move/from16 v19, v5

    :goto_6
    move/from16 v0, v18

    move v1, v13

    if-ge v0, v1, :cond_e

    mul-int v5, v19, v15

    add-int v5, v5, v17

    add-int/lit8 v5, v5, 0x1

    mul-int v6, v5, v14

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v12

    mul-int v9, v5, v6

    rem-int v5, v19, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSEItemObject;->effectColorList:[I

    move-object v6, v0

    aget v5, v6, v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSEItemObject;->offsetX:S

    move v5, v0

    add-int v5, v5, p2

    sub-int v6, v5, v9

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSEItemObject;->offsetY:S

    move v5, v0

    add-int v5, v5, p3

    div-int/lit8 v7, v9, 0x2

    sub-int v7, v5, v7

    mul-int/lit8 v8, v9, 0x2

    const/4 v10, 0x0

    const/16 v11, 0x168

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Ljavax/microedition/lcdui/Graphics;->drawArc(IIIIII)V

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSEItemObject;->offsetX:S

    move v5, v0

    add-int v5, v5, p2

    sub-int/2addr v5, v9

    const/4 v6, 0x2

    sub-int v6, v5, v6

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSEItemObject;->offsetY:S

    move v5, v0

    add-int v5, v5, p3

    div-int/lit8 v7, v9, 0x2

    sub-int/2addr v5, v7

    const/4 v7, 0x1

    sub-int v7, v5, v7

    mul-int/lit8 v5, v9, 0x2

    add-int/lit8 v8, v5, 0x4

    add-int/lit8 v9, v9, 0x2

    const/4 v10, 0x0

    const/16 v11, 0x168

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Ljavax/microedition/lcdui/Graphics;->drawArc(IIIIII)V

    add-int/lit8 v5, v19, -0x1

    if-gez v5, :cond_d

    move/from16 v5, v23

    goto/16 :goto_2

    :cond_d
    add-int/lit8 v6, v18, 0x1

    move/from16 v18, v6

    move/from16 v19, v5

    goto :goto_6

    :cond_e
    move/from16 v5, v23

    goto/16 :goto_2

    :cond_f
    move v5, v7

    goto/16 :goto_4
.end method

.method public init(Lcom/t4game/GSEObject;Lcom/t4game/GObjectData;I[B)Z
    .locals 6

    const/16 v4, 0x100

    const/4 v3, 0x0

    const/4 v5, 0x1

    iput-object p1, p0, Lcom/t4game/GSEItemObject;->seObject:Lcom/t4game/GSEObject;

    iput-object p2, p0, Lcom/t4game/GSEItemObject;->objectData:Lcom/t4game/GObjectData;

    add-int/lit8 v0, v3, 0x1

    aget-byte v1, p4, v3

    iput-byte v1, p0, Lcom/t4game/GSEItemObject;->flag1:B

    iget-byte v1, p0, Lcom/t4game/GSEItemObject;->flag1:B

    and-int/lit8 v1, v1, 0xf

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p4, v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSEItemObject;->offsetX:S

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p4, v2

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    iput-short v2, p0, Lcom/t4game/GSEItemObject;->offsetY:S

    iget-byte v2, p0, Lcom/t4game/GSEItemObject;->flag1:B

    and-int/lit8 v2, v2, 0x40

    if-lez v2, :cond_0

    iget-short v2, p0, Lcom/t4game/GSEItemObject;->offsetX:S

    sub-int/2addr v2, v4

    int-to-short v2, v2

    iput-short v2, p0, Lcom/t4game/GSEItemObject;->offsetX:S

    :cond_0
    iget-byte v2, p0, Lcom/t4game/GSEItemObject;->flag1:B

    and-int/lit16 v2, v2, 0x80

    if-lez v2, :cond_1

    iget-short v2, p0, Lcom/t4game/GSEItemObject;->offsetY:S

    sub-int/2addr v2, v4

    int-to-short v2, v2

    iput-short v2, p0, Lcom/t4game/GSEItemObject;->offsetY:S

    :cond_1
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p4, v0

    iput-byte v0, p0, Lcom/t4game/GSEItemObject;->flag2:B

    if-nez v1, :cond_3

    add-int/lit8 v0, v2, 0x1

    aget-byte v1, p4, v2

    iget-object v2, p0, Lcom/t4game/GSEItemObject;->objectData:Lcom/t4game/GObjectData;

    iget-object v2, v2, Lcom/t4game/GObjectData;->imageDatas:[Lcom/t4game/GImageData;

    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/t4game/GSEItemObject;->imageData:Lcom/t4game/GImageData;

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p4, v0

    iput-byte v0, p0, Lcom/t4game/GSEItemObject;->flag3:B

    :cond_2
    :goto_0
    iput-boolean v5, p0, Lcom/t4game/GSEItemObject;->inited:Z

    return v5

    :cond_3
    if-ne v1, v5, :cond_4

    add-int/lit8 v0, v2, 0x1

    aget-byte v0, p4, v2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GSEItemObject;->objectFrameDataIndex:B

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    if-ne v1, v0, :cond_5

    add-int/lit8 v0, v2, 0x1

    aget-byte v0, p4, v2

    shr-int/lit8 v1, v0, 0x7

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/t4game/GSEItemObject;->flag3:B

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GSEItemObject;->animDataIndex:B

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v2, 0x1

    aget-byte v1, p4, v2

    iput-byte v1, p0, Lcom/t4game/GSEItemObject;->flag3:B

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p4, v0

    iput-byte v0, p0, Lcom/t4game/GSEItemObject;->flag4:B

    iget-byte v0, p0, Lcom/t4game/GSEItemObject;->flag4:B

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    if-lez v0, :cond_2

    new-array v2, v0, [I

    iput-object v2, p0, Lcom/t4game/GSEItemObject;->effectColorList:[I

    move v2, v1

    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v3, p0, Lcom/t4game/GSEItemObject;->effectColorList:[I

    invoke-static {p4, v2}, Lcom/t4game/GUtil;->readInt([BI)I

    move-result v4

    aput v4, v3, v1

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GSEItemObject;->seObject:Lcom/t4game/GSEObject;

    iput-object v0, p0, Lcom/t4game/GSEItemObject;->objectData:Lcom/t4game/GObjectData;

    iput-object v0, p0, Lcom/t4game/GSEItemObject;->preSEItem:Lcom/t4game/GSEItemObject;

    iput-object v0, p0, Lcom/t4game/GSEItemObject;->nextSEItem:Lcom/t4game/GSEItemObject;

    const/4 v0, -0x1

    iput v0, p0, Lcom/t4game/GSEItemObject;->nowFrameNum:I

    return-void
.end method

.method public update()Z
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    iget v0, p0, Lcom/t4game/GSEItemObject;->nowFrameNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/GSEItemObject;->nowFrameNum:I

    iget v0, p0, Lcom/t4game/GSEItemObject;->nowFrameNum:I

    iget-byte v1, p0, Lcom/t4game/GSEItemObject;->flag2:B

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-byte v0, p0, Lcom/t4game/GSEItemObject;->flag1:B

    and-int/lit8 v0, v0, 0xf

    if-ne v0, v5, :cond_1

    iget-byte v0, p0, Lcom/t4game/GSEItemObject;->flag3:B

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x7

    iget-byte v1, p0, Lcom/t4game/GSEItemObject;->flag4:B

    and-int/lit8 v1, v1, 0xf

    shr-int/lit8 v2, v0, 0x1

    if-nez v1, :cond_3

    sub-int v1, v0, v2

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/t4game/GUtil;->random(II)I

    move-result v0

    neg-int v1, v2

    invoke-static {v1, v2}, Lcom/t4game/GUtil;->random(II)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/t4game/GSEItemObject;->offsetX:S

    iget v1, p0, Lcom/t4game/GSEItemObject;->nowFrameNum:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSEItemObject;->offsetY:S

    :cond_1
    :goto_1
    move v0, v4

    goto :goto_0

    :cond_2
    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSEItemObject;->offsetY:S

    goto :goto_1

    :cond_3
    if-ne v1, v4, :cond_5

    sub-int v1, v0, v2

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/t4game/GUtil;->random(II)I

    move-result v0

    neg-int v1, v2

    invoke-static {v1, v2}, Lcom/t4game/GUtil;->random(II)I

    move-result v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/t4game/GSEItemObject;->offsetY:S

    iget v1, p0, Lcom/t4game/GSEItemObject;->nowFrameNum:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSEItemObject;->offsetX:S

    goto :goto_1

    :cond_4
    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSEItemObject;->offsetX:S

    goto :goto_1

    :cond_5
    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    sub-int v1, v0, v2

    add-int v3, v0, v2

    invoke-static {v1, v3}, Lcom/t4game/GUtil;->random(II)I

    move-result v1

    sub-int v3, v0, v2

    add-int/2addr v0, v2

    invoke-static {v3, v0}, Lcom/t4game/GUtil;->random(II)I

    move-result v0

    iget v2, p0, Lcom/t4game/GSEItemObject;->nowFrameNum:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_6

    int-to-short v1, v1

    iput-short v1, p0, Lcom/t4game/GSEItemObject;->offsetX:S

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSEItemObject;->offsetY:S

    goto :goto_1

    :cond_6
    neg-int v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/t4game/GSEItemObject;->offsetX:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSEItemObject;->offsetY:S

    goto :goto_1

    :cond_7
    if-ne v1, v5, :cond_1

    sub-int v1, v0, v2

    add-int v3, v0, v2

    invoke-static {v1, v3}, Lcom/t4game/GUtil;->random(II)I

    move-result v1

    sub-int v3, v0, v2

    add-int/2addr v0, v2

    invoke-static {v3, v0}, Lcom/t4game/GUtil;->random(II)I

    move-result v0

    iget v2, p0, Lcom/t4game/GSEItemObject;->nowFrameNum:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_8

    int-to-short v1, v1

    iput-short v1, p0, Lcom/t4game/GSEItemObject;->offsetX:S

    neg-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSEItemObject;->offsetY:S

    goto :goto_1

    :cond_8
    neg-int v1, v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/t4game/GSEItemObject;->offsetX:S

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSEItemObject;->offsetY:S

    goto :goto_1
.end method
