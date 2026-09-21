.class public abstract Lcom/t4game/GMap;
.super Lcom/t4game/GBaseData;


# static fields
.field public static final LAYER_NUM:B = 0x3t

.field public static final LAYER_OBJECT:B = 0x1t

.field public static final LAYER_SKY:B = 0x2t

.field public static final LAYER_TERRAIN:B = 0x0t

.field public static final SCENEMAP_GH:B = 0x10t

.field public static final SCENEMAP_GW:B = 0x10t

.field public static final SCENE_USE_MAP_BLOCK:Z = false

.field public static final STORE_COMMON:B = 0x0t

.field public static final STORE_NUM:B = 0x2t

.field public static final STORE_SPRITE:B = 0x1t

.field public static final WORLDMAP_GH:B = 0x8t

.field public static final WORLDMAP_GW:B = 0x8t


# instance fields
.field public GH:B

.field public GH2:B

.field private GHB:B

.field private GHB2:B

.field private GHMASK:I

.field public GW:B

.field public GW2:B

.field private GWB:B

.field private GWB2:B

.field private GWMASK:I

.field public WGH:I

.field public WGW:I

.field public WH:I

.field public WH2:I

.field public WW:I

.field public WW2:I

.field public WX:I

.field public WX2:I

.field public WY:I

.field public WY2:I

.field public backColor:I

.field public countryId:B

.field public highLevel:S

.field public lowLevel:S

.field public mapType:B

.field public map_gh:I

.field public map_gs:[B

.field public map_gw:I

.field public map_h:I

.field public map_w:I

.field public name:Ljava/lang/String;

.field public ready:Z

.field public renderFrame:I

.field public screen_mapx:I

.field public screen_mapy:I

.field public tileImageData:Lcom/t4game/GImageData;

.field public win_g_upd:Z

.field public win_gx:I

.field public win_gx2:I

.field public win_gy:I

.field public win_gy2:I

.field public win_x:I

.field public win_x2:I

.field public win_y:I

.field public win_y2:I

.field public worldMapDataId:S


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/t4game/GBaseData;-><init>()V

    iput-short v0, p0, Lcom/t4game/GMap;->lowLevel:S

    iput-short v0, p0, Lcom/t4game/GMap;->highLevel:S

    iput-short v3, p0, Lcom/t4game/GMap;->worldMapDataId:S

    iput v3, p0, Lcom/t4game/GMap;->backColor:I

    iput-byte v1, p0, Lcom/t4game/GMap;->GW:B

    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/t4game/GMap;->GW2:B

    iput-byte v1, p0, Lcom/t4game/GMap;->GH:B

    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/t4game/GMap;->GH2:B

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/t4game/GMap;->GWB:B

    iput-byte v4, p0, Lcom/t4game/GMap;->GWB2:B

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/t4game/GMap;->GHB:B

    iput-byte v4, p0, Lcom/t4game/GMap;->GHB2:B

    iput v1, p0, Lcom/t4game/GMap;->GWMASK:I

    iput v1, p0, Lcom/t4game/GMap;->GHMASK:I

    iput v2, p0, Lcom/t4game/GMap;->WX:I

    iput v2, p0, Lcom/t4game/GMap;->WY:I

    iput v2, p0, Lcom/t4game/GMap;->WX2:I

    iput v2, p0, Lcom/t4game/GMap;->WY2:I

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    iput v0, p0, Lcom/t4game/GMap;->WW:I

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    iput v0, p0, Lcom/t4game/GMap;->WW2:I

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    iput v0, p0, Lcom/t4game/GMap;->WH:I

    sget v0, Lcom/t4game/Defaults;->CANVAS_HH:I

    iput v0, p0, Lcom/t4game/GMap;->WH2:I

    iget v0, p0, Lcom/t4game/GMap;->WW:I

    iget-byte v1, p0, Lcom/t4game/GMap;->GWB:B

    shr-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/GMap;->WGW:I

    iget v0, p0, Lcom/t4game/GMap;->WH:I

    iget-byte v1, p0, Lcom/t4game/GMap;->GHB:B

    shr-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/GMap;->WGH:I

    iput v2, p0, Lcom/t4game/GMap;->screen_mapx:I

    iput v2, p0, Lcom/t4game/GMap;->screen_mapy:I

    iput v3, p0, Lcom/t4game/GMap;->win_x:I

    iput v3, p0, Lcom/t4game/GMap;->win_y:I

    iput v3, p0, Lcom/t4game/GMap;->win_gx:I

    iput v3, p0, Lcom/t4game/GMap;->win_gy:I

    iput-boolean v2, p0, Lcom/t4game/GMap;->ready:Z

    iput-boolean v2, p0, Lcom/t4game/GMap;->win_g_upd:Z

    iput v2, p0, Lcom/t4game/GMap;->renderFrame:I

    return-void
.end method

.method private final getBitNum(I)B
    .locals 1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x10

    if-ne p1, v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static final sceneX2WorldX(I)I
    .locals 0

    return p0
.end method

.method public static final sceneY2WorldY(I)I
    .locals 0

    return p0
.end method

.method public static final worldX2SceneX(I)I
    .locals 0

    return p0
.end method

.method public static final worldY2SceneY(I)I
    .locals 0

    return p0
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 4

    iget v0, p0, Lcom/t4game/GMap;->backColor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/t4game/GMap;->backColor:I

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget v0, p0, Lcom/t4game/GMap;->WX:I

    iget v1, p0, Lcom/t4game/GMap;->WY:I

    iget v2, p0, Lcom/t4game/GMap;->WW:I

    iget v3, p0, Lcom/t4game/GMap;->WH:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_0
    return-void
.end method

.method public final getGridRemainderX(I)I
    .locals 1

    iget-byte v0, p0, Lcom/t4game/GMap;->GW:B

    rem-int v0, p1, v0

    return v0
.end method

.method public final getGridRemainderY(I)I
    .locals 1

    iget-byte v0, p0, Lcom/t4game/GMap;->GH:B

    rem-int v0, p1, v0

    return v0
.end method

.method public final gridX2SceneX(I)I
    .locals 1

    iget-byte v0, p0, Lcom/t4game/GMap;->GW:B

    mul-int/2addr v0, p1

    return v0
.end method

.method public final gridY2SceneY(I)I
    .locals 1

    iget-byte v0, p0, Lcom/t4game/GMap;->GH:B

    mul-int/2addr v0, p1

    return v0
.end method

.method public release()V
    .locals 1

    invoke-super {p0}, Lcom/t4game/GBaseData;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GMap;->map_gs:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/GMap;->ready:Z

    return-void
.end method

.method public final sceneX2GridX(I)I
    .locals 1

    iget-byte v0, p0, Lcom/t4game/GMap;->GW:B

    div-int v0, p1, v0

    return v0
.end method

.method public final sceneY2GridY(I)I
    .locals 1

    iget-byte v0, p0, Lcom/t4game/GMap;->GH:B

    div-int v0, p1, v0

    return v0
.end method

.method public setWinDimension(IIII)V
    .locals 2

    iput p1, p0, Lcom/t4game/GMap;->WX:I

    iput p2, p0, Lcom/t4game/GMap;->WY:I

    iput p3, p0, Lcom/t4game/GMap;->WW:I

    iput p4, p0, Lcom/t4game/GMap;->WH:I

    div-int/lit8 v0, p3, 0x2

    iput v0, p0, Lcom/t4game/GMap;->WW2:I

    div-int/lit8 v0, p4, 0x2

    iput v0, p0, Lcom/t4game/GMap;->WH2:I

    iget v0, p0, Lcom/t4game/GMap;->WX:I

    iget v1, p0, Lcom/t4game/GMap;->WW:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/GMap;->WX2:I

    iget v0, p0, Lcom/t4game/GMap;->WY:I

    iget v1, p0, Lcom/t4game/GMap;->WH:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/GMap;->WY2:I

    iget v0, p0, Lcom/t4game/GMap;->WW:I

    iget-byte v1, p0, Lcom/t4game/GMap;->GW:B

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/GMap;->WGW:I

    iget v0, p0, Lcom/t4game/GMap;->WH:I

    iget-byte v1, p0, Lcom/t4game/GMap;->GH:B

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/GMap;->WGH:I

    return-void
.end method

.method public setWinGridSize(II)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x1

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/t4game/GMap;->GW:B

    int-to-byte v0, p2

    iput-byte v0, p0, Lcom/t4game/GMap;->GH:B

    iget-byte v0, p0, Lcom/t4game/GMap;->GW:B

    shr-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GMap;->GW2:B

    iget-byte v0, p0, Lcom/t4game/GMap;->GH:B

    shr-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GMap;->GH2:B

    invoke-direct {p0, p1}, Lcom/t4game/GMap;->getBitNum(I)B

    move-result v0

    invoke-direct {p0, p2}, Lcom/t4game/GMap;->getBitNum(I)B

    move-result v1

    if-eq v0, v3, :cond_0

    if-eq v1, v3, :cond_0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GMap;->GWB:B

    int-to-byte v0, v1

    iput-byte v0, p0, Lcom/t4game/GMap;->GHB:B

    iget-byte v0, p0, Lcom/t4game/GMap;->GWB:B

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GMap;->GWB2:B

    iget-byte v0, p0, Lcom/t4game/GMap;->GHB:B

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GMap;->GHB2:B

    iget-byte v0, p0, Lcom/t4game/GMap;->GW:B

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    iput v0, p0, Lcom/t4game/GMap;->GWMASK:I

    iget-byte v0, p0, Lcom/t4game/GMap;->GH:B

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    iput v0, p0, Lcom/t4game/GMap;->GHMASK:I

    :cond_0
    return-void
.end method

.method public abstract setWinPos(II)V
.end method

.method public abstract update()V
.end method
