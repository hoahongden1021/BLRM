.class public Lcom/t4game/GWorldMap;
.super Lcom/t4game/GMap;


# static fields
.field private static final mask_mirrorh:[B

.field private static final mask_mirrorv:[B

.field private static final win_moveFrameNum:I = 0xa


# instance fields
.field public locationList:[Lcom/t4game/GWorldLocation;

.field public locationMap:Ljava/util/Hashtable;

.field public nowLocation:Lcom/t4game/GWorldLocation;

.field public renderFrame:I

.field private win_ax:I

.field private win_ay:I

.field private win_destx:I

.field private win_desty:I

.field private win_moveNowFrame:I

.field public win_moving:Z

.field private win_startx:I

.field private win_starty:I

.field private win_vx:I

.field private win_vy:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x3

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/t4game/GWorldMap;->mask_mirrorh:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/t4game/GWorldMap;->mask_mirrorv:[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x4t
        0x10t
    .end array-data

    :array_1
    .array-data 1
        0x2t
        0x8t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    const/16 v1, 0x8

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/t4game/GMap;-><init>()V

    iput-boolean v0, p0, Lcom/t4game/GWorldMap;->win_moving:Z

    iput v0, p0, Lcom/t4game/GWorldMap;->win_destx:I

    iput v0, p0, Lcom/t4game/GWorldMap;->win_desty:I

    iput v0, p0, Lcom/t4game/GWorldMap;->win_startx:I

    iput v0, p0, Lcom/t4game/GWorldMap;->win_starty:I

    iput v0, p0, Lcom/t4game/GWorldMap;->win_vx:I

    iput v0, p0, Lcom/t4game/GWorldMap;->win_vy:I

    iput v0, p0, Lcom/t4game/GWorldMap;->win_ax:I

    iput v0, p0, Lcom/t4game/GWorldMap;->win_ay:I

    iput v0, p0, Lcom/t4game/GWorldMap;->win_moveNowFrame:I

    iput v0, p0, Lcom/t4game/GWorldMap;->renderFrame:I

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_WORLDMAP:B

    iput-byte v0, p0, Lcom/t4game/GWorldMap;->type:B

    const/16 v0, 0xa

    iput-byte v0, p0, Lcom/t4game/GWorldMap;->poolId:B

    invoke-virtual {p0, v1, v1}, Lcom/t4game/GWorldMap;->setWinGridSize(II)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v1, 0x168

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x5

    const/16 v1, 0x25

    const/16 v2, 0x15e

    const/16 v3, 0xbe

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/t4game/GWorldMap;->setWinDimension(IIII)V

    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 23

    invoke-super/range {p0 .. p1}, Lcom/t4game/GMap;->draw(Ljavax/microedition/lcdui/Graphics;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/t4game/GWorldMap;->ready:Z

    move v5, v0

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->WX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->WY:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->WW:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->WH:I

    move v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->map_gw:I

    move v5, v0

    mul-int/lit8 v13, v5, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->win_gy:I

    move v5, v0

    mul-int/2addr v5, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->win_gx:I

    move v6, v0

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->win_gx:I

    move v6, v0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/t4game/GWorldMap;->gridX2SceneX(I)I

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->screen_mapx:I

    move v7, v0

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GWorldMap;->intId:S

    move v7, v0

    const/4 v8, 0x7

    if-ne v7, v8, :cond_d

    add-int/lit8 v6, v6, 0x64

    move v14, v6

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->win_gy:I

    move v6, v0

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/t4game/GWorldMap;->gridY2SceneY(I)I

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->screen_mapy:I

    move v7, v0

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->WW:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->map_w:I

    move v8, v0

    if-le v7, v8, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->WW:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->map_w:I

    move v8, v0

    sub-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->WX:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->WY:I

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->WH:I

    move v10, v0

    move-object/from16 v0, p1

    move v1, v8

    move v2, v9

    move v3, v7

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->WW:I

    move v8, v0

    sub-int/2addr v8, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->WY:I

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->WH:I

    move v10, v0

    move-object/from16 v0, p1

    move v1, v8

    move v2, v9

    move v3, v7

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->WH:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->map_h:I

    move v8, v0

    if-le v7, v8, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->WH:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->map_h:I

    move v8, v0

    sub-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->WX:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->WY:I

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->WW:I

    move v10, v0

    move-object/from16 v0, p1

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->WX:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->WH:I

    move v9, v0

    sub-int/2addr v9, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->WW:I

    move v10, v0

    move-object/from16 v0, p1

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->win_gy:I

    move v7, v0

    move v15, v7

    move/from16 v16, v5

    move v10, v6

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->win_gy2:I

    move v5, v0

    if-ge v15, v5, :cond_c

    if-ltz v15, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->map_gh:I

    move v5, v0

    if-lt v15, v5, :cond_5

    :cond_4
    add-int v5, v16, v13

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GWorldMap;->GH:B

    move v6, v0

    add-int/2addr v6, v10

    :goto_3
    add-int/lit8 v7, v15, 0x1

    move v15, v7

    move/from16 v16, v5

    move v10, v6

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->win_gx:I

    move v5, v0

    move/from16 v17, v5

    move/from16 v18, v16

    move v9, v14

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->win_gx2:I

    move v5, v0

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_b

    if-ltz v17, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GWorldMap;->map_gw:I

    move v5, v0

    move/from16 v0, v17

    move v1, v5

    if-lt v0, v1, :cond_7

    :cond_6
    add-int/lit8 v5, v18, 0x4

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GWorldMap;->GW:B

    move v6, v0

    add-int/2addr v6, v9

    :goto_5
    add-int/lit8 v7, v17, 0x1

    move/from16 v17, v7

    move/from16 v18, v5

    move v9, v6

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GWorldMap;->map_gs:[B

    move-object/from16 v19, v0

    aget-byte v20, v19, v18

    if-eqz v20, :cond_a

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move v5, v0

    shr-int/lit8 v21, v5, 0x6

    const/4 v5, 0x0

    move/from16 v22, v5

    :goto_6
    move/from16 v0, v22

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    sget-object v5, Lcom/t4game/GWorldMap;->mask_mirrorh:[B

    aget-byte v5, v5, v22

    and-int v5, v5, v20

    if-lez v5, :cond_8

    const/4 v5, 0x1

    move v11, v5

    :goto_7
    sget-object v5, Lcom/t4game/GWorldMap;->mask_mirrorv:[B

    aget-byte v5, v5, v22

    and-int v5, v5, v20

    if-lez v5, :cond_9

    const/4 v5, 0x1

    move v12, v5

    :goto_8
    add-int v5, v18, v22

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v19, v5

    and-int/lit16 v5, v5, 0xf0

    shr-int/lit8 v8, v5, 0x4

    add-int v5, v18, v22

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, v19, v5

    and-int/lit8 v7, v5, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GWorldMap;->tileImageData:Lcom/t4game/GImageData;

    move-object v5, v0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v12}, Lcom/t4game/GImageData;->drawTile(Ljavax/microedition/lcdui/Graphics;IIIIZZ)V

    add-int/lit8 v5, v22, 0x1

    move/from16 v22, v5

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    move v11, v5

    goto :goto_7

    :cond_9
    const/4 v5, 0x0

    move v12, v5

    goto :goto_8

    :cond_a
    add-int/lit8 v5, v18, 0x4

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GWorldMap;->GW:B

    move v6, v0

    add-int/2addr v6, v9

    goto :goto_5

    :cond_b
    add-int v5, v16, v13

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GWorldMap;->GH:B

    move v6, v0

    add-int/2addr v6, v10

    goto/16 :goto_3

    :cond_c
    const/4 v5, 0x0

    const/4 v6, 0x0

    sget v7, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v8, Lcom/t4game/Defaults;->CANVAS_H:I

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/t4game/GWorldLocation;->draw(Ljavax/microedition/lcdui/Graphics;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    :cond_d
    move v14, v6

    goto/16 :goto_1
.end method

.method public final getWolrdLocation(I)Lcom/t4game/GWorldLocation;
    .locals 2

    iget-object v0, p0, Lcom/t4game/GWorldMap;->locationMap:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/GWorldLocation;

    return-object p0
.end method

.method public init(Ljava/io/InputStream;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/t4game/GUtil;->readUTF(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/GWorldMap;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GWorldMap;->mapType:B

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GWorldMap;->countryId:B

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GWorldMap;->lowLevel:S

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GWorldMap;->highLevel:S

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GWorldMap;->worldMapDataId:S

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v0

    iput v0, p0, Lcom/t4game/GWorldMap;->map_gw:I

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v0

    iput v0, p0, Lcom/t4game/GWorldMap;->map_gh:I

    iget v0, p0, Lcom/t4game/GWorldMap;->map_gw:I

    invoke-virtual {p0, v0}, Lcom/t4game/GWorldMap;->gridX2SceneX(I)I

    move-result v0

    iput v0, p0, Lcom/t4game/GWorldMap;->map_w:I

    iget v0, p0, Lcom/t4game/GWorldMap;->map_gh:I

    invoke-virtual {p0, v0}, Lcom/t4game/GWorldMap;->gridY2SceneY(I)I

    move-result v0

    iput v0, p0, Lcom/t4game/GWorldMap;->map_h:I

    invoke-static {p1}, Lcom/t4game/GUtil;->readInt(Ljava/io/InputStream;)I

    move-result v0

    iput v0, p0, Lcom/t4game/GWorldMap;->backColor:I

    iget v0, p0, Lcom/t4game/GWorldMap;->map_gh:I

    iget v1, p0, Lcom/t4game/GWorldMap;->map_gw:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/GWorldMap;->map_gs:[B

    move v0, v6

    move v1, v6

    :goto_0
    iget v2, p0, Lcom/t4game/GWorldMap;->map_gh:I

    if-ge v1, v2, :cond_2

    move v2, v6

    :goto_1
    iget v3, p0, Lcom/t4game/GWorldMap;->map_gw:I

    if-ge v2, v3, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-byte v3, v3

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/t4game/GWorldMap;->map_gs:[B

    aput-byte v3, v4, v0

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    iget-object v4, p0, Lcom/t4game/GWorldMap;->map_gs:[B

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    :cond_0
    add-int/lit8 v0, v0, 0x4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    if-lez v0, :cond_4

    new-array v1, v0, [Lcom/t4game/GWorldLocation;

    iput-object v1, p0, Lcom/t4game/GWorldMap;->locationList:[Lcom/t4game/GWorldLocation;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/t4game/GWorldMap;->locationMap:Ljava/util/Hashtable;

    move v1, v6

    :goto_2
    if-ge v1, v0, :cond_3

    new-instance v2, Lcom/t4game/GWorldLocation;

    invoke-direct {v2, p0}, Lcom/t4game/GWorldLocation;-><init>(Lcom/t4game/GWorldMap;)V

    invoke-virtual {v2, p1}, Lcom/t4game/GWorldLocation;->init(Ljava/io/InputStream;)V

    iget-object v3, p0, Lcom/t4game/GWorldMap;->locationList:[Lcom/t4game/GWorldLocation;

    aput-object v2, v3, v1

    iget-object v3, p0, Lcom/t4game/GWorldMap;->locationMap:Ljava/util/Hashtable;

    iget-short v4, v2, Lcom/t4game/GWorldLocation;->id:S

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v6

    :goto_3
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lcom/t4game/GWorldMap;->locationList:[Lcom/t4game/GWorldLocation;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcom/t4game/GWorldLocation;->initNextLocationList(Ljava/io/InputStream;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/t4game/GWorldMap;->win_gx:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/t4game/GWorldMap;->win_gy:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/GWorldMap;->ready:Z

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    const/16 v1, 0x3e9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GImageData;

    iput-object v0, p0, Lcom/t4game/GWorldMap;->tileImageData:Lcom/t4game/GImageData;

    iget-object v0, p0, Lcom/t4game/GWorldMap;->locationList:[Lcom/t4game/GWorldLocation;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/t4game/GWorldMap;->locationList:[Lcom/t4game/GWorldLocation;

    array-length v0, v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/t4game/GWorldMap;->locationList:[Lcom/t4game/GWorldLocation;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-object v0, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-short v0, v0, Lcom/t4game/GWorldLocation;->mapX:S

    iget v1, p0, Lcom/t4game/GWorldMap;->WW2:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-short v1, v1, Lcom/t4game/GWorldLocation;->mapY:S

    iget v2, p0, Lcom/t4game/GWorldMap;->WH2:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/t4game/GWorldMap;->setWinPos(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    move v0, v7

    :goto_4
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v6

    goto :goto_4
.end method

.method public moveLocation(I)Z
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/t4game/GWorldMap;->win_moving:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-object v0, v0, Lcom/t4game/GWorldLocation;->nextLocationList:[Lcom/t4game/GWorldLocation;

    aget-object v0, v0, p1

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iput-object v0, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-object v0, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-short v0, v0, Lcom/t4game/GWorldLocation;->mapX:S

    iget v1, p0, Lcom/t4game/GWorldMap;->WW2:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-short v1, v1, Lcom/t4game/GWorldLocation;->mapY:S

    iget v2, p0, Lcom/t4game/GWorldMap;->WH2:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/t4game/GWorldMap;->setDestWinPos(II)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public moveToLocation(Lcom/t4game/GWorldLocation;)Z
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/t4game/GWorldMap;->win_moving:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-object v0, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-short v0, v0, Lcom/t4game/GWorldLocation;->mapX:S

    iget v1, p0, Lcom/t4game/GWorldMap;->WW2:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-short v1, v1, Lcom/t4game/GWorldLocation;->mapY:S

    iget v2, p0, Lcom/t4game/GWorldMap;->WH2:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/t4game/GWorldMap;->setDestWinPos(II)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public release()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/t4game/GMap;->release()V

    iput-object v2, p0, Lcom/t4game/GWorldMap;->locationList:[Lcom/t4game/GWorldLocation;

    iput-object v2, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-object v0, p0, Lcom/t4game/GWorldMap;->tileImageData:Lcom/t4game/GImageData;

    if-eqz v0, :cond_0

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    iget-object v1, p0, Lcom/t4game/GWorldMap;->tileImageData:Lcom/t4game/GImageData;

    iget-object v1, v1, Lcom/t4game/GImageData;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    iput-object v2, p0, Lcom/t4game/GWorldMap;->tileImageData:Lcom/t4game/GImageData;

    :cond_0
    return-void
.end method

.method public final setDestWinPos(II)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-gez p1, :cond_4

    move v0, v4

    :goto_0
    if-gez p2, :cond_3

    move v1, v4

    :goto_1
    iget v2, p0, Lcom/t4game/GWorldMap;->map_w:I

    iget v3, p0, Lcom/t4game/GWorldMap;->WW:I

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/t4game/GWorldMap;->map_w:I

    iget v2, p0, Lcom/t4game/GWorldMap;->WW:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v5

    :cond_0
    iget v2, p0, Lcom/t4game/GWorldMap;->map_h:I

    iget v3, p0, Lcom/t4game/GWorldMap;->WH:I

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_1

    iget v1, p0, Lcom/t4game/GWorldMap;->map_h:I

    iget v2, p0, Lcom/t4game/GWorldMap;->WH:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v5

    :cond_1
    iget v2, p0, Lcom/t4game/GWorldMap;->win_x:I

    sub-int v2, v0, v2

    iget v3, p0, Lcom/t4game/GWorldMap;->win_y:I

    sub-int v3, v1, v3

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    :goto_2
    return-void

    :cond_2
    iput v0, p0, Lcom/t4game/GWorldMap;->win_destx:I

    iput v1, p0, Lcom/t4game/GWorldMap;->win_desty:I

    iget v0, p0, Lcom/t4game/GWorldMap;->win_x:I

    iput v0, p0, Lcom/t4game/GWorldMap;->win_startx:I

    iget v0, p0, Lcom/t4game/GWorldMap;->win_y:I

    iput v0, p0, Lcom/t4game/GWorldMap;->win_starty:I

    mul-int/lit8 v0, v2, 0x2

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/t4game/GWorldMap;->win_vx:I

    mul-int/lit8 v0, v3, 0x2

    mul-int/lit16 v0, v0, 0x3e8

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/t4game/GWorldMap;->win_vy:I

    iget v0, p0, Lcom/t4game/GWorldMap;->win_vx:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/t4game/GWorldMap;->win_ax:I

    iget v0, p0, Lcom/t4game/GWorldMap;->win_vy:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/t4game/GWorldMap;->win_ay:I

    iput-boolean v5, p0, Lcom/t4game/GWorldMap;->win_moving:Z

    iput v4, p0, Lcom/t4game/GWorldMap;->win_moveNowFrame:I

    goto :goto_2

    :cond_3
    move v1, p2

    goto :goto_1

    :cond_4
    move v0, p1

    goto :goto_0
.end method

.method public final setWinPos(II)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lcom/t4game/GWorldMap;->win_x:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/t4game/GWorldMap;->win_y:I

    if-ne p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gez p1, :cond_a

    move v0, v4

    :goto_1
    if-gez p2, :cond_9

    move v1, v4

    :goto_2
    iget v2, p0, Lcom/t4game/GWorldMap;->WW:I

    iget v3, p0, Lcom/t4game/GWorldMap;->map_w:I

    if-le v2, v3, :cond_7

    move v0, v4

    :cond_2
    :goto_3
    iget v2, p0, Lcom/t4game/GWorldMap;->WH:I

    iget v3, p0, Lcom/t4game/GWorldMap;->map_h:I

    if-le v2, v3, :cond_8

    move v1, v4

    :cond_3
    :goto_4
    int-to-short v0, v0

    iput v0, p0, Lcom/t4game/GWorldMap;->win_x:I

    int-to-short v0, v1

    iput v0, p0, Lcom/t4game/GWorldMap;->win_y:I

    iget v0, p0, Lcom/t4game/GWorldMap;->win_x:I

    iget v1, p0, Lcom/t4game/GWorldMap;->WW:I

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput v0, p0, Lcom/t4game/GWorldMap;->win_x2:I

    iget v0, p0, Lcom/t4game/GWorldMap;->win_y:I

    iget v1, p0, Lcom/t4game/GWorldMap;->WH:I

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput v0, p0, Lcom/t4game/GWorldMap;->win_y2:I

    iget v0, p0, Lcom/t4game/GWorldMap;->win_x:I

    iget v1, p0, Lcom/t4game/GWorldMap;->WX:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/GWorldMap;->screen_mapx:I

    iget v0, p0, Lcom/t4game/GWorldMap;->win_y:I

    iget v1, p0, Lcom/t4game/GWorldMap;->WY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/GWorldMap;->screen_mapy:I

    iget v0, p0, Lcom/t4game/GWorldMap;->WW:I

    iget v1, p0, Lcom/t4game/GWorldMap;->map_w:I

    if-le v0, v1, :cond_4

    iget v0, p0, Lcom/t4game/GWorldMap;->screen_mapx:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/GWorldMap;->screen_mapx:I

    :cond_4
    iget v0, p0, Lcom/t4game/GWorldMap;->WH:I

    iget v1, p0, Lcom/t4game/GWorldMap;->map_h:I

    if-le v0, v1, :cond_5

    iget v0, p0, Lcom/t4game/GWorldMap;->screen_mapy:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/GWorldMap;->screen_mapy:I

    :cond_5
    iget v0, p0, Lcom/t4game/GWorldMap;->win_x:I

    iget-byte v1, p0, Lcom/t4game/GWorldMap;->GW:B

    div-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/GWorldMap;->win_y:I

    iget-byte v2, p0, Lcom/t4game/GWorldMap;->GH:B

    div-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/GWorldMap;->win_gx:I

    if-ne v0, v2, :cond_6

    iget v2, p0, Lcom/t4game/GWorldMap;->win_gy:I

    if-eq v1, v2, :cond_0

    :cond_6
    int-to-short v0, v0

    iput v0, p0, Lcom/t4game/GWorldMap;->win_gx:I

    int-to-short v0, v1

    iput v0, p0, Lcom/t4game/GWorldMap;->win_gy:I

    iget v0, p0, Lcom/t4game/GWorldMap;->win_gx:I

    iget v1, p0, Lcom/t4game/GWorldMap;->WGW:I

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput v0, p0, Lcom/t4game/GWorldMap;->win_gx2:I

    iget v0, p0, Lcom/t4game/GWorldMap;->win_gy:I

    iget v1, p0, Lcom/t4game/GWorldMap;->WGH:I

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput v0, p0, Lcom/t4game/GWorldMap;->win_gy2:I

    iput-boolean v5, p0, Lcom/t4game/GWorldMap;->win_g_upd:Z

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/t4game/GWorldMap;->map_w:I

    iget v3, p0, Lcom/t4game/GWorldMap;->WW:I

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_2

    iget v0, p0, Lcom/t4game/GWorldMap;->map_w:I

    iget v2, p0, Lcom/t4game/GWorldMap;->WW:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v5

    goto :goto_3

    :cond_8
    iget v2, p0, Lcom/t4game/GWorldMap;->map_h:I

    iget v3, p0, Lcom/t4game/GWorldMap;->WH:I

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_3

    iget v1, p0, Lcom/t4game/GWorldMap;->map_h:I

    iget v2, p0, Lcom/t4game/GWorldMap;->WH:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v5

    goto/16 :goto_4

    :cond_9
    move v1, p2

    goto/16 :goto_2

    :cond_a
    move v0, p1

    goto/16 :goto_1
.end method

.method public setWorldLocation(I)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/t4game/GWorldMap;->locationList:[Lcom/t4game/GWorldLocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GWorldMap;->locationList:[Lcom/t4game/GWorldLocation;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-short v0, v0, Lcom/t4game/GWorldLocation;->id:S

    if-eq p1, v0, :cond_0

    :cond_2
    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    iget-object v0, p0, Lcom/t4game/GWorldMap;->locationList:[Lcom/t4game/GWorldLocation;

    array-length v0, v0

    move v1, v5

    :goto_1
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lcom/t4game/GWorldMap;->locationList:[Lcom/t4game/GWorldLocation;

    aget-object v2, v2, v1

    iget-short v2, v2, Lcom/t4game/GWorldLocation;->id:S

    if-ne v2, p1, :cond_3

    iget-object v2, p0, Lcom/t4game/GWorldMap;->locationList:[Lcom/t4game/GWorldLocation;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-object v2, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-short v2, v2, Lcom/t4game/GWorldLocation;->mapX:S

    iget v3, p0, Lcom/t4game/GWorldMap;->WW2:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-short v3, v3, Lcom/t4game/GWorldLocation;->mapY:S

    iget v4, p0, Lcom/t4game/GWorldMap;->WH2:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/t4game/GWorldMap;->setWinPos(II)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GWorldMap;->locationList:[Lcom/t4game/GWorldLocation;

    aget-object v0, v0, v5

    iput-object v0, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-object v0, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-short v0, v0, Lcom/t4game/GWorldLocation;->mapX:S

    iget v1, p0, Lcom/t4game/GWorldMap;->WW2:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-short v1, v1, Lcom/t4game/GWorldLocation;->mapY:S

    iget v2, p0, Lcom/t4game/GWorldMap;->WH2:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/t4game/GWorldMap;->setWinPos(II)V

    goto :goto_0
.end method

.method public setWorldLocationByType(II)V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/t4game/GWorldMap;->locationList:[Lcom/t4game/GWorldLocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GWorldMap;->locationList:[Lcom/t4game/GWorldLocation;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-byte v0, v0, Lcom/t4game/GWorldLocation;->locationType:B

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-short v0, v0, Lcom/t4game/GWorldLocation;->targetSceneId:S

    if-eq p2, v0, :cond_0

    :cond_2
    const/4 v0, -0x1

    if-eq p2, v0, :cond_4

    iget-object v0, p0, Lcom/t4game/GWorldMap;->locationList:[Lcom/t4game/GWorldLocation;

    array-length v0, v0

    move v1, v5

    :goto_1
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lcom/t4game/GWorldMap;->locationList:[Lcom/t4game/GWorldLocation;

    aget-object v2, v2, v1

    iget-byte v2, v2, Lcom/t4game/GWorldLocation;->locationType:B

    if-ne p1, v2, :cond_3

    iget-object v2, p0, Lcom/t4game/GWorldMap;->locationList:[Lcom/t4game/GWorldLocation;

    aget-object v2, v2, v1

    iget-short v2, v2, Lcom/t4game/GWorldLocation;->targetSceneId:S

    if-ne v2, p2, :cond_3

    iget-object v2, p0, Lcom/t4game/GWorldMap;->locationList:[Lcom/t4game/GWorldLocation;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-object v2, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-short v2, v2, Lcom/t4game/GWorldLocation;->mapX:S

    iget v3, p0, Lcom/t4game/GWorldMap;->WW2:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-short v3, v3, Lcom/t4game/GWorldLocation;->mapY:S

    iget v4, p0, Lcom/t4game/GWorldMap;->WH2:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/t4game/GWorldMap;->setWinPos(II)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GWorldMap;->locationList:[Lcom/t4game/GWorldLocation;

    aget-object v0, v0, v5

    iput-object v0, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-object v0, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-short v0, v0, Lcom/t4game/GWorldLocation;->mapX:S

    iget v1, p0, Lcom/t4game/GWorldMap;->WW2:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/GWorldMap;->nowLocation:Lcom/t4game/GWorldLocation;

    iget-short v1, v1, Lcom/t4game/GWorldLocation;->mapY:S

    iget v2, p0, Lcom/t4game/GWorldMap;->WH2:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/t4game/GWorldMap;->setWinPos(II)V

    goto :goto_0
.end method

.method public update()V
    .locals 5

    iget-boolean v0, p0, Lcom/t4game/GWorldMap;->ready:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget v0, p0, Lcom/t4game/GWorldMap;->renderFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/GWorldMap;->renderFrame:I

    iget v0, p0, Lcom/t4game/GWorldMap;->renderFrame:I

    const v1, 0x7fffffff

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/GWorldMap;->renderFrame:I

    :cond_2
    iget-boolean v0, p0, Lcom/t4game/GWorldMap;->win_moving:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/t4game/GWorldMap;->win_moveNowFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/GWorldMap;->win_moveNowFrame:I

    iget v0, p0, Lcom/t4game/GWorldMap;->win_moveNowFrame:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/GWorldMap;->win_moving:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/GWorldMap;->win_moveNowFrame:I

    iget v0, p0, Lcom/t4game/GWorldMap;->win_destx:I

    iget v1, p0, Lcom/t4game/GWorldMap;->win_desty:I

    invoke-virtual {p0, v0, v1}, Lcom/t4game/GWorldMap;->setWinPos(II)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/t4game/GWorldMap;->win_startx:I

    iget v1, p0, Lcom/t4game/GWorldMap;->win_vx:I

    iget v2, p0, Lcom/t4game/GWorldMap;->win_moveNowFrame:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/GWorldMap;->win_ax:I

    iget v3, p0, Lcom/t4game/GWorldMap;->win_moveNowFrame:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/GWorldMap;->win_moveNowFrame:I

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    div-int/lit16 v1, v1, 0x3e8

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/GWorldMap;->win_starty:I

    iget v2, p0, Lcom/t4game/GWorldMap;->win_vy:I

    iget v3, p0, Lcom/t4game/GWorldMap;->win_moveNowFrame:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/GWorldMap;->win_ay:I

    iget v4, p0, Lcom/t4game/GWorldMap;->win_moveNowFrame:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/t4game/GWorldMap;->win_moveNowFrame:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    div-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/t4game/GWorldMap;->setWinPos(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
