.class public Lcom/t4game/MapBuffer;
.super Ljava/lang/Object;


# static fields
.field private static final MOVE_DOWN:I = 0x2

.field private static final MOVE_LEFT:I = 0x4

.field private static final MOVE_NO:I = 0x0

.field private static final MOVE_RIGHT:I = 0x8

.field private static final MOVE_UP:I = 0x1

.field private static bufDx:I

.field private static bufDy:I

.field private static bufH:I

.field private static bufW:I

.field private static bufx:I

.field private static bufy:I

.field private static oldRefX:I

.field private static oldRefY:I

.field private static refX:I

.field private static refY:I


# instance fields
.field private GH:I

.field private GW:I

.field private imgMapBuf:Ljavax/microedition/lcdui/Image;

.field private mapBuf_g:Ljavax/microedition/lcdui/Graphics;

.field private scene:Lcom/t4game/GScene;

.field private sceneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    sput v0, Lcom/t4game/MapBuffer;->bufW:I

    sput v0, Lcom/t4game/MapBuffer;->bufH:I

    sput v1, Lcom/t4game/MapBuffer;->bufx:I

    sput v1, Lcom/t4game/MapBuffer;->bufy:I

    sput v0, Lcom/t4game/MapBuffer;->refX:I

    sput v0, Lcom/t4game/MapBuffer;->refY:I

    sput v0, Lcom/t4game/MapBuffer;->oldRefX:I

    sput v0, Lcom/t4game/MapBuffer;->oldRefY:I

    sput v0, Lcom/t4game/MapBuffer;->bufDx:I

    sput v0, Lcom/t4game/MapBuffer;->bufDy:I

    return-void
.end method

.method public constructor <init>(Lcom/t4game/GScene;)V
    .locals 2

    const/16 v1, 0x10

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/t4game/MapBuffer;->sceneId:I

    iput v1, p0, Lcom/t4game/MapBuffer;->GW:I

    iput v1, p0, Lcom/t4game/MapBuffer;->GH:I

    iput-object p1, p0, Lcom/t4game/MapBuffer;->scene:Lcom/t4game/GScene;

    iput v0, p0, Lcom/t4game/MapBuffer;->sceneId:I

    iget-byte v0, p1, Lcom/t4game/GScene;->GW:B

    iput v0, p0, Lcom/t4game/MapBuffer;->GW:I

    iget-byte v0, p1, Lcom/t4game/GScene;->GH:B

    iput v0, p0, Lcom/t4game/MapBuffer;->GH:I

    return-void
.end method

.method private bufXYUpdata(II)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/t4game/MapBuffer;->getFlogX(I)I

    move-result v0

    if-eqz v0, :cond_0

    sput p1, Lcom/t4game/MapBuffer;->bufx:I

    :cond_0
    invoke-direct {p0, p2}, Lcom/t4game/MapBuffer;->getFlogY(I)I

    move-result v0

    if-eqz v0, :cond_1

    sput p2, Lcom/t4game/MapBuffer;->bufy:I

    :cond_1
    return-void
.end method

.method private copyAreaToMapBuffer(IIIIIII)V
    .locals 21

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    and-int/lit8 v5, p3, 0x2

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    :goto_1
    and-int/lit8 v6, p3, 0x8

    if-eqz v6, :cond_5

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p6

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/t4game/MapBuffer;->getLeftW(ZII)I

    move-result v11

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, p7

    move/from16 v3, p5

    invoke-direct {v0, v1, v2, v3}, Lcom/t4game/MapBuffer;->getUpH(ZII)I

    move-result v12

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v2, p6

    move/from16 v3, p4

    move v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/t4game/MapBuffer;->getDestLeftX(ZIII)I

    move-result v7

    move-object/from16 v0, p0

    move v1, v5

    move/from16 v2, p7

    move/from16 v3, p5

    move v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/t4game/MapBuffer;->getDestUpY(ZIII)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/MapBuffer;->scene:Lcom/t4game/GScene;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/MapBuffer;->mapBuf_g:Ljavax/microedition/lcdui/Graphics;

    move-object v6, v0

    move/from16 v9, p1

    move/from16 v10, p2

    invoke-virtual/range {v5 .. v12}, Lcom/t4game/GScene;->drawArea(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    move/from16 v0, p4

    move v1, v11

    if-le v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/MapBuffer;->scene:Lcom/t4game/GScene;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/MapBuffer;->mapBuf_g:Ljavax/microedition/lcdui/Graphics;

    move-object v14, v0

    const/4 v15, 0x0

    add-int v17, p1, v11

    sub-int v19, p4, v11

    move/from16 v16, v8

    move/from16 v18, p2

    move/from16 v20, v12

    invoke-virtual/range {v13 .. v20}, Lcom/t4game/GScene;->drawArea(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    :cond_2
    move/from16 v0, p5

    move v1, v12

    if-le v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/MapBuffer;->scene:Lcom/t4game/GScene;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/MapBuffer;->mapBuf_g:Ljavax/microedition/lcdui/Graphics;

    move-object v14, v0

    const/16 v16, 0x0

    add-int v18, p2, v12

    sub-int v20, p5, v12

    move v15, v7

    move/from16 v17, p1

    move/from16 v19, v11

    invoke-virtual/range {v13 .. v20}, Lcom/t4game/GScene;->drawArea(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    :cond_3
    move/from16 v0, p4

    move v1, v11

    if-le v0, v1, :cond_0

    move/from16 v0, p5

    move v1, v12

    if-le v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/MapBuffer;->scene:Lcom/t4game/GScene;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/MapBuffer;->mapBuf_g:Ljavax/microedition/lcdui/Graphics;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    add-int v9, p1, v11

    add-int v10, p2, v12

    sub-int v11, p4, v11

    sub-int v12, p5, v12

    invoke-virtual/range {v5 .. v12}, Lcom/t4game/GScene;->drawArea(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    goto/16 :goto_0

    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_5
    const/4 v6, 0x0

    goto/16 :goto_2
.end method

.method private getDestLeftX(ZIII)I
    .locals 1

    if-eqz p1, :cond_1

    if-ne p4, p3, :cond_0

    sub-int v0, p2, p4

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/t4game/MapBuffer;->bufW:I

    sub-int/2addr v0, p4

    goto :goto_0

    :cond_1
    move v0, p2

    goto :goto_0
.end method

.method private getDestUpY(ZIII)I
    .locals 1

    if-eqz p1, :cond_1

    if-ne p4, p3, :cond_0

    sub-int v0, p2, p4

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/t4game/MapBuffer;->bufH:I

    sub-int/2addr v0, p4

    goto :goto_0

    :cond_1
    move v0, p2

    goto :goto_0
.end method

.method private getFlogX(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/t4game/MapBuffer;->getWinDx(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    if-lez v0, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFlogY(I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/t4game/MapBuffer;->getWinDy(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-lez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getLeftW(ZII)I
    .locals 1

    if-eqz p1, :cond_1

    move v0, p2

    :goto_0
    if-gt p3, v0, :cond_2

    move v0, p3

    :cond_0
    :goto_1
    return v0

    :cond_1
    sget v0, Lcom/t4game/MapBuffer;->bufW:I

    sub-int/2addr v0, p2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    sub-int v0, p3, v0

    goto :goto_1
.end method

.method private getUpH(ZII)I
    .locals 1

    if-eqz p1, :cond_1

    move v0, p2

    :goto_0
    if-gt p3, v0, :cond_2

    move v0, p3

    :cond_0
    :goto_1
    return v0

    :cond_1
    sget v0, Lcom/t4game/MapBuffer;->bufH:I

    sub-int/2addr v0, p2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_0

    sub-int v0, p3, v0

    goto :goto_1
.end method

.method private getWinDx(I)I
    .locals 1

    sget v0, Lcom/t4game/MapBuffer;->bufx:I

    sub-int v0, p1, v0

    return v0
.end method

.method private getWinDy(I)I
    .locals 1

    sget v0, Lcom/t4game/MapBuffer;->bufy:I

    sub-int v0, p1, v0

    return v0
.end method

.method private horizontalUpdata(II)V
    .locals 9

    const/4 v8, 0x1

    invoke-direct {p0, p1}, Lcom/t4game/MapBuffer;->getFlogX(I)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/t4game/MapBuffer;->getFlogY(I)I

    move-result v3

    invoke-direct {p0, p1}, Lcom/t4game/MapBuffer;->getWinDx(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-direct {p0, p2}, Lcom/t4game/MapBuffer;->getWinDy(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    const/4 v1, 0x4

    if-ne v1, v0, :cond_1

    move v1, p1

    :goto_1
    if-ne v8, v3, :cond_2

    add-int v2, p2, v7

    :goto_2
    if-nez v3, :cond_3

    sget v5, Lcom/t4game/MapBuffer;->bufH:I

    :goto_3
    const/16 v6, 0x8

    if-ne v6, v0, :cond_4

    sget v6, Lcom/t4game/MapBuffer;->refX:I

    if-nez v6, :cond_4

    sget v6, Lcom/t4game/MapBuffer;->bufW:I

    :goto_4
    if-ne v8, v3, :cond_5

    sget v3, Lcom/t4game/MapBuffer;->refY:I

    add-int/2addr v3, v7

    sget v7, Lcom/t4game/MapBuffer;->bufH:I

    rem-int/2addr v3, v7

    move v7, v3

    :goto_5
    or-int/lit8 v3, v0, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/t4game/MapBuffer;->copyAreaToMapBuffer(IIIIIII)V

    goto :goto_0

    :cond_1
    sget v1, Lcom/t4game/MapBuffer;->bufW:I

    add-int/2addr v1, p1

    sub-int/2addr v1, v4

    goto :goto_1

    :cond_2
    move v2, p2

    goto :goto_2

    :cond_3
    sget v5, Lcom/t4game/MapBuffer;->bufH:I

    sub-int/2addr v5, v7

    goto :goto_3

    :cond_4
    sget v6, Lcom/t4game/MapBuffer;->refX:I

    goto :goto_4

    :cond_5
    sget v3, Lcom/t4game/MapBuffer;->refY:I

    move v7, v3

    goto :goto_5
.end method

.method private isAllBufupdata(II)Z
    .locals 2

    const/4 v1, -0x1

    sget v0, Lcom/t4game/MapBuffer;->bufx:I

    if-ne v0, v1, :cond_0

    sget v0, Lcom/t4game/MapBuffer;->bufy:I

    if-eq v0, v1, :cond_1

    :cond_0
    sget v0, Lcom/t4game/MapBuffer;->bufx:I

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v1, Lcom/t4game/MapBuffer;->bufW:I

    if-gt v0, v1, :cond_1

    sget v0, Lcom/t4game/MapBuffer;->bufy:I

    sub-int v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v1, Lcom/t4game/MapBuffer;->bufH:I

    if-le v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mapDxDyUpdata(II)V
    .locals 2

    neg-int v0, p1

    iget v1, p0, Lcom/t4game/MapBuffer;->GW:I

    rem-int/2addr v0, v1

    sput v0, Lcom/t4game/MapBuffer;->bufDx:I

    neg-int v0, p2

    iget v1, p0, Lcom/t4game/MapBuffer;->GH:I

    rem-int/2addr v0, v1

    sput v0, Lcom/t4game/MapBuffer;->bufDy:I

    return-void
.end method

.method private obliqueUpdata(II)V
    .locals 8

    invoke-direct {p0, p1}, Lcom/t4game/MapBuffer;->getFlogX(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/t4game/MapBuffer;->getFlogY(I)I

    move-result v3

    if-eqz v0, :cond_0

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/t4game/MapBuffer;->getWinDx(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-direct {p0, p2}, Lcom/t4game/MapBuffer;->getWinDy(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    const/4 v1, 0x4

    if-ne v1, v0, :cond_2

    move v1, p1

    :goto_1
    const/4 v2, 0x1

    if-ne v2, v3, :cond_3

    move v2, p2

    :goto_2
    const/16 v6, 0x8

    if-ne v6, v0, :cond_4

    sget v6, Lcom/t4game/MapBuffer;->refX:I

    if-nez v6, :cond_4

    sget v6, Lcom/t4game/MapBuffer;->bufW:I

    :goto_3
    const/4 v7, 0x2

    if-ne v7, v3, :cond_5

    sget v7, Lcom/t4game/MapBuffer;->refY:I

    if-nez v7, :cond_5

    sget v7, Lcom/t4game/MapBuffer;->bufH:I

    :goto_4
    or-int/2addr v3, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/t4game/MapBuffer;->copyAreaToMapBuffer(IIIIIII)V

    goto :goto_0

    :cond_2
    sget v1, Lcom/t4game/MapBuffer;->bufW:I

    add-int/2addr v1, p1

    sub-int/2addr v1, v4

    goto :goto_1

    :cond_3
    sget v2, Lcom/t4game/MapBuffer;->bufH:I

    add-int/2addr v2, p2

    sub-int/2addr v2, v5

    goto :goto_2

    :cond_4
    sget v6, Lcom/t4game/MapBuffer;->refX:I

    goto :goto_3

    :cond_5
    sget v7, Lcom/t4game/MapBuffer;->refY:I

    goto :goto_4
.end method

.method private refXYUpdata(II)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/t4game/MapBuffer;->getWinDx(I)I

    move-result v0

    if-ltz v0, :cond_0

    if-lez v0, :cond_1

    :cond_0
    sget v1, Lcom/t4game/MapBuffer;->refX:I

    sput v1, Lcom/t4game/MapBuffer;->oldRefX:I

    sget v1, Lcom/t4game/MapBuffer;->oldRefX:I

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/MapBuffer;->bufW:I

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/MapBuffer;->bufW:I

    rem-int/2addr v0, v1

    sput v0, Lcom/t4game/MapBuffer;->refX:I

    :cond_1
    invoke-direct {p0, p2}, Lcom/t4game/MapBuffer;->getWinDy(I)I

    move-result v0

    if-ltz v0, :cond_2

    if-lez v0, :cond_3

    :cond_2
    sget v1, Lcom/t4game/MapBuffer;->refY:I

    sput v1, Lcom/t4game/MapBuffer;->oldRefY:I

    sget v1, Lcom/t4game/MapBuffer;->oldRefY:I

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/MapBuffer;->bufH:I

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/MapBuffer;->bufH:I

    rem-int/2addr v0, v1

    sput v0, Lcom/t4game/MapBuffer;->refY:I

    :cond_3
    return-void
.end method

.method private setClipImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V
    .locals 10

    if-eqz p5, :cond_0

    if-nez p6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v6, 0x0

    sget v9, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_0
.end method

.method private updataAllBuffer(II)V
    .locals 8

    const/4 v2, 0x0

    sput v2, Lcom/t4game/MapBuffer;->refX:I

    sput v2, Lcom/t4game/MapBuffer;->refY:I

    sput v2, Lcom/t4game/MapBuffer;->oldRefX:I

    sput v2, Lcom/t4game/MapBuffer;->oldRefY:I

    iget v0, p0, Lcom/t4game/MapBuffer;->GW:I

    div-int v0, p1, v0

    iget v1, p0, Lcom/t4game/MapBuffer;->GW:I

    mul-int/2addr v0, v1

    sput v0, Lcom/t4game/MapBuffer;->bufx:I

    iget v0, p0, Lcom/t4game/MapBuffer;->GH:I

    div-int v0, p2, v0

    iget v1, p0, Lcom/t4game/MapBuffer;->GH:I

    mul-int/2addr v0, v1

    sput v0, Lcom/t4game/MapBuffer;->bufy:I

    invoke-direct {p0, p1, p2}, Lcom/t4game/MapBuffer;->mapDxDyUpdata(II)V

    iget-object v0, p0, Lcom/t4game/MapBuffer;->scene:Lcom/t4game/GScene;

    iget-object v1, p0, Lcom/t4game/MapBuffer;->mapBuf_g:Ljavax/microedition/lcdui/Graphics;

    sget v6, Lcom/t4game/MapBuffer;->bufW:I

    sget v7, Lcom/t4game/MapBuffer;->bufH:I

    move v3, v2

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v7}, Lcom/t4game/GScene;->drawArea(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    return-void
.end method

.method private verticalUpdata(II)V
    .locals 8

    const/4 v7, 0x4

    invoke-direct {p0, p2}, Lcom/t4game/MapBuffer;->getFlogY(I)I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/t4game/MapBuffer;->getFlogX(I)I

    move-result v3

    invoke-direct {p0, p1}, Lcom/t4game/MapBuffer;->getWinDx(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-direct {p0, p2}, Lcom/t4game/MapBuffer;->getWinDy(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-ne v7, v3, :cond_1

    add-int v1, p1, v6

    :goto_1
    const/4 v2, 0x1

    if-ne v2, v0, :cond_2

    move v2, p2

    :goto_2
    if-nez v0, :cond_3

    sget v4, Lcom/t4game/MapBuffer;->bufW:I

    :goto_3
    if-ne v7, v3, :cond_4

    sget v3, Lcom/t4game/MapBuffer;->refX:I

    add-int/2addr v3, v6

    move v6, v3

    :goto_4
    const/4 v3, 0x2

    if-ne v3, v0, :cond_5

    sget v3, Lcom/t4game/MapBuffer;->refY:I

    if-nez v3, :cond_5

    sget v3, Lcom/t4game/MapBuffer;->bufH:I

    move v7, v3

    :goto_5
    or-int/lit8 v3, v0, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/t4game/MapBuffer;->copyAreaToMapBuffer(IIIIIII)V

    goto :goto_0

    :cond_1
    move v1, p1

    goto :goto_1

    :cond_2
    sget v2, Lcom/t4game/MapBuffer;->bufH:I

    add-int/2addr v2, p2

    sub-int/2addr v2, v5

    goto :goto_2

    :cond_3
    sget v4, Lcom/t4game/MapBuffer;->bufW:I

    sub-int/2addr v4, v6

    goto :goto_3

    :cond_4
    sget v3, Lcom/t4game/MapBuffer;->refX:I

    move v6, v3

    goto :goto_4

    :cond_5
    sget v3, Lcom/t4game/MapBuffer;->refY:I

    move v7, v3

    goto :goto_5
.end method


# virtual methods
.method public drawScreen(Ljavax/microedition/lcdui/Graphics;)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/MapBuffer;->imgMapBuf:Ljavax/microedition/lcdui/Image;

    move-object v1, v0

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v6, Lcom/t4game/MapBuffer;->refX:I

    sget v1, Lcom/t4game/MapBuffer;->bufW:I

    sub-int v13, v1, v6

    sget v7, Lcom/t4game/MapBuffer;->refY:I

    sget v1, Lcom/t4game/MapBuffer;->bufH:I

    sub-int v22, v1, v7

    sget v15, Lcom/t4game/MapBuffer;->bufDx:I

    sget v24, Lcom/t4game/MapBuffer;->bufDy:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/MapBuffer;->imgMapBuf:Ljavax/microedition/lcdui/Image;

    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    add-int v8, v15, v13

    add-int v9, v24, v22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/t4game/MapBuffer;->setClipImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/MapBuffer;->imgMapBuf:Ljavax/microedition/lcdui/Image;

    move-object v10, v0

    const/4 v12, 0x0

    add-int v16, v24, v22

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v11, v6

    move v14, v7

    invoke-direct/range {v8 .. v16}, Lcom/t4game/MapBuffer;->setClipImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/MapBuffer;->imgMapBuf:Ljavax/microedition/lcdui/Image;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    add-int v23, v15, v13

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move/from16 v20, v7

    move/from16 v21, v6

    invoke-direct/range {v16 .. v24}, Lcom/t4game/MapBuffer;->setClipImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/MapBuffer;->imgMapBuf:Ljavax/microedition/lcdui/Image;

    move-object v5, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move v8, v13

    move/from16 v9, v22

    move v10, v15

    move/from16 v11, v24

    invoke-direct/range {v3 .. v11}, Lcom/t4game/MapBuffer;->setClipImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    goto :goto_0
.end method

.method public initBuf(II)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/MapBuffer;->imgMapBuf:Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_0

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    iget v1, p0, Lcom/t4game/MapBuffer;->GW:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    iget v1, p0, Lcom/t4game/MapBuffer;->GW:I

    add-int/2addr v0, v1

    sput v0, Lcom/t4game/MapBuffer;->bufW:I

    :goto_0
    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    iget v1, p0, Lcom/t4game/MapBuffer;->GH:I

    rem-int v1, v0, v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/t4game/MapBuffer;->GH:I

    add-int/2addr v0, v1

    sput v0, Lcom/t4game/MapBuffer;->bufH:I

    :goto_1
    sget v0, Lcom/t4game/MapBuffer;->bufW:I

    sget v1, Lcom/t4game/MapBuffer;->bufH:I

    invoke-static {v0, v1}, Ljavax/microedition/lcdui/Image;->createImage(II)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/MapBuffer;->imgMapBuf:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/MapBuffer;->imgMapBuf:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/MapBuffer;->mapBuf_g:Ljavax/microedition/lcdui/Graphics;

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/t4game/MapBuffer;->sceneId:I

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/t4game/MapBuffer;->updataMapBuffer(IIZ)V

    return-void

    :cond_1
    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    iget v1, p0, Lcom/t4game/MapBuffer;->GW:I

    div-int/2addr v0, v1

    sput v0, Lcom/t4game/MapBuffer;->bufW:I

    sget v0, Lcom/t4game/MapBuffer;->bufW:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/t4game/MapBuffer;->GW:I

    mul-int/2addr v0, v1

    sput v0, Lcom/t4game/MapBuffer;->bufW:I

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/t4game/MapBuffer;->GH:I

    div-int/2addr v0, v1

    sput v0, Lcom/t4game/MapBuffer;->bufH:I

    sget v0, Lcom/t4game/MapBuffer;->bufH:I

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/t4game/MapBuffer;->GH:I

    mul-int/2addr v0, v1

    sput v0, Lcom/t4game/MapBuffer;->bufH:I

    goto :goto_1
.end method

.method public updataMapBuffer(IIZ)V
    .locals 3

    iget v0, p0, Lcom/t4game/MapBuffer;->sceneId:I

    iget-object v1, p0, Lcom/t4game/MapBuffer;->scene:Lcom/t4game/GScene;

    iget-short v1, v1, Lcom/t4game/GScene;->intId:S

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/t4game/MapBuffer;->updataAllBuffer(II)V

    iget-object v0, p0, Lcom/t4game/MapBuffer;->scene:Lcom/t4game/GScene;

    iget-short v0, v0, Lcom/t4game/GScene;->intId:S

    iput v0, p0, Lcom/t4game/MapBuffer;->sceneId:I

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/t4game/MapBuffer;->isAllBufupdata(II)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/t4game/MapBuffer;->updataAllBuffer(II)V

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/t4game/MapBuffer;->mapDxDyUpdata(II)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/t4game/MapBuffer;->GW:I

    div-int v0, p1, v0

    iget v1, p0, Lcom/t4game/MapBuffer;->GW:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/MapBuffer;->GH:I

    div-int v1, p2, v1

    iget v2, p0, Lcom/t4game/MapBuffer;->GH:I

    mul-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/t4game/MapBuffer;->refXYUpdata(II)V

    invoke-direct {p0, v0, v1}, Lcom/t4game/MapBuffer;->horizontalUpdata(II)V

    invoke-direct {p0, v0, v1}, Lcom/t4game/MapBuffer;->verticalUpdata(II)V

    invoke-direct {p0, v0, v1}, Lcom/t4game/MapBuffer;->obliqueUpdata(II)V

    invoke-direct {p0, v0, v1}, Lcom/t4game/MapBuffer;->bufXYUpdata(II)V

    goto :goto_1
.end method
