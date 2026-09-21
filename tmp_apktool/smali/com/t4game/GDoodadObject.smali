.class public Lcom/t4game/GDoodadObject;
.super Lcom/t4game/GMapObject;


# instance fields
.field public objectData:Lcom/t4game/GObjectData;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/t4game/GMapObject;-><init>()V

    iput-byte v1, p0, Lcom/t4game/GDoodadObject;->type:B

    iput-byte v1, p0, Lcom/t4game/GDoodadObject;->layer:B

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/GDoodadObject;->store:B

    iput-byte v1, p0, Lcom/t4game/GDoodadObject;->poolId:B

    return-void
.end method


# virtual methods
.method public final draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/t4game/GDoodadObject;->objectData:Lcom/t4game/GObjectData;

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-short v0, p0, Lcom/t4game/GDoodadObject;->mapX:S

    iget-short v1, p0, Lcom/t4game/GDoodadObject;->mapY:S

    iget-object v3, p0, Lcom/t4game/GDoodadObject;->objectData:Lcom/t4game/GObjectData;

    iget-byte v3, v3, Lcom/t4game/GObjectData;->imageType:B

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/t4game/GDoodadObject;->scene:Lcom/t4game/GScene;

    iget-byte v3, v3, Lcom/t4game/GScene;->GW2:B

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/t4game/GDoodadObject;->scene:Lcom/t4game/GScene;

    iget-byte v3, v3, Lcom/t4game/GScene;->GH2:B

    sub-int/2addr v1, v3

    move v9, v1

    move v1, v0

    move v0, v9

    :goto_1
    iget-object v3, p0, Lcom/t4game/GDoodadObject;->scene:Lcom/t4game/GScene;

    iget v3, v3, Lcom/t4game/GScene;->screen_mapx:I

    sub-int v3, v1, v3

    iget-object v1, p0, Lcom/t4game/GDoodadObject;->scene:Lcom/t4game/GScene;

    iget v1, v1, Lcom/t4game/GScene;->screen_mapy:I

    sub-int v4, v0, v1

    iget-object v0, p0, Lcom/t4game/GDoodadObject;->objectData:Lcom/t4game/GObjectData;

    iget-object v1, p0, Lcom/t4game/GDoodadObject;->scene:Lcom/t4game/GScene;

    invoke-virtual {v0, v1}, Lcom/t4game/GObjectData;->setClip(Lcom/t4game/GMap;)V

    iget-object v0, p0, Lcom/t4game/GDoodadObject;->objectData:Lcom/t4game/GObjectData;

    iget-boolean v5, p0, Lcom/t4game/GDoodadObject;->mirrorH:Z

    iget-boolean v6, p0, Lcom/t4game/GDoodadObject;->mirrorV:Z

    const/4 v7, 0x0

    move-object v1, p1

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/t4game/GObjectData;->drawObjectFrame(Ljavax/microedition/lcdui/Graphics;IIIZZLcom/t4game/GIRenderManager;B)V

    iget-object v0, p0, Lcom/t4game/GDoodadObject;->objectData:Lcom/t4game/GObjectData;

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->resetClip()V

    goto :goto_0

    :cond_1
    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_1
.end method

.method public final drawButtom(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0

    return-void
.end method

.method public final drawName(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0

    return-void
.end method

.method public init(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/GDoodadObject;->objectData:Lcom/t4game/GObjectData;

    if-nez v1, :cond_0

    sget-byte v1, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    invoke-static {v1, v0, v2}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GObjectData;

    iput-object v0, p0, Lcom/t4game/GDoodadObject;->objectData:Lcom/t4game/GObjectData;

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GDoodadObject;->layer:B

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GDoodadObject;->gridY:S

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GDoodadObject;->gridX:S

    iget-object v0, p0, Lcom/t4game/GDoodadObject;->scene:Lcom/t4game/GScene;

    iget-short v1, p0, Lcom/t4game/GDoodadObject;->gridX:S

    invoke-virtual {v0, v1}, Lcom/t4game/GScene;->gridX2SceneX(I)I

    move-result v0

    iget-object v1, p0, Lcom/t4game/GDoodadObject;->scene:Lcom/t4game/GScene;

    iget-byte v1, v1, Lcom/t4game/GScene;->GW2:B

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GDoodadObject;->mapX:S

    iget-object v0, p0, Lcom/t4game/GDoodadObject;->scene:Lcom/t4game/GScene;

    iget-short v1, p0, Lcom/t4game/GDoodadObject;->gridY:S

    invoke-virtual {v0, v1}, Lcom/t4game/GScene;->gridY2SceneY(I)I

    move-result v0

    iget-object v1, p0, Lcom/t4game/GDoodadObject;->scene:Lcom/t4game/GScene;

    iget-byte v1, v1, Lcom/t4game/GScene;->GH2:B

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GDoodadObject;->mapY:S

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit8 v1, v0, 0x2

    if-lez v1, :cond_1

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/t4game/GDoodadObject;->mirrorH:Z

    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_2

    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/t4game/GDoodadObject;->mirrorV:Z

    invoke-virtual {p0}, Lcom/t4game/GDoodadObject;->initData()V

    return-void

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method protected initData()V
    .locals 4

    iget-byte v0, p0, Lcom/t4game/GDoodadObject;->initState:B

    sget-byte v1, Lcom/t4game/GDoodadObject;->INIT_STATE_INITING0:B

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/GDoodadObject;->objectData:Lcom/t4game/GObjectData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GDoodadObject;->objectData:Lcom/t4game/GObjectData;

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GDoodadObject;->objectData:Lcom/t4game/GObjectData;

    iget-short v0, v0, Lcom/t4game/GObjectData;->boundW:S

    iget-object v1, p0, Lcom/t4game/GDoodadObject;->objectData:Lcom/t4game/GObjectData;

    iget-short v1, v1, Lcom/t4game/GObjectData;->boundH:S

    iget-boolean v2, p0, Lcom/t4game/GDoodadObject;->mirrorH:Z

    if-eqz v2, :cond_1

    neg-int v2, v0

    iget-object v3, p0, Lcom/t4game/GDoodadObject;->objectData:Lcom/t4game/GObjectData;

    iget-short v3, v3, Lcom/t4game/GObjectData;->boundX:S

    sub-int/2addr v2, v3

    :goto_0
    int-to-short v2, v2

    iput-short v2, p0, Lcom/t4game/GDoodadObject;->boundX1:S

    iget-boolean v2, p0, Lcom/t4game/GDoodadObject;->mirrorV:Z

    if-eqz v2, :cond_2

    neg-int v2, v1

    iget-object v3, p0, Lcom/t4game/GDoodadObject;->objectData:Lcom/t4game/GObjectData;

    iget-short v3, v3, Lcom/t4game/GObjectData;->boundY:S

    sub-int/2addr v2, v3

    :goto_1
    int-to-short v2, v2

    iput-short v2, p0, Lcom/t4game/GDoodadObject;->boundY1:S

    iget-short v2, p0, Lcom/t4game/GDoodadObject;->boundX1:S

    iget-short v3, p0, Lcom/t4game/GDoodadObject;->mapX:S

    add-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lcom/t4game/GDoodadObject;->boundX1:S

    iget-short v2, p0, Lcom/t4game/GDoodadObject;->boundY1:S

    iget-short v3, p0, Lcom/t4game/GDoodadObject;->mapY:S

    add-int/2addr v2, v3

    int-to-short v2, v2

    iput-short v2, p0, Lcom/t4game/GDoodadObject;->boundY1:S

    iget-short v2, p0, Lcom/t4game/GDoodadObject;->boundX1:S

    add-int/2addr v0, v2

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GDoodadObject;->boundX2:S

    iget-short v0, p0, Lcom/t4game/GDoodadObject;->boundY1:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GDoodadObject;->boundY2:S

    sget-byte v0, Lcom/t4game/GDoodadObject;->INIT_STATE_INITED:B

    iput-byte v0, p0, Lcom/t4game/GDoodadObject;->initState:B

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/t4game/GDoodadObject;->objectData:Lcom/t4game/GObjectData;

    iget-short v2, v2, Lcom/t4game/GObjectData;->boundX:S

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/t4game/GDoodadObject;->objectData:Lcom/t4game/GObjectData;

    iget-short v2, v2, Lcom/t4game/GObjectData;->boundY:S

    goto :goto_1
.end method

.method public release()V
    .locals 2

    invoke-super {p0}, Lcom/t4game/GMapObject;->release()V

    iget-object v0, p0, Lcom/t4game/GDoodadObject;->objectData:Lcom/t4game/GObjectData;

    if-eqz v0, :cond_0

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    iget-object v1, p0, Lcom/t4game/GDoodadObject;->objectData:Lcom/t4game/GObjectData;

    iget-object v1, v1, Lcom/t4game/GObjectData;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GDoodadObject;->objectData:Lcom/t4game/GObjectData;

    :cond_0
    return-void
.end method

.method public update()B
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/t4game/GMapObject;->update()B

    invoke-virtual {p0}, Lcom/t4game/GDoodadObject;->initData()V

    iget-byte v0, p0, Lcom/t4game/GDoodadObject;->initState:B

    sget-byte v1, Lcom/t4game/GDoodadObject;->INIT_STATE_INITED:B

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-short v0, p0, Lcom/t4game/GDoodadObject;->boundX2:S

    iget-object v1, p0, Lcom/t4game/GDoodadObject;->scene:Lcom/t4game/GScene;

    iget v1, v1, Lcom/t4game/GScene;->win_x:I

    if-lt v0, v1, :cond_1

    iget-short v0, p0, Lcom/t4game/GDoodadObject;->boundX1:S

    iget-object v1, p0, Lcom/t4game/GDoodadObject;->scene:Lcom/t4game/GScene;

    iget v1, v1, Lcom/t4game/GScene;->win_x2:I

    if-ge v0, v1, :cond_1

    iget-short v0, p0, Lcom/t4game/GDoodadObject;->boundY2:S

    iget-object v1, p0, Lcom/t4game/GDoodadObject;->scene:Lcom/t4game/GScene;

    iget v1, v1, Lcom/t4game/GScene;->win_y:I

    if-lt v0, v1, :cond_1

    iget-short v0, p0, Lcom/t4game/GDoodadObject;->boundY1:S

    iget-object v1, p0, Lcom/t4game/GDoodadObject;->scene:Lcom/t4game/GScene;

    iget v1, v1, Lcom/t4game/GScene;->win_y2:I

    if-lt v0, v1, :cond_3

    :cond_1
    iget-boolean v0, p0, Lcom/t4game/GDoodadObject;->visible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/GDoodadObject;->scene:Lcom/t4game/GScene;

    invoke-virtual {v0, p0}, Lcom/t4game/GScene;->removeFromView(Lcom/t4game/GMapObject;)V

    :cond_2
    :goto_1
    move v0, v2

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/t4game/GDoodadObject;->visible:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/t4game/GDoodadObject;->scene:Lcom/t4game/GScene;

    invoke-virtual {v0, p0, v2}, Lcom/t4game/GScene;->addToView(Lcom/t4game/GMapObject;Z)V

    goto :goto_1
.end method
