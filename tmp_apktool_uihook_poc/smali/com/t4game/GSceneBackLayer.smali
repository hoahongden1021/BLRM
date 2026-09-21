.class public Lcom/t4game/GSceneBackLayer;
.super Lcom/t4game/GMap;


# instance fields
.field clipDate:[S

.field clipImageData:Lcom/t4game/GImageData;

.field fillColor:[I

.field fillHight:B

.field fillNumInWin:B


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/t4game/GMap;-><init>()V

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/t4game/GSceneBackLayer;->fillColor:[I

    const/16 v0, 0xa

    iput-byte v0, p0, Lcom/t4game/GSceneBackLayer;->fillHight:B

    const/16 v0, 0x1e

    iput-byte v0, p0, Lcom/t4game/GSceneBackLayer;->fillNumInWin:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GSceneBackLayer;->clipImageData:Lcom/t4game/GImageData;

    invoke-virtual {p0, v1, v1}, Lcom/t4game/GSceneBackLayer;->setWinGridSize(II)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    add-int/lit8 v1, v1, 0xa

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/t4game/GSceneBackLayer;->setWinDimension(IIII)V

    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/t4game/GSceneBackLayer;->screen_mapy:I

    iget-byte v1, p0, Lcom/t4game/GSceneBackLayer;->fillHight:B

    div-int v1, v0, v1

    iget-byte v2, p0, Lcom/t4game/GSceneBackLayer;->fillHight:B

    rem-int/2addr v0, v2

    if-nez v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/GSceneBackLayer;->fillNumInWin:B

    :goto_0
    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/t4game/GSceneBackLayer;->fillColor:[I

    array-length v2, v2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/t4game/GSceneBackLayer;->fillColor:[I

    array-length v1, v1

    sub-int v0, v1, v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/GSceneBackLayer;->fillColor:[I

    aget v0, v0, v3

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual {p1, v3, v3, v0, v1}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/GSceneBackLayer;->fillNumInWin:B

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public init(Ljava/io/InputStream;)Z
    .locals 13

    const v12, 0xffff

    const/4 v11, 0x1

    const/4 v10, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v0

    iput v0, p0, Lcom/t4game/GSceneBackLayer;->map_gw:I

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v0

    iput v0, p0, Lcom/t4game/GSceneBackLayer;->map_gh:I

    iget v0, p0, Lcom/t4game/GSceneBackLayer;->map_gw:I

    invoke-virtual {p0, v0}, Lcom/t4game/GSceneBackLayer;->gridX2SceneX(I)I

    move-result v0

    iput v0, p0, Lcom/t4game/GSceneBackLayer;->map_w:I

    iget v0, p0, Lcom/t4game/GSceneBackLayer;->map_gh:I

    invoke-virtual {p0, v0}, Lcom/t4game/GSceneBackLayer;->gridX2SceneX(I)I

    move-result v0

    iput v0, p0, Lcom/t4game/GSceneBackLayer;->map_h:I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v0

    sget-byte v2, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GImageData;

    iput-object v0, p0, Lcom/t4game/GSceneBackLayer;->tileImageData:Lcom/t4game/GImageData;

    mul-int/lit8 v0, v1, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/GSceneBackLayer;->map_gs:[B

    iget-object v0, p0, Lcom/t4game/GSceneBackLayer;->map_gs:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-lez v1, :cond_5

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v0

    sget-byte v2, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GImageData;

    iput-object v0, p0, Lcom/t4game/GSceneBackLayer;->clipImageData:Lcom/t4game/GImageData;

    mul-int/lit8 v0, v1, 0x7

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/t4game/GSceneBackLayer;->clipDate:[S

    move v0, v10

    :goto_0
    if-ge v0, v1, :cond_5

    mul-int/lit8 v2, v0, 0x7

    iget-object v3, p0, Lcom/t4game/GSceneBackLayer;->clipDate:[S

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v4

    aput-short v4, v3, v2

    iget-object v3, p0, Lcom/t4game/GSceneBackLayer;->clipDate:[S

    add-int/lit8 v4, v2, 0x1

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v5

    aput-short v5, v3, v4

    iget-object v3, p0, Lcom/t4game/GSceneBackLayer;->clipDate:[S

    add-int/lit8 v4, v2, 0x6

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v5

    aput-short v5, v3, v4

    iget-object v3, p0, Lcom/t4game/GSceneBackLayer;->clipDate:[S

    add-int/lit8 v4, v2, 0x6

    aget-short v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    mul-int/lit8 v3, v3, 0x6

    iget-object v4, p0, Lcom/t4game/GSceneBackLayer;->clipDate:[S

    add-int/lit8 v5, v2, 0x6

    aget-short v4, v4, v5

    const v5, 0x8000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    move v4, v11

    :goto_1
    iget-object v5, p0, Lcom/t4game/GSceneBackLayer;->clipDate:[S

    add-int/lit8 v6, v2, 0x6

    aget-short v5, v5, v6

    and-int/lit16 v5, v5, 0x4000

    if-eqz v5, :cond_2

    move v5, v11

    :goto_2
    iget-object v6, p0, Lcom/t4game/GSceneBackLayer;->clipImageData:Lcom/t4game/GImageData;

    iget-object v6, v6, Lcom/t4game/GImageData;->clips:[B

    add-int/lit8 v7, v3, 0x2

    aget-byte v6, v6, v7

    and-int/2addr v6, v12

    iget-object v7, p0, Lcom/t4game/GSceneBackLayer;->clipImageData:Lcom/t4game/GImageData;

    iget-object v7, v7, Lcom/t4game/GImageData;->clips:[B

    add-int/lit8 v8, v3, 0x3

    aget-byte v7, v7, v8

    and-int/2addr v7, v12

    if-eqz v4, :cond_3

    sub-int v4, v6, v11

    neg-int v4, v4

    iget-object v8, p0, Lcom/t4game/GSceneBackLayer;->clipImageData:Lcom/t4game/GImageData;

    iget-object v8, v8, Lcom/t4game/GImageData;->clips:[B

    add-int/lit8 v9, v3, 0x4

    aget-byte v8, v8, v9

    sub-int/2addr v4, v8

    :goto_3
    if-eqz v5, :cond_4

    sub-int v5, v7, v11

    neg-int v5, v5

    iget-object v8, p0, Lcom/t4game/GSceneBackLayer;->clipImageData:Lcom/t4game/GImageData;

    iget-object v8, v8, Lcom/t4game/GImageData;->clips:[B

    add-int/lit8 v3, v3, 0x5

    aget-byte v3, v8, v3

    sub-int v3, v5, v3

    :goto_4
    iget-object v5, p0, Lcom/t4game/GSceneBackLayer;->clipDate:[S

    add-int/lit8 v8, v2, 0x2

    iget-object v9, p0, Lcom/t4game/GSceneBackLayer;->clipDate:[S

    aget-short v9, v9, v2

    add-int/2addr v4, v9

    int-to-short v4, v4

    aput-short v4, v5, v8

    iget-object v4, p0, Lcom/t4game/GSceneBackLayer;->clipDate:[S

    add-int/lit8 v5, v2, 0x3

    iget-object v8, p0, Lcom/t4game/GSceneBackLayer;->clipDate:[S

    add-int/lit8 v9, v2, 0x1

    aget-short v8, v8, v9

    add-int/2addr v3, v8

    int-to-short v3, v3

    aput-short v3, v4, v5

    iget-object v3, p0, Lcom/t4game/GSceneBackLayer;->clipDate:[S

    add-int/lit8 v4, v2, 0x4

    iget-object v5, p0, Lcom/t4game/GSceneBackLayer;->clipDate:[S

    add-int/lit8 v8, v2, 0x2

    aget-short v5, v5, v8

    add-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, v3, v4

    iget-object v3, p0, Lcom/t4game/GSceneBackLayer;->clipDate:[S

    add-int/lit8 v4, v2, 0x5

    iget-object v5, p0, Lcom/t4game/GSceneBackLayer;->clipDate:[S

    add-int/lit8 v2, v2, 0x3

    aget-short v2, v5, v2

    add-int/2addr v2, v7

    int-to-short v2, v2

    aput-short v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    move v4, v10

    goto :goto_1

    :cond_2
    move v5, v10

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/t4game/GSceneBackLayer;->clipImageData:Lcom/t4game/GImageData;

    iget-object v4, v4, Lcom/t4game/GImageData;->clips:[B

    add-int/lit8 v8, v3, 0x4

    aget-byte v4, v4, v8

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lcom/t4game/GSceneBackLayer;->clipImageData:Lcom/t4game/GImageData;

    iget-object v5, v5, Lcom/t4game/GImageData;->clips:[B

    add-int/lit8 v3, v3, 0x5

    aget-byte v3, v5, v3

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    sub-int/2addr v0, v11

    if-lez v0, :cond_7

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/t4game/GSceneBackLayer;->fillColor:[I

    move v1, v10

    :goto_5
    if-ge v1, v0, :cond_6

    iget-object v2, p0, Lcom/t4game/GSceneBackLayer;->fillColor:[I

    invoke-static {p1}, Lcom/t4game/GUtil;->readInt(Ljava/io/InputStream;)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    iget v1, p0, Lcom/t4game/GSceneBackLayer;->map_h:I

    div-int v0, v1, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GSceneBackLayer;->fillHight:B

    iget v0, p0, Lcom/t4game/GSceneBackLayer;->WH:I

    iget-byte v1, p0, Lcom/t4game/GSceneBackLayer;->fillHight:B

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GSceneBackLayer;->fillNumInWin:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    move v0, v11

    :goto_6
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v10

    goto :goto_6
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/t4game/GMap;->release()V

    iget-object v0, p0, Lcom/t4game/GSceneBackLayer;->tileImageData:Lcom/t4game/GImageData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GSceneBackLayer;->tileImageData:Lcom/t4game/GImageData;

    invoke-static {v0}, Lcom/t4game/GDataManager;->releaseObjectData(Lcom/t4game/GBaseData;)Lcom/t4game/GBaseData;

    :cond_0
    iput-object v1, p0, Lcom/t4game/GSceneBackLayer;->tileImageData:Lcom/t4game/GImageData;

    iget-object v0, p0, Lcom/t4game/GSceneBackLayer;->clipImageData:Lcom/t4game/GImageData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/GSceneBackLayer;->clipImageData:Lcom/t4game/GImageData;

    invoke-static {v0}, Lcom/t4game/GDataManager;->releaseObjectData(Lcom/t4game/GBaseData;)Lcom/t4game/GBaseData;

    :cond_1
    iput-object v1, p0, Lcom/t4game/GSceneBackLayer;->clipImageData:Lcom/t4game/GImageData;

    return-void
.end method

.method public setWinPos(II)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lcom/t4game/GSceneBackLayer;->win_x:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/t4game/GSceneBackLayer;->win_y:I

    if-ne p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gez p1, :cond_3

    move v0, v2

    :goto_1
    if-gez p2, :cond_4

    move v1, v2

    :goto_2
    iput v0, p0, Lcom/t4game/GSceneBackLayer;->win_x:I

    iput v1, p0, Lcom/t4game/GSceneBackLayer;->win_y:I

    iget v0, p0, Lcom/t4game/GSceneBackLayer;->win_x:I

    iget v1, p0, Lcom/t4game/GSceneBackLayer;->WW:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/GSceneBackLayer;->map_w:I

    if-le v0, v1, :cond_5

    iget v0, p0, Lcom/t4game/GSceneBackLayer;->map_w:I

    :goto_3
    iput v0, p0, Lcom/t4game/GSceneBackLayer;->win_x2:I

    iget v0, p0, Lcom/t4game/GSceneBackLayer;->win_y:I

    iget v1, p0, Lcom/t4game/GSceneBackLayer;->WH:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/GSceneBackLayer;->map_h:I

    if-le v0, v1, :cond_6

    iget v0, p0, Lcom/t4game/GSceneBackLayer;->map_h:I

    :goto_4
    iput v0, p0, Lcom/t4game/GSceneBackLayer;->win_y2:I

    iget v0, p0, Lcom/t4game/GSceneBackLayer;->win_x:I

    iget v1, p0, Lcom/t4game/GSceneBackLayer;->WX:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/GSceneBackLayer;->screen_mapx:I

    iget v0, p0, Lcom/t4game/GSceneBackLayer;->win_y:I

    iget v1, p0, Lcom/t4game/GSceneBackLayer;->WY:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/GSceneBackLayer;->screen_mapy:I

    iget v0, p0, Lcom/t4game/GSceneBackLayer;->win_x:I

    invoke-virtual {p0, v0}, Lcom/t4game/GSceneBackLayer;->sceneX2GridX(I)I

    move-result v0

    iget v1, p0, Lcom/t4game/GSceneBackLayer;->win_y:I

    invoke-virtual {p0, v1}, Lcom/t4game/GSceneBackLayer;->sceneY2GridY(I)I

    move-result v1

    iget v2, p0, Lcom/t4game/GSceneBackLayer;->win_gx:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Lcom/t4game/GSceneBackLayer;->win_gy:I

    if-eq v1, v2, :cond_0

    :cond_2
    iput v0, p0, Lcom/t4game/GSceneBackLayer;->win_gx:I

    iput v1, p0, Lcom/t4game/GSceneBackLayer;->win_gy:I

    iget v0, p0, Lcom/t4game/GSceneBackLayer;->win_gx:I

    iget v1, p0, Lcom/t4game/GSceneBackLayer;->WGW:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/GSceneBackLayer;->map_gw:I

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/t4game/GSceneBackLayer;->map_gw:I

    :goto_5
    iput v0, p0, Lcom/t4game/GSceneBackLayer;->win_gx2:I

    iget v0, p0, Lcom/t4game/GSceneBackLayer;->win_gy:I

    iget v1, p0, Lcom/t4game/GSceneBackLayer;->WGH:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/GSceneBackLayer;->map_gh:I

    if-le v0, v1, :cond_8

    iget v0, p0, Lcom/t4game/GSceneBackLayer;->map_gh:I

    :goto_6
    iput v0, p0, Lcom/t4game/GSceneBackLayer;->win_gy2:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/t4game/GSceneBackLayer;->map_w:I

    iget v1, p0, Lcom/t4game/GSceneBackLayer;->WW:I

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_a

    iget v0, p0, Lcom/t4game/GSceneBackLayer;->map_w:I

    iget v1, p0, Lcom/t4game/GSceneBackLayer;->WW:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v3

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/t4game/GSceneBackLayer;->map_h:I

    iget v2, p0, Lcom/t4game/GSceneBackLayer;->WH:I

    sub-int/2addr v1, v2

    if-lt p2, v1, :cond_9

    iget v1, p0, Lcom/t4game/GSceneBackLayer;->map_h:I

    iget v2, p0, Lcom/t4game/GSceneBackLayer;->WH:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v3

    goto :goto_2

    :cond_5
    iget v0, p0, Lcom/t4game/GSceneBackLayer;->win_x:I

    iget v1, p0, Lcom/t4game/GSceneBackLayer;->WW:I

    add-int/2addr v0, v1

    goto :goto_3

    :cond_6
    iget v0, p0, Lcom/t4game/GSceneBackLayer;->win_y:I

    iget v1, p0, Lcom/t4game/GSceneBackLayer;->WH:I

    add-int/2addr v0, v1

    goto :goto_4

    :cond_7
    iget v0, p0, Lcom/t4game/GSceneBackLayer;->win_gx:I

    iget v1, p0, Lcom/t4game/GSceneBackLayer;->WGW:I

    add-int/2addr v0, v1

    goto :goto_5

    :cond_8
    iget v0, p0, Lcom/t4game/GSceneBackLayer;->win_gy:I

    iget v1, p0, Lcom/t4game/GSceneBackLayer;->WGH:I

    add-int/2addr v0, v1

    goto :goto_6

    :cond_9
    move v1, p2

    goto/16 :goto_2

    :cond_a
    move v0, p1

    goto/16 :goto_1
.end method

.method public update()V
    .locals 0

    return-void
.end method
