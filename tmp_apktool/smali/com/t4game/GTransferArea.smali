.class public Lcom/t4game/GTransferArea;
.super Ljava/lang/Object;


# instance fields
.field public alignX:B

.field public alignY:B

.field public areaType:B

.field public centerX:S

.field public centerY:S

.field public id:B

.field private maxGX:S

.field private maxGY:S

.field private minGX:S

.field private minGY:S

.field public name:Ljava/lang/String;

.field public scene:Lcom/t4game/GScene;

.field public transferAreaId:B

.field public transferPointList:[[S

.field public transferSceneId:S


# direct methods
.method public constructor <init>(Lcom/t4game/GScene;)V
    .locals 3

    const/16 v2, 0x3e8

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v1, p0, Lcom/t4game/GTransferArea;->id:B

    const-string v0, "\u672a\u77e5"

    iput-object v0, p0, Lcom/t4game/GTransferArea;->name:Ljava/lang/String;

    iput-short v1, p0, Lcom/t4game/GTransferArea;->transferSceneId:S

    iput-byte v1, p0, Lcom/t4game/GTransferArea;->transferAreaId:B

    iput-short v2, p0, Lcom/t4game/GTransferArea;->minGX:S

    iput-short v2, p0, Lcom/t4game/GTransferArea;->minGY:S

    iput-short v1, p0, Lcom/t4game/GTransferArea;->maxGX:S

    iput-short v1, p0, Lcom/t4game/GTransferArea;->maxGY:S

    iput-short v1, p0, Lcom/t4game/GTransferArea;->centerX:S

    iput-short v1, p0, Lcom/t4game/GTransferArea;->centerY:S

    iput-byte v1, p0, Lcom/t4game/GTransferArea;->alignX:B

    iput-byte v1, p0, Lcom/t4game/GTransferArea;->alignY:B

    iput-object p1, p0, Lcom/t4game/GTransferArea;->scene:Lcom/t4game/GScene;

    return-void
.end method


# virtual methods
.method public init(Ljava/io/InputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GTransferArea;->id:B

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GTransferArea;->areaType:B

    iget-byte v0, p0, Lcom/t4game/GTransferArea;->areaType:B

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v0

    iput-short v0, p0, Lcom/t4game/GTransferArea;->transferSceneId:S

    iget-short v0, p0, Lcom/t4game/GTransferArea;->transferSceneId:S

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u901a\u5f80"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/t4game/GUtil;->readUTF(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/GTransferArea;->name:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GTransferArea;->transferAreaId:B

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    new-array v1, v0, [[S

    iput-object v1, p0, Lcom/t4game/GTransferArea;->transferPointList:[[S

    move v1, v7

    :goto_0
    if-ge v1, v0, :cond_9

    new-array v2, v8, [S

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v2, v6

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v2, v7

    iget-object v5, p0, Lcom/t4game/GTransferArea;->transferPointList:[[S

    aput-object v2, v5, v1

    if-nez v4, :cond_7

    const/4 v2, 0x3

    iput-byte v2, p0, Lcom/t4game/GTransferArea;->alignX:B

    :cond_1
    :goto_1
    if-nez v3, :cond_8

    iput-byte v7, p0, Lcom/t4game/GTransferArea;->alignY:B

    :cond_2
    :goto_2
    iget-short v2, p0, Lcom/t4game/GTransferArea;->minGX:S

    if-le v2, v4, :cond_3

    iput-short v4, p0, Lcom/t4game/GTransferArea;->minGX:S

    :cond_3
    iget-short v2, p0, Lcom/t4game/GTransferArea;->maxGX:S

    if-ge v2, v4, :cond_4

    iput-short v4, p0, Lcom/t4game/GTransferArea;->maxGX:S

    :cond_4
    iget-short v2, p0, Lcom/t4game/GTransferArea;->minGY:S

    if-le v2, v3, :cond_5

    iput-short v3, p0, Lcom/t4game/GTransferArea;->minGY:S

    :cond_5
    iget-short v2, p0, Lcom/t4game/GTransferArea;->maxGY:S

    if-ge v2, v3, :cond_6

    iput-short v3, p0, Lcom/t4game/GTransferArea;->maxGY:S

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    iget-object v2, p0, Lcom/t4game/GTransferArea;->scene:Lcom/t4game/GScene;

    iget v2, v2, Lcom/t4game/GScene;->map_gw:I

    sub-int/2addr v2, v6

    if-ne v4, v2, :cond_1

    iput-byte v6, p0, Lcom/t4game/GTransferArea;->alignX:B

    goto :goto_1

    :cond_8
    iget-object v2, p0, Lcom/t4game/GTransferArea;->scene:Lcom/t4game/GScene;

    iget v2, v2, Lcom/t4game/GScene;->map_gh:I

    sub-int/2addr v2, v6

    if-ne v3, v2, :cond_2

    iput-byte v8, p0, Lcom/t4game/GTransferArea;->alignY:B

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/t4game/GTransferArea;->scene:Lcom/t4game/GScene;

    iget-short v1, p0, Lcom/t4game/GTransferArea;->maxGX:S

    iget-short v2, p0, Lcom/t4game/GTransferArea;->minGX:S

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/t4game/GScene;->gridX2SceneX(I)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GTransferArea;->centerX:S

    iget-object v0, p0, Lcom/t4game/GTransferArea;->scene:Lcom/t4game/GScene;

    iget-short v1, p0, Lcom/t4game/GTransferArea;->maxGY:S

    iget-short v2, p0, Lcom/t4game/GTransferArea;->minGY:S

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/t4game/GScene;->gridY2SceneY(I)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GTransferArea;->centerY:S

    return-void
.end method

.method public final isInArea(II)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-short v0, p0, Lcom/t4game/GTransferArea;->minGX:S

    if-lt p1, v0, :cond_0

    iget-short v0, p0, Lcom/t4game/GTransferArea;->maxGX:S

    if-gt p1, v0, :cond_0

    iget-short v0, p0, Lcom/t4game/GTransferArea;->minGY:S

    if-lt p2, v0, :cond_0

    iget-short v0, p0, Lcom/t4game/GTransferArea;->maxGY:S

    if-le p2, v0, :cond_1

    :cond_0
    move v0, v4

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/t4game/GTransferArea;->transferPointList:[[S

    array-length v0, v0

    move v1, v4

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/t4game/GTransferArea;->transferPointList:[[S

    aget-object v2, v2, v1

    aget-short v3, v2, v4

    if-ne p1, v3, :cond_2

    aget-short v2, v2, v5

    if-ne p2, v2, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_0
.end method
