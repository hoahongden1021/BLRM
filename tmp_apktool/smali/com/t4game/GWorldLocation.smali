.class public Lcom/t4game/GWorldLocation;
.super Ljava/lang/Object;


# instance fields
.field public id:S

.field public locationType:B

.field public mapX:S

.field public mapY:S

.field public name:Ljava/lang/String;

.field public nextLocationList:[Lcom/t4game/GWorldLocation;

.field private nowFrame:I

.field public realId:S

.field public rectHeight:S

.field public rectWidth:S

.field public rectX:S

.field public rectY:S

.field public targetSceneId:S

.field public transferAreaId:B

.field public transferSceneId:S

.field public worldMap:Lcom/t4game/GWorldMap;


# direct methods
.method public constructor <init>(Lcom/t4game/GWorldMap;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\u672a\u77e5"

    iput-object v0, p0, Lcom/t4game/GWorldLocation;->name:Ljava/lang/String;

    iput-byte v1, p0, Lcom/t4game/GWorldLocation;->locationType:B

    iput-short v1, p0, Lcom/t4game/GWorldLocation;->rectX:S

    iput-short v1, p0, Lcom/t4game/GWorldLocation;->rectY:S

    iput-short v1, p0, Lcom/t4game/GWorldLocation;->rectWidth:S

    iput-short v1, p0, Lcom/t4game/GWorldLocation;->rectHeight:S

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/t4game/GWorldLocation;

    iput-object v0, p0, Lcom/t4game/GWorldLocation;->nextLocationList:[Lcom/t4game/GWorldLocation;

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/GWorldLocation;->transferAreaId:B

    iput v1, p0, Lcom/t4game/GWorldLocation;->nowFrame:I

    iput-object p1, p0, Lcom/t4game/GWorldLocation;->worldMap:Lcom/t4game/GWorldMap;

    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 10

    iget-short v2, p0, Lcom/t4game/GWorldLocation;->rectWidth:S

    iget-short v3, p0, Lcom/t4game/GWorldLocation;->rectHeight:S

    iget-short v0, p0, Lcom/t4game/GWorldLocation;->rectX:S

    iget-object v1, p0, Lcom/t4game/GWorldLocation;->worldMap:Lcom/t4game/GWorldMap;

    iget v1, v1, Lcom/t4game/GWorldMap;->screen_mapx:I

    sub-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/GWorldLocation;->rectY:S

    iget-object v4, p0, Lcom/t4game/GWorldLocation;->worldMap:Lcom/t4game/GWorldMap;

    iget v4, v4, Lcom/t4game/GWorldMap;->screen_mapy:I

    sub-int/2addr v1, v4

    iget-object v4, p0, Lcom/t4game/GWorldLocation;->worldMap:Lcom/t4game/GWorldMap;

    iget-short v4, v4, Lcom/t4game/GWorldMap;->intId:S

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    add-int/lit8 v0, v0, 0x64

    :cond_0
    const v4, 0xffff00

    invoke-virtual {p1, v4}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget v4, p0, Lcom/t4game/GWorldLocation;->nowFrame:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/t4game/GWorldLocation;->nowFrame:I

    iget v4, p0, Lcom/t4game/GWorldLocation;->nowFrame:I

    shr-int/lit8 v4, v4, 0x1

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    const/4 v4, 0x1

    sub-int v4, v0, v4

    const/4 v0, 0x1

    sub-int v5, v1, v0

    add-int/lit8 v6, v2, 0x2

    add-int/lit8 v7, v3, 0x2

    const/4 v8, 0x4

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_0
    iget-object v6, p0, Lcom/t4game/GWorldLocation;->name:Ljava/lang/String;

    sget v0, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v0, v0, 0x4

    iget-short v1, p0, Lcom/t4game/GWorldLocation;->mapX:S

    iget-object v2, p0, Lcom/t4game/GWorldLocation;->worldMap:Lcom/t4game/GWorldMap;

    iget v2, v2, Lcom/t4game/GWorldMap;->screen_mapx:I

    sub-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/GWorldLocation;->mapY:S

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/t4game/GWorldLocation;->worldMap:Lcom/t4game/GWorldMap;

    iget v2, v2, Lcom/t4game/GWorldMap;->screen_mapy:I

    sub-int/2addr v0, v2

    invoke-static {v6}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x10

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/t4game/GWorldLocation;->worldMap:Lcom/t4game/GWorldMap;

    iget v4, v4, Lcom/t4game/GWorldMap;->WY:I

    iget-object v5, p0, Lcom/t4game/GWorldLocation;->worldMap:Lcom/t4game/GWorldMap;

    iget v5, v5, Lcom/t4game/GWorldMap;->WH:I

    add-int/2addr v4, v5

    if-le v3, v4, :cond_4

    iget-short v0, p0, Lcom/t4game/GWorldLocation;->rectY:S

    iget-object v3, p0, Lcom/t4game/GWorldLocation;->worldMap:Lcom/t4game/GWorldMap;

    iget v3, v3, Lcom/t4game/GWorldMap;->screen_mapy:I

    sub-int/2addr v0, v3

    sget v3, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v0, v3

    move v7, v0

    :goto_1
    div-int/lit8 v0, v2, 0x2

    sub-int v0, v1, v0

    iget-object v3, p0, Lcom/t4game/GWorldLocation;->worldMap:Lcom/t4game/GWorldMap;

    iget v3, v3, Lcom/t4game/GWorldMap;->WX:I

    if-ge v0, v3, :cond_3

    div-int/lit8 v0, v2, 0x2

    iget-object v1, p0, Lcom/t4game/GWorldLocation;->worldMap:Lcom/t4game/GWorldMap;

    iget v1, v1, Lcom/t4game/GWorldMap;->WX:I

    add-int/2addr v0, v1

    :goto_2
    div-int/lit8 v1, v2, 0x2

    add-int/2addr v1, v0

    iget-object v3, p0, Lcom/t4game/GWorldLocation;->worldMap:Lcom/t4game/GWorldMap;

    iget v3, v3, Lcom/t4game/GWorldMap;->WX:I

    iget-object v4, p0, Lcom/t4game/GWorldLocation;->worldMap:Lcom/t4game/GWorldMap;

    iget v4, v4, Lcom/t4game/GWorldMap;->WW:I

    add-int/2addr v3, v4

    if-le v1, v3, :cond_2

    iget-object v0, p0, Lcom/t4game/GWorldLocation;->worldMap:Lcom/t4game/GWorldMap;

    iget v0, v0, Lcom/t4game/GWorldMap;->WX:I

    iget-object v1, p0, Lcom/t4game/GWorldLocation;->worldMap:Lcom/t4game/GWorldMap;

    iget v1, v1, Lcom/t4game/GWorldMap;->WW:I

    add-int/2addr v0, v1

    div-int/lit8 v1, v2, 0x2

    sub-int/2addr v0, v1

    move v8, v0

    :goto_3
    div-int/lit8 v0, v2, 0x2

    sub-int v0, v8, v0

    sget v1, Lcom/t4game/Defaults;->sfh:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v7, v1

    sget v3, Lcom/t4game/Defaults;->sfh:I

    const v4, 0x2b2825

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintFaceBoxSmall(IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->sfh:I

    div-int/lit8 v0, v0, 0x2

    sub-int v2, v7, v0

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v0, v6

    move v1, v8

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    return-void

    :cond_1
    const/4 v4, 0x2

    sub-int v4, v0, v4

    const/4 v5, 0x2

    sub-int v5, v1, v5

    add-int/lit8 v6, v2, 0x4

    add-int/lit8 v7, v3, 0x4

    const/4 v8, 0x3

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    const/4 v4, 0x3

    sub-int v4, v0, v4

    const/4 v0, 0x3

    sub-int v5, v1, v0

    add-int/lit8 v6, v2, 0x6

    add-int/lit8 v7, v3, 0x6

    const/4 v8, 0x4

    move-object v9, p1

    invoke-static/range {v4 .. v9}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_0

    :cond_2
    move v8, v0

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    move v7, v0

    goto :goto_1
.end method

.method public drawName(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0

    return-void
.end method

.method public init(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GWorldLocation;->id:S

    iget-short v0, p0, Lcom/t4game/GWorldLocation;->id:S

    iget-object v1, p0, Lcom/t4game/GWorldLocation;->worldMap:Lcom/t4game/GWorldMap;

    invoke-virtual {v1}, Lcom/t4game/GWorldMap;->getIntId()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GWorldLocation;->realId:S

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GWorldLocation;->locationType:B

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v0

    iput-short v0, p0, Lcom/t4game/GWorldLocation;->targetSceneId:S

    invoke-static {p1}, Lcom/t4game/GUtil;->readUTF(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/GWorldLocation;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v0

    iput-short v0, p0, Lcom/t4game/GWorldLocation;->transferSceneId:S

    iget-short v0, p0, Lcom/t4game/GWorldLocation;->transferSceneId:S

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-short v0, p0, Lcom/t4game/GWorldLocation;->targetSceneId:S

    iput-short v0, p0, Lcom/t4game/GWorldLocation;->transferSceneId:S

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GWorldLocation;->transferAreaId:B

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GWorldLocation;->rectX:S

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GWorldLocation;->rectY:S

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GWorldLocation;->rectWidth:S

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GWorldLocation;->rectHeight:S

    iget-object v0, p0, Lcom/t4game/GWorldLocation;->worldMap:Lcom/t4game/GWorldMap;

    iget-short v1, p0, Lcom/t4game/GWorldLocation;->rectX:S

    invoke-virtual {v0, v1}, Lcom/t4game/GWorldMap;->gridX2SceneX(I)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GWorldLocation;->rectX:S

    iget-object v0, p0, Lcom/t4game/GWorldLocation;->worldMap:Lcom/t4game/GWorldMap;

    iget-short v1, p0, Lcom/t4game/GWorldLocation;->rectY:S

    invoke-virtual {v0, v1}, Lcom/t4game/GWorldMap;->gridY2SceneY(I)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GWorldLocation;->rectY:S

    iget-object v0, p0, Lcom/t4game/GWorldLocation;->worldMap:Lcom/t4game/GWorldMap;

    iget-short v1, p0, Lcom/t4game/GWorldLocation;->rectWidth:S

    invoke-virtual {v0, v1}, Lcom/t4game/GWorldMap;->gridX2SceneX(I)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GWorldLocation;->rectWidth:S

    iget-object v0, p0, Lcom/t4game/GWorldLocation;->worldMap:Lcom/t4game/GWorldMap;

    iget-short v1, p0, Lcom/t4game/GWorldLocation;->rectHeight:S

    invoke-virtual {v0, v1}, Lcom/t4game/GWorldMap;->gridY2SceneY(I)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GWorldLocation;->rectHeight:S

    iget-short v0, p0, Lcom/t4game/GWorldLocation;->rectX:S

    iget-short v1, p0, Lcom/t4game/GWorldLocation;->rectWidth:S

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GWorldLocation;->mapX:S

    iget-short v0, p0, Lcom/t4game/GWorldLocation;->rectY:S

    iget-short v1, p0, Lcom/t4game/GWorldLocation;->rectHeight:S

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GWorldLocation;->mapY:S

    return-void
.end method

.method public initNextLocationList(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    int-to-byte v1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/t4game/GWorldLocation;->nextLocationList:[Lcom/t4game/GWorldLocation;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/t4game/GWorldLocation;->nextLocationList:[Lcom/t4game/GWorldLocation;

    iget-object v3, p0, Lcom/t4game/GWorldLocation;->worldMap:Lcom/t4game/GWorldMap;

    invoke-virtual {v3, v1}, Lcom/t4game/GWorldMap;->getWolrdLocation(I)Lcom/t4game/GWorldLocation;

    move-result-object v1

    aput-object v1, v2, v0

    goto :goto_1

    :cond_1
    return-void
.end method
