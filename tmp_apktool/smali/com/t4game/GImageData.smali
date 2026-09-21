.class public Lcom/t4game/GImageData;
.super Lcom/t4game/GBaseData;


# static fields
.field public static final TYPE_CLIP:B = 0x1t

.field public static final TYPE_IMAGETILE:B = 0x2t

.field public static final TYPE_TILE:B


# instance fields
.field public clipAnimDatas:[[B

.field public clipAnimIndex:[B

.field public clips:[B

.field public data:[B

.field public imageType:B

.field public img:Ljavax/microedition/lcdui/Image;

.field public img_h:I

.field public img_w:I

.field public tileH:B

.field public tileImageList:[Ljavax/microedition/lcdui/Image;

.field public tileW:B

.field public xnum:S

.field public ynum:B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/t4game/GBaseData;-><init>()V

    iput v0, p0, Lcom/t4game/GImageData;->img_w:I

    iput v0, p0, Lcom/t4game/GImageData;->img_h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GImageData;->tileImageList:[Ljavax/microedition/lcdui/Image;

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    iput-byte v0, p0, Lcom/t4game/GImageData;->type:B

    const/4 v0, 0x7

    iput-byte v0, p0, Lcom/t4game/GImageData;->poolId:B

    return-void
.end method

.method private initTileImageList()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-byte v0, p0, Lcom/t4game/GImageData;->ynum:B

    iget-short v1, p0, Lcom/t4game/GImageData;->xnum:S

    mul-int/2addr v0, v1

    new-array v0, v0, [Ljavax/microedition/lcdui/Image;

    move v1, v5

    :goto_0
    iget-byte v2, p0, Lcom/t4game/GImageData;->ynum:B

    if-ge v1, v2, :cond_1

    move v2, v5

    :goto_1
    iget-short v3, p0, Lcom/t4game/GImageData;->xnum:S

    if-ge v2, v3, :cond_0

    iget-short v3, p0, Lcom/t4game/GImageData;->xnum:S

    mul-int/2addr v3, v1

    add-int/2addr v3, v2

    invoke-virtual {p0, v2, v1, v6, v5}, Lcom/t4game/GImageData;->getTileImage(II[II)Ljavax/microedition/lcdui/Image;

    move-result-object v4

    aput-object v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/t4game/GImageData;->tileImageList:[Ljavax/microedition/lcdui/Image;

    iput-object v6, p0, Lcom/t4game/GImageData;->img:Ljavax/microedition/lcdui/Image;

    return-void
.end method


# virtual methods
.method public final drawClip(Ljavax/microedition/lcdui/Graphics;IIIB)V
    .locals 10

    const/4 v3, 0x2

    const/4 v8, 0x1

    iget-byte v0, p0, Lcom/t4game/GImageData;->state:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/GImageData;->img:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/GImageData;->imageType:B

    if-eq v0, v8, :cond_2

    iget-short v0, p0, Lcom/t4game/GImageData;->xnum:S

    if-ge p2, v0, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/GImageData;->clips:[B

    if-eqz v0, :cond_0

    mul-int/lit8 v0, p2, 0x6

    iget-object v1, p0, Lcom/t4game/GImageData;->clips:[B

    add-int/lit8 v2, v0, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v5, v1, 0xff

    iget-object v1, p0, Lcom/t4game/GImageData;->clips:[B

    add-int/lit8 v2, v0, 0x3

    aget-byte v1, v1, v2

    and-int/lit16 v4, v1, 0xff

    if-gt v4, v3, :cond_3

    if-le v5, v3, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/t4game/GImageData;->clips:[B

    aget-byte v1, v1, v0

    and-int/lit16 v3, v1, 0xff

    iget-object v1, p0, Lcom/t4game/GImageData;->clips:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v2, v1, 0xff

    and-int/lit8 v1, p5, 0x2

    if-ne v1, v8, :cond_4

    sub-int v1, v4, v8

    neg-int v1, v1

    iget-object v6, p0, Lcom/t4game/GImageData;->clips:[B

    add-int/lit8 v7, v0, 0x4

    aget-byte v6, v6, v7

    sub-int/2addr v1, v6

    move v6, v1

    :goto_1
    and-int/lit8 v1, p5, 0x1

    if-ne v1, v8, :cond_5

    sub-int v1, v5, v8

    neg-int v1, v1

    iget-object v7, p0, Lcom/t4game/GImageData;->clips:[B

    add-int/lit8 v0, v0, 0x5

    aget-byte v0, v7, v0

    sub-int v0, v1, v0

    :goto_2
    iget-object v1, p0, Lcom/t4game/GImageData;->img:Ljavax/microedition/lcdui/Image;

    add-int v7, p3, v6

    add-int v8, p4, v0

    const/16 v9, 0x14

    move-object v0, p1

    move v6, p5

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/t4game/GImageData;->clips:[B

    add-int/lit8 v6, v0, 0x4

    aget-byte v1, v1, v6

    move v6, v1

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/t4game/GImageData;->clips:[B

    add-int/lit8 v0, v0, 0x5

    aget-byte v0, v1, v0

    goto :goto_2
.end method

.method public final drawClip(Ljavax/microedition/lcdui/Graphics;IIIZZB)V
    .locals 19

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GImageData;->state:B

    move v2, v0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GImageData;->img:Ljavax/microedition/lcdui/Image;

    move-object v2, v0

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GImageData;->imageType:B

    move v2, v0

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GImageData;->xnum:S

    move v2, v0

    move/from16 v0, p2

    move v1, v2

    if-ge v0, v1, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GImageData;->clips:[B

    move-object v2, v0

    if-eqz v2, :cond_0

    mul-int/lit8 v2, p2, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GImageData;->clips:[B

    move-object v3, v0

    add-int/lit8 v4, v2, 0x2

    aget-byte v3, v3, v4

    and-int/lit16 v7, v3, 0xff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GImageData;->clips:[B

    move-object v3, v0

    add-int/lit8 v4, v2, 0x3

    aget-byte v3, v3, v4

    and-int/lit16 v6, v3, 0xff

    const/4 v3, 0x2

    if-gt v6, v3, :cond_3

    const/4 v3, 0x2

    if-le v7, v3, :cond_0

    :cond_3
    if-eqz p5, :cond_4

    const/4 v3, 0x2

    :goto_1
    if-eqz p6, :cond_5

    const/4 v4, 0x1

    :goto_2
    add-int v8, v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GImageData;->clips:[B

    move-object v3, v0

    aget-byte v3, v3, v2

    and-int/lit16 v5, v3, 0xff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GImageData;->clips:[B

    move-object v3, v0

    add-int/lit8 v4, v2, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v4, v3, 0xff

    if-eqz p5, :cond_6

    const/4 v3, 0x1

    sub-int v3, v6, v3

    neg-int v3, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GImageData;->clips:[B

    move-object v9, v0

    add-int/lit8 v10, v2, 0x4

    aget-byte v9, v9, v10

    sub-int/2addr v3, v9

    move v10, v3

    :goto_3
    if-eqz p6, :cond_7

    const/4 v3, 0x1

    sub-int v3, v7, v3

    neg-int v3, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GImageData;->clips:[B

    move-object v9, v0

    add-int/lit8 v2, v2, 0x5

    aget-byte v2, v9, v2

    sub-int v2, v3, v2

    :goto_4
    if-nez p7, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GImageData;->img:Ljavax/microedition/lcdui/Image;

    move-object v3, v0

    add-int v9, p3, v10

    add-int v10, p4, v2

    const/16 v11, 0x14

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v11}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GImageData;->clips:[B

    move-object v3, v0

    add-int/lit8 v9, v2, 0x4

    aget-byte v3, v3, v9

    move v10, v3

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GImageData;->clips:[B

    move-object v3, v0

    add-int/lit8 v2, v2, 0x5

    aget-byte v2, v3, v2

    goto :goto_4

    :cond_8
    const/high16 v9, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GImageData;->img:Ljavax/microedition/lcdui/Image;

    move-object v11, v0

    add-int v12, p3, v10

    add-int v13, p4, v2

    move-object/from16 v10, p1

    move v14, v4

    move v15, v5

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v18, v8

    invoke-static/range {v9 .. v18}, Lcom/t4game/DraftingUtil;->drawAlphaRegion(ILjavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIII)V

    goto/16 :goto_0
.end method

.method public final drawTile(Ljavax/microedition/lcdui/Graphics;IIIIZZ)V
    .locals 10

    iget-byte v0, p0, Lcom/t4game/GImageData;->state:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/GImageData;->imageType:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/GImageData;->tileImageList:[Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/GImageData;->tileImageList:[Ljavax/microedition/lcdui/Image;

    iget-short v1, p0, Lcom/t4game/GImageData;->xnum:S

    mul-int/2addr v1, p3

    add-int/2addr v1, p2

    aget-object v1, v0, v1

    if-eqz v1, :cond_0

    move-object v0, p1

    move v2, p4

    move v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-static/range {v0 .. v5}, Lcom/t4game/GUtil;->drawImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIZZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/GImageData;->img:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    if-eqz p6, :cond_3

    const/4 v0, 0x2

    :goto_1
    if-eqz p7, :cond_4

    const/4 v1, 0x1

    :goto_2
    add-int v6, v0, v1

    iget-object v1, p0, Lcom/t4game/GImageData;->img:Ljavax/microedition/lcdui/Image;

    iget-byte v0, p0, Lcom/t4game/GImageData;->tileW:B

    mul-int v2, p2, v0

    iget-byte v0, p0, Lcom/t4game/GImageData;->tileH:B

    mul-int v3, p3, v0

    iget-byte v4, p0, Lcom/t4game/GImageData;->tileW:B

    iget-byte v5, p0, Lcom/t4game/GImageData;->tileH:B

    sget v9, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object v0, p1

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public final getTileImage(II)Ljavax/microedition/lcdui/Image;
    .locals 8

    iget-byte v0, p0, Lcom/t4game/GImageData;->tileW:B

    iget-byte v1, p0, Lcom/t4game/GImageData;->tileH:B

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    iget-object v0, p0, Lcom/t4game/GImageData;->img:Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x0

    iget-byte v3, p0, Lcom/t4game/GImageData;->tileW:B

    iget-byte v4, p0, Lcom/t4game/GImageData;->tileW:B

    mul-int/2addr v4, p1

    iget-byte v5, p0, Lcom/t4game/GImageData;->tileH:B

    mul-int/2addr v5, p2

    iget-byte v6, p0, Lcom/t4game/GImageData;->tileW:B

    iget-byte v7, p0, Lcom/t4game/GImageData;->tileH:B

    invoke-virtual/range {v0 .. v7}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    iget-byte v0, p0, Lcom/t4game/GImageData;->tileW:B

    iget-byte v2, p0, Lcom/t4game/GImageData;->tileH:B

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Ljavax/microedition/lcdui/Image;->createRGBImage([IIIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public final getTileImage(II[II)Ljavax/microedition/lcdui/Image;
    .locals 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/t4game/GImageData;->tileImageList:[Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/GImageData;->tileW:B

    iget-byte v1, p0, Lcom/t4game/GImageData;->tileH:B

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    iget-object v0, p0, Lcom/t4game/GImageData;->img:Ljavax/microedition/lcdui/Image;

    iget-byte v3, p0, Lcom/t4game/GImageData;->tileW:B

    iget-byte v4, p0, Lcom/t4game/GImageData;->tileW:B

    mul-int/2addr v4, p1

    iget-byte v5, p0, Lcom/t4game/GImageData;->tileH:B

    mul-int/2addr v5, p2

    iget-byte v6, p0, Lcom/t4game/GImageData;->tileW:B

    iget-byte v7, p0, Lcom/t4game/GImageData;->tileH:B

    invoke-virtual/range {v0 .. v7}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    if-eqz p3, :cond_0

    array-length v0, v1

    shr-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    aput v0, p3, p4

    :cond_0
    iget-byte v0, p0, Lcom/t4game/GImageData;->tileW:B

    iget-byte v2, p0, Lcom/t4game/GImageData;->tileH:B

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Ljavax/microedition/lcdui/Image;->createRGBImage([IIIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/t4game/GImageData;->tileImageList:[Ljavax/microedition/lcdui/Image;

    iget-short v1, p0, Lcom/t4game/GImageData;->xnum:S

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/t4game/GImageData;->tileImageList:[Ljavax/microedition/lcdui/Image;

    iget-short v3, p0, Lcom/t4game/GImageData;->xnum:S

    mul-int/2addr v3, p2

    add-int/2addr v3, p1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    iget-object v0, p0, Lcom/t4game/GImageData;->tileImageList:[Ljavax/microedition/lcdui/Image;

    iget-short v3, p0, Lcom/t4game/GImageData;->xnum:S

    mul-int/2addr v3, p2

    add-int/2addr v3, p1

    aget-object v0, v0, v3

    iget-object v3, p0, Lcom/t4game/GImageData;->tileImageList:[Ljavax/microedition/lcdui/Image;

    iget-short v4, p0, Lcom/t4game/GImageData;->xnum:S

    mul-int/2addr v4, p2

    add-int/2addr v4, p1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/t4game/GImageData;->tileImageList:[Ljavax/microedition/lcdui/Image;

    iget-short v5, p0, Lcom/t4game/GImageData;->xnum:S

    mul-int/2addr v5, p2

    add-int/2addr v5, p1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v6

    iget-object v4, p0, Lcom/t4game/GImageData;->tileImageList:[Ljavax/microedition/lcdui/Image;

    iget-short v5, p0, Lcom/t4game/GImageData;->xnum:S

    mul-int/2addr v5, p2

    add-int/2addr v5, p1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v7

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    array-length v0, v1

    shr-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    aput v0, p3, p4

    :cond_2
    iget-object v0, p0, Lcom/t4game/GImageData;->tileImageList:[Ljavax/microedition/lcdui/Image;

    iget-short v1, p0, Lcom/t4game/GImageData;->xnum:S

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method public init(IIBB)V
    .locals 2

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/GImageData;->imageType:B

    int-to-byte v0, p1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GImageData;->xnum:S

    int-to-byte v0, p2

    iput-byte v0, p0, Lcom/t4game/GImageData;->ynum:B

    iput-byte p3, p0, Lcom/t4game/GImageData;->tileW:B

    iput-byte p4, p0, Lcom/t4game/GImageData;->tileH:B

    mul-int v0, p1, p3

    iput v0, p0, Lcom/t4game/GImageData;->img_w:I

    mul-int v0, p2, p4

    iput v0, p0, Lcom/t4game/GImageData;->img_h:I

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/t4game/GImageData;->state:B

    iget-byte v0, p0, Lcom/t4game/GImageData;->ynum:B

    iget-short v1, p0, Lcom/t4game/GImageData;->xnum:S

    mul-int/2addr v0, v1

    new-array v0, v0, [Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/GImageData;->tileImageList:[Ljavax/microedition/lcdui/Image;

    return-void
.end method

.method public init(Ljava/io/InputStream;)Z
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GImageData;->imageType:B

    iget-byte v0, p0, Lcom/t4game/GImageData;->imageType:B

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GImageData;->xnum:S

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GImageData;->ynum:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GImageData;->data:[B

    iget-byte v0, p0, Lcom/t4game/GImageData;->ynum:B

    iget-short v1, p0, Lcom/t4game/GImageData;->xnum:S

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/GImageData;->data:[B

    iget-object v0, p0, Lcom/t4game/GImageData;->data:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/t4game/GUtil;->readInt(Ljava/io/InputStream;)I

    move-result v0

    new-array v1, v0, [B

    invoke-static {p1, v1, v0}, Lcom/t4game/Util;->read(Ljava/io/InputStream;[BI)V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/t4game/GImageData;->img:Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Ljavax/microedition/lcdui/Image;->createImage([BII)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/GImageData;->img:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/GImageData;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/t4game/GImageData;->img_w:I

    iget-object v0, p0, Lcom/t4game/GImageData;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/t4game/GImageData;->img_h:I

    iget-byte v0, p0, Lcom/t4game/GImageData;->imageType:B

    if-eq v0, v9, :cond_1

    iget v0, p0, Lcom/t4game/GImageData;->img_w:I

    iget-short v1, p0, Lcom/t4game/GImageData;->xnum:S

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GImageData;->tileW:B

    iget v0, p0, Lcom/t4game/GImageData;->img_h:I

    iget-byte v1, p0, Lcom/t4game/GImageData;->ynum:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GImageData;->tileH:B

    iget-byte v0, p0, Lcom/t4game/GImageData;->imageType:B

    if-ne v0, v11, :cond_1

    invoke-direct {p0}, Lcom/t4game/GImageData;->initTileImageList()V

    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    move v0, v9

    :goto_1
    return v0

    :cond_2
    iget-byte v0, p0, Lcom/t4game/GImageData;->imageType:B

    if-ne v0, v9, :cond_4

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-lez v0, :cond_3

    new-array v1, v0, [[B

    iput-object v1, p0, Lcom/t4game/GImageData;->clipAnimDatas:[[B

    move v1, v10

    :goto_2
    if-ge v1, v0, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    int-to-byte v5, v5

    mul-int/lit8 v6, v5, 0x2

    add-int/lit8 v6, v6, 0x5

    new-array v6, v6, [B

    const/4 v7, 0x5

    mul-int/lit8 v8, v5, 0x2

    invoke-static {p1, v6, v7, v8}, Lcom/t4game/Util;->read(Ljava/io/InputStream;[BII)V

    const/4 v7, 0x1

    aput-byte v2, v6, v7

    const/4 v2, 0x2

    aput-byte v3, v6, v2

    const/4 v2, 0x3

    aput-byte v4, v6, v2

    const/4 v2, 0x4

    int-to-byte v3, v5

    aput-byte v3, v6, v2

    iget-object v2, p0, Lcom/t4game/GImageData;->clipAnimDatas:[[B

    aput-object v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-short v1, v0

    iput-short v1, p0, Lcom/t4game/GImageData;->xnum:S

    if-lez v0, :cond_0

    mul-int/lit8 v1, v0, 0x6

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/t4game/GImageData;->clips:[B

    iget-object v1, p0, Lcom/t4game/GImageData;->clips:[B

    mul-int/lit8 v2, v0, 0x6

    invoke-static {p1, v1, v2}, Lcom/t4game/Util;->read(Ljava/io/InputStream;[BI)V

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/t4game/GImageData;->clipAnimIndex:[B

    iget-object v1, p0, Lcom/t4game/GImageData;->clipAnimIndex:[B

    invoke-static {p1, v1, v0}, Lcom/t4game/Util;->read(Ljava/io/InputStream;[BI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v10

    goto :goto_1

    :cond_4
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GImageData;->xnum:S

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GImageData;->ynum:B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public release()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/t4game/GBaseData;->release()V

    iput-byte v1, p0, Lcom/t4game/GImageData;->state:B

    iput-object v2, p0, Lcom/t4game/GImageData;->img:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/GImageData;->data:[B

    iput-object v2, p0, Lcom/t4game/GImageData;->clips:[B

    iget-object v0, p0, Lcom/t4game/GImageData;->tileImageList:[Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v1, p0, Lcom/t4game/GImageData;->tileImageList:[Ljavax/microedition/lcdui/Image;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/GImageData;->tileImageList:[Ljavax/microedition/lcdui/Image;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/t4game/GImageData;->tileImageList:[Ljavax/microedition/lcdui/Image;

    return-void
.end method

.method public setImage(Ljavax/microedition/lcdui/Image;BB)Z
    .locals 1

    iput-object p1, p0, Lcom/t4game/GImageData;->img:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/GImageData;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/t4game/GImageData;->img_w:I

    iget-object v0, p0, Lcom/t4game/GImageData;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/t4game/GImageData;->img_h:I

    iget v0, p0, Lcom/t4game/GImageData;->img_w:I

    div-int/2addr v0, p2

    int-to-byte v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GImageData;->xnum:S

    iget v0, p0, Lcom/t4game/GImageData;->img_h:I

    div-int/2addr v0, p3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GImageData;->ynum:B

    iput-byte p2, p0, Lcom/t4game/GImageData;->tileW:B

    iput-byte p3, p0, Lcom/t4game/GImageData;->tileH:B

    const/4 v0, 0x1

    return v0
.end method
