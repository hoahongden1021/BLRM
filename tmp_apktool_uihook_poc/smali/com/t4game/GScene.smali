.class public Lcom/t4game/GScene;
.super Lcom/t4game/GMap;

# interfaces
.implements Lcom/t4game/IPathSupport;


# static fields
.field private static FLIPSIGNS:[B = null

.field private static FLIPSIGNSV:[B = null

.field private static final HALF_HEIGHT_POINTER:I = 0x9

.field private static final HALF_WIDTH_POINTER:I = 0xb

.field private static final HEIGHT_POINTER:I = 0x13

.field private static LAYERSIGNS:[B = null

.field private static LAYERSIGN_TERRAIN:B = 0x0t

.field private static final WIDTH_POINTER:I = 0x16

.field public static WIN_DIAGONAL:I


# instance fields
.field public backGScene:Lcom/t4game/GSceneBackLayer;

.field public backMapId:B

.field public choiceSprite:Lcom/t4game/GSprite;

.field public choicedSpriteId:I

.field public choicedSpriteType:B

.field private counter4pointer:I

.field public entranceSceneId:I

.field fps:S

.field public final gameWorld:Lcom/t4game/GameWorld;

.field private imgPointerAnim:Ljavax/microedition/lcdui/Image;

.field public listHead:Lcom/t4game/GSprite;

.field mapBuffer:Lcom/t4game/MapBuffer;

.field mapGridPixData:[I

.field public musicId:B

.field public npcVisable:Z

.field public npcs:Ljava/util/Hashtable;

.field public objends:[Lcom/t4game/GMapObject;

.field public objheads:[Lcom/t4game/GMapObject;

.field private onlyDrawSprite:Z

.field public outerNpcs:Ljava/util/Hashtable;

.field public outerUsers:Ljava/util/Hashtable;

.field public roleVisable:Z

.field private screenSE:[Lcom/t4game/GSEItemObject;

.field smallMapImage:Ljavax/microedition/lcdui/Image;

.field private storeHeads:[Lcom/t4game/GMapObject;

.field public tileAnimDataIdList:[[B

.field public tileAnimDataList:[Lcom/t4game/GTileAnimData;

.field public transferAreaList:[Lcom/t4game/GTransferArea;

.field public user:Lcom/t4game/GUser;

.field public users:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x4

    const/16 v0, 0x190

    sput v0, Lcom/t4game/GScene;->WIN_DIAGONAL:I

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/t4game/GScene;->FLIPSIGNS:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/t4game/GScene;->FLIPSIGNSV:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/t4game/GScene;->LAYERSIGNS:[B

    const/16 v0, 0x70

    sput-byte v0, Lcom/t4game/GScene;->LAYERSIGN_TERRAIN:B

    return-void

    nop

    :array_0
    .array-data 1
        0x4t
        0x10t
        0x40t
        -0x80t
    .end array-data

    :array_1
    .array-data 1
        0x8t
        0x20t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x10t
        0x20t
        0x40t
        -0x80t
    .end array-data
.end method

.method public constructor <init>(Lcom/t4game/GameWorld;)V
    .locals 6

    const/16 v5, 0x10

    const/4 v4, 0x3

    const/4 v3, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/t4game/GMap;-><init>()V

    iput-object v1, p0, Lcom/t4game/GScene;->smallMapImage:Ljavax/microedition/lcdui/Image;

    iput-object v1, p0, Lcom/t4game/GScene;->mapGridPixData:[I

    iput v3, p0, Lcom/t4game/GScene;->entranceSceneId:I

    iput-byte v3, p0, Lcom/t4game/GScene;->musicId:B

    iput-boolean v2, p0, Lcom/t4game/GScene;->npcVisable:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/GScene;->roleVisable:Z

    new-array v0, v4, [Lcom/t4game/GMapObject;

    iput-object v0, p0, Lcom/t4game/GScene;->objheads:[Lcom/t4game/GMapObject;

    new-array v0, v4, [Lcom/t4game/GMapObject;

    iput-object v0, p0, Lcom/t4game/GScene;->objends:[Lcom/t4game/GMapObject;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/t4game/GMapObject;

    iput-object v0, p0, Lcom/t4game/GScene;->storeHeads:[Lcom/t4game/GMapObject;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/t4game/GScene;->npcs:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/t4game/GScene;->users:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/t4game/GScene;->outerNpcs:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/t4game/GScene;->outerUsers:Ljava/util/Hashtable;

    iput-object v1, p0, Lcom/t4game/GScene;->choiceSprite:Lcom/t4game/GSprite;

    iput-object v1, p0, Lcom/t4game/GScene;->listHead:Lcom/t4game/GSprite;

    iput-object v1, p0, Lcom/t4game/GScene;->backGScene:Lcom/t4game/GSceneBackLayer;

    iput-byte v3, p0, Lcom/t4game/GScene;->backMapId:B

    iput-short v2, p0, Lcom/t4game/GScene;->fps:S

    iput-boolean v2, p0, Lcom/t4game/GScene;->onlyDrawSprite:Z

    iput v2, p0, Lcom/t4game/GScene;->counter4pointer:I

    iput-object v1, p0, Lcom/t4game/GScene;->imgPointerAnim:Ljavax/microedition/lcdui/Image;

    const-string v0, "/touch/pointer.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/GScene;->imgPointerAnim:Ljavax/microedition/lcdui/Image;

    new-array v0, v4, [Lcom/t4game/GSEItemObject;

    iput-object v0, p0, Lcom/t4game/GScene;->screenSE:[Lcom/t4game/GSEItemObject;

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_SCENE:B

    iput-byte v0, p0, Lcom/t4game/GScene;->type:B

    iput-short v3, p0, Lcom/t4game/GScene;->intId:S

    iput-object p1, p0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {p0, v5, v5}, Lcom/t4game/GScene;->setWinGridSize(II)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/t4game/GScene;->setWinDimension(IIII)V

    iget v0, p0, Lcom/t4game/GScene;->WW:I

    iget v1, p0, Lcom/t4game/GScene;->WH:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x586

    div-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/t4game/GScene;->WIN_DIAGONAL:I

    return-void
.end method

.method private canGua(Lcom/t4game/GSprite;)Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-byte v0, v0, Lcom/t4game/GUser;->guajiRedNameNPC:B

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-byte v0, p1, Lcom/t4game/GSprite;->relationState:B

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanMapBuffer(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 3

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Graphics;->getCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    add-int v1, p2, p4

    add-int v2, p3, p5

    invoke-virtual {v0, p2, p3, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    const/4 v1, 0x0

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawAnimationLayer0(Ljavax/microedition/lcdui/Graphics;)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    move-object v3, v0

    move-object v0, v3

    iget-object v0, v0, Lcom/t4game/GImageData;->data:[B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gw:I

    move v3, v0

    mul-int/lit8 v20, v3, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->win_gy:I

    move v3, v0

    mul-int v3, v3, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->win_gx:I

    move v4, v0

    mul-int/lit8 v4, v4, 0x6

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->win_gx:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/t4game/GScene;->gridX2SceneX(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->screen_mapx:I

    move v5, v0

    sub-int v21, v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->win_gy:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/t4game/GScene;->gridY2SceneY(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->screen_mapy:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->win_gy:I

    move v5, v0

    move v11, v5

    move/from16 v22, v3

    move v6, v4

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->win_gy2:I

    move v3, v0

    if-ge v11, v3, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->win_gx:I

    move v3, v0

    move v10, v3

    move/from16 v23, v22

    move/from16 v5, v21

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->win_gx2:I

    move v3, v0

    if-ge v10, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->map_gs:[B

    move-object v9, v0

    aget-byte v12, v9, v23

    sget-byte v3, Lcom/t4game/GScene;->LAYERSIGN_TERRAIN:B

    and-int/2addr v3, v12

    if-eqz v3, :cond_4

    add-int/lit8 v3, v23, 0x1

    aget-byte v14, v9, v3

    add-int/lit8 v3, v23, 0x2

    sget-object v4, Lcom/t4game/GScene;->LAYERSIGNS:[B

    const/4 v7, 0x0

    aget-byte v4, v4, v7

    and-int/2addr v4, v12

    if-eqz v4, :cond_1

    add-int/lit8 v13, v3, 0x1

    aget-byte v3, v9, v3

    and-int/lit8 v4, v3, 0xf

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileAnimDataIdList:[[B

    move-object v7, v0

    aget-object v3, v7, v3

    aget-byte v3, v3, v4

    sget-object v4, Lcom/t4game/GScene;->FLIPSIGNS:[B

    const/4 v7, 0x0

    aget-byte v4, v4, v7

    and-int/2addr v4, v14

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    move v7, v4

    :goto_2
    sget-object v4, Lcom/t4game/GScene;->FLIPSIGNSV:[B

    const/4 v8, 0x0

    aget-byte v4, v4, v8

    and-int/2addr v4, v14

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    move v8, v4

    :goto_3
    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileAnimDataList:[Lcom/t4game/GTileAnimData;

    move-object v4, v0

    aget-object v3, v4, v3

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/t4game/GTileAnimData;->drawTileAnim(Ljavax/microedition/lcdui/Graphics;IIZZ)V

    :cond_0
    move v3, v13

    :cond_1
    sget-object v4, Lcom/t4game/GScene;->LAYERSIGNS:[B

    const/4 v7, 0x1

    aget-byte v4, v4, v7

    and-int/2addr v4, v12

    if-eqz v4, :cond_3

    add-int/lit8 v13, v3, 0x1

    aget-byte v3, v9, v3

    and-int/lit8 v4, v3, 0xf

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileAnimDataIdList:[[B

    move-object v7, v0

    aget-object v3, v7, v3

    aget-byte v3, v3, v4

    sget-object v4, Lcom/t4game/GScene;->FLIPSIGNS:[B

    const/4 v7, 0x1

    aget-byte v4, v4, v7

    and-int/2addr v4, v14

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    move v7, v4

    :goto_4
    sget-object v4, Lcom/t4game/GScene;->FLIPSIGNSV:[B

    const/4 v8, 0x1

    aget-byte v4, v4, v8

    and-int/2addr v4, v14

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    move v8, v4

    :goto_5
    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileAnimDataList:[Lcom/t4game/GTileAnimData;

    move-object v4, v0

    aget-object v3, v4, v3

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/t4game/GTileAnimData;->drawTileAnim(Ljavax/microedition/lcdui/Graphics;IIZZ)V

    :cond_2
    move v3, v13

    :cond_3
    sget-object v4, Lcom/t4game/GScene;->LAYERSIGNS:[B

    const/4 v7, 0x2

    aget-byte v4, v4, v7

    and-int/2addr v4, v12

    if-eqz v4, :cond_4

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v9, v3

    and-int/lit8 v4, v14, 0x1

    and-int/lit8 v12, v3, 0xf

    and-int/lit16 v7, v3, 0xf0

    shr-int/lit8 v7, v7, 0x4

    shl-int/lit8 v4, v4, 0x4

    add-int v13, v7, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileAnimDataIdList:[[B

    move-object v4, v0

    aget-object v4, v4, v13

    aget-byte v4, v4, v12

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v19, v3

    sget-object v7, Lcom/t4game/GScene;->FLIPSIGNS:[B

    const/4 v8, 0x2

    aget-byte v7, v7, v8

    and-int/2addr v7, v14

    if-eqz v7, :cond_9

    const/4 v7, 0x1

    :goto_6
    const/4 v8, 0x0

    if-nez v3, :cond_a

    const/4 v3, -0x1

    if-eq v4, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileAnimDataList:[Lcom/t4game/GTileAnimData;

    move-object v3, v0

    aget-object v3, v3, v4

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/t4game/GTileAnimData;->drawTileAnim(Ljavax/microedition/lcdui/Graphics;IIZZ)V

    :cond_4
    :goto_7
    add-int/lit8 v3, v23, 0x6

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GScene;->GW:B

    move v4, v0

    add-int/2addr v4, v5

    add-int/lit8 v5, v10, 0x1

    move v10, v5

    move/from16 v23, v3

    move v5, v4

    goto/16 :goto_1

    :cond_5
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_2

    :cond_6
    const/4 v4, 0x0

    move v8, v4

    goto/16 :goto_3

    :cond_7
    const/4 v4, 0x0

    move v7, v4

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    move v8, v4

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    goto :goto_6

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/t4game/GScene;->win_g_upd:Z

    move v9, v0

    if-eqz v9, :cond_4

    and-int/lit8 v9, v14, 0x2

    if-nez v9, :cond_4

    const/4 v9, -0x1

    if-ne v4, v9, :cond_b

    const/4 v4, 0x0

    move-object/from16 v18, v4

    :goto_8
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/t4game/GDataManager;->getFromPool(B)Lcom/t4game/AbstractPoolObject;

    move-result-object v9

    check-cast v9, Lcom/t4game/GSingleTileObject;

    move-object/from16 v0, p0

    move-object v1, v9

    iput-object v0, v1, Lcom/t4game/GSingleTileObject;->scene:Lcom/t4game/GScene;

    add-int/lit8 v16, v23, 0x1

    const/4 v4, 0x1

    sub-int v17, v3, v4

    move v14, v7

    move v15, v8

    invoke-virtual/range {v9 .. v18}, Lcom/t4game/GSingleTileObject;->init(IIIIZZIILcom/t4game/GTileAnimData;)V

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/t4game/GScene;->addToStore(Lcom/t4game/GMapObject;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GScene;->addToView(Lcom/t4game/GMapObject;Z)V

    goto :goto_7

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileAnimDataList:[Lcom/t4game/GTileAnimData;

    move-object v9, v0

    aget-object v4, v9, v4

    move-object/from16 v18, v4

    goto :goto_8

    :cond_c
    add-int v3, v22, v20

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GScene;->GH:B

    move v4, v0

    add-int/2addr v4, v6

    add-int/lit8 v5, v11, 0x1

    move v11, v5

    move/from16 v22, v3

    move v6, v4

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->objheads:[Lcom/t4game/GMapObject;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    :goto_9
    if-eqz v3, :cond_e

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/t4game/GMapObject;->draw(Ljavax/microedition/lcdui/Graphics;)V

    iget-object v3, v3, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    goto :goto_9

    :cond_e
    return-void
.end method

.method private drawLayer0(Ljavax/microedition/lcdui/Graphics;)V
    .locals 26

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GScene;->GW:B

    move v3, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GScene;->GH:B

    move v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    move-object v3, v0

    move-object v0, v3

    iget-object v0, v0, Lcom/t4game/GImageData;->data:[B

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gw:I

    move v3, v0

    mul-int/lit8 v22, v3, 0x6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->win_gy:I

    move v3, v0

    mul-int v3, v3, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->win_gx:I

    move v4, v0

    mul-int/lit8 v4, v4, 0x6

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->win_gx:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/t4game/GScene;->gridX2SceneX(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->screen_mapx:I

    move v5, v0

    sub-int v23, v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->win_gy:I

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/t4game/GScene;->gridY2SceneY(I)I

    move-result v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->screen_mapy:I

    move v5, v0

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->win_gy:I

    move v5, v0

    move v13, v5

    move/from16 v24, v3

    move v8, v4

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->win_gy2:I

    move v3, v0

    if-ge v13, v3, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->win_gx:I

    move v3, v0

    move v12, v3

    move/from16 v25, v24

    move/from16 v7, v23

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->win_gx2:I

    move v3, v0

    if-ge v12, v3, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->map_gs:[B

    move-object v11, v0

    aget-byte v14, v11, v25

    sget-byte v3, Lcom/t4game/GScene;->LAYERSIGN_TERRAIN:B

    and-int/2addr v3, v14

    if-eqz v3, :cond_2

    add-int/lit8 v3, v25, 0x1

    aget-byte v15, v11, v3

    add-int/lit8 v3, v25, 0x2

    sget-object v4, Lcom/t4game/GScene;->LAYERSIGNS:[B

    const/4 v5, 0x0

    aget-byte v4, v4, v5

    and-int/2addr v4, v14

    if-eqz v4, :cond_0

    add-int/lit8 v16, v3, 0x1

    aget-byte v3, v11, v3

    and-int/lit8 v5, v3, 0xf

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v6, v3, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileAnimDataIdList:[[B

    move-object v3, v0

    aget-object v3, v3, v6

    aget-byte v3, v3, v5

    sget-object v4, Lcom/t4game/GScene;->FLIPSIGNS:[B

    const/4 v9, 0x0

    aget-byte v4, v4, v9

    and-int/2addr v4, v15

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    move v9, v4

    :goto_2
    sget-object v4, Lcom/t4game/GScene;->FLIPSIGNSV:[B

    const/4 v10, 0x0

    aget-byte v4, v4, v10

    and-int/2addr v4, v15

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    move v10, v4

    :goto_3
    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    move-object v3, v0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v10}, Lcom/t4game/GImageData;->drawTile(Ljavax/microedition/lcdui/Graphics;IIIIZZ)V

    move/from16 v3, v16

    :cond_0
    :goto_4
    sget-object v4, Lcom/t4game/GScene;->LAYERSIGNS:[B

    const/4 v5, 0x1

    aget-byte v4, v4, v5

    and-int/2addr v4, v14

    if-eqz v4, :cond_1

    add-int/lit8 v16, v3, 0x1

    aget-byte v3, v11, v3

    and-int/lit8 v5, v3, 0xf

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v6, v3, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileAnimDataIdList:[[B

    move-object v3, v0

    aget-object v3, v3, v6

    aget-byte v3, v3, v5

    sget-object v4, Lcom/t4game/GScene;->FLIPSIGNS:[B

    const/4 v9, 0x1

    aget-byte v4, v4, v9

    and-int/2addr v4, v15

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    move v9, v4

    :goto_5
    sget-object v4, Lcom/t4game/GScene;->FLIPSIGNSV:[B

    const/4 v10, 0x1

    aget-byte v4, v4, v10

    and-int/2addr v4, v15

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    move v10, v4

    :goto_6
    const/4 v4, -0x1

    if-ne v3, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    move-object v3, v0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v10}, Lcom/t4game/GImageData;->drawTile(Ljavax/microedition/lcdui/Graphics;IIIIZZ)V

    move/from16 v3, v16

    :cond_1
    :goto_7
    sget-object v4, Lcom/t4game/GScene;->LAYERSIGNS:[B

    const/4 v5, 0x2

    aget-byte v4, v4, v5

    and-int/2addr v4, v14

    if-eqz v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v11, v3

    and-int/lit8 v4, v15, 0x1

    and-int/lit8 v5, v3, 0xf

    and-int/lit16 v6, v3, 0xf0

    shr-int/lit8 v6, v6, 0x4

    shl-int/lit8 v4, v4, 0x4

    add-int/2addr v6, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileAnimDataIdList:[[B

    move-object v4, v0

    aget-object v4, v4, v6

    aget-byte v4, v4, v5

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v21, v3

    sget-object v9, Lcom/t4game/GScene;->FLIPSIGNS:[B

    const/4 v10, 0x2

    aget-byte v9, v9, v10

    and-int/2addr v9, v15

    if-eqz v9, :cond_9

    const/4 v9, 0x1

    :goto_8
    const/4 v10, 0x0

    if-nez v3, :cond_b

    const/4 v3, -0x1

    if-ne v4, v3, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    move-object v3, v0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v10}, Lcom/t4game/GImageData;->drawTile(Ljavax/microedition/lcdui/Graphics;IIIIZZ)V

    :cond_2
    :goto_9
    add-int/lit8 v3, v25, 0x6

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GScene;->GW:B

    move v4, v0

    add-int/2addr v4, v7

    add-int/lit8 v5, v12, 0x1

    move v12, v5

    move/from16 v25, v3

    move v7, v4

    goto/16 :goto_1

    :cond_3
    const/4 v4, 0x0

    move v9, v4

    goto/16 :goto_2

    :cond_4
    const/4 v4, 0x0

    move v10, v4

    goto/16 :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileAnimDataList:[Lcom/t4game/GTileAnimData;

    move-object v4, v0

    aget-object v5, v4, v3

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/t4game/GTileAnimData;->drawTileAnim(Ljavax/microedition/lcdui/Graphics;IIZZ)V

    move/from16 v3, v16

    goto/16 :goto_4

    :cond_6
    const/4 v4, 0x0

    move v9, v4

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    move v10, v4

    goto :goto_6

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileAnimDataList:[Lcom/t4game/GTileAnimData;

    move-object v4, v0

    aget-object v5, v4, v3

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/t4game/GTileAnimData;->drawTileAnim(Ljavax/microedition/lcdui/Graphics;IIZZ)V

    move/from16 v3, v16

    goto :goto_7

    :cond_9
    const/4 v9, 0x0

    goto :goto_8

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileAnimDataList:[Lcom/t4game/GTileAnimData;

    move-object v3, v0

    aget-object v5, v3, v4

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/t4game/GTileAnimData;->drawTileAnim(Ljavax/microedition/lcdui/Graphics;IIZZ)V

    goto :goto_9

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/t4game/GScene;->win_g_upd:Z

    move v11, v0

    if-eqz v11, :cond_2

    and-int/lit8 v11, v15, 0x2

    if-nez v11, :cond_2

    const/4 v11, -0x1

    if-ne v4, v11, :cond_c

    const/4 v4, 0x0

    move-object/from16 v20, v4

    :goto_a
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/t4game/GDataManager;->getFromPool(B)Lcom/t4game/AbstractPoolObject;

    move-result-object v11

    check-cast v11, Lcom/t4game/GSingleTileObject;

    move-object/from16 v0, p0

    move-object v1, v11

    iput-object v0, v1, Lcom/t4game/GSingleTileObject;->scene:Lcom/t4game/GScene;

    add-int/lit8 v18, v25, 0x1

    const/4 v4, 0x1

    sub-int v19, v3, v4

    move v14, v5

    move v15, v6

    move/from16 v16, v9

    move/from16 v17, v10

    invoke-virtual/range {v11 .. v20}, Lcom/t4game/GSingleTileObject;->init(IIIIZZIILcom/t4game/GTileAnimData;)V

    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/t4game/GScene;->addToStore(Lcom/t4game/GMapObject;)V

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object v1, v11

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GScene;->addToView(Lcom/t4game/GMapObject;Z)V

    goto/16 :goto_9

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileAnimDataList:[Lcom/t4game/GTileAnimData;

    move-object v11, v0

    aget-object v4, v11, v4

    move-object/from16 v20, v4

    goto :goto_a

    :cond_d
    add-int v3, v24, v22

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GScene;->GH:B

    move v4, v0

    add-int/2addr v4, v8

    add-int/lit8 v5, v13, 0x1

    move v13, v5

    move/from16 v24, v3

    move v8, v4

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->objheads:[Lcom/t4game/GMapObject;

    move-object v3, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    :goto_b
    if-eqz v3, :cond_f

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/t4game/GMapObject;->draw(Ljavax/microedition/lcdui/Graphics;)V

    iget-object v3, v3, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    goto :goto_b

    :cond_f
    return-void
.end method

.method private drawPointer(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2

    iget v0, p0, Lcom/t4game/GScene;->counter4pointer:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/t4game/GScene;->counter4pointer:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/t4game/GScene;->drawPointerAnimation(Ljavax/microedition/lcdui/Graphics;)V

    :cond_0
    return-void
.end method

.method private drawPointerAnimation(Ljavax/microedition/lcdui/Graphics;)V
    .locals 9

    iget-object v0, p0, Lcom/t4game/GScene;->imgPointerAnim:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/t4game/GScene;->counter4pointer:I

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/t4game/GScene;->imgPointerAnim:Ljavax/microedition/lcdui/Image;

    sget v0, Lcom/t4game/GameWorld;->tarWinX:I

    iget v1, p0, Lcom/t4game/GScene;->win_x:I

    sub-int/2addr v0, v1

    const/16 v1, 0xb

    sub-int v3, v0, v1

    sget v0, Lcom/t4game/GameWorld;->tarWinY:I

    iget v1, p0, Lcom/t4game/GScene;->win_y:I

    sub-int/2addr v0, v1

    const/16 v1, 0x9

    sub-int v4, v0, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x16

    const/16 v8, 0x13

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/t4game/GScene;->setClipImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/t4game/GScene;->counter4pointer:I

    rem-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v2, p0, Lcom/t4game/GScene;->imgPointerAnim:Ljavax/microedition/lcdui/Image;

    sget v0, Lcom/t4game/GameWorld;->tarWinX:I

    iget v1, p0, Lcom/t4game/GScene;->win_x:I

    sub-int/2addr v0, v1

    const/16 v1, 0xb

    sub-int v3, v0, v1

    sget v0, Lcom/t4game/GameWorld;->tarWinY:I

    iget v1, p0, Lcom/t4game/GScene;->win_y:I

    sub-int/2addr v0, v1

    const/16 v1, 0x9

    sub-int v4, v0, v1

    const/16 v5, 0x16

    const/4 v6, 0x0

    const/16 v7, 0x16

    const/16 v8, 0x13

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/t4game/GScene;->setClipImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/t4game/GScene;->imgPointerAnim:Ljavax/microedition/lcdui/Image;

    sget v0, Lcom/t4game/GameWorld;->tarWinX:I

    iget v1, p0, Lcom/t4game/GScene;->win_x:I

    sub-int/2addr v0, v1

    const/16 v1, 0xb

    sub-int v3, v0, v1

    sget v0, Lcom/t4game/GameWorld;->tarWinY:I

    iget v1, p0, Lcom/t4game/GScene;->win_y:I

    sub-int/2addr v0, v1

    const/16 v1, 0x9

    sub-int v4, v0, v1

    const/16 v5, 0x2c

    const/4 v6, 0x0

    const/16 v7, 0x16

    const/16 v8, 0x13

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/t4game/GScene;->setClipImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    const/16 v1, 0x14

    sget v2, Lcom/t4game/GameWorld;->tarWinX:I

    iget v3, p0, Lcom/t4game/GScene;->win_x:I

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/GameWorld;->tarWinY:I

    iget v4, p0, Lcom/t4game/GScene;->win_y:I

    sub-int/2addr v3, v4

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/t4game/GUser;->drawSelectBarFram1(Ljavax/microedition/lcdui/Graphics;SII)V

    goto :goto_0
.end method

.method private initTileImageData(Ljava/io/InputStream;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v13, 0x0

    iget-byte v0, p0, Lcom/t4game/GScene;->GW:B

    iget-byte v0, p0, Lcom/t4game/GScene;->GH:B

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v0

    const/16 v1, 0x10

    shr-int/lit8 v2, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_3

    add-int/lit8 v0, v2, 0x1

    :goto_0
    iget-byte v2, p0, Lcom/t4game/GScene;->GW:B

    mul-int/2addr v2, v1

    iget-byte v2, p0, Lcom/t4game/GScene;->GH:B

    mul-int/2addr v2, v0

    new-instance v2, Lcom/t4game/GImageData;

    invoke-direct {v2}, Lcom/t4game/GImageData;-><init>()V

    iput-object v2, p0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    iget-object v2, p0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    const-string v3, "0"

    iput-object v3, v2, Lcom/t4game/GImageData;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    iget-byte v3, p0, Lcom/t4game/GScene;->GW:B

    iget-byte v4, p0, Lcom/t4game/GScene;->GH:B

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/t4game/GImageData;->init(IIBB)V

    mul-int v2, v0, v1

    new-array v2, v2, [B

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/t4game/GScene;->tileAnimDataIdList:[[B

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    iget-object v0, p0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    iget-object v0, v0, Lcom/t4game/GImageData;->tileImageList:[Ljavax/microedition/lcdui/Image;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/t4game/GScene;->mapGridPixData:[I

    move v3, v13

    :goto_1
    if-ge v3, v1, :cond_2

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v13}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GImageData;

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v4

    move v5, v13

    :goto_2
    if-ge v5, v4, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v6

    and-int/lit8 v7, v6, 0xf

    and-int/lit16 v6, v6, 0xf0

    shr-int/lit8 v6, v6, 0x4

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v8

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v9

    shl-int/lit8 v10, v9, 0x4

    add-int/2addr v10, v8

    iget-short v11, v0, Lcom/t4game/GImageData;->xnum:S

    mul-int/2addr v11, v6

    add-int/2addr v11, v7

    iget-object v12, v0, Lcom/t4game/GImageData;->data:[B

    if-eqz v12, :cond_0

    iget-object v12, v0, Lcom/t4game/GImageData;->data:[B

    aget-byte v11, v12, v11

    aput-byte v11, v2, v10

    :cond_0
    iget-object v11, p0, Lcom/t4game/GScene;->tileAnimDataIdList:[[B

    aget-object v9, v11, v9

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v9, v8

    iget-object v8, p0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    iget-object v8, v8, Lcom/t4game/GImageData;->tileImageList:[Ljavax/microedition/lcdui/Image;

    iget-object v9, p0, Lcom/t4game/GScene;->mapGridPixData:[I

    invoke-virtual {v0, v7, v6, v9, v10}, Lcom/t4game/GImageData;->getTileImage(II[II)Ljavax/microedition/lcdui/Image;

    move-result-object v6

    aput-object v6, v8, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    invoke-static {v0}, Lcom/t4game/GDataManager;->releaseObjectData(Lcom/t4game/GBaseData;)Lcom/t4game/GBaseData;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    iput-object v2, v0, Lcom/t4game/GImageData;->data:[B

    return-void

    :cond_3
    move v0, v2

    goto/16 :goto_0
.end method

.method public static readMapData(Ljava/io/InputStream;II)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v9, 0x2

    const/4 v8, 0x0

    mul-int v0, p2, p1

    mul-int/lit8 v1, v0, 0x6

    new-array v1, v1, [B

    move v2, v8

    move v3, v8

    :goto_0
    if-ge v3, v0, :cond_4

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v4

    int-to-byte v5, v4

    aput-byte v5, v1, v2

    and-int/lit16 v5, v4, 0xf0

    if-nez v5, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    add-int/lit8 v6, v2, 0x1

    int-to-byte v5, v5

    aput-byte v5, v1, v6

    sget-object v5, Lcom/t4game/GScene;->LAYERSIGNS:[B

    aget-byte v5, v5, v8

    and-int/2addr v5, v4

    if-eqz v5, :cond_6

    add-int/lit8 v5, v9, 0x1

    :goto_1
    sget-object v6, Lcom/t4game/GScene;->LAYERSIGNS:[B

    const/4 v7, 0x1

    aget-byte v6, v6, v7

    and-int/2addr v6, v4

    if-eqz v6, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    sget-object v6, Lcom/t4game/GScene;->LAYERSIGNS:[B

    aget-byte v6, v6, v9

    and-int/2addr v6, v4

    if-eqz v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    sget-object v6, Lcom/t4game/GScene;->LAYERSIGNS:[B

    const/4 v7, 0x3

    aget-byte v6, v6, v7

    and-int/2addr v4, v6

    if-eqz v4, :cond_5

    add-int/lit8 v4, v5, 0x1

    :goto_2
    move v5, v9

    :goto_3
    if-ge v5, v4, :cond_0

    add-int v6, v2, v5

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    return-object v1

    :cond_5
    move v4, v5

    goto :goto_2

    :cond_6
    move v5, v9

    goto :goto_1
.end method

.method private readySmallMap()V
    .locals 14

    iget v0, p0, Lcom/t4game/GScene;->map_gw:I

    iget v1, p0, Lcom/t4game/GScene;->map_gh:I

    mul-int/2addr v0, v1

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, -0x1

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/t4game/GScene;->map_gw:I

    mul-int/lit8 v2, v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v13, v4

    move v4, v3

    move v3, v13

    :goto_1
    iget v5, p0, Lcom/t4game/GScene;->map_gh:I

    if-ge v3, v5, :cond_a

    const/4 v5, 0x0

    move v6, v4

    :goto_2
    iget v7, p0, Lcom/t4game/GScene;->map_gw:I

    if-ge v5, v7, :cond_9

    iget-object v7, p0, Lcom/t4game/GScene;->map_gs:[B

    aget-byte v8, v7, v6

    add-int/lit8 v9, v6, 0x1

    aget-byte v9, v7, v9

    add-int/lit8 v10, v6, 0x2

    sget-object v11, Lcom/t4game/GScene;->LAYERSIGNS:[B

    const/4 v12, 0x0

    aget-byte v11, v11, v12

    and-int/2addr v11, v8

    if-eqz v11, :cond_3

    add-int/lit8 v8, v10, 0x1

    aget-byte v7, v7, v10

    and-int/lit8 v8, v7, 0xf

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x4

    iget-object v9, p0, Lcom/t4game/GScene;->tileAnimDataIdList:[[B

    aget-object v9, v9, v7

    aget-byte v9, v9, v8

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    iget v9, p0, Lcom/t4game/GScene;->map_gw:I

    mul-int/2addr v9, v3

    add-int/2addr v9, v5

    aget v9, v1, v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    iget v9, p0, Lcom/t4game/GScene;->map_gw:I

    mul-int/2addr v9, v3

    add-int/2addr v9, v5

    iget-object v10, p0, Lcom/t4game/GScene;->mapGridPixData:[I

    iget-object v11, p0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    iget-short v11, v11, Lcom/t4game/GImageData;->xnum:S

    mul-int/2addr v7, v11

    add-int/2addr v7, v8

    aget v7, v10, v7

    aput v7, v1, v9

    :cond_1
    :goto_3
    add-int/lit8 v6, v6, 0x6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    iget v7, p0, Lcom/t4game/GScene;->map_gw:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v5

    aget v7, v1, v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    iget v7, p0, Lcom/t4game/GScene;->map_gw:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v5

    iget-object v8, p0, Lcom/t4game/GScene;->mapGridPixData:[I

    iget-object v10, p0, Lcom/t4game/GScene;->tileAnimDataList:[Lcom/t4game/GTileAnimData;

    aget-object v10, v10, v9

    iget-object v10, v10, Lcom/t4game/GTileAnimData;->tileDataList:[B

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    iget-object v11, p0, Lcom/t4game/GScene;->tileAnimDataList:[Lcom/t4game/GTileAnimData;

    aget-object v9, v11, v9

    iget-object v9, v9, Lcom/t4game/GTileAnimData;->tileDataList:[B

    const/4 v11, 0x1

    aget-byte v9, v9, v11

    iget-object v11, p0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    iget-short v11, v11, Lcom/t4game/GImageData;->xnum:S

    mul-int/2addr v9, v11

    add-int/2addr v9, v10

    aget v8, v8, v9

    aput v8, v1, v7

    goto :goto_3

    :cond_3
    sget-object v11, Lcom/t4game/GScene;->LAYERSIGNS:[B

    const/4 v12, 0x1

    aget-byte v11, v11, v12

    and-int/2addr v11, v8

    if-eqz v11, :cond_5

    add-int/lit8 v8, v10, 0x1

    aget-byte v7, v7, v10

    and-int/lit8 v8, v7, 0xf

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x4

    iget-object v9, p0, Lcom/t4game/GScene;->tileAnimDataIdList:[[B

    aget-object v9, v9, v7

    aget-byte v9, v9, v8

    const/4 v10, -0x1

    if-ne v9, v10, :cond_4

    iget v9, p0, Lcom/t4game/GScene;->map_gw:I

    mul-int/2addr v9, v3

    add-int/2addr v9, v5

    aget v9, v1, v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    iget v9, p0, Lcom/t4game/GScene;->map_gw:I

    mul-int/2addr v9, v3

    add-int/2addr v9, v5

    iget-object v10, p0, Lcom/t4game/GScene;->mapGridPixData:[I

    iget-object v11, p0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    iget-short v11, v11, Lcom/t4game/GImageData;->xnum:S

    mul-int/2addr v7, v11

    add-int/2addr v7, v8

    aget v7, v10, v7

    aput v7, v1, v9

    goto :goto_3

    :cond_4
    iget v7, p0, Lcom/t4game/GScene;->map_gw:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v5

    aget v7, v1, v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    iget v7, p0, Lcom/t4game/GScene;->map_gw:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v5

    iget-object v8, p0, Lcom/t4game/GScene;->mapGridPixData:[I

    iget-object v10, p0, Lcom/t4game/GScene;->tileAnimDataList:[Lcom/t4game/GTileAnimData;

    aget-object v10, v10, v9

    iget-object v10, v10, Lcom/t4game/GTileAnimData;->tileDataList:[B

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    iget-object v11, p0, Lcom/t4game/GScene;->tileAnimDataList:[Lcom/t4game/GTileAnimData;

    aget-object v9, v11, v9

    iget-object v9, v9, Lcom/t4game/GTileAnimData;->tileDataList:[B

    const/4 v11, 0x1

    aget-byte v9, v9, v11

    iget-object v11, p0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    iget-short v11, v11, Lcom/t4game/GImageData;->xnum:S

    mul-int/2addr v9, v11

    add-int/2addr v9, v10

    aget v8, v8, v9

    aput v8, v1, v7

    goto/16 :goto_3

    :cond_5
    sget-object v11, Lcom/t4game/GScene;->LAYERSIGNS:[B

    const/4 v12, 0x2

    aget-byte v11, v11, v12

    and-int/2addr v11, v8

    if-eqz v11, :cond_7

    add-int/lit8 v8, v10, 0x1

    aget-byte v7, v7, v10

    and-int/lit8 v8, v9, 0x1

    and-int/lit8 v9, v7, 0xf

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x4

    shl-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/t4game/GScene;->tileAnimDataIdList:[[B

    aget-object v8, v8, v7

    aget-byte v8, v8, v9

    const/4 v10, -0x1

    if-ne v8, v10, :cond_6

    iget v8, p0, Lcom/t4game/GScene;->map_gw:I

    mul-int/2addr v8, v3

    add-int/2addr v8, v5

    aget v8, v1, v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_1

    iget v8, p0, Lcom/t4game/GScene;->map_gw:I

    mul-int/2addr v8, v3

    add-int/2addr v8, v5

    iget-object v10, p0, Lcom/t4game/GScene;->mapGridPixData:[I

    iget-object v11, p0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    iget-short v11, v11, Lcom/t4game/GImageData;->xnum:S

    mul-int/2addr v7, v11

    add-int/2addr v7, v9

    aget v7, v10, v7

    aput v7, v1, v8

    goto/16 :goto_3

    :cond_6
    iget v7, p0, Lcom/t4game/GScene;->map_gw:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v5

    aget v7, v1, v7

    const/4 v9, -0x1

    if-ne v7, v9, :cond_1

    iget v7, p0, Lcom/t4game/GScene;->map_gw:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v5

    iget-object v9, p0, Lcom/t4game/GScene;->mapGridPixData:[I

    iget-object v10, p0, Lcom/t4game/GScene;->tileAnimDataList:[Lcom/t4game/GTileAnimData;

    aget-object v10, v10, v8

    iget-object v10, v10, Lcom/t4game/GTileAnimData;->tileDataList:[B

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    iget-object v11, p0, Lcom/t4game/GScene;->tileAnimDataList:[Lcom/t4game/GTileAnimData;

    aget-object v8, v11, v8

    iget-object v8, v8, Lcom/t4game/GTileAnimData;->tileDataList:[B

    const/4 v11, 0x1

    aget-byte v8, v8, v11

    iget-object v11, p0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    iget-short v11, v11, Lcom/t4game/GImageData;->xnum:S

    mul-int/2addr v8, v11

    add-int/2addr v8, v10

    aget v8, v9, v8

    aput v8, v1, v7

    goto/16 :goto_3

    :cond_7
    sget-object v9, Lcom/t4game/GScene;->LAYERSIGNS:[B

    const/4 v11, 0x3

    aget-byte v9, v9, v11

    and-int/2addr v8, v9

    if-eqz v8, :cond_1

    aget-byte v7, v7, v10

    and-int/lit8 v8, v7, 0xf

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x4

    iget-object v9, p0, Lcom/t4game/GScene;->tileAnimDataIdList:[[B

    aget-object v9, v9, v7

    aget-byte v9, v9, v8

    const/4 v10, -0x1

    if-ne v9, v10, :cond_8

    iget v9, p0, Lcom/t4game/GScene;->map_gw:I

    mul-int/2addr v9, v3

    add-int/2addr v9, v5

    aget v9, v1, v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    iget v9, p0, Lcom/t4game/GScene;->map_gw:I

    mul-int/2addr v9, v3

    add-int/2addr v9, v5

    iget-object v10, p0, Lcom/t4game/GScene;->mapGridPixData:[I

    iget-object v11, p0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    iget-short v11, v11, Lcom/t4game/GImageData;->xnum:S

    mul-int/2addr v7, v11

    add-int/2addr v7, v8

    aget v7, v10, v7

    aput v7, v1, v9

    goto/16 :goto_3

    :cond_8
    iget v7, p0, Lcom/t4game/GScene;->map_gw:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v5

    aget v7, v1, v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    iget v7, p0, Lcom/t4game/GScene;->map_gw:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v5

    iget-object v8, p0, Lcom/t4game/GScene;->mapGridPixData:[I

    iget-object v10, p0, Lcom/t4game/GScene;->tileAnimDataList:[Lcom/t4game/GTileAnimData;

    aget-object v10, v10, v9

    iget-object v10, v10, Lcom/t4game/GTileAnimData;->tileDataList:[B

    const/4 v11, 0x0

    aget-byte v10, v10, v11

    iget-object v11, p0, Lcom/t4game/GScene;->tileAnimDataList:[Lcom/t4game/GTileAnimData;

    aget-object v9, v11, v9

    iget-object v9, v9, Lcom/t4game/GTileAnimData;->tileDataList:[B

    const/4 v11, 0x1

    aget-byte v9, v9, v11

    iget-object v11, p0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    iget-short v11, v11, Lcom/t4game/GImageData;->xnum:S

    mul-int/2addr v9, v11

    add-int/2addr v9, v10

    aget v8, v8, v9

    aput v8, v1, v7

    goto/16 :goto_3

    :cond_9
    add-int/2addr v4, v2

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_b

    aget v4, v1, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_e

    aget v2, v1, v3

    :cond_b
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v0, :cond_13

    iget-byte v4, p0, Lcom/t4game/GScene;->backMapId:B

    const/4 v5, -0x1

    if-ne v4, v5, :cond_10

    aget v4, v1, v3

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c

    aget v4, v1, v3

    if-nez v4, :cond_d

    :cond_c
    if-nez v3, :cond_f

    aput v2, v1, v3

    :cond_d
    :goto_6
    aget v4, v1, v3

    const/high16 v5, 0xff0000

    and-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x10

    aget v5, v1, v3

    const v6, 0xff00

    and-int/2addr v5, v6

    shr-int/lit8 v5, v5, 0x8

    aget v6, v1, v3

    and-int/lit16 v6, v6, 0xff

    const/high16 v7, -0x23000000

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v4, v7

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v6

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_f
    const/4 v4, 0x1

    sub-int v4, v3, v4

    aget v4, v1, v4

    aput v4, v1, v3

    goto :goto_6

    :cond_10
    iget v4, p0, Lcom/t4game/GScene;->map_gw:I

    div-int v4, v3, v4

    aget v5, v1, v3

    const/4 v6, -0x1

    if-ne v5, v6, :cond_11

    iget-object v5, p0, Lcom/t4game/GScene;->backGScene:Lcom/t4game/GSceneBackLayer;

    iget-object v5, v5, Lcom/t4game/GSceneBackLayer;->fillColor:[I

    div-int/lit8 v4, v4, 0x3

    aget v4, v5, v4

    aput v4, v1, v3

    goto :goto_6

    :cond_11
    aget v4, v1, v3

    if-nez v4, :cond_d

    if-nez v3, :cond_12

    aput v2, v1, v3

    goto :goto_6

    :cond_12
    const/4 v4, 0x1

    sub-int v4, v3, v4

    aget v4, v1, v4

    aput v4, v1, v3

    goto :goto_6

    :cond_13
    iget v0, p0, Lcom/t4game/GScene;->map_gw:I

    iget v2, p0, Lcom/t4game/GScene;->map_gh:I

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Ljavax/microedition/lcdui/Image;->createRGBImage([IIIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/GScene;->smallMapImage:Ljavax/microedition/lcdui/Image;

    return-void
.end method

.method private setClipImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIII)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1, p3, p4, p7, p8}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    sub-int v0, p3, p5

    sub-int v1, p4, p6

    invoke-virtual {p1, p2, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual {p1, v2, v2, v0, v1}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    return-void
.end method

.method private final updateSprites()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/t4game/GScene;->updateStore(B)V

    return-void
.end method

.method public static writeMapData(Ljava/io/OutputStream;[[[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write(I)V

    invoke-virtual {p0, p3}, Ljava/io/OutputStream;->write(I)V

    move v0, v3

    :goto_0
    if-ge v0, p3, :cond_2

    move v1, v3

    :goto_1
    if-ge v1, p2, :cond_1

    aget-object v2, p1, v0

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    invoke-virtual {p0, v3}, Ljava/io/OutputStream;->write(I)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Ljava/io/OutputStream;->write([B)V

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public GetCanHitSprites()Z
    .locals 14

    const/4 v13, 0x6

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/t4game/GScene;->listHead:Lcom/t4game/GSprite;

    const/16 v1, 0xa

    new-array v3, v1, [Ljava/util/Vector;

    move v1, v10

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/t4game/GScene;->users:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/t4game/GSprite;

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/t4game/GSprite;->distancenext:Lcom/t4game/GSprite;

    const/4 v4, 0x0

    iput-object v4, v1, Lcom/t4game/GSprite;->distancepre:Lcom/t4game/GSprite;

    iget v4, v1, Lcom/t4game/GSprite;->intId:I

    iget-object v5, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget v5, v5, Lcom/t4game/GUser;->intId:I

    if-eq v4, v5, :cond_1

    iget-boolean v4, v1, Lcom/t4game/GSprite;->visibleReady:Z

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    aget-boolean v4, v4, v13

    if-nez v4, :cond_1

    iget-byte v4, v1, Lcom/t4game/GSprite;->canSelect:B

    if-ne v4, v9, :cond_1

    iget-short v4, v1, Lcom/t4game/GSprite;->mapX:S

    iget-short v5, v1, Lcom/t4game/GSprite;->mapY:S

    iget-object v6, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v6, v6, Lcom/t4game/GUser;->mapX:S

    iget-object v7, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v7, v7, Lcom/t4game/GUser;->mapY:S

    iget-object v8, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget v8, v8, Lcom/t4game/GUser;->viewRadius:I

    invoke-static {v4, v5, v6, v7, v8}, Lcom/t4game/Util;->testInterRound(IIIII)Z

    move-result v4

    if-eqz v4, :cond_1

    new-array v4, v12, [I

    iget-short v5, v1, Lcom/t4game/GSprite;->mapX:S

    iget-short v6, v1, Lcom/t4game/GSprite;->mapY:S

    iget-object v7, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v7, v7, Lcom/t4game/GUser;->mapX:S

    iget-object v8, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v8, v8, Lcom/t4game/GUser;->mapY:S

    invoke-static {v5, v6, v7, v8}, Lcom/t4game/Util;->getDistance2(SSSS)I

    move-result v5

    aput v5, v4, v10

    iget v5, v1, Lcom/t4game/GSprite;->intId:I

    aput v5, v4, v9

    aput v12, v4, v11

    iget-byte v5, v1, Lcom/t4game/GSprite;->canHit:B

    if-ne v5, v9, :cond_2

    aget-object v1, v3, v10

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v5, v5, Lcom/t4game/GameWorld;->teamList:Ljava/util/Hashtable;

    iget-object v1, v1, Lcom/t4game/GSprite;->id:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    aget-object v1, v3, v1

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    aget-object v1, v3, v13

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/t4game/GScene;->npcs:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/t4game/GSprite;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/t4game/GSprite;->distancenext:Lcom/t4game/GSprite;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/t4game/GSprite;->distancepre:Lcom/t4game/GSprite;

    iget-short v2, v1, Lcom/t4game/GSprite;->mapX:S

    iget-short v5, v1, Lcom/t4game/GSprite;->mapY:S

    iget-object v6, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v6, v6, Lcom/t4game/GUser;->mapX:S

    iget-object v7, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v7, v7, Lcom/t4game/GUser;->mapY:S

    iget-object v8, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget v8, v8, Lcom/t4game/GUser;->viewRadius:I

    invoke-static {v2, v5, v6, v7, v8}, Lcom/t4game/Util;->testInterRound(IIIII)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, v1, Lcom/t4game/GSprite;->visibleReady:Z

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    aget-boolean v2, v2, v13

    if-nez v2, :cond_5

    iget-byte v2, v1, Lcom/t4game/GSprite;->canSelect:B

    if-ne v2, v9, :cond_5

    move-object v0, v1

    check-cast v0, Lcom/t4game/GNPC;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GNPC;->Flag:[B

    if-nez v2, :cond_6

    iget-byte v2, v1, Lcom/t4game/GSprite;->canHit:B

    if-nez v2, :cond_7

    :cond_6
    iget-short v2, v1, Lcom/t4game/GSprite;->mapX:S

    iget-short v5, v1, Lcom/t4game/GSprite;->mapY:S

    iget-object v6, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v6, v6, Lcom/t4game/GUser;->mapX:S

    iget-object v7, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v7, v7, Lcom/t4game/GUser;->mapY:S

    const/16 v8, 0x50

    invoke-static {v2, v5, v6, v7, v8}, Lcom/t4game/Util;->testInterRound(IIIII)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_7
    new-array v2, v12, [I

    iget-short v5, v1, Lcom/t4game/GSprite;->mapX:S

    iget-short v6, v1, Lcom/t4game/GSprite;->mapY:S

    iget-object v7, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v7, v7, Lcom/t4game/GUser;->mapX:S

    iget-object v8, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v8, v8, Lcom/t4game/GUser;->mapY:S

    invoke-static {v5, v6, v7, v8}, Lcom/t4game/Util;->getDistance2(SSSS)I

    move-result v5

    aput v5, v2, v10

    iget v5, v1, Lcom/t4game/GSprite;->intId:I

    aput v5, v2, v9

    aput v11, v2, v11

    iget-byte v5, v1, Lcom/t4game/GSprite;->relationState:B

    const/4 v6, 0x4

    if-ne v5, v6, :cond_9

    iget-byte v1, v1, Lcom/t4game/GSprite;->exType:B

    if-ne v1, v9, :cond_8

    const/16 v1, 0x9

    aget-object v1, v3, v1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    aget-object v1, v3, v9

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_9
    check-cast v1, Lcom/t4game/GNPC;

    iget-object v5, v1, Lcom/t4game/GNPC;->Flag:[B

    if-eqz v5, :cond_d

    iget-object v5, v1, Lcom/t4game/GNPC;->Flag:[B

    invoke-static {v5, v10}, Lcom/t4game/Util;->testNpcFlag([BB)Z

    move-result v5

    if-eqz v5, :cond_a

    aget-object v1, v3, v11

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_a
    iget-object v5, v1, Lcom/t4game/GNPC;->Flag:[B

    invoke-static {v5, v9}, Lcom/t4game/Util;->testNpcFlag([BB)Z

    move-result v5

    if-eqz v5, :cond_b

    aget-object v1, v3, v11

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_b
    iget-object v1, v1, Lcom/t4game/GNPC;->Flag:[B

    invoke-static {v1, v11}, Lcom/t4game/Util;->testNpcFlag([BB)Z

    move-result v1

    if-eqz v1, :cond_c

    aget-object v1, v3, v12

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_c
    const/4 v1, 0x4

    aget-object v1, v3, v1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_d
    iget-byte v1, v1, Lcom/t4game/GNPC;->canHit:B

    if-ne v1, v9, :cond_e

    const/16 v1, 0x8

    aget-object v1, v3, v1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_e
    const/4 v1, 0x7

    aget-object v1, v3, v1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_f
    aget-object v1, v3, v10

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_10

    aget-object v1, v3, v10

    invoke-virtual {p0, v1}, Lcom/t4game/GScene;->getDistanceTest(Ljava/util/Vector;)Z

    move-result v1

    :goto_3
    iget-object v2, p0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v10, v2, Lcom/t4game/GameWorld;->autoAttack:Z

    return v1

    :cond_10
    aget-object v1, v3, v9

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_11

    aget-object v1, v3, v9

    invoke-virtual {p0, v1}, Lcom/t4game/GScene;->getDistanceTest(Ljava/util/Vector;)Z

    move-result v1

    goto :goto_3

    :cond_11
    aget-object v1, v3, v11

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_12

    aget-object v1, v3, v11

    invoke-virtual {p0, v1}, Lcom/t4game/GScene;->getDistanceTest(Ljava/util/Vector;)Z

    move-result v1

    goto :goto_3

    :cond_12
    aget-object v1, v3, v12

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_13

    aget-object v1, v3, v12

    invoke-virtual {p0, v1}, Lcom/t4game/GScene;->getDistanceTest(Ljava/util/Vector;)Z

    move-result v1

    goto :goto_3

    :cond_13
    const/4 v1, 0x4

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_14

    const/4 v1, 0x4

    aget-object v1, v3, v1

    invoke-virtual {p0, v1}, Lcom/t4game/GScene;->getDistanceTest(Ljava/util/Vector;)Z

    move-result v1

    goto :goto_3

    :cond_14
    const/16 v1, 0x8

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_15

    const/16 v1, 0x8

    aget-object v1, v3, v1

    invoke-virtual {p0, v1}, Lcom/t4game/GScene;->getDistanceTest(Ljava/util/Vector;)Z

    move-result v1

    goto :goto_3

    :cond_15
    const/4 v1, 0x5

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_16

    const/4 v1, 0x5

    aget-object v1, v3, v1

    invoke-virtual {p0, v1}, Lcom/t4game/GScene;->getDistanceTest(Ljava/util/Vector;)Z

    move-result v1

    goto :goto_3

    :cond_16
    aget-object v1, v3, v13

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_17

    aget-object v1, v3, v13

    invoke-virtual {p0, v1}, Lcom/t4game/GScene;->getDistanceTest(Ljava/util/Vector;)Z

    move-result v1

    goto :goto_3

    :cond_17
    const/4 v1, 0x7

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_18

    const/4 v1, 0x7

    aget-object v1, v3, v1

    invoke-virtual {p0, v1}, Lcom/t4game/GScene;->getDistanceTest(Ljava/util/Vector;)Z

    move-result v1

    goto/16 :goto_3

    :cond_18
    const/16 v1, 0x9

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_19

    const/16 v1, 0x9

    aget-object v1, v3, v1

    invoke-virtual {p0, v1}, Lcom/t4game/GScene;->getDistanceTest(Ljava/util/Vector;)Z

    move-result v1

    goto/16 :goto_3

    :cond_19
    move v1, v10

    goto/16 :goto_3
.end method

.method public GetNpc()I
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x2

    const/4 v9, 0x1

    iput-object v13, p0, Lcom/t4game/GScene;->listHead:Lcom/t4game/GSprite;

    const/16 v1, 0xa

    new-array v3, v1, [Ljava/util/Vector;

    move v1, v11

    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/t4game/GScene;->users:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/t4game/GSprite;

    iput-object v13, v1, Lcom/t4game/GSprite;->distancenext:Lcom/t4game/GSprite;

    iput-object v13, v1, Lcom/t4game/GSprite;->distancepre:Lcom/t4game/GSprite;

    iget v4, v1, Lcom/t4game/GSprite;->intId:I

    iget-object v5, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget v5, v5, Lcom/t4game/GUser;->intId:I

    if-eq v4, v5, :cond_1

    iget-boolean v4, v1, Lcom/t4game/GSprite;->visibleReady:Z

    if-eqz v4, :cond_1

    iget-object v4, v1, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    const/4 v5, 0x6

    aget-boolean v4, v4, v5

    if-nez v4, :cond_1

    iget-byte v4, v1, Lcom/t4game/GSprite;->canSelect:B

    if-ne v4, v9, :cond_1

    iget-short v4, v1, Lcom/t4game/GSprite;->mapX:S

    iget-short v5, v1, Lcom/t4game/GSprite;->mapY:S

    iget-object v6, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v6, v6, Lcom/t4game/GUser;->mapX:S

    iget-object v7, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v7, v7, Lcom/t4game/GUser;->mapY:S

    iget-object v8, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget v8, v8, Lcom/t4game/GUser;->viewRadius:I

    invoke-static {v4, v5, v6, v7, v8}, Lcom/t4game/Util;->testInterRound(IIIII)Z

    move-result v4

    if-eqz v4, :cond_1

    new-array v4, v12, [I

    iget-short v5, v1, Lcom/t4game/GSprite;->mapX:S

    iget-short v6, v1, Lcom/t4game/GSprite;->mapY:S

    iget-object v7, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v7, v7, Lcom/t4game/GUser;->mapX:S

    iget-object v8, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v8, v8, Lcom/t4game/GUser;->mapY:S

    invoke-static {v5, v6, v7, v8}, Lcom/t4game/Util;->getDistance2(SSSS)I

    move-result v5

    aput v5, v4, v11

    iget v5, v1, Lcom/t4game/GSprite;->intId:I

    aput v5, v4, v9

    aput v12, v4, v10

    iget-byte v5, v1, Lcom/t4game/GSprite;->canHit:B

    if-ne v5, v9, :cond_2

    aget-object v1, v3, v11

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v5, v5, Lcom/t4game/GameWorld;->teamList:Ljava/util/Hashtable;

    iget-object v1, v1, Lcom/t4game/GSprite;->id:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    aget-object v1, v3, v1

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x6

    aget-object v1, v3, v1

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/t4game/GScene;->npcs:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/t4game/GSprite;

    iput-object v13, v1, Lcom/t4game/GSprite;->distancenext:Lcom/t4game/GSprite;

    iput-object v13, v1, Lcom/t4game/GSprite;->distancepre:Lcom/t4game/GSprite;

    iget-short v2, v1, Lcom/t4game/GSprite;->mapX:S

    iget-short v5, v1, Lcom/t4game/GSprite;->mapY:S

    iget-object v6, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v6, v6, Lcom/t4game/GUser;->mapX:S

    iget-object v7, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v7, v7, Lcom/t4game/GUser;->mapY:S

    iget-object v8, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget v8, v8, Lcom/t4game/GUser;->viewRadius:I

    invoke-static {v2, v5, v6, v7, v8}, Lcom/t4game/Util;->testInterRound(IIIII)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, v1, Lcom/t4game/GSprite;->visibleReady:Z

    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    const/4 v5, 0x6

    aget-boolean v2, v2, v5

    if-nez v2, :cond_5

    iget-byte v2, v1, Lcom/t4game/GSprite;->canSelect:B

    if-ne v2, v9, :cond_5

    move-object v0, v1

    check-cast v0, Lcom/t4game/GNPC;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GNPC;->Flag:[B

    if-nez v2, :cond_6

    iget-byte v2, v1, Lcom/t4game/GSprite;->canHit:B

    if-nez v2, :cond_7

    :cond_6
    iget-short v2, v1, Lcom/t4game/GSprite;->mapX:S

    iget-short v5, v1, Lcom/t4game/GSprite;->mapY:S

    iget-object v6, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v6, v6, Lcom/t4game/GUser;->mapX:S

    iget-object v7, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v7, v7, Lcom/t4game/GUser;->mapY:S

    const/16 v8, 0x50

    invoke-static {v2, v5, v6, v7, v8}, Lcom/t4game/Util;->testInterRound(IIIII)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_7
    new-array v2, v12, [I

    iget-short v5, v1, Lcom/t4game/GSprite;->mapX:S

    iget-short v6, v1, Lcom/t4game/GSprite;->mapY:S

    iget-object v7, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v7, v7, Lcom/t4game/GUser;->mapX:S

    iget-object v8, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v8, v8, Lcom/t4game/GUser;->mapY:S

    invoke-static {v5, v6, v7, v8}, Lcom/t4game/Util;->getDistance2(SSSS)I

    move-result v5

    aput v5, v2, v11

    iget v5, v1, Lcom/t4game/GSprite;->intId:I

    aput v5, v2, v9

    aput v10, v2, v10

    iget-byte v5, v1, Lcom/t4game/GSprite;->relationState:B

    const/4 v6, 0x4

    if-ne v5, v6, :cond_9

    iget-byte v1, v1, Lcom/t4game/GSprite;->exType:B

    if-ne v1, v9, :cond_8

    const/16 v1, 0x9

    aget-object v1, v3, v1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    aget-object v1, v3, v9

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_9
    check-cast v1, Lcom/t4game/GNPC;

    iget-object v5, v1, Lcom/t4game/GNPC;->Flag:[B

    if-eqz v5, :cond_d

    iget-object v5, v1, Lcom/t4game/GNPC;->Flag:[B

    invoke-static {v5, v11}, Lcom/t4game/Util;->testNpcFlag([BB)Z

    move-result v5

    if-eqz v5, :cond_a

    aget-object v1, v3, v10

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_a
    iget-object v5, v1, Lcom/t4game/GNPC;->Flag:[B

    invoke-static {v5, v9}, Lcom/t4game/Util;->testNpcFlag([BB)Z

    move-result v5

    if-eqz v5, :cond_b

    aget-object v1, v3, v10

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_b
    iget-object v1, v1, Lcom/t4game/GNPC;->Flag:[B

    invoke-static {v1, v10}, Lcom/t4game/Util;->testNpcFlag([BB)Z

    move-result v1

    if-eqz v1, :cond_c

    aget-object v1, v3, v12

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_c
    const/4 v1, 0x4

    aget-object v1, v3, v1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_d
    iget-byte v1, v1, Lcom/t4game/GNPC;->canHit:B

    if-ne v1, v9, :cond_e

    const/16 v1, 0x8

    aget-object v1, v3, v1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_e
    const/4 v1, 0x7

    aget-object v1, v3, v1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_f
    aget-object v1, v3, v10

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_10

    aget-object v1, v3, v12

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-gtz v1, :cond_10

    const/4 v1, 0x4

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_11

    :cond_10
    move v1, v9

    :goto_3
    return v1

    :cond_11
    const/16 v1, 0x8

    aget-object v1, v3, v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_12

    move v1, v10

    goto :goto_3

    :cond_12
    move v1, v11

    goto :goto_3
.end method

.method public final addOutSprite(Lcom/t4game/GOuterSprite;)V
    .locals 2

    iget-byte v0, p1, Lcom/t4game/GOuterSprite;->type:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/GScene;->outerNpcs:Ljava/util/Hashtable;

    iget-object v1, p1, Lcom/t4game/GOuterSprite;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/t4game/GScene;->npcs:Ljava/util/Hashtable;

    iget-object v1, p1, Lcom/t4game/GOuterSprite;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/t4game/GOuterSprite;->id:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/t4game/GScene;->removeNpc(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p1, Lcom/t4game/GOuterSprite;->type:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/GScene;->outerUsers:Ljava/util/Hashtable;

    iget-object v1, p1, Lcom/t4game/GOuterSprite;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/t4game/GScene;->users:Ljava/util/Hashtable;

    iget-object v1, p1, Lcom/t4game/GOuterSprite;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/t4game/GOuterSprite;->id:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/t4game/GScene;->removeUser(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final addSprite(Lcom/t4game/GSprite;)V
    .locals 2

    iget-byte v0, p1, Lcom/t4game/GSprite;->type:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/GScene;->npcs:Ljava/util/Hashtable;

    iget-object v1, p1, Lcom/t4game/GSprite;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/t4game/GScene;->outerNpcs:Ljava/util/Hashtable;

    iget-object v1, p1, Lcom/t4game/GSprite;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p1, Lcom/t4game/GSprite;->type:B

    iget-object v1, p1, Lcom/t4game/GSprite;->id:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/t4game/GScene;->removeOutSprite(BLjava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/t4game/GScene;->addToStore(Lcom/t4game/GMapObject;)V

    return-void

    :cond_1
    iget-byte v0, p1, Lcom/t4game/GSprite;->type:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/GScene;->users:Ljava/util/Hashtable;

    iget-object v1, p1, Lcom/t4game/GSprite;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/t4game/GScene;->outerUsers:Ljava/util/Hashtable;

    iget-object v1, p1, Lcom/t4game/GSprite;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p1, Lcom/t4game/GSprite;->type:B

    iget-object v1, p1, Lcom/t4game/GSprite;->id:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/t4game/GScene;->removeOutSprite(BLjava/lang/String;)V

    goto :goto_0
.end method

.method public final addToStore(Lcom/t4game/GMapObject;)V
    .locals 3

    iget-byte v0, p1, Lcom/t4game/GMapObject;->store:B

    iget-object v1, p0, Lcom/t4game/GScene;->storeHeads:[Lcom/t4game/GMapObject;

    aget-object v1, v1, v0

    iput-object v1, p1, Lcom/t4game/GMapObject;->gnext:Lcom/t4game/GMapObject;

    const/4 v2, 0x0

    iput-object v2, p1, Lcom/t4game/GMapObject;->gpre:Lcom/t4game/GMapObject;

    if-eqz v1, :cond_0

    iput-object p1, v1, Lcom/t4game/GMapObject;->gpre:Lcom/t4game/GMapObject;

    :cond_0
    iget-object v1, p0, Lcom/t4game/GScene;->storeHeads:[Lcom/t4game/GMapObject;

    aput-object p1, v1, v0

    return-void
.end method

.method public final addToView(Lcom/t4game/GMapObject;Z)V
    .locals 5

    const/4 v4, 0x0

    iget-byte v0, p1, Lcom/t4game/GMapObject;->layer:B

    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/t4game/GMapObject;->visible:Z

    iget-object v1, p0, Lcom/t4game/GScene;->objheads:[Lcom/t4game/GMapObject;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/t4game/GScene;->objheads:[Lcom/t4game/GMapObject;

    iget-object v2, p0, Lcom/t4game/GScene;->objends:[Lcom/t4game/GMapObject;

    aput-object p1, v2, v0

    aput-object p1, v1, v0

    iput-object v4, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iput-object v4, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/t4game/GScene;->objheads:[Lcom/t4game/GMapObject;

    aget-object v1, v1, v0

    :goto_1
    if-eqz v1, :cond_4

    iget-short v2, v1, Lcom/t4game/GMapObject;->mapY:S

    iget-short v3, p1, Lcom/t4game/GMapObject;->mapY:S

    if-gt v2, v3, :cond_1

    iget-short v2, v1, Lcom/t4game/GMapObject;->mapY:S

    iget-short v3, p1, Lcom/t4game/GMapObject;->mapY:S

    if-ne v2, v3, :cond_3

    iget-short v2, v1, Lcom/t4game/GMapObject;->mapX:S

    iget-short v3, p1, Lcom/t4game/GMapObject;->mapX:S

    if-lt v2, v3, :cond_3

    :cond_1
    iget-object v2, v1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iput-object p1, v1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iput-object v1, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iput-object v2, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    if-nez v2, :cond_2

    iget-object v1, p0, Lcom/t4game/GScene;->objheads:[Lcom/t4game/GMapObject;

    aput-object p1, v1, v0

    goto :goto_0

    :cond_2
    iput-object p1, v2, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    goto :goto_0

    :cond_3
    iget-object v1, v1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/t4game/GScene;->objends:[Lcom/t4game/GMapObject;

    aget-object v1, v1, v0

    iput-object p1, v1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iget-object v1, p0, Lcom/t4game/GScene;->objends:[Lcom/t4game/GMapObject;

    aget-object v1, v1, v0

    iput-object v1, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iput-object v4, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iget-object v1, p0, Lcom/t4game/GScene;->objends:[Lcom/t4game/GMapObject;

    aput-object p1, v1, v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/t4game/GScene;->objends:[Lcom/t4game/GMapObject;

    aget-object v1, v1, v0

    :goto_2
    if-eqz v1, :cond_9

    iget-short v2, v1, Lcom/t4game/GMapObject;->mapY:S

    iget-short v3, p1, Lcom/t4game/GMapObject;->mapY:S

    if-lt v2, v3, :cond_6

    iget-short v2, v1, Lcom/t4game/GMapObject;->mapY:S

    iget-short v3, p1, Lcom/t4game/GMapObject;->mapY:S

    if-ne v2, v3, :cond_8

    iget-short v2, v1, Lcom/t4game/GMapObject;->mapX:S

    iget-short v3, p1, Lcom/t4game/GMapObject;->mapX:S

    if-gt v2, v3, :cond_8

    :cond_6
    iget-object v2, v1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iput-object p1, v1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iput-object v1, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iput-object v2, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    if-nez v2, :cond_7

    iget-object v1, p0, Lcom/t4game/GScene;->objends:[Lcom/t4game/GMapObject;

    aput-object p1, v1, v0

    goto :goto_0

    :cond_7
    iput-object p1, v2, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    goto :goto_0

    :cond_8
    iget-object v1, v1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/t4game/GScene;->objheads:[Lcom/t4game/GMapObject;

    aget-object v1, v1, v0

    iput-object p1, v1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iget-object v1, p0, Lcom/t4game/GScene;->objheads:[Lcom/t4game/GMapObject;

    aget-object v1, v1, v0

    iput-object v1, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iput-object v4, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iget-object v1, p0, Lcom/t4game/GScene;->objheads:[Lcom/t4game/GMapObject;

    aput-object p1, v1, v0

    goto/16 :goto_0
.end method

.method public final addUser(Lcom/t4game/GUser;)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/GScene;->users:Ljava/util/Hashtable;

    iget-object v1, p1, Lcom/t4game/GUser;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/t4game/GScene;->addToStore(Lcom/t4game/GMapObject;)V

    return-void
.end method

.method public canCross(BB)Z
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/t4game/GScene;->win_x:I

    invoke-virtual {p0, p1}, Lcom/t4game/GScene;->gridX2SceneX(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/GScene;->win_y:I

    invoke-virtual {p0, p2}, Lcom/t4game/GScene;->gridY2SceneY(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0}, Lcom/t4game/GScene;->sceneX2GridX(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/t4game/GScene;->sceneY2GridY(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/t4game/GScene;->getGridBlock(II)I

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/t4game/GScene;->getGridRemainderX(I)I

    move-result v0

    invoke-virtual {p0, v1}, Lcom/t4game/GScene;->getGridRemainderY(I)I

    move-result v1

    if-eqz v2, :cond_1

    add-int/lit8 v2, v2, -0x1

    sget-object v3, Lcom/t4game/GUtil;->HITMASK:[[B

    aget-object v2, v3, v2

    aget-byte v1, v2, v1

    sget-object v2, Lcom/t4game/GUtil;->BYTEMASK:[B

    shr-int/lit8 v0, v0, 0x1

    aget-byte v0, v2, v0

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public changeFoceWithSprites(B)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/t4game/GScene;->choicedSpriteId:I

    iget-object v1, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget v1, v1, Lcom/t4game/GUser;->intId:I

    if-ne v0, v1, :cond_2

    iget-byte v0, p0, Lcom/t4game/GScene;->choicedSpriteType:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/GScene;->listHead:Lcom/t4game/GSprite;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/GScene;->listHead:Lcom/t4game/GSprite;

    iget v0, v0, Lcom/t4game/GSprite;->intId:I

    iput v0, p0, Lcom/t4game/GScene;->choicedSpriteId:I

    iget-object v0, p0, Lcom/t4game/GScene;->listHead:Lcom/t4game/GSprite;

    iget-byte v0, v0, Lcom/t4game/GSprite;->type:B

    iput-byte v0, p0, Lcom/t4game/GScene;->choicedSpriteType:B

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/t4game/GScene;->initSpritesList(B)V

    iget-object v0, p0, Lcom/t4game/GScene;->listHead:Lcom/t4game/GSprite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GScene;->listHead:Lcom/t4game/GSprite;

    iget v0, v0, Lcom/t4game/GSprite;->intId:I

    iput v0, p0, Lcom/t4game/GScene;->choicedSpriteId:I

    iget-object v0, p0, Lcom/t4game/GScene;->listHead:Lcom/t4game/GSprite;

    iget-byte v0, v0, Lcom/t4game/GSprite;->type:B

    iput-byte v0, p0, Lcom/t4game/GScene;->choicedSpriteType:B

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/t4game/GScene;->choicedSpriteId:I

    iget-byte v1, p0, Lcom/t4game/GScene;->choicedSpriteType:B

    invoke-virtual {p0, v0, v1}, Lcom/t4game/GScene;->getSpriteFromHash(IB)Lcom/t4game/GSprite;

    move-result-object v0

    iget-object v0, v0, Lcom/t4game/GSprite;->distancenext:Lcom/t4game/GSprite;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget v0, v0, Lcom/t4game/GUser;->intId:I

    iput v0, p0, Lcom/t4game/GScene;->choicedSpriteId:I

    iget-object v0, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-byte v0, v0, Lcom/t4game/GUser;->type:B

    iput-byte v0, p0, Lcom/t4game/GScene;->choicedSpriteType:B

    iput-object v2, p0, Lcom/t4game/GScene;->listHead:Lcom/t4game/GSprite;

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/t4game/GScene;->choicedSpriteId:I

    iget-byte v1, p0, Lcom/t4game/GScene;->choicedSpriteType:B

    invoke-virtual {p0, v0, v1}, Lcom/t4game/GScene;->getSpriteFromHash(IB)Lcom/t4game/GSprite;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/t4game/GSprite;->distancenext:Lcom/t4game/GSprite;

    iget v1, v1, Lcom/t4game/GSprite;->intId:I

    iput v1, p0, Lcom/t4game/GScene;->choicedSpriteId:I

    iget-object v0, v0, Lcom/t4game/GSprite;->distancenext:Lcom/t4game/GSprite;

    iget-byte v0, v0, Lcom/t4game/GSprite;->type:B

    iput-byte v0, p0, Lcom/t4game/GScene;->choicedSpriteType:B

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget v0, v0, Lcom/t4game/GUser;->intId:I

    iput v0, p0, Lcom/t4game/GScene;->choicedSpriteId:I

    iget-object v0, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-byte v0, v0, Lcom/t4game/GUser;->type:B

    iput-byte v0, p0, Lcom/t4game/GScene;->choicedSpriteType:B

    iput-object v2, p0, Lcom/t4game/GScene;->listHead:Lcom/t4game/GSprite;

    goto :goto_0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 6

    const/4 v5, 0x0

    invoke-super {p0, p1}, Lcom/t4game/GMap;->draw(Ljavax/microedition/lcdui/Graphics;)V

    iget-boolean v0, p0, Lcom/t4game/GScene;->ready:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/GScene;->backMapId:B

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/GScene;->backGScene:Lcom/t4game/GSceneBackLayer;

    invoke-virtual {v0, p1}, Lcom/t4game/GSceneBackLayer;->draw(Ljavax/microedition/lcdui/Graphics;)V

    :cond_2
    :try_start_0
    iget v0, p0, Lcom/t4game/GScene;->screen_mapx:I

    iget v1, p0, Lcom/t4game/GScene;->screen_mapy:I

    iget-object v2, p0, Lcom/t4game/GScene;->screenSE:[Lcom/t4game/GSEItemObject;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/t4game/GScene;->screen_mapx:I

    iget-object v3, p0, Lcom/t4game/GScene;->screenSE:[Lcom/t4game/GSEItemObject;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-short v3, v3, Lcom/t4game/GSEItemObject;->offsetX:S

    add-int/2addr v2, v3

    iput v2, p0, Lcom/t4game/GScene;->screen_mapx:I

    iget v2, p0, Lcom/t4game/GScene;->screen_mapy:I

    iget-object v3, p0, Lcom/t4game/GScene;->screenSE:[Lcom/t4game/GSEItemObject;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-short v3, v3, Lcom/t4game/GSEItemObject;->offsetY:S

    add-int/2addr v2, v3

    iput v2, p0, Lcom/t4game/GScene;->screen_mapy:I

    :cond_3
    iget-object v2, p0, Lcom/t4game/GScene;->screenSE:[Lcom/t4game/GSEItemObject;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/t4game/GScene;->screenSE:[Lcom/t4game/GSEItemObject;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lcom/t4game/GSEItemObject;->draw(Ljavax/microedition/lcdui/Graphics;II)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_6

    invoke-direct {p0, p1}, Lcom/t4game/GScene;->drawLayer0(Ljavax/microedition/lcdui/Graphics;)V

    :goto_2
    iget-object v2, p0, Lcom/t4game/GScene;->screenSE:[Lcom/t4game/GSEItemObject;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/t4game/GScene;->onlyDrawSprite:Z

    :cond_4
    invoke-virtual {p0, p1}, Lcom/t4game/GScene;->drawShadow(Ljavax/microedition/lcdui/Graphics;)V

    invoke-direct {p0, p1}, Lcom/t4game/GScene;->drawPointer(Ljavax/microedition/lcdui/Graphics;)V

    iget-boolean v2, p0, Lcom/t4game/GScene;->onlyDrawSprite:Z

    if-eqz v2, :cond_7

    invoke-virtual {p0, p1}, Lcom/t4game/GScene;->drawLayer2(Ljavax/microedition/lcdui/Graphics;)V

    iget-object v2, p0, Lcom/t4game/GScene;->screenSE:[Lcom/t4game/GSEItemObject;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/t4game/GScene;->screenSE:[Lcom/t4game/GSEItemObject;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Lcom/t4game/GSEItemObject;->draw(Ljavax/microedition/lcdui/Graphics;II)Z

    :cond_5
    invoke-virtual {p0, p1}, Lcom/t4game/GScene;->drawLayer1(Ljavax/microedition/lcdui/Graphics;)V

    :goto_3
    invoke-virtual {p0, p1}, Lcom/t4game/GScene;->drawLayer1Name(Ljavax/microedition/lcdui/Graphics;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/t4game/GScene;->onlyDrawSprite:Z

    iget-object v2, p0, Lcom/t4game/GScene;->screenSE:[Lcom/t4game/GSEItemObject;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    iput v0, p0, Lcom/t4game/GScene;->screen_mapx:I

    iput v1, p0, Lcom/t4game/GScene;->screen_mapy:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/t4game/GScene;->onlyDrawSprite:Z

    goto :goto_2

    :cond_7
    invoke-virtual {p0, p1}, Lcom/t4game/GScene;->drawLayer1(Ljavax/microedition/lcdui/Graphics;)V

    invoke-virtual {p0, p1}, Lcom/t4game/GScene;->drawLayer2(Ljavax/microedition/lcdui/Graphics;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_8
    move v2, v5

    goto :goto_1
.end method

.method public drawArea(Ljavax/microedition/lcdui/Graphics;IIIIII)V
    .locals 27

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Lcom/t4game/GScene;->sceneX2GridX(I)I

    move-result v2

    add-int v3, p4, p6

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/t4game/GScene;->sceneX2GridX(I)I

    move-result v3

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/t4game/GScene;->sceneY2GridY(I)I

    move-result v4

    add-int v5, p5, p7

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/t4game/GScene;->sceneY2GridY(I)I

    move-result v5

    if-gez v4, :cond_f

    const/4 v4, 0x0

    move v9, v4

    :goto_0
    if-gez v2, :cond_e

    const/4 v2, 0x0

    move v10, v2

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gw:I

    move v2, v0

    if-le v3, v2, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gw:I

    move v2, v0

    move v11, v2

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gh:I

    move v2, v0

    if-le v5, v2, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gh:I

    move v2, v0

    move v12, v2

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    move-object v2, v0

    iget-object v13, v2, Lcom/t4game/GImageData;->data:[B

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gw:I

    move v2, v0

    mul-int/lit8 v14, v2, 0x6

    mul-int v2, v9, v14

    mul-int/lit8 v3, v10, 0x6

    add-int v15, v2, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    add-int v4, v16, p2

    add-int v5, v17, p3

    sub-int v2, v11, v10

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GScene;->GW:B

    move v3, v0

    mul-int v6, v2, v3

    sub-int v2, v12, v9

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GScene;->GH:B

    move v3, v0

    mul-int v7, v2, v3

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/t4game/GScene;->cleanMapBuffer(Ljavax/microedition/lcdui/Graphics;IIII)V

    move/from16 v18, v17

    move v2, v8

    move/from16 v17, v15

    move v15, v9

    :goto_4
    if-ge v15, v12, :cond_b

    move/from16 v19, v10

    move/from16 v20, v17

    move/from16 v21, v16

    move/from16 v22, v2

    :goto_5
    move/from16 v0, v19

    move v1, v11

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->map_gs:[B

    move-object/from16 v23, v0

    aget-byte v24, v23, v20

    sget-byte v2, Lcom/t4game/GScene;->LAYERSIGN_TERRAIN:B

    and-int v2, v2, v24

    if-eqz v2, :cond_4

    add-int/lit8 v2, v20, 0x1

    aget-byte v25, v23, v2

    add-int/lit8 v2, v20, 0x2

    sget-object v3, Lcom/t4game/GScene;->LAYERSIGNS:[B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    and-int v3, v3, v24

    if-eqz v3, :cond_1

    add-int/lit8 v26, v2, 0x1

    aget-byte v2, v23, v2

    and-int/lit8 v4, v2, 0xf

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v5, v2, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileAnimDataIdList:[[B

    move-object v2, v0

    aget-object v2, v2, v5

    aget-byte v2, v2, v4

    sget-object v3, Lcom/t4game/GScene;->FLIPSIGNS:[B

    const/4 v6, 0x0

    aget-byte v3, v3, v6

    and-int v3, v3, v25

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    move v8, v3

    :goto_6
    sget-object v3, Lcom/t4game/GScene;->FLIPSIGNSV:[B

    const/4 v6, 0x0

    aget-byte v3, v3, v6

    and-int v3, v3, v25

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    move v9, v3

    :goto_7
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    move-object v2, v0

    add-int v6, v21, p2

    add-int v7, v18, p3

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/t4game/GImageData;->drawTile(Ljavax/microedition/lcdui/Graphics;IIIIZZ)V

    :cond_0
    move/from16 v2, v26

    :cond_1
    sget-object v3, Lcom/t4game/GScene;->LAYERSIGNS:[B

    const/4 v4, 0x1

    aget-byte v3, v3, v4

    and-int v3, v3, v24

    if-eqz v3, :cond_3

    add-int/lit8 v26, v2, 0x1

    aget-byte v2, v23, v2

    and-int/lit8 v4, v2, 0xf

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v5, v2, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileAnimDataIdList:[[B

    move-object v2, v0

    aget-object v2, v2, v5

    aget-byte v2, v2, v4

    sget-object v3, Lcom/t4game/GScene;->FLIPSIGNS:[B

    const/4 v6, 0x1

    aget-byte v3, v3, v6

    and-int v3, v3, v25

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    move v8, v3

    :goto_8
    sget-object v3, Lcom/t4game/GScene;->FLIPSIGNSV:[B

    const/4 v6, 0x1

    aget-byte v3, v3, v6

    and-int v3, v3, v25

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    move v9, v3

    :goto_9
    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    move-object v2, v0

    add-int v6, v21, p2

    add-int v7, v18, p3

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/t4game/GImageData;->drawTile(Ljavax/microedition/lcdui/Graphics;IIIIZZ)V

    :cond_2
    move/from16 v2, v26

    :cond_3
    sget-object v3, Lcom/t4game/GScene;->LAYERSIGNS:[B

    const/4 v4, 0x2

    aget-byte v3, v3, v4

    and-int v3, v3, v24

    if-eqz v3, :cond_4

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v23, v2

    and-int/lit8 v3, v25, 0x1

    and-int/lit8 v4, v2, 0xf

    and-int/lit16 v5, v2, 0xf0

    shr-int/lit8 v5, v5, 0x4

    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v5, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileAnimDataIdList:[[B

    move-object v3, v0

    aget-object v3, v3, v5

    aget-byte v3, v3, v4

    and-int/lit16 v2, v2, 0xff

    aget-byte v2, v13, v2

    sget-object v6, Lcom/t4game/GScene;->FLIPSIGNS:[B

    const/4 v7, 0x2

    aget-byte v6, v6, v7

    and-int v6, v6, v25

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    move v8, v6

    :goto_a
    const/4 v9, 0x0

    if-nez v2, :cond_4

    const/4 v2, -0x1

    if-ne v3, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    move-object v2, v0

    add-int v6, v21, p2

    add-int v7, v18, p3

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v9}, Lcom/t4game/GImageData;->drawTile(Ljavax/microedition/lcdui/Graphics;IIIIZZ)V

    :cond_4
    add-int/lit8 v2, v22, 0x1

    add-int/lit8 v3, v20, 0x6

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GScene;->GW:B

    move v4, v0

    add-int v4, v4, v21

    add-int/lit8 v5, v19, 0x1

    move/from16 v19, v5

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v2

    goto/16 :goto_5

    :cond_5
    const/4 v3, 0x0

    move v8, v3

    goto/16 :goto_6

    :cond_6
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_7

    :cond_7
    const/4 v3, 0x0

    move v8, v3

    goto/16 :goto_8

    :cond_8
    const/4 v3, 0x0

    move v9, v3

    goto :goto_9

    :cond_9
    const/4 v6, 0x0

    move v8, v6

    goto :goto_a

    :cond_a
    add-int v2, v17, v14

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GScene;->GH:B

    move v3, v0

    add-int v3, v3, v18

    add-int/lit8 v4, v15, 0x1

    move v15, v4

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v2, v22

    goto/16 :goto_4

    :cond_b
    return-void

    :cond_c
    move v12, v5

    goto/16 :goto_3

    :cond_d
    move v11, v3

    goto/16 :goto_2

    :cond_e
    move v10, v2

    goto/16 :goto_1

    :cond_f
    move v9, v4

    goto/16 :goto_0
.end method

.method public final drawLayer1(Ljavax/microedition/lcdui/Graphics;)V
    .locals 4

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/t4game/GScene;->objheads:[Lcom/t4game/GMapObject;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_5

    iget-boolean v1, p0, Lcom/t4game/GScene;->onlyDrawSprite:Z

    if-eqz v1, :cond_2

    iget-byte v1, v0, Lcom/t4game/GMapObject;->type:B

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    iget-byte v1, v0, Lcom/t4game/GMapObject;->type:B

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-byte v1, v0, Lcom/t4game/GMapObject;->type:B

    if-ne v1, v3, :cond_1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/t4game/GMapObject;->draw(Ljavax/microedition/lcdui/Graphics;)V

    :cond_1
    :goto_1
    iget-object v0, v0, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    goto :goto_0

    :cond_2
    iget-byte v1, v0, Lcom/t4game/GMapObject;->type:B

    if-ne v1, v3, :cond_3

    iget-byte v1, v0, Lcom/t4game/GMapObject;->initState:B

    sget-byte v2, Lcom/t4game/GSprite;->INIT_STATE_INITED:B

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, p1}, Lcom/t4game/GMapObject;->draw(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_1

    :cond_3
    iget-byte v1, v0, Lcom/t4game/GMapObject;->type:B

    if-ne v1, v3, :cond_4

    iget-byte v1, v0, Lcom/t4game/GMapObject;->initState:B

    sget-byte v2, Lcom/t4game/GSprite;->INIT_STATE_INITED:B

    if-ne v1, v2, :cond_1

    invoke-virtual {v0, p1}, Lcom/t4game/GMapObject;->draw(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p1}, Lcom/t4game/GMapObject;->draw(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_1

    :cond_5
    return-void
.end method

.method public final drawLayer1Name(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/GScene;->objheads:[Lcom/t4game/GMapObject;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/t4game/GMapObject;->drawName(Ljavax/microedition/lcdui/Graphics;)V

    iget-object v0, v0, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drawLayer2(Ljavax/microedition/lcdui/Graphics;)V
    .locals 14

    iget-byte v0, p0, Lcom/t4game/GScene;->GW:B

    iget-byte v0, p0, Lcom/t4game/GScene;->GH:B

    iget v0, p0, Lcom/t4game/GScene;->map_gw:I

    mul-int/lit8 v8, v0, 0x6

    iget v0, p0, Lcom/t4game/GScene;->win_gy:I

    mul-int/2addr v0, v8

    iget v1, p0, Lcom/t4game/GScene;->win_gx:I

    mul-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/GScene;->win_gx:I

    invoke-virtual {p0, v1}, Lcom/t4game/GScene;->gridX2SceneX(I)I

    move-result v1

    iget v2, p0, Lcom/t4game/GScene;->screen_mapx:I

    sub-int v9, v1, v2

    iget v1, p0, Lcom/t4game/GScene;->win_gy:I

    invoke-virtual {p0, v1}, Lcom/t4game/GScene;->gridY2SceneY(I)I

    move-result v1

    iget v2, p0, Lcom/t4game/GScene;->screen_mapy:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/GScene;->win_gy:I

    move v10, v2

    move v11, v0

    move v5, v1

    :goto_0
    iget v0, p0, Lcom/t4game/GScene;->win_gy2:I

    if-ge v10, v0, :cond_7

    iget v0, p0, Lcom/t4game/GScene;->win_gx:I

    move v12, v0

    move v13, v11

    move v0, v9

    :goto_1
    iget v1, p0, Lcom/t4game/GScene;->win_gx2:I

    if-ge v12, v1, :cond_6

    iget-object v1, p0, Lcom/t4game/GScene;->map_gs:[B

    aget-byte v2, v1, v13

    sget-object v3, Lcom/t4game/GScene;->LAYERSIGNS:[B

    const/4 v4, 0x3

    aget-byte v3, v3, v4

    and-int/2addr v3, v2

    if-eqz v3, :cond_3

    add-int/lit8 v3, v13, 0x1

    aget-byte v6, v1, v3

    add-int/lit8 v3, v13, 0x2

    sget-object v4, Lcom/t4game/GScene;->LAYERSIGNS:[B

    const/4 v7, 0x0

    aget-byte v4, v4, v7

    and-int/2addr v4, v2

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    sget-object v4, Lcom/t4game/GScene;->LAYERSIGNS:[B

    const/4 v7, 0x1

    aget-byte v4, v4, v7

    and-int/2addr v4, v2

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    sget-object v4, Lcom/t4game/GScene;->LAYERSIGNS:[B

    const/4 v7, 0x2

    aget-byte v4, v4, v7

    and-int/2addr v4, v2

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    sget-object v4, Lcom/t4game/GScene;->LAYERSIGNS:[B

    const/4 v7, 0x3

    aget-byte v4, v4, v7

    and-int/2addr v2, v4

    if-eqz v2, :cond_3

    aget-byte v0, v1, v3

    invoke-virtual {p0, v12}, Lcom/t4game/GScene;->gridX2SceneX(I)I

    move-result v1

    iget v2, p0, Lcom/t4game/GScene;->screen_mapx:I

    sub-int v4, v1, v2

    and-int/lit8 v2, v0, 0xf

    and-int/lit16 v0, v0, 0xf0

    shr-int/lit8 v3, v0, 0x4

    iget-object v0, p0, Lcom/t4game/GScene;->tileAnimDataIdList:[[B

    aget-object v0, v0, v3

    aget-byte v0, v0, v2

    sget-object v1, Lcom/t4game/GScene;->FLIPSIGNS:[B

    const/4 v7, 0x3

    aget-byte v1, v1, v7

    and-int/2addr v1, v6

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    move v6, v1

    :goto_2
    const/4 v7, 0x0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/t4game/GImageData;->drawTile(Ljavax/microedition/lcdui/Graphics;IIIIZZ)V

    move v0, v4

    :cond_3
    :goto_3
    add-int/lit8 v1, v13, 0x6

    iget-byte v2, p0, Lcom/t4game/GScene;->GW:B

    add-int/2addr v0, v2

    add-int/lit8 v2, v12, 0x1

    move v12, v2

    move v13, v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    move v6, v1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/t4game/GScene;->tileAnimDataList:[Lcom/t4game/GTileAnimData;

    aget-object v2, v1, v0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/t4game/GTileAnimData;->drawTileAnim(Ljavax/microedition/lcdui/Graphics;IIZZ)V

    move v0, v4

    goto :goto_3

    :cond_6
    add-int v0, v11, v8

    iget-byte v1, p0, Lcom/t4game/GScene;->GH:B

    add-int/2addr v1, v5

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move v11, v0

    move v5, v1

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/t4game/GScene;->objheads:[Lcom/t4game/GMapObject;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    :goto_4
    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Lcom/t4game/GMapObject;->draw(Ljavax/microedition/lcdui/Graphics;)V

    iget-object v0, v0, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    goto :goto_4

    :cond_8
    return-void
.end method

.method public drawRoadFlag(Ljavax/microedition/lcdui/Graphics;)V
    .locals 12

    const/16 v11, 0xa

    const/4 v3, 0x1

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/t4game/GScene;->transferAreaList:[Lcom/t4game/GTransferArea;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/t4game/GScene;->transferAreaList:[Lcom/t4game/GTransferArea;

    array-length v6, v0

    move v7, v10

    :goto_0
    if-ge v7, v6, :cond_5

    iget-object v0, p0, Lcom/t4game/GScene;->transferAreaList:[Lcom/t4game/GTransferArea;

    aget-object v0, v0, v7

    iget-short v1, v0, Lcom/t4game/GTransferArea;->centerX:S

    iget-short v2, v0, Lcom/t4game/GTransferArea;->centerY:S

    iget-byte v4, v0, Lcom/t4game/GTransferArea;->alignX:B

    iget-byte v8, v0, Lcom/t4game/GTransferArea;->alignY:B

    iget-object v5, v0, Lcom/t4game/GTransferArea;->name:Ljava/lang/String;

    invoke-static {v5}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v5

    if-nez v8, :cond_3

    shr-int/lit8 v2, v5, 0x1

    sub-int/2addr v1, v2

    int-to-short v1, v1

    move v2, v10

    :cond_0
    :goto_1
    const/4 v8, 0x3

    if-ne v4, v8, :cond_4

    move v1, v11

    :cond_1
    :goto_2
    iget v4, p0, Lcom/t4game/GScene;->screen_mapx:I

    if-lt v1, v4, :cond_2

    iget v4, p0, Lcom/t4game/GScene;->screen_mapy:I

    if-lt v2, v4, :cond_2

    iget v4, p0, Lcom/t4game/GScene;->screen_mapx:I

    sget v8, Lcom/t4game/Defaults;->CANVAS_W:I

    add-int/2addr v4, v8

    if-gt v1, v4, :cond_2

    iget v4, p0, Lcom/t4game/GScene;->screen_mapy:I

    sget v8, Lcom/t4game/Defaults;->CANVAS_H:I

    add-int/2addr v4, v8

    if-gt v2, v4, :cond_2

    iget-object v0, v0, Lcom/t4game/GTransferArea;->name:Ljava/lang/String;

    iget v4, p0, Lcom/t4game/GScene;->screen_mapx:I

    sub-int/2addr v1, v4

    iget v4, p0, Lcom/t4game/GScene;->screen_mapy:I

    sub-int/2addr v2, v4

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintMapName(Ljava/lang/String;IIZLjavax/microedition/lcdui/Graphics;I)V

    :cond_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_3
    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    iget v2, p0, Lcom/t4game/GScene;->map_h:I

    sget v8, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v2, v8

    sub-int/2addr v2, v11

    int-to-short v2, v2

    shr-int/lit8 v8, v5, 0x1

    sub-int/2addr v1, v8

    int-to-short v1, v1

    goto :goto_1

    :cond_4
    if-ne v4, v3, :cond_1

    iget v1, p0, Lcom/t4game/GScene;->map_w:I

    sub-int/2addr v1, v5

    int-to-short v1, v1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public final drawShadow(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/GScene;->objheads:[Lcom/t4game/GMapObject;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/t4game/GMapObject;->drawButtom(Ljavax/microedition/lcdui/Graphics;)V

    iget-object v0, v0, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final drawSmallMap(Ljavax/microedition/lcdui/Graphics;SS)V
    .locals 25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gh:I

    move v5, v0

    const/16 v6, 0x10

    if-ge v5, v6, :cond_2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gh:I

    move v6, v0

    move v15, v6

    move/from16 v16, v5

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gw:I

    move v5, v0

    const/16 v6, 0x10

    if-ge v5, v6, :cond_5

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gw:I

    move v6, v0

    move/from16 v17, v6

    move/from16 v18, v5

    :goto_1
    const/16 v5, 0x10

    sub-int v5, v16, v5

    if-gez v5, :cond_0

    const/4 v5, 0x0

    :cond_0
    add-int/lit8 v6, v5, 0x30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gh:I

    move v7, v0

    if-le v6, v7, :cond_2f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gh:I

    move v5, v0

    const/16 v6, 0x30

    sub-int v6, v5, v6

    move/from16 v19, v5

    move/from16 v20, v6

    :goto_2
    const/16 v5, 0x10

    sub-int v5, v18, v5

    if-gez v5, :cond_1

    const/4 v5, 0x0

    :cond_1
    add-int/lit8 v6, v5, 0x30

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gw:I

    move v7, v0

    if-le v6, v7, :cond_2e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gw:I

    move v5, v0

    const/16 v6, 0x30

    sub-int v6, v5, v6

    move/from16 v21, v5

    move/from16 v22, v6

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->storeHeads:[Lcom/t4game/GMapObject;

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    move-object v13, v5

    :goto_4
    if-eqz v13, :cond_10

    iget-short v5, v13, Lcom/t4game/GMapObject;->gridX:S

    move v0, v5

    move/from16 v1, v22

    if-lt v0, v1, :cond_9

    iget-short v5, v13, Lcom/t4game/GMapObject;->gridX:S

    move v0, v5

    move/from16 v1, v21

    if-gt v0, v1, :cond_9

    iget-short v5, v13, Lcom/t4game/GMapObject;->gridY:S

    move v0, v5

    move/from16 v1, v20

    if-lt v0, v1, :cond_9

    iget-short v5, v13, Lcom/t4game/GMapObject;->gridY:S

    move v0, v5

    move/from16 v1, v19

    if-gt v0, v1, :cond_9

    iget-boolean v5, v13, Lcom/t4game/GMapObject;->visibleReady:Z

    if-eqz v5, :cond_9

    iget-byte v5, v13, Lcom/t4game/GMapObject;->type:B

    const/4 v6, 0x2

    if-ne v5, v6, :cond_c

    move-object v0, v13

    check-cast v0, Lcom/t4game/GNPC;

    move-object v8, v0

    iget-object v5, v8, Lcom/t4game/GNPC;->iconList:[B

    if-nez v5, :cond_8

    iget-byte v5, v8, Lcom/t4game/GNPC;->relationState:B

    const/4 v6, 0x4

    if-eq v5, v6, :cond_8

    iget-object v5, v13, Lcom/t4game/GMapObject;->gnext:Lcom/t4game/GMapObject;

    move-object v13, v5

    goto :goto_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    move-object v5, v0

    iget-short v5, v5, Lcom/t4game/GUser;->gridY:S

    const/16 v6, 0x8

    sub-int/2addr v5, v6

    int-to-short v5, v5

    if-gez v5, :cond_3

    const/4 v5, 0x0

    :cond_3
    add-int/lit8 v6, v5, 0x10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gh:I

    move v7, v0

    if-le v6, v7, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gh:I

    move v5, v0

    const/16 v6, 0x10

    sub-int/2addr v5, v6

    int-to-short v5, v5

    :cond_4
    add-int/lit8 v6, v5, 0x10

    int-to-short v6, v6

    move v15, v6

    move/from16 v16, v5

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    move-object v5, v0

    iget-short v5, v5, Lcom/t4game/GUser;->gridX:S

    const/16 v6, 0x8

    sub-int/2addr v5, v6

    int-to-short v5, v5

    if-gez v5, :cond_6

    const/4 v5, 0x0

    :cond_6
    add-int/lit8 v6, v5, 0x10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gw:I

    move v7, v0

    if-le v6, v7, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gw:I

    move v5, v0

    const/16 v6, 0x10

    sub-int/2addr v5, v6

    int-to-short v5, v5

    :cond_7
    add-int/lit8 v6, v5, 0x10

    int-to-short v6, v6

    move/from16 v17, v6

    move/from16 v18, v5

    goto/16 :goto_1

    :cond_8
    iget-byte v5, v8, Lcom/t4game/GNPC;->relationState:B

    invoke-static {v5}, Lcom/t4game/mmorpg/dreamgame/Palette;->getColor(B)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-short v5, v13, Lcom/t4game/GMapObject;->gridX:S

    move v0, v5

    move/from16 v1, v18

    if-lt v0, v1, :cond_a

    iget-short v5, v13, Lcom/t4game/GMapObject;->gridX:S

    move v0, v5

    move/from16 v1, v17

    if-gt v0, v1, :cond_a

    iget-short v5, v13, Lcom/t4game/GMapObject;->gridY:S

    move v0, v5

    move/from16 v1, v16

    if-lt v0, v1, :cond_a

    iget-short v5, v13, Lcom/t4game/GMapObject;->gridY:S

    if-gt v5, v15, :cond_a

    sub-int v5, v18, v22

    add-int v5, v5, p2

    iget-short v6, v13, Lcom/t4game/GMapObject;->gridX:S

    sub-int v6, v6, v18

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    sub-int v6, v16, v20

    add-int v6, v6, p3

    iget-short v7, v13, Lcom/t4game/GMapObject;->gridY:S

    sub-int v7, v7, v16

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x2

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :goto_5
    iget-object v5, v8, Lcom/t4game/GNPC;->iconList:[B

    if-eqz v5, :cond_9

    iget-object v5, v8, Lcom/t4game/GNPC;->iconList:[B

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_9

    iget-object v5, v8, Lcom/t4game/GNPC;->iconList:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    const/4 v6, 0x4

    if-ge v5, v6, :cond_9

    iget-short v5, v13, Lcom/t4game/GMapObject;->gridX:S

    move v0, v5

    move/from16 v1, v18

    if-lt v0, v1, :cond_b

    iget-short v5, v13, Lcom/t4game/GMapObject;->gridX:S

    move v0, v5

    move/from16 v1, v17

    if-gt v0, v1, :cond_b

    iget-short v5, v13, Lcom/t4game/GMapObject;->gridY:S

    move v0, v5

    move/from16 v1, v16

    if-lt v0, v1, :cond_b

    iget-short v5, v13, Lcom/t4game/GMapObject;->gridY:S

    if-gt v5, v15, :cond_b

    sget-object v5, Lcom/t4game/GNPC;->flagImage:Ljavax/microedition/lcdui/Image;

    sub-int v6, v18, v22

    add-int v6, v6, p2

    iget-short v7, v13, Lcom/t4game/GMapObject;->gridX:S

    sub-int v7, v7, v18

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    const/4 v7, 0x6

    sub-int/2addr v6, v7

    sub-int v7, v16, v20

    add-int v7, v7, p3

    iget-short v9, v13, Lcom/t4game/GMapObject;->gridY:S

    sub-int v9, v9, v16

    shl-int/lit8 v9, v9, 0x1

    add-int/2addr v7, v9

    const/16 v9, 0xd

    sub-int/2addr v7, v9

    iget-object v8, v8, Lcom/t4game/GNPC;->iconList:[B

    const/4 v9, 0x0

    aget-byte v8, v8, v9

    mul-int/lit8 v8, v8, 0xc

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/16 v11, 0xd

    move-object/from16 v12, p1

    invoke-static/range {v5 .. v12}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_9
    :goto_6
    iget-object v5, v13, Lcom/t4game/GMapObject;->gnext:Lcom/t4game/GMapObject;

    move-object v13, v5

    goto/16 :goto_4

    :cond_a
    iget-short v5, v13, Lcom/t4game/GMapObject;->gridX:S

    move v0, v5

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/Util;->getSmallMapxx(IIII)I

    move-result v5

    iget-short v6, v13, Lcom/t4game/GMapObject;->gridY:S

    move v0, v6

    move/from16 v1, v16

    move v2, v15

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/Util;->getSmallMapyy(IIII)I

    move-result v6

    add-int v5, v5, p2

    add-int v6, v6, p3

    const/4 v7, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto/16 :goto_5

    :cond_b
    iget-short v5, v13, Lcom/t4game/GMapObject;->gridX:S

    move v0, v5

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/Util;->getSmallMapxx(IIII)I

    move-result v6

    iget-short v5, v13, Lcom/t4game/GMapObject;->gridY:S

    move v0, v5

    move/from16 v1, v16

    move v2, v15

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/Util;->getSmallMapyy(IIII)I

    move-result v7

    sget-object v5, Lcom/t4game/GNPC;->flagImage:Ljavax/microedition/lcdui/Image;

    add-int v6, v6, p2

    const/4 v9, 0x6

    sub-int/2addr v6, v9

    add-int v7, v7, p3

    const/16 v9, 0xd

    sub-int/2addr v7, v9

    iget-object v8, v8, Lcom/t4game/GNPC;->iconList:[B

    const/4 v9, 0x0

    aget-byte v8, v8, v9

    mul-int/lit8 v8, v8, 0xc

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/16 v11, 0xd

    move-object/from16 v12, p1

    invoke-static/range {v5 .. v12}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_6

    :cond_c
    iget-byte v5, v13, Lcom/t4game/GMapObject;->type:B

    const/4 v6, 0x3

    if-ne v5, v6, :cond_9

    move-object v0, v13

    check-cast v0, Lcom/t4game/GUser;

    move-object v14, v0

    iget-byte v5, v14, Lcom/t4game/GUser;->relationState:B

    const/4 v6, 0x4

    if-ne v5, v6, :cond_e

    const/4 v5, 0x4

    invoke-static {v5}, Lcom/t4game/mmorpg/dreamgame/Palette;->getColor(B)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-short v5, v13, Lcom/t4game/GMapObject;->gridX:S

    move v0, v5

    move/from16 v1, v18

    if-lt v0, v1, :cond_d

    iget-short v5, v13, Lcom/t4game/GMapObject;->gridX:S

    move v0, v5

    move/from16 v1, v17

    if-gt v0, v1, :cond_d

    iget-short v5, v13, Lcom/t4game/GMapObject;->gridY:S

    move v0, v5

    move/from16 v1, v16

    if-lt v0, v1, :cond_d

    iget-short v5, v13, Lcom/t4game/GMapObject;->gridY:S

    if-gt v5, v15, :cond_d

    sub-int v5, v18, v22

    add-int v5, v5, p2

    iget-short v6, v13, Lcom/t4game/GMapObject;->gridX:S

    sub-int v6, v6, v18

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    sub-int v6, v16, v20

    add-int v6, v6, p3

    iget-short v7, v13, Lcom/t4game/GMapObject;->gridY:S

    sub-int v7, v7, v16

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x2

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto/16 :goto_6

    :cond_d
    iget-short v5, v13, Lcom/t4game/GMapObject;->gridX:S

    move v0, v5

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/Util;->getSmallMapxx(IIII)I

    move-result v5

    iget-short v6, v13, Lcom/t4game/GMapObject;->gridY:S

    move v0, v6

    move/from16 v1, v16

    move v2, v15

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/Util;->getSmallMapyy(IIII)I

    move-result v6

    add-int v5, v5, p2

    add-int v6, v6, p3

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto/16 :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    move-object v5, v0

    iget-object v5, v5, Lcom/t4game/GameWorld;->teamList:Ljava/util/Hashtable;

    iget-object v6, v14, Lcom/t4game/GUser;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-byte v5, v14, Lcom/t4game/GUser;->relationState:B

    invoke-static {v5}, Lcom/t4game/mmorpg/dreamgame/Palette;->getColor(B)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-short v5, v13, Lcom/t4game/GMapObject;->gridX:S

    move v0, v5

    move/from16 v1, v18

    if-lt v0, v1, :cond_f

    iget-short v5, v13, Lcom/t4game/GMapObject;->gridX:S

    move v0, v5

    move/from16 v1, v17

    if-gt v0, v1, :cond_f

    iget-short v5, v13, Lcom/t4game/GMapObject;->gridY:S

    move v0, v5

    move/from16 v1, v16

    if-lt v0, v1, :cond_f

    iget-short v5, v13, Lcom/t4game/GMapObject;->gridY:S

    if-gt v5, v15, :cond_f

    sub-int v5, v18, v22

    add-int v5, v5, p2

    iget-short v6, v13, Lcom/t4game/GMapObject;->gridX:S

    sub-int v6, v6, v18

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    sub-int v6, v16, v20

    add-int v6, v6, p3

    iget-short v7, v13, Lcom/t4game/GMapObject;->gridY:S

    sub-int v7, v7, v16

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x2

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto/16 :goto_6

    :cond_f
    iget-short v5, v13, Lcom/t4game/GMapObject;->gridX:S

    move v0, v5

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/Util;->getSmallMapxx(IIII)I

    move-result v5

    iget-short v6, v13, Lcom/t4game/GMapObject;->gridY:S

    move v0, v6

    move/from16 v1, v16

    move v2, v15

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/Util;->getSmallMapyy(IIII)I

    move-result v6

    add-int v5, v5, p2

    add-int v6, v6, p3

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto/16 :goto_6

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->outerNpcs:Ljava/util/Hashtable;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v13

    :cond_11
    :goto_7
    invoke-interface {v13}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface {v13}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/t4game/GOuterSprite;

    move-object v8, v0

    iget-object v5, v8, Lcom/t4game/GOuterSprite;->iconList:[B

    if-nez v5, :cond_12

    iget-byte v5, v8, Lcom/t4game/GOuterSprite;->relationState:B

    const/4 v6, 0x4

    if-ne v5, v6, :cond_11

    :cond_12
    iget-short v5, v8, Lcom/t4game/GOuterSprite;->gridX:S

    move v0, v5

    move/from16 v1, v22

    if-lt v0, v1, :cond_11

    iget-short v5, v8, Lcom/t4game/GOuterSprite;->gridX:S

    move v0, v5

    move/from16 v1, v21

    if-gt v0, v1, :cond_11

    iget-short v5, v8, Lcom/t4game/GOuterSprite;->gridY:S

    move v0, v5

    move/from16 v1, v20

    if-lt v0, v1, :cond_11

    iget-short v5, v8, Lcom/t4game/GOuterSprite;->gridY:S

    move v0, v5

    move/from16 v1, v19

    if-gt v0, v1, :cond_11

    iget-byte v5, v8, Lcom/t4game/GOuterSprite;->relationState:B

    invoke-static {v5}, Lcom/t4game/mmorpg/dreamgame/Palette;->getColor(B)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-short v5, v8, Lcom/t4game/GOuterSprite;->gridX:S

    move v0, v5

    move/from16 v1, v18

    if-lt v0, v1, :cond_13

    iget-short v5, v8, Lcom/t4game/GOuterSprite;->gridX:S

    move v0, v5

    move/from16 v1, v17

    if-gt v0, v1, :cond_13

    iget-short v5, v8, Lcom/t4game/GOuterSprite;->gridY:S

    move v0, v5

    move/from16 v1, v16

    if-lt v0, v1, :cond_13

    iget-short v5, v8, Lcom/t4game/GOuterSprite;->gridY:S

    if-gt v5, v15, :cond_13

    sub-int v5, v18, v22

    add-int v5, v5, p2

    iget-short v6, v8, Lcom/t4game/GOuterSprite;->gridX:S

    sub-int v6, v6, v18

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    sub-int v6, v16, v20

    add-int v6, v6, p3

    iget-short v7, v8, Lcom/t4game/GOuterSprite;->gridY:S

    sub-int v7, v7, v16

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    const/4 v7, 0x2

    const/4 v9, 0x2

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :goto_8
    iget-object v5, v8, Lcom/t4game/GOuterSprite;->iconList:[B

    if-eqz v5, :cond_11

    iget-object v5, v8, Lcom/t4game/GOuterSprite;->iconList:[B

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_11

    iget-object v5, v8, Lcom/t4game/GOuterSprite;->iconList:[B

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    const/4 v6, 0x4

    if-ge v5, v6, :cond_11

    iget-short v5, v8, Lcom/t4game/GOuterSprite;->gridX:S

    move v0, v5

    move/from16 v1, v18

    if-lt v0, v1, :cond_14

    iget-short v5, v8, Lcom/t4game/GOuterSprite;->gridX:S

    move v0, v5

    move/from16 v1, v17

    if-gt v0, v1, :cond_14

    iget-short v5, v8, Lcom/t4game/GOuterSprite;->gridY:S

    move v0, v5

    move/from16 v1, v16

    if-lt v0, v1, :cond_14

    iget-short v5, v8, Lcom/t4game/GOuterSprite;->gridY:S

    if-gt v5, v15, :cond_14

    sget-object v5, Lcom/t4game/GNPC;->flagImage:Ljavax/microedition/lcdui/Image;

    sub-int v6, v18, v22

    add-int v6, v6, p2

    iget-short v7, v8, Lcom/t4game/GOuterSprite;->gridX:S

    sub-int v7, v7, v18

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    const/4 v7, 0x6

    sub-int/2addr v6, v7

    sub-int v7, v16, v20

    add-int v7, v7, p3

    iget-short v9, v8, Lcom/t4game/GOuterSprite;->gridY:S

    sub-int v9, v9, v16

    shl-int/lit8 v9, v9, 0x1

    add-int/2addr v7, v9

    const/16 v9, 0xd

    sub-int/2addr v7, v9

    iget-object v8, v8, Lcom/t4game/GOuterSprite;->iconList:[B

    const/4 v9, 0x0

    aget-byte v8, v8, v9

    mul-int/lit8 v8, v8, 0xc

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/16 v11, 0xd

    move-object/from16 v12, p1

    invoke-static/range {v5 .. v12}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_7

    :cond_13
    iget-short v5, v8, Lcom/t4game/GOuterSprite;->gridX:S

    move v0, v5

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/Util;->getSmallMapxx(IIII)I

    move-result v5

    iget-short v6, v8, Lcom/t4game/GOuterSprite;->gridY:S

    move v0, v6

    move/from16 v1, v16

    move v2, v15

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/Util;->getSmallMapyy(IIII)I

    move-result v6

    add-int v5, v5, p2

    add-int v6, v6, p3

    const/4 v7, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto/16 :goto_8

    :cond_14
    iget-short v5, v8, Lcom/t4game/GOuterSprite;->gridX:S

    move v0, v5

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/Util;->getSmallMapxx(IIII)I

    move-result v6

    iget-short v5, v8, Lcom/t4game/GOuterSprite;->gridY:S

    move v0, v5

    move/from16 v1, v16

    move v2, v15

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/Util;->getSmallMapyy(IIII)I

    move-result v7

    sget-object v5, Lcom/t4game/GNPC;->flagImage:Ljavax/microedition/lcdui/Image;

    add-int v6, v6, p2

    const/4 v9, 0x6

    sub-int/2addr v6, v9

    add-int v7, v7, p3

    const/16 v9, 0xd

    sub-int/2addr v7, v9

    iget-object v8, v8, Lcom/t4game/GOuterSprite;->iconList:[B

    const/4 v9, 0x0

    aget-byte v8, v8, v9

    mul-int/lit8 v8, v8, 0xc

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/16 v11, 0xd

    move-object/from16 v12, p1

    invoke-static/range {v5 .. v12}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_7

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->outerUsers:Ljava/util/Hashtable;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v6

    :cond_16
    :goto_9
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_18

    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/t4game/GOuterSprite;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    move-object v7, v0

    iget-object v7, v7, Lcom/t4game/GameWorld;->teamList:Ljava/util/Hashtable;

    iget-object v8, v5, Lcom/t4game/GOuterSprite;->id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    iget-short v7, v5, Lcom/t4game/GOuterSprite;->gridX:S

    move v0, v7

    move/from16 v1, v22

    if-lt v0, v1, :cond_16

    iget-short v7, v5, Lcom/t4game/GOuterSprite;->gridX:S

    move v0, v7

    move/from16 v1, v21

    if-gt v0, v1, :cond_16

    iget-short v7, v5, Lcom/t4game/GOuterSprite;->gridY:S

    move v0, v7

    move/from16 v1, v20

    if-lt v0, v1, :cond_16

    iget-short v7, v5, Lcom/t4game/GOuterSprite;->gridY:S

    move v0, v7

    move/from16 v1, v19

    if-gt v0, v1, :cond_16

    iget-byte v7, v5, Lcom/t4game/GOuterSprite;->relationState:B

    invoke-static {v7}, Lcom/t4game/mmorpg/dreamgame/Palette;->getColor(B)I

    move-result v7

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-short v7, v5, Lcom/t4game/GOuterSprite;->gridX:S

    move v0, v7

    move/from16 v1, v18

    if-lt v0, v1, :cond_17

    iget-short v7, v5, Lcom/t4game/GOuterSprite;->gridX:S

    move v0, v7

    move/from16 v1, v17

    if-gt v0, v1, :cond_17

    iget-short v7, v5, Lcom/t4game/GOuterSprite;->gridY:S

    move v0, v7

    move/from16 v1, v16

    if-lt v0, v1, :cond_17

    iget-short v7, v5, Lcom/t4game/GOuterSprite;->gridY:S

    if-gt v7, v15, :cond_17

    sub-int v7, v18, v22

    add-int v7, v7, p2

    iget-short v8, v5, Lcom/t4game/GOuterSprite;->gridX:S

    sub-int v8, v8, v18

    shl-int/lit8 v8, v8, 0x1

    add-int/2addr v7, v8

    sub-int v8, v16, v20

    add-int v8, v8, p3

    iget-short v5, v5, Lcom/t4game/GOuterSprite;->gridY:S

    sub-int v5, v5, v16

    shl-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v8

    const/4 v8, 0x2

    const/4 v9, 0x2

    move-object/from16 v0, p1

    move v1, v7

    move v2, v5

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto :goto_9

    :cond_17
    iget-short v7, v5, Lcom/t4game/GOuterSprite;->gridX:S

    move v0, v7

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/Util;->getSmallMapxx(IIII)I

    move-result v7

    iget-short v5, v5, Lcom/t4game/GOuterSprite;->gridY:S

    move v0, v5

    move/from16 v1, v16

    move v2, v15

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/Util;->getSmallMapyy(IIII)I

    move-result v5

    add-int v7, v7, p2

    add-int v5, v5, p3

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p1

    move v1, v7

    move v2, v5

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto/16 :goto_9

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/t4game/GUser;->visibleReady:Z

    if-eqz v5, :cond_19

    const v5, 0xffffff

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    move-object v5, v0

    iget-short v5, v5, Lcom/t4game/GUser;->gridX:S

    move v0, v5

    move/from16 v1, v18

    if-lt v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    move-object v5, v0

    iget-short v5, v5, Lcom/t4game/GUser;->gridX:S

    move v0, v5

    move/from16 v1, v17

    if-gt v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    move-object v5, v0

    iget-short v5, v5, Lcom/t4game/GUser;->gridY:S

    move v0, v5

    move/from16 v1, v16

    if-lt v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    move-object v5, v0

    iget-short v5, v5, Lcom/t4game/GUser;->gridY:S

    if-gt v5, v15, :cond_1c

    sget v5, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v5, v5, 0x4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1b

    sub-int v5, v18, v22

    add-int v5, v5, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    move-object v6, v0

    iget-short v6, v6, Lcom/t4game/GUser;->gridX:S

    sub-int v6, v6, v18

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    sub-int v6, v16, v20

    add-int v6, v6, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    move-object v7, v0

    iget-short v7, v7, Lcom/t4game/GUser;->gridY:S

    sub-int v7, v7, v16

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x2

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_19
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->transferAreaList:[Lcom/t4game/GTransferArea;

    move-object v5, v0

    if-eqz v5, :cond_2d

    add-int/lit8 v5, p3, 0x40

    const/4 v6, 0x3

    sub-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x40

    const/4 v7, 0x3

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->transferAreaList:[Lcom/t4game/GTransferArea;

    move-object v7, v0

    array-length v7, v7

    const/4 v8, 0x0

    :goto_b
    if-ge v8, v7, :cond_2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->transferAreaList:[Lcom/t4game/GTransferArea;

    move-object v9, v0

    aget-object v9, v9, v8

    iget-object v10, v9, Lcom/t4game/GTransferArea;->transferPointList:[[S

    array-length v11, v10

    const/4 v12, 0x0

    :goto_c
    if-ge v12, v11, :cond_20

    aget-object v13, v10, v12

    const/4 v14, 0x0

    aget-short v14, v13, v14

    move v0, v14

    move/from16 v1, v22

    if-lt v0, v1, :cond_1a

    const/4 v14, 0x0

    aget-short v14, v13, v14

    move v0, v14

    move/from16 v1, v21

    if-gt v0, v1, :cond_1a

    const/4 v14, 0x1

    aget-short v14, v13, v14

    move v0, v14

    move/from16 v1, v20

    if-lt v0, v1, :cond_1a

    const/4 v14, 0x1

    aget-short v14, v13, v14

    move v0, v14

    move/from16 v1, v19

    if-gt v0, v1, :cond_1a

    sget v14, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v14, v14, 0x6

    const/16 v23, 0x3

    move v0, v14

    move/from16 v1, v23

    if-ge v0, v1, :cond_1e

    const v14, 0xffffff

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    :goto_d
    const/4 v14, 0x0

    aget-short v14, v13, v14

    move v0, v14

    move/from16 v1, v18

    if-lt v0, v1, :cond_1f

    const/4 v14, 0x0

    aget-short v14, v13, v14

    move v0, v14

    move/from16 v1, v17

    if-gt v0, v1, :cond_1f

    const/4 v14, 0x1

    aget-short v14, v13, v14

    move v0, v14

    move/from16 v1, v16

    if-lt v0, v1, :cond_1f

    const/4 v14, 0x1

    aget-short v14, v13, v14

    if-gt v14, v15, :cond_1f

    sub-int v14, v18, v22

    add-int v14, v14, p2

    const/16 v23, 0x0

    aget-short v23, v13, v23

    sub-int v23, v23, v18

    shl-int/lit8 v23, v23, 0x1

    add-int v14, v14, v23

    sub-int v23, v16, v20

    add-int v23, v23, p3

    const/16 v24, 0x1

    aget-short v13, v13, v24

    sub-int v13, v13, v16

    shl-int/lit8 v13, v13, 0x1

    add-int v13, v13, v23

    const/16 v23, 0x2

    const/16 v24, 0x2

    move-object/from16 v0, p1

    move v1, v14

    move v2, v13

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_1a
    :goto_e
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_c

    :cond_1b
    sub-int v5, v18, v22

    add-int v5, v5, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    move-object v6, v0

    iget-short v6, v6, Lcom/t4game/GUser;->gridX:S

    sub-int v6, v6, v18

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    sub-int v6, v16, v20

    add-int v6, v6, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    move-object v7, v0

    iget-short v7, v7, Lcom/t4game/GUser;->gridY:S

    sub-int v7, v7, v16

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/4 v7, 0x4

    const/4 v8, 0x4

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto/16 :goto_a

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    move-object v5, v0

    iget-short v5, v5, Lcom/t4game/GUser;->gridX:S

    move v0, v5

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/Util;->getSmallMapxx(IIII)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    move-object v6, v0

    iget-short v6, v6, Lcom/t4game/GUser;->gridY:S

    move v0, v6

    move/from16 v1, v16

    move v2, v15

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/Util;->getSmallMapyy(IIII)I

    move-result v6

    sget v7, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v7, v7, 0x4

    const/4 v8, 0x2

    if-ge v7, v8, :cond_1d

    add-int v5, v5, p2

    add-int v6, v6, p3

    const/4 v7, 0x2

    const/4 v8, 0x2

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto/16 :goto_a

    :cond_1d
    add-int v5, v5, p2

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    add-int v6, v6, p3

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    const/4 v7, 0x4

    const/4 v8, 0x4

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto/16 :goto_a

    :cond_1e
    const v14, 0xc004b5

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto/16 :goto_d

    :cond_1f
    const/4 v14, 0x0

    aget-short v14, v13, v14

    move v0, v14

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/Util;->getSmallMapxx(IIII)I

    move-result v14

    const/16 v23, 0x1

    aget-short v13, v13, v23

    move v0, v13

    move/from16 v1, v16

    move v2, v15

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/Util;->getSmallMapyy(IIII)I

    move-result v13

    add-int v14, v14, p2

    add-int v13, v13, p3

    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p1

    move v1, v14

    move v2, v13

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto/16 :goto_e

    :cond_20
    iget-short v9, v9, Lcom/t4game/GTransferArea;->transferSceneId:S

    const/4 v11, -0x1

    if-eq v9, v11, :cond_23

    array-length v9, v10

    if-lez v9, :cond_23

    const/4 v9, 0x0

    aget-object v9, v10, v9

    array-length v9, v9

    const/4 v11, 0x2

    if-lt v9, v11, :cond_23

    const v9, 0xffff00

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const/4 v9, 0x0

    aget-object v9, v10, v9

    const/4 v11, 0x0

    aget-short v9, v9, v11

    const/4 v11, 0x0

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget-short v10, v10, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    move v0, v9

    move/from16 v1, v18

    if-lt v0, v1, :cond_24

    move v0, v9

    move/from16 v1, v17

    if-gt v0, v1, :cond_24

    sub-int v11, v9, v18

    shl-int/lit8 v11, v11, 0x1

    add-int v11, v11, p2

    sub-int v13, v18, v22

    add-int/2addr v11, v13

    :cond_21
    :goto_f
    move v0, v10

    move/from16 v1, v16

    if-lt v0, v1, :cond_25

    if-gt v10, v15, :cond_25

    sub-int v12, v10, v16

    shl-int/lit8 v12, v12, 0x1

    add-int v12, v12, p3

    sub-int v13, v16, v20

    add-int/2addr v12, v13

    :cond_22
    :goto_10
    move v0, v9

    move/from16 v1, v22

    if-lt v0, v1, :cond_27

    move v0, v9

    move/from16 v1, v21

    if-gt v0, v1, :cond_27

    move v0, v10

    move/from16 v1, v20

    if-gt v0, v1, :cond_26

    add-int/lit8 v9, p3, 0x3

    const/4 v10, 0x2

    sub-int v10, v11, v10

    add-int/lit8 v12, p3, 0x5

    move-object/from16 v0, p1

    move v1, v11

    move v2, v9

    move v3, v10

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int/lit8 v9, p3, 0x3

    add-int/lit8 v10, v11, 0x2

    add-int/lit8 v12, p3, 0x5

    move-object/from16 v0, p1

    move v1, v11

    move v2, v9

    move v3, v10

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int/lit8 v9, p3, 0x3

    add-int/lit8 v10, p3, 0x7

    move-object/from16 v0, p1

    move v1, v11

    move v2, v9

    move v3, v11

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    :cond_23
    :goto_11
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_b

    :cond_24
    move v0, v9

    move/from16 v1, v22

    if-lt v0, v1, :cond_21

    move v0, v9

    move/from16 v1, v21

    if-gt v0, v1, :cond_21

    move v0, v9

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v22

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/Util;->getSmallMapxx(IIII)I

    move-result v11

    add-int v11, v11, p2

    goto :goto_f

    :cond_25
    move v0, v10

    move/from16 v1, v20

    if-lt v0, v1, :cond_22

    move v0, v10

    move/from16 v1, v19

    if-gt v0, v1, :cond_22

    move v0, v10

    move/from16 v1, v16

    move v2, v15

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/Util;->getSmallMapyy(IIII)I

    move-result v12

    add-int v12, v12, p3

    goto :goto_10

    :cond_26
    move v0, v10

    move/from16 v1, v19

    if-lt v0, v1, :cond_23

    const/4 v9, 0x2

    sub-int v9, v11, v9

    const/4 v10, 0x2

    sub-int v10, v5, v10

    move-object/from16 v0, p1

    move v1, v11

    move v2, v5

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int/lit8 v9, v11, 0x2

    const/4 v10, 0x2

    sub-int v10, v5, v10

    move-object/from16 v0, p1

    move v1, v11

    move v2, v5

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    const/4 v9, 0x2

    sub-int v9, v5, v9

    const/4 v10, 0x4

    sub-int v10, v5, v10

    move-object/from16 v0, p1

    move v1, v11

    move v2, v9

    move v3, v11

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    goto :goto_11

    :cond_27
    move v0, v9

    move/from16 v1, v22

    if-ge v0, v1, :cond_2a

    move v0, v10

    move/from16 v1, v20

    if-gt v0, v1, :cond_28

    add-int/lit8 v9, p2, 0x5

    add-int/lit8 v10, p3, 0x5

    add-int/lit8 v11, p2, 0x7

    add-int/lit8 v12, p3, 0x5

    move-object/from16 v0, p1

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int/lit8 v9, p2, 0x5

    add-int/lit8 v10, p3, 0x5

    add-int/lit8 v11, p2, 0x5

    add-int/lit8 v12, p3, 0x7

    move-object/from16 v0, p1

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int/lit8 v9, p2, 0x5

    add-int/lit8 v10, p3, 0x5

    add-int/lit8 v11, p2, 0x8

    add-int/lit8 v12, p3, 0x8

    move-object/from16 v0, p1

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    goto/16 :goto_11

    :cond_28
    move v0, v10

    move/from16 v1, v19

    if-lt v0, v1, :cond_29

    add-int/lit8 v9, p2, 0x5

    const/4 v10, 0x2

    sub-int v10, v5, v10

    add-int/lit8 v11, p2, 0x7

    const/4 v12, 0x2

    sub-int v12, v5, v12

    move-object/from16 v0, p1

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int/lit8 v9, p2, 0x5

    const/4 v10, 0x2

    sub-int v10, v5, v10

    add-int/lit8 v11, p2, 0x5

    const/4 v12, 0x4

    sub-int v12, v5, v12

    move-object/from16 v0, p1

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int/lit8 v9, p2, 0x5

    const/4 v10, 0x2

    sub-int v10, v5, v10

    add-int/lit8 v11, p2, 0x8

    const/4 v12, 0x5

    sub-int v12, v5, v12

    move-object/from16 v0, p1

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    goto/16 :goto_11

    :cond_29
    add-int/lit8 v9, p2, 0x3

    add-int/lit8 v10, p2, 0x5

    const/4 v11, 0x2

    sub-int v11, v12, v11

    move-object/from16 v0, p1

    move v1, v9

    move v2, v12

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int/lit8 v9, p2, 0x3

    add-int/lit8 v10, p2, 0x5

    add-int/lit8 v11, v12, 0x2

    move-object/from16 v0, p1

    move v1, v9

    move v2, v12

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int/lit8 v9, p2, 0x3

    add-int/lit8 v10, p2, 0x7

    move-object/from16 v0, p1

    move v1, v9

    move v2, v12

    move v3, v10

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    goto/16 :goto_11

    :cond_2a
    move v0, v9

    move/from16 v1, v21

    if-le v0, v1, :cond_23

    move v0, v10

    move/from16 v1, v20

    if-gt v0, v1, :cond_2b

    const/4 v9, 0x2

    sub-int v9, v6, v9

    add-int/lit8 v10, p3, 0x5

    const/4 v11, 0x4

    sub-int v11, v6, v11

    add-int/lit8 v12, p3, 0x5

    move-object/from16 v0, p1

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    const/4 v9, 0x2

    sub-int v9, v6, v9

    add-int/lit8 v10, p3, 0x5

    const/4 v11, 0x2

    sub-int v11, v6, v11

    add-int/lit8 v12, p3, 0x7

    move-object/from16 v0, p1

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    const/4 v9, 0x2

    sub-int v9, v6, v9

    add-int/lit8 v10, p3, 0x5

    const/4 v11, 0x5

    sub-int v11, v6, v11

    add-int/lit8 v12, p3, 0x8

    move-object/from16 v0, p1

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    goto/16 :goto_11

    :cond_2b
    move v0, v10

    move/from16 v1, v19

    if-lt v0, v1, :cond_2c

    const/4 v9, 0x2

    sub-int v9, v6, v9

    const/4 v10, 0x2

    sub-int v10, v5, v10

    const/4 v11, 0x4

    sub-int v11, v6, v11

    const/4 v12, 0x2

    sub-int v12, v5, v12

    move-object/from16 v0, p1

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    const/4 v9, 0x2

    sub-int v9, v6, v9

    const/4 v10, 0x2

    sub-int v10, v5, v10

    const/4 v11, 0x2

    sub-int v11, v6, v11

    const/4 v12, 0x4

    sub-int v12, v5, v12

    move-object/from16 v0, p1

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    const/4 v9, 0x2

    sub-int v9, v6, v9

    const/4 v10, 0x2

    sub-int v10, v5, v10

    const/4 v11, 0x5

    sub-int v11, v6, v11

    const/4 v12, 0x5

    sub-int v12, v5, v12

    move-object/from16 v0, p1

    move v1, v9

    move v2, v10

    move v3, v11

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    goto/16 :goto_11

    :cond_2c
    const/4 v9, 0x2

    sub-int v9, v6, v9

    const/4 v10, 0x4

    sub-int v10, v6, v10

    const/4 v11, 0x2

    sub-int v11, v12, v11

    move-object/from16 v0, p1

    move v1, v9

    move v2, v12

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    const/4 v9, 0x2

    sub-int v9, v6, v9

    const/4 v10, 0x4

    sub-int v10, v6, v10

    add-int/lit8 v11, v12, 0x2

    move-object/from16 v0, p1

    move v1, v9

    move v2, v12

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    const/4 v9, 0x2

    sub-int v9, v6, v9

    const/4 v10, 0x5

    sub-int v10, v6, v10

    move-object/from16 v0, p1

    move v1, v9

    move v2, v12

    move v3, v10

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    goto/16 :goto_11

    :cond_2d
    return-void

    :cond_2e
    move/from16 v21, v6

    move/from16 v22, v5

    goto/16 :goto_3

    :cond_2f
    move/from16 v19, v6

    move/from16 v20, v5

    goto/16 :goto_2
.end method

.method public final drawSmallMapWithMap(Ljavax/microedition/lcdui/Graphics;SS)V
    .locals 20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gh:I

    move v5, v0

    const/16 v6, 0x40

    if-ge v5, v6, :cond_2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gh:I

    move v6, v0

    const/16 v7, 0x40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gh:I

    move v8, v0

    sub-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0x1

    add-int v7, v7, p3

    int-to-short v7, v7

    move v13, v6

    move v14, v5

    move v15, v7

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gw:I

    move v5, v0

    const/16 v6, 0x40

    if-ge v5, v6, :cond_4

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gw:I

    move v6, v0

    const/16 v7, 0x40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gw:I

    move v8, v0

    sub-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0x1

    add-int v7, v7, p2

    int-to-short v7, v7

    move/from16 v16, v6

    move/from16 v17, v5

    move/from16 v18, v7

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->smallMapImage:Ljavax/microedition/lcdui/Image;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->smallMapImage:Ljavax/microedition/lcdui/Image;

    move-object v5, v0

    sub-int v6, v18, v17

    sub-int v7, v15, v14

    const/16 v8, 0x14

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->transferAreaList:[Lcom/t4game/GTransferArea;

    move-object v5, v0

    if-eqz v5, :cond_8

    add-int/lit8 v5, v15, 0x40

    const/4 v6, 0x3

    sub-int/2addr v5, v6

    add-int/lit8 v5, v18, 0x40

    const/4 v6, 0x3

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->transferAreaList:[Lcom/t4game/GTransferArea;

    move-object v5, v0

    array-length v5, v5

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v5, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->transferAreaList:[Lcom/t4game/GTransferArea;

    move-object v7, v0

    aget-object v7, v7, v6

    iget-object v7, v7, Lcom/t4game/GTransferArea;->transferPointList:[[S

    array-length v8, v7

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v8, :cond_7

    aget-object v10, v7, v9

    const/4 v11, 0x0

    aget-short v11, v10, v11

    move v0, v11

    move/from16 v1, v17

    if-lt v0, v1, :cond_1

    const/4 v11, 0x0

    aget-short v11, v10, v11

    move v0, v11

    move/from16 v1, v16

    if-gt v0, v1, :cond_1

    const/4 v11, 0x1

    aget-short v11, v10, v11

    if-lt v11, v14, :cond_1

    const/4 v11, 0x1

    aget-short v11, v10, v11

    if-gt v11, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    move-object v11, v0

    sget v11, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v11, v11, 0x6

    const/4 v12, 0x3

    if-ge v11, v12, :cond_6

    const v11, 0xffffff

    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    :goto_4
    const/4 v11, 0x0

    aget-short v11, v10, v11

    add-int v11, v11, v18

    sub-int v11, v11, v17

    const/4 v12, 0x1

    aget-short v10, v10, v12

    add-int/2addr v10, v15

    sub-int/2addr v10, v14

    const/4 v12, 0x1

    const/16 v19, 0x1

    move-object/from16 v0, p1

    move v1, v11

    move v2, v10

    move v3, v12

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    move-object v5, v0

    iget-short v5, v5, Lcom/t4game/GUser;->gridY:S

    const/16 v6, 0x20

    sub-int/2addr v5, v6

    int-to-short v5, v5

    add-int/lit8 v6, v5, 0x40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gh:I

    move v7, v0

    if-le v6, v7, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gh:I

    move v5, v0

    const/16 v6, 0x40

    sub-int/2addr v5, v6

    int-to-short v5, v5

    :cond_3
    add-int/lit8 v6, v5, 0x40

    int-to-short v6, v6

    if-gez v5, :cond_20

    const/4 v5, 0x0

    move v13, v6

    move v14, v5

    move/from16 v15, p3

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    move-object v5, v0

    iget-short v5, v5, Lcom/t4game/GUser;->gridX:S

    const/16 v6, 0x20

    sub-int/2addr v5, v6

    int-to-short v5, v5

    add-int/lit8 v6, v5, 0x40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gw:I

    move v7, v0

    if-le v6, v7, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GScene;->map_gw:I

    move v5, v0

    const/16 v6, 0x40

    sub-int/2addr v5, v6

    int-to-short v5, v5

    :cond_5
    add-int/lit8 v6, v5, 0x40

    int-to-short v6, v6

    if-gez v5, :cond_1f

    const/4 v5, 0x0

    move/from16 v16, v6

    move/from16 v17, v5

    move/from16 v18, p2

    goto/16 :goto_1

    :cond_6
    const v11, 0xc004b5

    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto :goto_4

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->storeHeads:[Lcom/t4game/GMapObject;

    move-object v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    move-object/from16 p3, v5

    :goto_5
    if-eqz p3, :cond_f

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridX:S

    move v5, v0

    move v0, v5

    move/from16 v1, v17

    if-lt v0, v1, :cond_b

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridX:S

    move v5, v0

    move v0, v5

    move/from16 v1, v16

    if-gt v0, v1, :cond_b

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridY:S

    move v5, v0

    if-lt v5, v14, :cond_b

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridY:S

    move v5, v0

    if-gt v5, v13, :cond_b

    move-object/from16 v0, p3

    iget-boolean v0, v0, Lcom/t4game/GMapObject;->visibleReady:Z

    move v5, v0

    if-eqz v5, :cond_b

    move-object/from16 v0, p3

    iget-byte v0, v0, Lcom/t4game/GMapObject;->type:B

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    move-object/from16 v0, p3

    check-cast v0, Lcom/t4game/GNPC;

    move-object/from16 p2, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/t4game/GNPC;->iconList:[B

    move-object v5, v0

    if-nez v5, :cond_9

    move-object/from16 v0, p2

    iget-byte v0, v0, Lcom/t4game/GNPC;->relationState:B

    move v5, v0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_9

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/t4game/GMapObject;->gnext:Lcom/t4game/GMapObject;

    move-object v5, v0

    move-object/from16 p3, v5

    goto :goto_5

    :cond_9
    move-object/from16 v0, p2

    iget-byte v0, v0, Lcom/t4game/GNPC;->relationState:B

    move v5, v0

    invoke-static {v5}, Lcom/t4game/mmorpg/dreamgame/Palette;->getColor(B)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridX:S

    move v5, v0

    move v0, v5

    move/from16 v1, v17

    if-lt v0, v1, :cond_a

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridX:S

    move v5, v0

    move v0, v5

    move/from16 v1, v16

    if-gt v0, v1, :cond_a

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridY:S

    move v5, v0

    if-lt v5, v14, :cond_a

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridY:S

    move v5, v0

    if-gt v5, v13, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    move-object v5, v0

    sget v5, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v5, v5, 0x4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_c

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridX:S

    move v5, v0

    add-int v5, v5, v18

    sub-int v5, v5, v17

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridY:S

    move v6, v0

    add-int/2addr v6, v15

    sub-int/2addr v6, v14

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_a
    :goto_6
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/t4game/GNPC;->iconList:[B

    move-object v5, v0

    if-eqz v5, :cond_b

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/t4game/GNPC;->iconList:[B

    move-object v5, v0

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/t4game/GNPC;->iconList:[B

    move-object v5, v0

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    const/4 v6, 0x4

    if-ge v5, v6, :cond_b

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridX:S

    move v5, v0

    move v0, v5

    move/from16 v1, v17

    if-lt v0, v1, :cond_b

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridX:S

    move v5, v0

    move v0, v5

    move/from16 v1, v16

    if-gt v0, v1, :cond_b

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridY:S

    move v5, v0

    if-lt v5, v14, :cond_b

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridY:S

    move v5, v0

    if-gt v5, v13, :cond_b

    sget-object v5, Lcom/t4game/GNPC;->flagImage:Ljavax/microedition/lcdui/Image;

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridX:S

    move v6, v0

    add-int v6, v6, v18

    sub-int v6, v6, v17

    const/4 v7, 0x6

    sub-int/2addr v6, v7

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridY:S

    move v7, v0

    add-int/2addr v7, v15

    sub-int/2addr v7, v14

    const/16 v8, 0xd

    sub-int/2addr v7, v8

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/t4game/GNPC;->iconList:[B

    move-object v8, v0

    const/4 v9, 0x0

    aget-byte v8, v8, v9

    mul-int/lit8 v8, v8, 0xc

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/16 v11, 0xd

    move-object/from16 v12, p1

    invoke-static/range {v5 .. v12}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_b
    :goto_7
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/t4game/GMapObject;->gnext:Lcom/t4game/GMapObject;

    move-object v5, v0

    move-object/from16 p3, v5

    goto/16 :goto_5

    :cond_c
    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridX:S

    move v5, v0

    add-int v5, v5, v18

    sub-int v5, v5, v17

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridY:S

    move v6, v0

    add-int/2addr v6, v15

    sub-int/2addr v6, v14

    const/4 v7, 0x2

    const/4 v8, 0x2

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto/16 :goto_6

    :cond_d
    move-object/from16 v0, p3

    iget-byte v0, v0, Lcom/t4game/GMapObject;->type:B

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_b

    move-object/from16 v0, p3

    check-cast v0, Lcom/t4game/GUser;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    move-object v6, v0

    iget-object v6, v6, Lcom/t4game/GameWorld;->teamList:Ljava/util/Hashtable;

    iget-object v7, v5, Lcom/t4game/GUser;->id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-byte v5, v5, Lcom/t4game/GUser;->relationState:B

    invoke-static {v5}, Lcom/t4game/mmorpg/dreamgame/Palette;->getColor(B)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridX:S

    move v5, v0

    move v0, v5

    move/from16 v1, v17

    if-lt v0, v1, :cond_b

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridX:S

    move v5, v0

    move v0, v5

    move/from16 v1, v16

    if-gt v0, v1, :cond_b

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridY:S

    move v5, v0

    if-lt v5, v14, :cond_b

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridY:S

    move v5, v0

    if-gt v5, v13, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    move-object v5, v0

    sget v5, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v5, v5, 0x4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_e

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridX:S

    move v5, v0

    add-int v5, v5, v18

    sub-int v5, v5, v17

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridY:S

    move v6, v0

    add-int/2addr v6, v15

    sub-int/2addr v6, v14

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto/16 :goto_7

    :cond_e
    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridX:S

    move v5, v0

    add-int v5, v5, v18

    sub-int v5, v5, v17

    move-object/from16 v0, p3

    iget-short v0, v0, Lcom/t4game/GMapObject;->gridY:S

    move v6, v0

    add-int/2addr v6, v15

    sub-int/2addr v6, v14

    const/4 v7, 0x2

    const/4 v8, 0x2

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto/16 :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->outerNpcs:Ljava/util/Hashtable;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v19

    :cond_10
    :goto_8
    invoke-interface/range {v19 .. v19}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface/range {v19 .. v19}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/t4game/GOuterSprite;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/t4game/GOuterSprite;->iconList:[B

    move-object v5, v0

    if-nez v5, :cond_11

    move-object/from16 v0, p2

    iget-byte v0, v0, Lcom/t4game/GOuterSprite;->relationState:B

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_10

    :cond_11
    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridX:S

    move v5, v0

    move v0, v5

    move/from16 v1, v17

    if-lt v0, v1, :cond_10

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridX:S

    move v5, v0

    move v0, v5

    move/from16 v1, v16

    if-gt v0, v1, :cond_10

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridY:S

    move v5, v0

    if-lt v5, v14, :cond_10

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridY:S

    move v5, v0

    if-gt v5, v13, :cond_10

    move-object/from16 v0, p2

    iget-byte v0, v0, Lcom/t4game/GOuterSprite;->relationState:B

    move v5, v0

    invoke-static {v5}, Lcom/t4game/mmorpg/dreamgame/Palette;->getColor(B)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridX:S

    move v5, v0

    move v0, v5

    move/from16 v1, v17

    if-lt v0, v1, :cond_12

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridX:S

    move v5, v0

    move v0, v5

    move/from16 v1, v16

    if-gt v0, v1, :cond_12

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridY:S

    move v5, v0

    if-lt v5, v14, :cond_12

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridY:S

    move v5, v0

    if-gt v5, v13, :cond_12

    sget v5, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v5, v5, 0x4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_13

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridX:S

    move v5, v0

    add-int v5, v5, v18

    sub-int v5, v5, v17

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridY:S

    move v6, v0

    add-int/2addr v6, v15

    sub-int/2addr v6, v14

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_12
    :goto_9
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/t4game/GOuterSprite;->iconList:[B

    move-object v5, v0

    if-eqz v5, :cond_10

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/t4game/GOuterSprite;->iconList:[B

    move-object v5, v0

    array-length v5, v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/t4game/GOuterSprite;->iconList:[B

    move-object v5, v0

    const/4 v6, 0x0

    aget-byte v5, v5, v6

    const/4 v6, 0x4

    if-ge v5, v6, :cond_10

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridX:S

    move v5, v0

    move v0, v5

    move/from16 v1, v17

    if-lt v0, v1, :cond_10

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridX:S

    move v5, v0

    move v0, v5

    move/from16 v1, v16

    if-gt v0, v1, :cond_10

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridY:S

    move v5, v0

    if-lt v5, v14, :cond_10

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridY:S

    move v5, v0

    if-gt v5, v13, :cond_10

    sget-object v5, Lcom/t4game/GNPC;->flagImage:Ljavax/microedition/lcdui/Image;

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridX:S

    move v6, v0

    add-int v6, v6, v18

    sub-int v6, v6, v17

    const/4 v7, 0x6

    sub-int/2addr v6, v7

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridY:S

    move v7, v0

    add-int/2addr v7, v15

    sub-int/2addr v7, v14

    const/16 v8, 0xd

    sub-int/2addr v7, v8

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/t4game/GOuterSprite;->iconList:[B

    move-object v8, v0

    const/4 v9, 0x0

    aget-byte v8, v8, v9

    mul-int/lit8 v8, v8, 0xc

    const/4 v9, 0x0

    const/16 v10, 0xc

    const/16 v11, 0xd

    move-object/from16 v12, p1

    invoke-static/range {v5 .. v12}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_8

    :cond_13
    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridX:S

    move v5, v0

    add-int v5, v5, v18

    sub-int v5, v5, v17

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridY:S

    move v6, v0

    add-int/2addr v6, v15

    sub-int/2addr v6, v14

    const/4 v7, 0x2

    const/4 v8, 0x2

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto/16 :goto_9

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->outerUsers:Ljava/util/Hashtable;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v5

    :cond_15
    :goto_a
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/t4game/GOuterSprite;

    move-object/from16 v0, p2

    iget-byte v0, v0, Lcom/t4game/GOuterSprite;->relationState:B

    move v6, v0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_16

    const/4 v6, 0x4

    invoke-static {v6}, Lcom/t4game/mmorpg/dreamgame/Palette;->getColor(B)I

    move-result v6

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridX:S

    move v6, v0

    move v0, v6

    move/from16 v1, v17

    if-lt v0, v1, :cond_16

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridX:S

    move v6, v0

    move v0, v6

    move/from16 v1, v16

    if-gt v0, v1, :cond_16

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridY:S

    move v6, v0

    if-lt v6, v14, :cond_16

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridY:S

    move v6, v0

    if-gt v6, v13, :cond_16

    sget v6, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v6, v6, 0x4

    const/4 v7, 0x2

    if-ge v6, v7, :cond_17

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridX:S

    move v6, v0

    add-int v6, v6, v18

    sub-int v6, v6, v17

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridY:S

    move v7, v0

    add-int/2addr v7, v15

    sub-int/2addr v7, v14

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_16
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    move-object v6, v0

    iget-object v6, v6, Lcom/t4game/GameWorld;->teamList:Ljava/util/Hashtable;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/t4game/GOuterSprite;->id:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridX:S

    move v6, v0

    move v0, v6

    move/from16 v1, v17

    if-lt v0, v1, :cond_15

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridX:S

    move v6, v0

    move v0, v6

    move/from16 v1, v16

    if-gt v0, v1, :cond_15

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridY:S

    move v6, v0

    if-lt v6, v14, :cond_15

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridY:S

    move v6, v0

    if-gt v6, v13, :cond_15

    move-object/from16 v0, p2

    iget-byte v0, v0, Lcom/t4game/GOuterSprite;->relationState:B

    move v6, v0

    invoke-static {v6}, Lcom/t4game/mmorpg/dreamgame/Palette;->getColor(B)I

    move-result v6

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v6, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v6, v6, 0x4

    const/4 v7, 0x2

    if-ge v6, v7, :cond_18

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridX:S

    move v6, v0

    add-int v6, v6, v18

    sub-int v6, v6, v17

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridY:S

    move v7, v0

    add-int/2addr v7, v15

    sub-int/2addr v7, v14

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto/16 :goto_a

    :cond_17
    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridX:S

    move v6, v0

    add-int v6, v6, v18

    sub-int v6, v6, v17

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridY:S

    move v7, v0

    add-int/2addr v7, v15

    sub-int/2addr v7, v14

    const/4 v8, 0x2

    const/4 v9, 0x2

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto/16 :goto_b

    :cond_18
    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridX:S

    move v6, v0

    add-int v6, v6, v18

    sub-int v6, v6, v17

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GOuterSprite;->gridY:S

    move v7, v0

    add-int/2addr v7, v15

    sub-int/2addr v7, v14

    const/4 v8, 0x2

    const/4 v9, 0x2

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto/16 :goto_a

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->users:Ljava/util/Hashtable;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v5

    :cond_1a
    :goto_c
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1c

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/t4game/GUser;

    move-object/from16 v0, p2

    iget-byte v0, v0, Lcom/t4game/GUser;->relationState:B

    move v6, v0

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1a

    const/4 v6, 0x4

    invoke-static {v6}, Lcom/t4game/mmorpg/dreamgame/Palette;->getColor(B)I

    move-result v6

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GUser;->gridX:S

    move v6, v0

    move v0, v6

    move/from16 v1, v17

    if-lt v0, v1, :cond_1a

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GUser;->gridX:S

    move v6, v0

    move v0, v6

    move/from16 v1, v16

    if-gt v0, v1, :cond_1a

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GUser;->gridY:S

    move v6, v0

    if-lt v6, v14, :cond_1a

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GUser;->gridY:S

    move v6, v0

    if-gt v6, v13, :cond_1a

    sget v6, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v6, v6, 0x4

    const/4 v7, 0x2

    if-ge v6, v7, :cond_1b

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GUser;->gridX:S

    move v6, v0

    add-int v6, v6, v18

    sub-int v6, v6, v17

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GUser;->gridY:S

    move v7, v0

    add-int/2addr v7, v15

    sub-int/2addr v7, v14

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto :goto_c

    :cond_1b
    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GUser;->gridX:S

    move v6, v0

    add-int v6, v6, v18

    sub-int v6, v6, v17

    move-object/from16 v0, p2

    iget-short v0, v0, Lcom/t4game/GUser;->gridY:S

    move v7, v0

    add-int/2addr v7, v15

    sub-int/2addr v7, v14

    const/4 v8, 0x2

    const/4 v9, 0x2

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto :goto_c

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    move-object v5, v0

    if-eqz v5, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/t4game/GUser;->visibleReady:Z

    if-eqz v5, :cond_1d

    const v5, 0xffffff

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    move-object v5, v0

    iget-short v5, v5, Lcom/t4game/GUser;->gridX:S

    move v0, v5

    move/from16 v1, v17

    if-lt v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    move-object v5, v0

    iget-short v5, v5, Lcom/t4game/GUser;->gridX:S

    move v0, v5

    move/from16 v1, v16

    if-gt v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    move-object v5, v0

    iget-short v5, v5, Lcom/t4game/GUser;->gridY:S

    if-lt v5, v14, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    move-object v5, v0

    iget-short v5, v5, Lcom/t4game/GUser;->gridY:S

    if-gt v5, v13, :cond_1d

    sget v5, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v5, v5, 0x4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    move-object v5, v0

    iget-short v5, v5, Lcom/t4game/GUser;->gridX:S

    add-int v5, v5, v18

    sub-int v5, v5, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    move-object v6, v0

    iget-short v6, v6, Lcom/t4game/GUser;->gridY:S

    add-int/2addr v6, v15

    sub-int/2addr v6, v14

    const/4 v7, 0x2

    const/4 v8, 0x2

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_1d
    :goto_d
    return-void

    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    move-object v5, v0

    iget-short v5, v5, Lcom/t4game/GUser;->gridX:S

    add-int v5, v5, v18

    sub-int v5, v5, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    move-object v6, v0

    iget-short v6, v6, Lcom/t4game/GUser;->gridY:S

    add-int/2addr v6, v15

    sub-int/2addr v6, v14

    const/4 v7, 0x4

    const/4 v8, 0x4

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto :goto_d

    :cond_1f
    move/from16 v16, v6

    move/from16 v17, v5

    move/from16 v18, p2

    goto/16 :goto_1

    :cond_20
    move v13, v6

    move v14, v5

    move/from16 v15, p3

    goto/16 :goto_0
.end method

.method public getDistanceTest(Ljava/util/Vector;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v2, v6

    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    aput-object v1, v0, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    array-length v1, v0

    const v2, 0xf4240

    move v3, v6

    move v4, v2

    move v2, v6

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v5, v0, v2

    aget v5, v5, v6

    if-le v4, v5, :cond_1

    move v3, v2

    move v4, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    array-length v1, v0

    if-lez v1, :cond_3

    aget-object v1, v0, v3

    const/4 v2, 0x2

    aget v1, v1, v2

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/t4game/GScene;->choicedSpriteType:B

    aget-object v0, v0, v3

    aget v0, v0, v7

    iput v0, p0, Lcom/t4game/GScene;->choicedSpriteId:I

    iget v0, p0, Lcom/t4game/GScene;->choicedSpriteId:I

    iget-byte v1, p0, Lcom/t4game/GScene;->choicedSpriteType:B

    invoke-virtual {p0, v0, v1}, Lcom/t4game/GScene;->getSpriteFromHash(IB)Lcom/t4game/GSprite;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/t4game/GSprite;->distancepre:Lcom/t4game/GSprite;

    move v0, v7

    :goto_2
    return v0

    :cond_3
    move v0, v6

    goto :goto_2
.end method

.method public final getGridBlock(II)I
    .locals 3

    iget v0, p0, Lcom/t4game/GScene;->map_gw:I

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lcom/t4game/GScene;->map_gs:[B

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/GScene;->map_gs:[B

    iget v1, p0, Lcom/t4game/GScene;->map_gw:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x6

    aget-byte v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    goto :goto_0
.end method

.method public getGuaJiAttackSprite()Lcom/t4game/GSprite;
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/t4game/GScene;->npcs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GSprite;

    iget-byte v3, v0, Lcom/t4game/GSprite;->exType:B

    if-eq v3, v9, :cond_0

    iget-byte v3, v0, Lcom/t4game/GSprite;->canHit:B

    if-ne v3, v9, :cond_1

    iget-byte v3, v0, Lcom/t4game/GSprite;->relationState:B

    if-ne v3, v11, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-byte v3, v3, Lcom/t4game/GUser;->guajiRedNameNPC:B

    if-ne v3, v9, :cond_0

    iget-byte v3, v0, Lcom/t4game/GSprite;->relationState:B

    if-ne v3, v11, :cond_0

    :cond_2
    iget-short v3, v0, Lcom/t4game/GSprite;->mapX:S

    iget-short v4, v0, Lcom/t4game/GSprite;->mapY:S

    iget-object v5, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v5, v5, Lcom/t4game/GUser;->mapX:S

    iget-object v6, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v6, v6, Lcom/t4game/GUser;->mapY:S

    const/16 v7, 0x64

    invoke-static {v3, v4, v5, v6, v7}, Lcom/t4game/Util;->testInterRound(IIIII)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/t4game/GSprite;->visibleReady:Z

    if-eqz v3, :cond_0

    iget-byte v3, v0, Lcom/t4game/GSprite;->canSelect:B

    if-ne v3, v9, :cond_0

    iget-object v3, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v4, v0, Lcom/t4game/GSprite;->mapX:S

    iget-short v5, v0, Lcom/t4game/GSprite;->mapY:S

    invoke-virtual {v3, v4, v5}, Lcom/t4game/GUser;->testCanMovep2p(II)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget-short v5, v0, Lcom/t4game/GSprite;->mapX:S

    iget-short v6, v0, Lcom/t4game/GSprite;->mapY:S

    iget-object v7, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v7, v7, Lcom/t4game/GUser;->mapX:S

    iget-object v8, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v8, v8, Lcom/t4game/GUser;->mapY:S

    invoke-static {v5, v6, v7, v8}, Lcom/t4game/Util;->getDistance2(SSSS)I

    move-result v5

    aput v5, v3, v4

    iget v0, v0, Lcom/t4game/GSprite;->intId:I

    aput v0, v3, v9

    aput v10, v3, v10

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lcom/t4game/GScene;->getDistanceTest(Ljava/util/Vector;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/t4game/GScene;->choicedSpriteId:I

    iget-byte v1, p0, Lcom/t4game/GScene;->choicedSpriteType:B

    invoke-virtual {p0, v0, v1}, Lcom/t4game/GScene;->getSpriteFromHash(IB)Lcom/t4game/GSprite;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getGuaJiAttackSprite2()Lcom/t4game/GSprite;
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    iget-object v0, p0, Lcom/t4game/GScene;->npcs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GSprite;

    iget-byte v3, v0, Lcom/t4game/GSprite;->exType:B

    if-eq v3, v9, :cond_0

    iget-byte v3, v0, Lcom/t4game/GSprite;->canHit:B

    if-ne v3, v9, :cond_0

    iget-short v3, v0, Lcom/t4game/GSprite;->mapX:S

    iget-short v4, v0, Lcom/t4game/GSprite;->mapY:S

    iget-object v5, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v5, v5, Lcom/t4game/GUser;->GuaJiX:S

    iget-object v6, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v6, v6, Lcom/t4game/GUser;->GuaJiY:S

    const/16 v7, 0x5a

    invoke-static {v3, v4, v5, v6, v7}, Lcom/t4game/Util;->testInterRound(IIIII)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, v0, Lcom/t4game/GSprite;->visibleReady:Z

    if-eqz v3, :cond_0

    iget-byte v3, v0, Lcom/t4game/GSprite;->canSelect:B

    if-ne v3, v9, :cond_0

    iget-object v3, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v4, v0, Lcom/t4game/GSprite;->mapX:S

    iget-short v5, v0, Lcom/t4game/GSprite;->mapY:S

    invoke-virtual {v3, v4, v5}, Lcom/t4game/GUser;->testCanMovep2p(II)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v0}, Lcom/t4game/GScene;->canGua(Lcom/t4game/GSprite;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget-short v5, v0, Lcom/t4game/GSprite;->mapX:S

    iget-short v6, v0, Lcom/t4game/GSprite;->mapY:S

    iget-object v7, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v7, v7, Lcom/t4game/GUser;->mapX:S

    iget-object v8, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v8, v8, Lcom/t4game/GUser;->mapY:S

    invoke-static {v5, v6, v7, v8}, Lcom/t4game/Util;->getDistance2(SSSS)I

    move-result v5

    aput v5, v3, v4

    iget v0, v0, Lcom/t4game/GSprite;->intId:I

    aput v0, v3, v9

    aput v10, v3, v10

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/t4game/GScene;->getDistanceTest(Ljava/util/Vector;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/t4game/GScene;->choicedSpriteId:I

    iget-byte v1, p0, Lcom/t4game/GScene;->choicedSpriteType:B

    invoke-virtual {p0, v0, v1}, Lcom/t4game/GScene;->getSpriteFromHash(IB)Lcom/t4game/GSprite;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getMapHeight()B
    .locals 2

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v1, 0x24

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    return v0
.end method

.method public getMapWidth()B
    .locals 1

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    div-int/lit8 v0, v0, 0x10

    int-to-byte v0, v0

    return v0
.end method

.method public final getOutSprite(IB)Lcom/t4game/GOuterSprite;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/GScene;->outerNpcs:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/GOuterSprite;

    move-object v0, p0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/GScene;->outerUsers:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/GOuterSprite;

    move-object v0, p0

    goto :goto_0
.end method

.method public getSpriteFromHash(IB)Lcom/t4game/GSprite;
    .locals 2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/t4game/GScene;->npcs:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/GSprite;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/GScene;->users:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/GSprite;

    move-object v0, p0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Ljava/io/InputStream;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    :try_start_0
    iget-byte v0, p0, Lcom/t4game/GScene;->GW:B

    iget-byte v0, p0, Lcom/t4game/GScene;->GH:B

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v0

    iput v0, p0, Lcom/t4game/GScene;->map_gw:I

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v0

    iput v0, p0, Lcom/t4game/GScene;->map_gh:I

    iget v0, p0, Lcom/t4game/GScene;->map_gw:I

    invoke-virtual {p0, v0}, Lcom/t4game/GScene;->gridX2SceneX(I)I

    move-result v0

    iput v0, p0, Lcom/t4game/GScene;->map_w:I

    iget v0, p0, Lcom/t4game/GScene;->map_gh:I

    invoke-virtual {p0, v0}, Lcom/t4game/GScene;->gridX2SceneX(I)I

    move-result v0

    iput v0, p0, Lcom/t4game/GScene;->map_h:I

    invoke-direct {p0, p1}, Lcom/t4game/GScene;->initTileImageData(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-lez v0, :cond_0

    new-array v1, v0, [Lcom/t4game/GTileAnimData;

    iput-object v1, p0, Lcom/t4game/GScene;->tileAnimDataList:[Lcom/t4game/GTileAnimData;

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v2, Lcom/t4game/GTileAnimData;

    invoke-direct {v2}, Lcom/t4game/GTileAnimData;-><init>()V

    iput-object p0, v2, Lcom/t4game/GTileAnimData;->scene:Lcom/t4game/GScene;

    invoke-virtual {v2, p1}, Lcom/t4game/GTileAnimData;->init(Ljava/io/InputStream;)V

    iget-object v3, p0, Lcom/t4game/GScene;->tileAnimDataList:[Lcom/t4game/GTileAnimData;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/t4game/GScene;->map_gw:I

    iget v1, p0, Lcom/t4game/GScene;->map_gh:I

    invoke-static {p1, v0, v1}, Lcom/t4game/GScene;->readMapData(Ljava/io/InputStream;II)[B

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/GScene;->map_gs:[B

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v1

    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/t4game/GDataManager;->getFromPool(B)Lcom/t4game/AbstractPoolObject;

    move-result-object v0

    check-cast v0, Lcom/t4game/GDoodadObject;

    iput-object p0, v0, Lcom/t4game/GDoodadObject;->scene:Lcom/t4game/GScene;

    invoke-virtual {v0, p1}, Lcom/t4game/GDoodadObject;->init(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lcom/t4game/GScene;->addToStore(Lcom/t4game/GMapObject;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-lez v0, :cond_2

    new-array v1, v0, [Lcom/t4game/GTransferArea;

    iput-object v1, p0, Lcom/t4game/GScene;->transferAreaList:[Lcom/t4game/GTransferArea;

    move v1, v4

    :goto_2
    if-ge v1, v0, :cond_2

    new-instance v2, Lcom/t4game/GTransferArea;

    invoke-direct {v2, p0}, Lcom/t4game/GTransferArea;-><init>(Lcom/t4game/GScene;)V

    invoke-virtual {v2, p1}, Lcom/t4game/GTransferArea;->init(Ljava/io/InputStream;)V

    iget-object v3, p0, Lcom/t4game/GScene;->transferAreaList:[Lcom/t4game/GTransferArea;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lcom/t4game/GUtil;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/t4game/GScene;->backColor:I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GScene;->mapType:B

    iget-byte v0, p0, Lcom/t4game/GScene;->mapType:B

    shr-int/lit8 v0, v0, 0x7

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v6, :cond_5

    move v0, v4

    :goto_3
    iput-byte v0, p0, Lcom/t4game/GScene;->backMapId:B

    iget-byte v0, p0, Lcom/t4game/GScene;->mapType:B

    and-int/lit8 v0, v0, 0x7f

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GScene;->mapType:B

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GScene;->countryId:B

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GScene;->worldMapDataId:S

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GScene;->musicId:B

    invoke-static {p1}, Lcom/t4game/GUtil;->readUTF(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/GScene;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/t4game/GUtil;->readUnsignedShort(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/t4game/GScene;->entranceSceneId:I

    iget-byte v0, p0, Lcom/t4game/GScene;->backMapId:B

    if-eq v0, v5, :cond_4

    iget-object v0, p0, Lcom/t4game/GScene;->backGScene:Lcom/t4game/GSceneBackLayer;

    if-nez v0, :cond_3

    new-instance v0, Lcom/t4game/GSceneBackLayer;

    invoke-direct {v0}, Lcom/t4game/GSceneBackLayer;-><init>()V

    iput-object v0, p0, Lcom/t4game/GScene;->backGScene:Lcom/t4game/GSceneBackLayer;

    :cond_3
    iget-object v0, p0, Lcom/t4game/GScene;->backGScene:Lcom/t4game/GSceneBackLayer;

    invoke-virtual {v0, p1}, Lcom/t4game/GSceneBackLayer;->init(Ljava/io/InputStream;)Z

    :cond_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/t4game/GScene;->win_gx:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/t4game/GScene;->win_gy:I

    invoke-direct {p0}, Lcom/t4game/GScene;->readySmallMap()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/GScene;->ready:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v6

    :goto_4
    return v0

    :cond_5
    move v0, v5

    goto :goto_3

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v2, Lcom/t4game/GameWorld;->typeLoginErr:B

    iput-byte v2, v1, Lcom/t4game/GameWorld;->returnTypeForJionSence:B

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v4

    goto :goto_4
.end method

.method public initFromBytes([B)Z
    .locals 3

    :try_start_0
    invoke-static {p1}, Lcom/t4game/GZIP;->inflate([B)[B

    move-result-object v0

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v1}, Lcom/t4game/GScene;->init(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/t4game/GScene;->state:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/t4game/GScene;->state:B

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initFromJar()Z
    .locals 3

    :try_start_0
    sget-object v0, Lcom/t4game/GDataManager;->DATATYPE_NAMES:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/GScene;->type:B

    aget-object v0, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/t4game/GUtil;->dataPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/GScene;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4game/GUtil;->loadFile(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/t4game/GZIP;->inflate([B)[B

    move-result-object v0

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v1}, Lcom/t4game/GScene;->init(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/t4game/GScene;->state:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/t4game/GScene;->state:B

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initMapBuffer(II)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/GScene;->mapBuffer:Lcom/t4game/MapBuffer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/t4game/MapBuffer;

    invoke-direct {v0, p0}, Lcom/t4game/MapBuffer;-><init>(Lcom/t4game/GScene;)V

    iput-object v0, p0, Lcom/t4game/GScene;->mapBuffer:Lcom/t4game/MapBuffer;

    :cond_0
    iget-object v0, p0, Lcom/t4game/GScene;->mapBuffer:Lcom/t4game/MapBuffer;

    invoke-virtual {v0, p1, p2}, Lcom/t4game/MapBuffer;->initBuf(II)V

    return-void
.end method

.method public initSpritesList(B)V
    .locals 14

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GScene;->listHead:Lcom/t4game/GSprite;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/GScene;->users:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GSprite;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/t4game/GSprite;->distancenext:Lcom/t4game/GSprite;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/t4game/GSprite;->distancepre:Lcom/t4game/GSprite;

    iget v3, v0, Lcom/t4game/GSprite;->intId:I

    iget-object v4, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget v4, v4, Lcom/t4game/GUser;->intId:I

    if-eq v3, v4, :cond_1

    iget-boolean v3, v0, Lcom/t4game/GSprite;->visibleReady:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    const/4 v4, 0x6

    aget-boolean v3, v3, v4

    if-nez v3, :cond_1

    iget-byte v3, v0, Lcom/t4game/GSprite;->canSelect:B

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    iget-byte v3, v0, Lcom/t4game/GSprite;->canHit:B

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    :cond_2
    iget-short v3, v0, Lcom/t4game/GSprite;->mapX:S

    iget-short v4, v0, Lcom/t4game/GSprite;->mapY:S

    iget-object v5, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v5, v5, Lcom/t4game/GUser;->mapX:S

    iget-object v6, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v6, v6, Lcom/t4game/GUser;->mapY:S

    iget-object v7, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget v7, v7, Lcom/t4game/GUser;->viewRadius:I

    invoke-static {v3, v4, v5, v6, v7}, Lcom/t4game/Util;->testInterRound(IIIII)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget-short v5, v0, Lcom/t4game/GSprite;->mapX:S

    iget-short v6, v0, Lcom/t4game/GSprite;->mapY:S

    iget-object v7, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v7, v7, Lcom/t4game/GUser;->mapX:S

    iget-object v8, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v8, v8, Lcom/t4game/GUser;->mapY:S

    invoke-static {v5, v6, v7, v8}, Lcom/t4game/Util;->getDistance2(SSSS)I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    iget v0, v0, Lcom/t4game/GSprite;->intId:I

    aput v0, v3, v4

    const/4 v0, 0x2

    const/4 v4, 0x3

    aput v4, v3, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2

    iget-object v3, p0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->teamList:Ljava/util/Hashtable;

    iget-object v4, v0, Lcom/t4game/GSprite;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_4
    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/t4game/GScene;->npcs:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GSprite;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/t4game/GSprite;->distancenext:Lcom/t4game/GSprite;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/t4game/GSprite;->distancepre:Lcom/t4game/GSprite;

    iget-short v3, v0, Lcom/t4game/GSprite;->mapX:S

    iget-short v4, v0, Lcom/t4game/GSprite;->mapY:S

    iget-object v5, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v5, v5, Lcom/t4game/GUser;->mapX:S

    iget-object v6, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v6, v6, Lcom/t4game/GUser;->mapY:S

    iget-object v7, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget v7, v7, Lcom/t4game/GUser;->viewRadius:I

    invoke-static {v3, v4, v5, v6, v7}, Lcom/t4game/Util;->testInterRound(IIIII)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-boolean v3, v0, Lcom/t4game/GSprite;->visibleReady:Z

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    const/4 v4, 0x6

    aget-boolean v3, v3, v4

    if-nez v3, :cond_5

    iget-byte v3, v0, Lcom/t4game/GSprite;->canSelect:B

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    const/4 v3, 0x3

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget-short v5, v0, Lcom/t4game/GSprite;->mapX:S

    iget-short v6, v0, Lcom/t4game/GSprite;->mapY:S

    iget-object v7, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v7, v7, Lcom/t4game/GUser;->mapX:S

    iget-object v8, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v8, v8, Lcom/t4game/GUser;->mapY:S

    invoke-static {v5, v6, v7, v8}, Lcom/t4game/Util;->getDistance2(SSSS)I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    iget v0, v0, Lcom/t4game/GSprite;->intId:I

    aput v0, v3, v4

    const/4 v0, 0x2

    const/4 v4, 0x2

    aput v4, v3, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    const/4 v0, 0x0

    move v4, v0

    :goto_3
    const/4 v0, 0x1

    if-ge v4, v0, :cond_d

    aget-object v0, v2, v4

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v0, 0x3

    filled-new-array {v5, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    const/4 v1, 0x0

    move v6, v1

    :goto_4
    if-ge v6, v5, :cond_7

    aget-object v1, v2, v4

    invoke-virtual {v1, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    check-cast v1, [I

    aput-object v1, v0, v6

    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_4

    :cond_7
    array-length v1, v0

    const/4 v5, 0x1

    :goto_5
    if-ge v5, v1, :cond_a

    aget-object v6, v0, v5

    const/4 v7, 0x0

    aget v6, v6, v7

    aget-object v7, v0, v5

    const/4 v8, 0x1

    aget v7, v7, v8

    aget-object v8, v0, v5

    const/4 v9, 0x2

    aget v8, v8, v9

    move v9, v5

    :cond_8
    const/4 v10, 0x1

    sub-int v10, v9, v10

    aget-object v10, v0, v10

    const/4 v11, 0x0

    aget v10, v10, v11

    if-le v10, v6, :cond_9

    aget-object v10, v0, v9

    const/4 v11, 0x0

    const/4 v12, 0x1

    sub-int v12, v9, v12

    aget-object v12, v0, v12

    const/4 v13, 0x0

    aget v12, v12, v13

    aput v12, v10, v11

    aget-object v10, v0, v9

    const/4 v11, 0x1

    const/4 v12, 0x1

    sub-int v12, v9, v12

    aget-object v12, v0, v12

    const/4 v13, 0x1

    aget v12, v12, v13

    aput v12, v10, v11

    aget-object v10, v0, v9

    const/4 v11, 0x2

    const/4 v12, 0x1

    sub-int v12, v9, v12

    aget-object v12, v0, v12

    const/4 v13, 0x2

    aget v12, v12, v13

    aput v12, v10, v11

    add-int/lit8 v9, v9, -0x1

    if-gtz v9, :cond_8

    :cond_9
    aget-object v10, v0, v9

    const/4 v11, 0x0

    aput v6, v10, v11

    aget-object v6, v0, v9

    const/4 v10, 0x1

    aput v7, v6, v10

    aget-object v6, v0, v9

    const/4 v7, 0x2

    aput v8, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_a
    const/4 v1, 0x2

    if-ne p1, v1, :cond_b

    array-length v1, v0

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    :goto_6
    if-ltz v1, :cond_c

    aget-object v5, v0, v1

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_b
    const/4 v1, 0x0

    :goto_7
    array-length v5, v0

    if-ge v1, v5, :cond_c

    aget-object v5, v0, v1

    invoke-virtual {v3, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    add-int/lit8 v0, v4, 0x1

    int-to-byte v0, v0

    move v4, v0

    goto/16 :goto_3

    :cond_d
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v0, 0x3

    new-array v0, v0, [I

    if-lez v1, :cond_e

    iget-object v0, p0, Lcom/t4game/GScene;->listHead:Lcom/t4game/GSprite;

    if-nez v0, :cond_e

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    check-cast p1, [I

    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v2, 0x2

    aget v2, p1, v2

    int-to-byte v2, v2

    invoke-virtual {p0, v0, v2}, Lcom/t4game/GScene;->getSpriteFromHash(IB)Lcom/t4game/GSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/GScene;->listHead:Lcom/t4game/GSprite;

    iget-object v0, p0, Lcom/t4game/GScene;->listHead:Lcom/t4game/GSprite;

    if-eqz v0, :cond_e

    :cond_e
    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v0, 0x0

    move v2, v0

    :goto_8
    if-ge v2, v1, :cond_11

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    check-cast p1, [I

    if-nez v2, :cond_f

    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v4, 0x2

    aget v4, p1, v4

    int-to-byte v4, v4

    invoke-virtual {p0, v0, v4}, Lcom/t4game/GScene;->getSpriteFromHash(IB)Lcom/t4game/GSprite;

    move-result-object v0

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/t4game/GSprite;->distancepre:Lcom/t4game/GSprite;

    :goto_9
    const/4 v0, 0x1

    sub-int v0, v1, v0

    if-ne v2, v0, :cond_10

    const/4 v0, 0x1

    aget v0, p1, v0

    const/4 v4, 0x2

    aget v4, p1, v4

    int-to-byte v4, v4

    invoke-virtual {p0, v0, v4}, Lcom/t4game/GScene;->getSpriteFromHash(IB)Lcom/t4game/GSprite;

    move-result-object v0

    const/4 v4, 0x0

    iput-object v4, v0, Lcom/t4game/GSprite;->distancenext:Lcom/t4game/GSprite;

    :goto_a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_f
    const/4 v0, 0x1

    sub-int v0, v2, v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    const/4 v4, 0x1

    aget v4, p1, v4

    const/4 v5, 0x2

    aget v5, p1, v5

    int-to-byte v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/t4game/GScene;->getSpriteFromHash(IB)Lcom/t4game/GSprite;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v0, v5

    const/4 v6, 0x2

    aget v0, v0, v6

    int-to-byte v0, v0

    invoke-virtual {p0, v5, v0}, Lcom/t4game/GScene;->getSpriteFromHash(IB)Lcom/t4game/GSprite;

    move-result-object v0

    iput-object v0, v4, Lcom/t4game/GSprite;->distancepre:Lcom/t4game/GSprite;

    goto :goto_9

    :cond_10
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    const/4 v4, 0x1

    aget v4, p1, v4

    const/4 v5, 0x2

    aget v5, p1, v5

    int-to-byte v5, v5

    invoke-virtual {p0, v4, v5}, Lcom/t4game/GScene;->getSpriteFromHash(IB)Lcom/t4game/GSprite;

    move-result-object v4

    const/4 v5, 0x1

    aget v5, v0, v5

    const/4 v6, 0x2

    aget v0, v0, v6

    int-to-byte v0, v0

    invoke-virtual {p0, v5, v0}, Lcom/t4game/GScene;->getSpriteFromHash(IB)Lcom/t4game/GSprite;

    move-result-object v0

    iput-object v0, v4, Lcom/t4game/GSprite;->distancenext:Lcom/t4game/GSprite;

    goto :goto_a

    :cond_11
    iget-object v0, p0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/t4game/GameWorld;->autoAttack:Z

    return-void
.end method

.method public isInTransferAreaG(II)Lcom/t4game/GTransferArea;
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/t4game/GScene;->transferAreaList:[Lcom/t4game/GTransferArea;

    if-nez v0, :cond_0

    move-object v0, v4

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/GScene;->transferAreaList:[Lcom/t4game/GTransferArea;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/t4game/GScene;->transferAreaList:[Lcom/t4game/GTransferArea;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Lcom/t4game/GTransferArea;->isInArea(II)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v4

    goto :goto_0
.end method

.method public final isInTransferAreaM(II)Lcom/t4game/GTransferArea;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/t4game/GScene;->sceneX2GridX(I)I

    move-result v0

    invoke-virtual {p0, p2}, Lcom/t4game/GScene;->sceneY2GridY(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/t4game/GScene;->isInTransferAreaG(II)Lcom/t4game/GTransferArea;

    move-result-object v0

    return-object v0
.end method

.method public final moveNext(Lcom/t4game/GMapObject;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-byte v0, p1, Lcom/t4game/GMapObject;->layer:B

    iget-object v1, p0, Lcom/t4game/GScene;->objends:[Lcom/t4game/GMapObject;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-object v1, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    :goto_1
    if-eqz v1, :cond_5

    iget-short v2, v1, Lcom/t4game/GMapObject;->mapY:S

    iget-short v3, p1, Lcom/t4game/GMapObject;->mapY:S

    if-gt v2, v3, :cond_1

    iget-short v2, v1, Lcom/t4game/GMapObject;->mapY:S

    iget-short v3, p1, Lcom/t4game/GMapObject;->mapY:S

    if-ne v2, v3, :cond_4

    iget-short v2, v1, Lcom/t4game/GMapObject;->mapX:S

    iget-short v3, p1, Lcom/t4game/GMapObject;->mapX:S

    if-lt v2, v3, :cond_4

    :cond_1
    iget-object v2, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    if-ne v1, v2, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iget-object v3, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iput-object v3, v2, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iget-object v2, p0, Lcom/t4game/GScene;->objheads:[Lcom/t4game/GMapObject;

    aget-object v2, v2, v0

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/t4game/GScene;->objheads:[Lcom/t4game/GMapObject;

    iget-object v3, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    aput-object v3, v2, v0

    :goto_2
    iget-object v0, v1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iput-object p1, v0, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iput-object p1, v1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iput-object v0, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iput-object v1, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    move v0, v5

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iget-object v2, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iput-object v2, v0, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    goto :goto_2

    :cond_4
    iget-object v1, v1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    goto :goto_1

    :cond_5
    iget-object v1, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iget-object v2, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iput-object v2, v1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iget-object v1, p0, Lcom/t4game/GScene;->objheads:[Lcom/t4game/GMapObject;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_6

    iget-object v1, p0, Lcom/t4game/GScene;->objheads:[Lcom/t4game/GMapObject;

    iget-object v2, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    aput-object v2, v1, v0

    :goto_3
    iget-object v1, p0, Lcom/t4game/GScene;->objends:[Lcom/t4game/GMapObject;

    aget-object v1, v1, v0

    iput-object v1, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iget-object v1, p0, Lcom/t4game/GScene;->objends:[Lcom/t4game/GMapObject;

    aget-object v1, v1, v0

    iput-object p1, v1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iget-object v1, p0, Lcom/t4game/GScene;->objends:[Lcom/t4game/GMapObject;

    aput-object p1, v1, v0

    move v0, v5

    goto :goto_0

    :cond_6
    iget-object v1, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iget-object v2, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iput-object v2, v1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    goto :goto_3
.end method

.method public final movePre(Lcom/t4game/GMapObject;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-byte v0, p1, Lcom/t4game/GMapObject;->layer:B

    iget-object v1, p0, Lcom/t4game/GScene;->objheads:[Lcom/t4game/GMapObject;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget-object v1, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    :goto_1
    if-eqz v1, :cond_5

    iget-short v2, v1, Lcom/t4game/GMapObject;->mapY:S

    iget-short v3, p1, Lcom/t4game/GMapObject;->mapY:S

    if-lt v2, v3, :cond_1

    iget-short v2, v1, Lcom/t4game/GMapObject;->mapY:S

    iget-short v3, p1, Lcom/t4game/GMapObject;->mapY:S

    if-ne v2, v3, :cond_4

    iget-short v2, v1, Lcom/t4game/GMapObject;->mapX:S

    iget-short v3, p1, Lcom/t4game/GMapObject;->mapX:S

    if-gt v2, v3, :cond_4

    :cond_1
    iget-object v2, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    if-ne v1, v2, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iget-object v3, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iput-object v3, v2, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iget-object v2, p0, Lcom/t4game/GScene;->objends:[Lcom/t4game/GMapObject;

    aget-object v2, v2, v0

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/t4game/GScene;->objends:[Lcom/t4game/GMapObject;

    iget-object v3, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    aput-object v3, v2, v0

    :goto_2
    iget-object v0, v1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iput-object p1, v0, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iput-object p1, v1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iput-object v0, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iput-object v1, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    move v0, v5

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iget-object v2, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iput-object v2, v0, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    goto :goto_2

    :cond_4
    iget-object v1, v1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    goto :goto_1

    :cond_5
    iget-object v1, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iget-object v2, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iput-object v2, v1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iget-object v1, p0, Lcom/t4game/GScene;->objends:[Lcom/t4game/GMapObject;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_6

    iget-object v1, p0, Lcom/t4game/GScene;->objends:[Lcom/t4game/GMapObject;

    iget-object v2, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    aput-object v2, v1, v0

    :goto_3
    iget-object v1, p0, Lcom/t4game/GScene;->objheads:[Lcom/t4game/GMapObject;

    aget-object v1, v1, v0

    iput-object v1, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iget-object v1, p0, Lcom/t4game/GScene;->objheads:[Lcom/t4game/GMapObject;

    aget-object v1, v1, v0

    iput-object p1, v1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iget-object v1, p0, Lcom/t4game/GScene;->objheads:[Lcom/t4game/GMapObject;

    aput-object p1, v1, v0

    move v0, v5

    goto :goto_0

    :cond_6
    iget-object v1, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iget-object v2, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iput-object v2, v1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    goto :goto_3
.end method

.method public obliqueSupport()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public release()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v2, 0x0

    iput-byte v7, p0, Lcom/t4game/GScene;->state:B

    iget-object v1, p0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    invoke-virtual {v1}, Lcom/t4game/GImageData;->release()V

    iput-object v2, p0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    :cond_0
    iput-object v2, p0, Lcom/t4game/GScene;->transferAreaList:[Lcom/t4game/GTransferArea;

    move-object v0, v2

    check-cast v0, [[B

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/GScene;->tileAnimDataIdList:[[B

    move v1, v7

    :goto_0
    if-ge v1, v8, :cond_1

    iget-object v3, p0, Lcom/t4game/GScene;->objheads:[Lcom/t4game/GMapObject;

    aput-object v2, v3, v1

    iget-object v3, p0, Lcom/t4game/GScene;->objends:[Lcom/t4game/GMapObject;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v7

    :goto_1
    const/4 v3, 0x2

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/t4game/GScene;->storeHeads:[Lcom/t4game/GMapObject;

    aget-object v3, v3, v1

    :goto_2
    if-eqz v3, :cond_3

    iget-object v4, v3, Lcom/t4game/GMapObject;->gnext:Lcom/t4game/GMapObject;

    iget-object v5, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    invoke-virtual {v3}, Lcom/t4game/GUser;->releaseMainHero()V

    move-object v3, v4

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/t4game/GMapObject;->release()V

    invoke-static {v3}, Lcom/t4game/GDataManager;->putToPool(Lcom/t4game/AbstractPoolObject;)V

    move-object v3, v4

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/t4game/GScene;->storeHeads:[Lcom/t4game/GMapObject;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/t4game/GScene;->npcs:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    iget-object v1, p0, Lcom/t4game/GScene;->users:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    iget-object v1, p0, Lcom/t4game/GScene;->outerNpcs:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    iget-object v1, p0, Lcom/t4game/GScene;->outerUsers:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    iput-object v2, p0, Lcom/t4game/GScene;->listHead:Lcom/t4game/GSprite;

    invoke-static {v8}, Lcom/t4game/GDataManager;->releaseTemporaryData(I)V

    iput v6, p0, Lcom/t4game/GScene;->win_x:I

    iput v6, p0, Lcom/t4game/GScene;->win_y:I

    iput v6, p0, Lcom/t4game/GScene;->win_gx:I

    iput v6, p0, Lcom/t4game/GScene;->win_gy:I

    iput v6, p0, Lcom/t4game/GScene;->backColor:I

    iput-boolean v7, p0, Lcom/t4game/GScene;->ready:Z

    iput-object v2, p0, Lcom/t4game/GScene;->smallMapImage:Ljavax/microedition/lcdui/Image;

    iput-byte v6, p0, Lcom/t4game/GScene;->backMapId:B

    iget-object v1, p0, Lcom/t4game/GScene;->backGScene:Lcom/t4game/GSceneBackLayer;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/t4game/GScene;->backGScene:Lcom/t4game/GSceneBackLayer;

    invoke-virtual {v1}, Lcom/t4game/GSceneBackLayer;->release()V

    :cond_5
    return-void
.end method

.method public final removeFromStore(Lcom/t4game/GMapObject;)V
    .locals 4

    iget-byte v0, p1, Lcom/t4game/GMapObject;->store:B

    iget-object v1, p0, Lcom/t4game/GScene;->storeHeads:[Lcom/t4game/GMapObject;

    aget-object v1, v1, v0

    iget-object v2, p1, Lcom/t4game/GMapObject;->gpre:Lcom/t4game/GMapObject;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/t4game/GMapObject;->gpre:Lcom/t4game/GMapObject;

    iget-object v3, p1, Lcom/t4game/GMapObject;->gnext:Lcom/t4game/GMapObject;

    iput-object v3, v2, Lcom/t4game/GMapObject;->gnext:Lcom/t4game/GMapObject;

    :goto_0
    iget-object v2, p1, Lcom/t4game/GMapObject;->gnext:Lcom/t4game/GMapObject;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/t4game/GMapObject;->gnext:Lcom/t4game/GMapObject;

    iget-object v3, p1, Lcom/t4game/GMapObject;->gpre:Lcom/t4game/GMapObject;

    iput-object v3, v2, Lcom/t4game/GMapObject;->gpre:Lcom/t4game/GMapObject;

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/t4game/GMapObject;->gnext:Lcom/t4game/GMapObject;

    iput-object v2, p1, Lcom/t4game/GMapObject;->gpre:Lcom/t4game/GMapObject;

    iget-object v2, p0, Lcom/t4game/GScene;->storeHeads:[Lcom/t4game/GMapObject;

    aput-object v1, v2, v0

    iget-boolean v0, p1, Lcom/t4game/GMapObject;->visible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/t4game/GScene;->removeFromView(Lcom/t4game/GMapObject;)V

    :cond_1
    invoke-virtual {p1}, Lcom/t4game/GMapObject;->release()V

    invoke-static {p1}, Lcom/t4game/GDataManager;->putToPool(Lcom/t4game/AbstractPoolObject;)V

    return-void

    :cond_2
    iget-object v1, p1, Lcom/t4game/GMapObject;->gnext:Lcom/t4game/GMapObject;

    goto :goto_0
.end method

.method public final removeFromView(Lcom/t4game/GMapObject;)V
    .locals 3

    iget-byte v0, p1, Lcom/t4game/GMapObject;->layer:B

    iget-object v1, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iget-object v2, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iput-object v2, v1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    :goto_0
    iget-object v1, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    if-eqz v1, :cond_1

    iget-object v0, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iget-object v1, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iput-object v1, v0, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iput-object v0, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/t4game/GMapObject;->visible:Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/t4game/GScene;->objheads:[Lcom/t4game/GMapObject;

    iget-object v2, p1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    aput-object v2, v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/t4game/GScene;->objends:[Lcom/t4game/GMapObject;

    iget-object v2, p1, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    aput-object v2, v1, v0

    goto :goto_1
.end method

.method public final removeNpc(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/t4game/GScene;->npcs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GSprite;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, v0, Lcom/t4game/GSprite;->visibleReady:Z

    iput-boolean v1, v0, Lcom/t4game/GSprite;->canDeathRelive:Z

    iget-object v1, p0, Lcom/t4game/GScene;->npcs:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/t4game/GScene;->removeFromStore(Lcom/t4game/GMapObject;)V

    iget-boolean v1, v0, Lcom/t4game/GSprite;->visible:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/t4game/GScene;->removeFromView(Lcom/t4game/GMapObject;)V

    :cond_1
    invoke-virtual {v0}, Lcom/t4game/GSprite;->release()V

    goto :goto_0
.end method

.method public final removeOutSprite(BLjava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/GScene;->outerNpcs:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GOuterSprite;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/t4game/GOuterSprite;->release()V

    iget-object v1, p0, Lcom/t4game/GScene;->outerNpcs:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/t4game/GDataManager;->putToPool(Lcom/t4game/AbstractPoolObject;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GScene;->outerUsers:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GOuterSprite;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/t4game/GOuterSprite;->release()V

    iget-object v1, p0, Lcom/t4game/GScene;->outerUsers:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/t4game/GDataManager;->putToPool(Lcom/t4game/AbstractPoolObject;)V

    goto :goto_0
.end method

.method public final removeUser(Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/t4game/GScene;->users:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GSprite;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, v0, Lcom/t4game/GSprite;->visibleReady:Z

    iput-boolean v1, v0, Lcom/t4game/GSprite;->canDeathRelive:Z

    iget-object v1, p0, Lcom/t4game/GScene;->users:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/t4game/GScene;->removeFromStore(Lcom/t4game/GMapObject;)V

    invoke-virtual {v0}, Lcom/t4game/GSprite;->release()V

    goto :goto_0
.end method

.method public resetSelect()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget v0, v0, Lcom/t4game/GUser;->intId:I

    iput v0, p0, Lcom/t4game/GScene;->choicedSpriteId:I

    iget-object v0, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-byte v0, v0, Lcom/t4game/GUser;->type:B

    iput-byte v0, p0, Lcom/t4game/GScene;->choicedSpriteType:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GScene;->listHead:Lcom/t4game/GSprite;

    return-void
.end method

.method public setCnt4PntStart()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/GScene;->counter4pointer:I

    return-void
.end method

.method public final setOutSpriteGxGy(IBSS)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/GScene;->outerNpcs:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/GOuterSprite;

    move-object v0, p0

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    iput-short p3, v0, Lcom/t4game/GOuterSprite;->gridX:S

    iput-short p4, v0, Lcom/t4game/GOuterSprite;->gridY:S

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x3

    if-ne p2, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/GScene;->outerUsers:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/GOuterSprite;

    move-object v0, p0

    goto :goto_0
.end method

.method public final setScreenSE(Lcom/t4game/GSEItemObject;I)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/GScene;->screenSE:[Lcom/t4game/GSEItemObject;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GScene;->screenSE:[Lcom/t4game/GSEItemObject;

    aget-object v0, v0, p2

    invoke-static {v0}, Lcom/t4game/GDataManager;->putToPool(Lcom/t4game/AbstractPoolObject;)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/GScene;->screenSE:[Lcom/t4game/GSEItemObject;

    aput-object p1, v0, p2

    return-void
.end method

.method public final setUser(Lcom/t4game/GUser;)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    invoke-virtual {p0, p1}, Lcom/t4game/GScene;->addSprite(Lcom/t4game/GSprite;)V

    return-void
.end method

.method public final setWinGridPos(II)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/t4game/GScene;->gridX2SceneX(I)I

    move-result v0

    iget-byte v1, p0, Lcom/t4game/GScene;->GW2:B

    add-int/2addr v0, v1

    invoke-virtual {p0, p2}, Lcom/t4game/GScene;->gridY2SceneY(I)I

    move-result v1

    iget-byte v2, p0, Lcom/t4game/GScene;->GH2:B

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/t4game/GScene;->setWinPos(II)V

    return-void
.end method

.method public setWinPos(II)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lcom/t4game/GScene;->win_x:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/t4game/GScene;->win_y:I

    if-ne p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gez p1, :cond_3

    move v0, v4

    :goto_1
    if-gez p2, :cond_4

    move v1, v4

    :goto_2
    iget-object v2, p0, Lcom/t4game/GScene;->mapBuffer:Lcom/t4game/MapBuffer;

    if-nez v2, :cond_5

    invoke-virtual {p0, v0, v1}, Lcom/t4game/GScene;->initMapBuffer(II)V

    :goto_3
    iput v0, p0, Lcom/t4game/GScene;->win_x:I

    iput v1, p0, Lcom/t4game/GScene;->win_y:I

    iget v0, p0, Lcom/t4game/GScene;->win_x:I

    iget v1, p0, Lcom/t4game/GScene;->WW:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/GScene;->map_w:I

    if-le v0, v1, :cond_8

    iget v0, p0, Lcom/t4game/GScene;->map_w:I

    :goto_4
    iput v0, p0, Lcom/t4game/GScene;->win_x2:I

    iget v0, p0, Lcom/t4game/GScene;->win_y:I

    iget v1, p0, Lcom/t4game/GScene;->WH:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/GScene;->map_h:I

    if-le v0, v1, :cond_9

    iget v0, p0, Lcom/t4game/GScene;->map_h:I

    :goto_5
    iput v0, p0, Lcom/t4game/GScene;->win_y2:I

    iget v0, p0, Lcom/t4game/GScene;->win_x:I

    iget v1, p0, Lcom/t4game/GScene;->WX:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/GScene;->screen_mapx:I

    iget v0, p0, Lcom/t4game/GScene;->win_y:I

    iget v1, p0, Lcom/t4game/GScene;->WY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/GScene;->screen_mapy:I

    iget v0, p0, Lcom/t4game/GScene;->win_x:I

    invoke-virtual {p0, v0}, Lcom/t4game/GScene;->sceneX2GridX(I)I

    move-result v0

    iget v1, p0, Lcom/t4game/GScene;->win_y:I

    invoke-virtual {p0, v1}, Lcom/t4game/GScene;->sceneY2GridY(I)I

    move-result v1

    iget v2, p0, Lcom/t4game/GScene;->win_gx:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Lcom/t4game/GScene;->win_gy:I

    if-eq v1, v2, :cond_0

    :cond_2
    iput v0, p0, Lcom/t4game/GScene;->win_gx:I

    iput v1, p0, Lcom/t4game/GScene;->win_gy:I

    iget v0, p0, Lcom/t4game/GScene;->win_gx:I

    iget v1, p0, Lcom/t4game/GScene;->WGW:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/GScene;->map_gw:I

    if-le v0, v1, :cond_a

    iget v0, p0, Lcom/t4game/GScene;->map_gw:I

    :goto_6
    iput v0, p0, Lcom/t4game/GScene;->win_gx2:I

    iget v0, p0, Lcom/t4game/GScene;->win_gy:I

    iget v1, p0, Lcom/t4game/GScene;->WGH:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/GScene;->map_gh:I

    if-le v0, v1, :cond_b

    iget v0, p0, Lcom/t4game/GScene;->map_gh:I

    :goto_7
    iput v0, p0, Lcom/t4game/GScene;->win_gy2:I

    iput-boolean v5, p0, Lcom/t4game/GScene;->win_g_upd:Z

    invoke-virtual {p0, v4}, Lcom/t4game/GScene;->updateStore(B)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/t4game/GScene;->map_w:I

    iget v1, p0, Lcom/t4game/GScene;->WW:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_d

    iget v0, p0, Lcom/t4game/GScene;->map_w:I

    iget v1, p0, Lcom/t4game/GScene;->WW:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v5

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/t4game/GScene;->map_h:I

    iget v2, p0, Lcom/t4game/GScene;->WH:I

    sub-int/2addr v1, v2

    if-lt p2, v1, :cond_c

    iget v1, p0, Lcom/t4game/GScene;->map_h:I

    iget v2, p0, Lcom/t4game/GScene;->WH:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v5

    goto/16 :goto_2

    :cond_5
    iget v2, p0, Lcom/t4game/GScene;->map_w:I

    iget v3, p0, Lcom/t4game/GScene;->WW:I

    if-lt v2, v3, :cond_6

    iget v2, p0, Lcom/t4game/GScene;->map_h:I

    iget v3, p0, Lcom/t4game/GScene;->WH:I

    if-ge v2, v3, :cond_7

    :cond_6
    iget-object v2, p0, Lcom/t4game/GScene;->mapBuffer:Lcom/t4game/MapBuffer;

    invoke-virtual {v2, v0, v1, v5}, Lcom/t4game/MapBuffer;->updataMapBuffer(IIZ)V

    goto/16 :goto_3

    :cond_7
    iget-object v2, p0, Lcom/t4game/GScene;->mapBuffer:Lcom/t4game/MapBuffer;

    invoke-virtual {v2, v0, v1, v4}, Lcom/t4game/MapBuffer;->updataMapBuffer(IIZ)V

    goto/16 :goto_3

    :cond_8
    iget v0, p0, Lcom/t4game/GScene;->win_x:I

    iget v1, p0, Lcom/t4game/GScene;->WW:I

    add-int/2addr v0, v1

    goto/16 :goto_4

    :cond_9
    iget v0, p0, Lcom/t4game/GScene;->win_y:I

    iget v1, p0, Lcom/t4game/GScene;->WH:I

    add-int/2addr v0, v1

    goto/16 :goto_5

    :cond_a
    iget v0, p0, Lcom/t4game/GScene;->win_gx:I

    iget v1, p0, Lcom/t4game/GScene;->WGW:I

    add-int/2addr v0, v1

    goto :goto_6

    :cond_b
    iget v0, p0, Lcom/t4game/GScene;->win_gy:I

    iget v1, p0, Lcom/t4game/GScene;->WGH:I

    add-int/2addr v0, v1

    goto :goto_7

    :cond_c
    move v1, p2

    goto/16 :goto_2

    :cond_d
    move v0, p1

    goto/16 :goto_1
.end method

.method public update()V
    .locals 7

    const/4 v6, 0x3

    const/4 v2, 0x2

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/t4game/GScene;->ready:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget v0, p0, Lcom/t4game/GScene;->renderFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/GScene;->renderFrame:I

    iget v0, p0, Lcom/t4game/GScene;->renderFrame:I

    const v1, 0x7fffffff

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/GScene;->renderFrame:I

    :cond_1
    iget-object v0, p0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iget-byte v1, v0, Lcom/t4game/GameScreen;->tickTime:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/t4game/GameScreen;->tickTime:B

    invoke-direct {p0}, Lcom/t4game/GScene;->updateSprites()V

    iget v0, p0, Lcom/t4game/GScene;->choicedSpriteId:I

    iget-object v1, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget v1, v1, Lcom/t4game/GUser;->intId:I

    if-ne v0, v1, :cond_2

    iget-byte v0, p0, Lcom/t4game/GScene;->choicedSpriteType:B

    if-ne v0, v2, :cond_7

    :cond_2
    iget v0, p0, Lcom/t4game/GScene;->choicedSpriteId:I

    iget-byte v1, p0, Lcom/t4game/GScene;->choicedSpriteType:B

    invoke-virtual {p0, v0, v1}, Lcom/t4game/GScene;->getSpriteFromHash(IB)Lcom/t4game/GSprite;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/GScene;->choiceSprite:Lcom/t4game/GSprite;

    iget-object v0, p0, Lcom/t4game/GScene;->choiceSprite:Lcom/t4game/GSprite;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/t4game/GScene;->choiceSprite:Lcom/t4game/GSprite;

    iget-boolean v0, v0, Lcom/t4game/GSprite;->visible:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/GScene;->choiceSprite:Lcom/t4game/GSprite;

    iget-boolean v0, v0, Lcom/t4game/GSprite;->visibleReady:Z

    if-nez v0, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/t4game/GScene;->resetSelect()V

    :cond_4
    iget-byte v0, p0, Lcom/t4game/GScene;->choicedSpriteType:B

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/t4game/GScene;->choiceSprite:Lcom/t4game/GSprite;

    check-cast v0, Lcom/t4game/GNPC;

    iget-object v0, v0, Lcom/t4game/GNPC;->Flag:[B

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/t4game/GScene;->choiceSprite:Lcom/t4game/GSprite;

    iget-byte v0, v0, Lcom/t4game/GSprite;->canHit:B

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/t4game/GScene;->choiceSprite:Lcom/t4game/GSprite;

    iget-short v0, v0, Lcom/t4game/GSprite;->mapX:S

    iget-object v1, p0, Lcom/t4game/GScene;->choiceSprite:Lcom/t4game/GSprite;

    iget-short v1, v1, Lcom/t4game/GSprite;->mapY:S

    iget-object v2, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v2, v2, Lcom/t4game/GUser;->mapX:S

    iget-object v3, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v3, v3, Lcom/t4game/GUser;->mapY:S

    const/16 v4, 0x50

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/Util;->testInterRound(IIIII)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/t4game/GScene;->resetSelect()V

    :cond_6
    iget-byte v0, p0, Lcom/t4game/GScene;->choicedSpriteType:B

    if-ne v0, v6, :cond_7

    iget-object v0, p0, Lcom/t4game/GScene;->choiceSprite:Lcom/t4game/GSprite;

    iget-byte v0, v0, Lcom/t4game/GSprite;->canHit:B

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/t4game/GScene;->choiceSprite:Lcom/t4game/GSprite;

    iget-short v0, v0, Lcom/t4game/GSprite;->mapX:S

    iget-object v1, p0, Lcom/t4game/GScene;->choiceSprite:Lcom/t4game/GSprite;

    iget-short v1, v1, Lcom/t4game/GSprite;->mapY:S

    iget-object v2, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v2, v2, Lcom/t4game/GUser;->mapX:S

    iget-object v3, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v3, v3, Lcom/t4game/GUser;->mapY:S

    const/16 v4, 0x6e

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/Util;->testInterRound(IIIII)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcom/t4game/GScene;->resetSelect()V

    :cond_7
    :goto_1
    move v0, v5

    :goto_2
    if-ge v0, v6, :cond_a

    iget-object v1, p0, Lcom/t4game/GScene;->screenSE:[Lcom/t4game/GSEItemObject;

    aget-object v1, v1, v0

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/t4game/GScene;->screenSE:[Lcom/t4game/GSEItemObject;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/t4game/GSEItemObject;->update()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/t4game/GScene;->screenSE:[Lcom/t4game/GSEItemObject;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/t4game/GDataManager;->putToPool(Lcom/t4game/AbstractPoolObject;)V

    iget-object v1, p0, Lcom/t4game/GScene;->screenSE:[Lcom/t4game/GSEItemObject;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_9
    invoke-virtual {p0}, Lcom/t4game/GScene;->resetSelect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    invoke-virtual {p0}, Lcom/t4game/GScene;->updateDeathTest()V

    goto/16 :goto_0
.end method

.method public updateDeathTest()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/t4game/GScene;->objheads:[Lcom/t4game/GMapObject;

    aget-object v1, v1, v5

    sget-byte v2, Lcom/t4game/GameScreen;->averageFPS:B

    shl-int/lit8 v2, v2, 0x8

    iget-object v3, p0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iget-byte v3, v3, Lcom/t4game/GameScreen;->lastFPS:B

    or-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lcom/t4game/GScene;->fps:S

    :goto_0
    if-eqz v1, :cond_5

    iget-object v2, v1, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    if-eqz v2, :cond_6

    iget-boolean v1, v2, Lcom/t4game/GMapObject;->visibleReady:Z

    if-nez v1, :cond_6

    iget-byte v1, v2, Lcom/t4game/GMapObject;->type:B

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    move-object v0, v2

    check-cast v0, Lcom/t4game/GNPC;

    move-object v1, v0

    iget-boolean v3, v1, Lcom/t4game/GNPC;->canDeathRelive:Z

    if-eqz v3, :cond_1

    iput-boolean v5, v1, Lcom/t4game/GNPC;->visibleReady:Z

    iput-boolean v6, v1, Lcom/t4game/GNPC;->canDeathRelive:Z

    iget v3, v1, Lcom/t4game/GNPC;->maxHp:I

    iput v3, v1, Lcom/t4game/GNPC;->attr_baseHP:I

    iget v3, v1, Lcom/t4game/GNPC;->maxMp:I

    iput v3, v1, Lcom/t4game/GNPC;->attr_baseMP:I

    :cond_0
    :goto_1
    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/t4game/GNPC;->testGSE()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v1, v1, Lcom/t4game/GNPC;->id:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/t4game/GScene;->removeNpc(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-byte v1, v2, Lcom/t4game/GMapObject;->type:B

    const/4 v3, 0x3

    if-ne v1, v3, :cond_6

    move-object v0, v2

    check-cast v0, Lcom/t4game/GUser;

    move-object v3, v0

    iget v1, v3, Lcom/t4game/GUser;->intId:I

    iget-object v4, p0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget v4, v4, Lcom/t4game/GUser;->intId:I

    if-eq v1, v4, :cond_3

    iget-boolean v1, v3, Lcom/t4game/GUser;->canDeathRelive:Z

    if-eqz v1, :cond_4

    iput-boolean v5, v3, Lcom/t4game/GUser;->visibleReady:Z

    iput-boolean v6, v3, Lcom/t4game/GUser;->canDeathRelive:Z

    iget v1, v3, Lcom/t4game/GUser;->maxHp:I

    iput v1, v3, Lcom/t4game/GUser;->attr_baseHP:I

    iget v1, v3, Lcom/t4game/GUser;->maxMp:I

    iput v1, v3, Lcom/t4game/GUser;->attr_baseMP:I

    :cond_3
    :goto_2
    move-object v1, v2

    goto :goto_0

    :cond_4
    invoke-virtual {v3}, Lcom/t4game/GUser;->testGSE()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v3, Lcom/t4game/GUser;->id:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/t4game/GScene;->removeUser(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    move-object v1, v2

    goto :goto_0
.end method

.method public final updateStore(B)V
    .locals 4

    iget-object v0, p0, Lcom/t4game/GScene;->storeHeads:[Lcom/t4game/GMapObject;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    move v3, v1

    move-object v1, v0

    move v0, v3

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/t4game/GMapObject;->gnext:Lcom/t4game/GMapObject;

    invoke-virtual {v1}, Lcom/t4game/GMapObject;->update()B

    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method
