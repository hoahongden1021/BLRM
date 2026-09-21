.class public Lcom/t4game/GTileAnimData;
.super Ljava/lang/Object;


# instance fields
.field public frameNum:B

.field public maxIntervalTime:B

.field public minIntervalTime:B

.field public playType:B

.field public scene:Lcom/t4game/GScene;

.field public tileDataList:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v0, p0, Lcom/t4game/GTileAnimData;->playType:B

    iput-byte v0, p0, Lcom/t4game/GTileAnimData;->minIntervalTime:B

    iput-byte v0, p0, Lcom/t4game/GTileAnimData;->maxIntervalTime:B

    return-void
.end method


# virtual methods
.method public drawTileAnim(Ljavax/microedition/lcdui/Graphics;IIZZ)V
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/GTileAnimData;->scene:Lcom/t4game/GScene;

    iget v0, v0, Lcom/t4game/GScene;->renderFrame:I

    iget-byte v1, p0, Lcom/t4game/GTileAnimData;->frameNum:B

    rem-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x3

    iget-object v0, p0, Lcom/t4game/GTileAnimData;->tileDataList:[B

    add-int/lit8 v2, v1, 0x2

    aget-byte v0, v0, v2

    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    and-int/lit8 v2, v0, 0x2

    if-lez v2, :cond_2

    if-nez p4, :cond_1

    move v6, v4

    :goto_1
    and-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_4

    if-nez p5, :cond_3

    move v7, v4

    :goto_2
    iget-object v0, p0, Lcom/t4game/GTileAnimData;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->tileImageData:Lcom/t4game/GImageData;

    iget-object v2, p0, Lcom/t4game/GTileAnimData;->tileDataList:[B

    aget-byte v2, v2, v1

    iget-object v3, p0, Lcom/t4game/GTileAnimData;->tileDataList:[B

    add-int/lit8 v1, v1, 0x1

    aget-byte v3, v3, v1

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/t4game/GImageData;->drawTile(Ljavax/microedition/lcdui/Graphics;IIIIZZ)V

    goto :goto_0

    :cond_1
    move v6, v3

    goto :goto_1

    :cond_2
    move v6, p4

    goto :goto_1

    :cond_3
    move v7, v3

    goto :goto_2

    :cond_4
    move v7, p5

    goto :goto_2
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

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GTileAnimData;->playType:B

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GTileAnimData;->minIntervalTime:B

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GTileAnimData;->maxIntervalTime:B

    iget-byte v0, p0, Lcom/t4game/GTileAnimData;->minIntervalTime:B

    mul-int/lit8 v0, v0, 0x64

    sget v1, Lcom/t4game/GUtil;->MSPF:I

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GTileAnimData;->minIntervalTime:B

    iget-byte v0, p0, Lcom/t4game/GTileAnimData;->maxIntervalTime:B

    mul-int/lit8 v0, v0, 0x64

    sget v1, Lcom/t4game/GUtil;->MSPF:I

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GTileAnimData;->maxIntervalTime:B

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GTileAnimData;->frameNum:B

    iget-byte v0, p0, Lcom/t4game/GTileAnimData;->frameNum:B

    if-lez v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/GTileAnimData;->frameNum:B

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/GTileAnimData;->tileDataList:[B

    iget-object v0, p0, Lcom/t4game/GTileAnimData;->tileDataList:[B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Lcom/t4game/GTileAnimData;->tileDataList:[B

    iput-byte v0, p0, Lcom/t4game/GTileAnimData;->playType:B

    iput-byte v0, p0, Lcom/t4game/GTileAnimData;->minIntervalTime:B

    iput-byte v0, p0, Lcom/t4game/GTileAnimData;->maxIntervalTime:B

    iput-object v1, p0, Lcom/t4game/GTileAnimData;->scene:Lcom/t4game/GScene;

    return-void
.end method
