.class public Lcom/t4game/GSingleTileObject;
.super Lcom/t4game/GMapObject;


# instance fields
.field private flagIndex:I

.field tempImage:Ljavax/microedition/lcdui/Image;

.field private tileAnimData:Lcom/t4game/GTileAnimData;

.field private tileX:B

.field private tileY:B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/t4game/GMapObject;-><init>()V

    iput-byte v1, p0, Lcom/t4game/GSingleTileObject;->type:B

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/GSingleTileObject;->layer:B

    iput-byte v1, p0, Lcom/t4game/GSingleTileObject;->store:B

    iput-byte v1, p0, Lcom/t4game/GSingleTileObject;->poolId:B

    return-void
.end method


# virtual methods
.method public final draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 8

    iget-object v0, p0, Lcom/t4game/GSingleTileObject;->tileAnimData:Lcom/t4game/GTileAnimData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GSingleTileObject;->tileAnimData:Lcom/t4game/GTileAnimData;

    iget-short v1, p0, Lcom/t4game/GSingleTileObject;->boundX1:S

    iget-object v2, p0, Lcom/t4game/GSingleTileObject;->scene:Lcom/t4game/GScene;

    iget v2, v2, Lcom/t4game/GScene;->screen_mapx:I

    sub-int v2, v1, v2

    iget-short v1, p0, Lcom/t4game/GSingleTileObject;->boundY1:S

    iget-object v3, p0, Lcom/t4game/GSingleTileObject;->scene:Lcom/t4game/GScene;

    iget v3, v3, Lcom/t4game/GScene;->screen_mapy:I

    sub-int v3, v1, v3

    iget-boolean v4, p0, Lcom/t4game/GSingleTileObject;->mirrorH:Z

    iget-boolean v5, p0, Lcom/t4game/GSingleTileObject;->mirrorV:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GTileAnimData;->drawTileAnim(Ljavax/microedition/lcdui/Graphics;IIZZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/GSingleTileObject;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    iget-byte v2, p0, Lcom/t4game/GSingleTileObject;->tileX:B

    iget-byte v3, p0, Lcom/t4game/GSingleTileObject;->tileY:B

    iget-short v1, p0, Lcom/t4game/GSingleTileObject;->boundX1:S

    iget-object v4, p0, Lcom/t4game/GSingleTileObject;->scene:Lcom/t4game/GScene;

    iget v4, v4, Lcom/t4game/GScene;->screen_mapx:I

    sub-int v4, v1, v4

    iget-short v1, p0, Lcom/t4game/GSingleTileObject;->boundY1:S

    iget-object v5, p0, Lcom/t4game/GSingleTileObject;->scene:Lcom/t4game/GScene;

    iget v5, v5, Lcom/t4game/GScene;->screen_mapy:I

    sub-int v5, v1, v5

    iget-boolean v6, p0, Lcom/t4game/GSingleTileObject;->mirrorH:Z

    iget-boolean v7, p0, Lcom/t4game/GSingleTileObject;->mirrorV:Z

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/t4game/GImageData;->drawTile(Ljavax/microedition/lcdui/Graphics;IIIIZZ)V

    goto :goto_0
.end method

.method public final drawButtom(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0

    return-void
.end method

.method public final drawName(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0

    return-void
.end method

.method public init(IIIIZZIILcom/t4game/GTileAnimData;)V
    .locals 3

    int-to-short v0, p1

    iput-short v0, p0, Lcom/t4game/GSingleTileObject;->gridX:S

    int-to-short v0, p2

    iput-short v0, p0, Lcom/t4game/GSingleTileObject;->gridY:S

    iput p7, p0, Lcom/t4game/GSingleTileObject;->flagIndex:I

    iget-object v0, p0, Lcom/t4game/GSingleTileObject;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->map_gs:[B

    iget v1, p0, Lcom/t4game/GSingleTileObject;->flagIndex:I

    aget-byte v2, v0, v1

    or-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/t4game/GSingleTileObject;->scene:Lcom/t4game/GScene;

    iget-short v1, p0, Lcom/t4game/GSingleTileObject;->gridX:S

    invoke-virtual {v0, v1}, Lcom/t4game/GScene;->gridX2SceneX(I)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSingleTileObject;->boundX1:S

    iget-object v0, p0, Lcom/t4game/GSingleTileObject;->scene:Lcom/t4game/GScene;

    iget-short v1, p0, Lcom/t4game/GSingleTileObject;->gridY:S

    invoke-virtual {v0, v1}, Lcom/t4game/GScene;->gridY2SceneY(I)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSingleTileObject;->boundY1:S

    iget-short v0, p0, Lcom/t4game/GSingleTileObject;->boundX1:S

    iget-object v1, p0, Lcom/t4game/GSingleTileObject;->scene:Lcom/t4game/GScene;

    iget-byte v1, v1, Lcom/t4game/GScene;->GW2:B

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSingleTileObject;->mapX:S

    iget-short v0, p0, Lcom/t4game/GSingleTileObject;->boundY1:S

    iget-object v1, p0, Lcom/t4game/GSingleTileObject;->scene:Lcom/t4game/GScene;

    iget-byte v1, v1, Lcom/t4game/GScene;->GH2:B

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/GSingleTileObject;->scene:Lcom/t4game/GScene;

    invoke-virtual {v1, p8}, Lcom/t4game/GScene;->gridY2SceneY(I)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSingleTileObject;->mapY:S

    int-to-byte v0, p3

    iput-byte v0, p0, Lcom/t4game/GSingleTileObject;->tileX:B

    int-to-byte v0, p4

    iput-byte v0, p0, Lcom/t4game/GSingleTileObject;->tileY:B

    iput-boolean p5, p0, Lcom/t4game/GSingleTileObject;->mirrorH:Z

    iput-boolean p6, p0, Lcom/t4game/GSingleTileObject;->mirrorV:Z

    iput-object p9, p0, Lcom/t4game/GSingleTileObject;->tileAnimData:Lcom/t4game/GTileAnimData;

    return-void
.end method

.method public release()V
    .locals 1

    invoke-super {p0}, Lcom/t4game/GMapObject;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GSingleTileObject;->tileAnimData:Lcom/t4game/GTileAnimData;

    return-void
.end method

.method public update()B
    .locals 3

    iget-short v0, p0, Lcom/t4game/GSingleTileObject;->gridX:S

    iget-object v1, p0, Lcom/t4game/GSingleTileObject;->scene:Lcom/t4game/GScene;

    iget v1, v1, Lcom/t4game/GScene;->win_gx:I

    if-lt v0, v1, :cond_0

    iget-short v0, p0, Lcom/t4game/GSingleTileObject;->gridX:S

    iget-object v1, p0, Lcom/t4game/GSingleTileObject;->scene:Lcom/t4game/GScene;

    iget v1, v1, Lcom/t4game/GScene;->win_gx2:I

    if-ge v0, v1, :cond_0

    iget-short v0, p0, Lcom/t4game/GSingleTileObject;->gridY:S

    iget-object v1, p0, Lcom/t4game/GSingleTileObject;->scene:Lcom/t4game/GScene;

    iget v1, v1, Lcom/t4game/GScene;->win_gy:I

    if-lt v0, v1, :cond_0

    iget-short v0, p0, Lcom/t4game/GSingleTileObject;->gridY:S

    iget-object v1, p0, Lcom/t4game/GSingleTileObject;->scene:Lcom/t4game/GScene;

    iget v1, v1, Lcom/t4game/GScene;->win_gy2:I

    if-lt v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/t4game/GSingleTileObject;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->map_gs:[B

    iget v1, p0, Lcom/t4game/GSingleTileObject;->flagIndex:I

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xfd

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/t4game/GSingleTileObject;->scene:Lcom/t4game/GScene;

    invoke-virtual {v0, p0}, Lcom/t4game/GScene;->removeFromStore(Lcom/t4game/GMapObject;)V

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
