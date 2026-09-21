.class public Lcom/t4game/GFabao;
.super Ljava/lang/Object;


# instance fields
.field protected actionId:B

.field protected actionType:B

.field protected animDataIndex:B

.field protected dir:B

.field public inited:Z

.field protected nowFrame:I

.field public objectData:Lcom/t4game/GObjectData;

.field public quality:B

.field protected sprite:Lcom/t4game/GSprite;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/t4game/GFabao;->inited:Z

    iput-byte v0, p0, Lcom/t4game/GFabao;->actionType:B

    iput-byte v1, p0, Lcom/t4game/GFabao;->actionId:B

    iput-byte v0, p0, Lcom/t4game/GFabao;->animDataIndex:B

    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;II)V
    .locals 10

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/t4game/GFabao;->sprite:Lcom/t4game/GSprite;

    iget-object v0, v0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GFabao;->sprite:Lcom/t4game/GSprite;

    iget-boolean v0, v0, Lcom/t4game/GSprite;->visible:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/GFabao;->objectData:Lcom/t4game/GObjectData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GFabao;->objectData:Lcom/t4game/GObjectData;

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/GFabao;->animDataIndex:B

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iget-byte v1, p0, Lcom/t4game/GFabao;->dir:B

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcom/t4game/GFabao;->sprite:Lcom/t4game/GSprite;

    iget v1, v1, Lcom/t4game/GSprite;->offsetOX:I

    add-int/2addr v0, v1

    add-int v4, p2, v0

    iget-object v0, p0, Lcom/t4game/GFabao;->sprite:Lcom/t4game/GSprite;

    iget v0, v0, Lcom/t4game/GSprite;->by1:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/t4game/GFabao;->sprite:Lcom/t4game/GSprite;

    iget v1, v1, Lcom/t4game/GSprite;->offsetOX:I

    add-int/2addr v0, v1

    add-int v5, p3, v0

    iget-object v0, p0, Lcom/t4game/GFabao;->objectData:Lcom/t4game/GObjectData;

    iget-object v1, p0, Lcom/t4game/GFabao;->sprite:Lcom/t4game/GSprite;

    iget-object v1, v1, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    invoke-virtual {v0, v1}, Lcom/t4game/GObjectData;->setClip(Lcom/t4game/GMap;)V

    iget-object v0, p0, Lcom/t4game/GFabao;->objectData:Lcom/t4game/GObjectData;

    iget-byte v2, p0, Lcom/t4game/GFabao;->animDataIndex:B

    iget v3, p0, Lcom/t4game/GFabao;->nowFrame:I

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/t4game/GFabao;->sprite:Lcom/t4game/GSprite;

    iget-byte v9, v1, Lcom/t4game/GSprite;->alpha:B

    move-object v1, p1

    move v7, v6

    invoke-virtual/range {v0 .. v9}, Lcom/t4game/GObjectData;->drawAnimFrame(Ljavax/microedition/lcdui/Graphics;IIIIZZLcom/t4game/GIRenderManager;B)V

    iget-object v0, p0, Lcom/t4game/GFabao;->objectData:Lcom/t4game/GObjectData;

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->resetClip()V

    goto :goto_0

    :array_0
    .array-data 1
        -0x12t
        -0x12t
        0x12t
        0x12t
    .end array-data
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/t4game/GFabao;->objectData:Lcom/t4game/GObjectData;

    if-eqz v0, :cond_0

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    iget-object v1, p0, Lcom/t4game/GFabao;->objectData:Lcom/t4game/GObjectData;

    iget-object v1, v1, Lcom/t4game/GObjectData;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GFabao;->objectData:Lcom/t4game/GObjectData;

    :cond_0
    return-void
.end method

.method public final setActType(BZ)V
    .locals 2

    const/4 v1, 0x5

    if-eqz p2, :cond_1

    iput-byte p1, p0, Lcom/t4game/GFabao;->actionType:B

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/GFabao;->actionType:B

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/GFabao;->sprite:Lcom/t4game/GSprite;

    iget-byte v0, v0, Lcom/t4game/GSprite;->actionType:B

    if-eq v0, v1, :cond_0

    iput-byte p1, p0, Lcom/t4game/GFabao;->actionType:B

    goto :goto_0
.end method

.method public final setAction(BBZ)V
    .locals 3

    const/4 v2, 0x5

    const/4 v1, 0x0

    iget-byte v0, p0, Lcom/t4game/GFabao;->actionId:B

    if-ne v0, p1, :cond_1

    iget-byte v0, p0, Lcom/t4game/GFabao;->dir:B

    if-ne v0, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iput-byte p2, p0, Lcom/t4game/GFabao;->dir:B

    if-eqz p3, :cond_2

    iput-byte p1, p0, Lcom/t4game/GFabao;->actionId:B

    iput v1, p0, Lcom/t4game/GFabao;->nowFrame:I

    goto :goto_0

    :cond_2
    iget-byte v0, p0, Lcom/t4game/GFabao;->actionType:B

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/t4game/GFabao;->sprite:Lcom/t4game/GSprite;

    iget-byte v0, v0, Lcom/t4game/GSprite;->actionType:B

    if-eq v0, v2, :cond_0

    iput-byte p1, p0, Lcom/t4game/GFabao;->actionId:B

    iput v1, p0, Lcom/t4game/GFabao;->nowFrame:I

    goto :goto_0
.end method

.method public setObjectDataId(S)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/t4game/GFabao;->objectData:Lcom/t4game/GObjectData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/GFabao;->objectData:Lcom/t4game/GObjectData;

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->getIntId()I

    move-result v0

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    iget-object v1, p0, Lcom/t4game/GFabao;->objectData:Lcom/t4game/GObjectData;

    iget-object v1, v1, Lcom/t4game/GObjectData;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GFabao;->objectData:Lcom/t4game/GObjectData;

    iput-byte v2, p0, Lcom/t4game/GFabao;->animDataIndex:B

    :cond_2
    iput v3, p0, Lcom/t4game/GFabao;->nowFrame:I

    if-eq p1, v2, :cond_0

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GObjectData;

    iput-object v0, p0, Lcom/t4game/GFabao;->objectData:Lcom/t4game/GObjectData;

    goto :goto_0
.end method

.method public update()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/GFabao;->objectData:Lcom/t4game/GObjectData;

    iget-byte v1, p0, Lcom/t4game/GFabao;->actionId:B

    iget-byte v2, p0, Lcom/t4game/GFabao;->dir:B

    invoke-virtual {v0, v3, v1, v2}, Lcom/t4game/GObjectData;->getActionAnimDataIndex(III)B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/GFabao;->animDataIndex:B

    iget-byte v0, p0, Lcom/t4game/GFabao;->animDataIndex:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/GFabao;->objectData:Lcom/t4game/GObjectData;

    iget-byte v1, p0, Lcom/t4game/GFabao;->animDataIndex:B

    invoke-virtual {v0, v1}, Lcom/t4game/GObjectData;->getAnimFrameNum(I)B

    move-result v0

    iget v1, p0, Lcom/t4game/GFabao;->nowFrame:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/t4game/GFabao;->nowFrame:I

    iget v1, p0, Lcom/t4game/GFabao;->nowFrame:I

    if-lt v1, v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/GFabao;->actionType:B

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iput-byte v3, p0, Lcom/t4game/GFabao;->actionType:B

    iput-byte v3, p0, Lcom/t4game/GFabao;->actionId:B

    :cond_2
    iput v3, p0, Lcom/t4game/GFabao;->nowFrame:I

    goto :goto_0
.end method
