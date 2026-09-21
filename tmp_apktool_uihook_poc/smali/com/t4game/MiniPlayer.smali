.class public Lcom/t4game/MiniPlayer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/t4game/GIRenderManager;


# static fields
.field protected static effectImage:Lcom/t4game/GImageData;


# instance fields
.field public TryImageId:S

.field public TryImagePos:I

.field public alpha:B

.field public countryId:B

.field public grade:S

.field public hair:Lcom/t4game/GImageData;

.field public id:Ljava/lang/String;

.field public imageDataIdList:[S

.field public imageDataList:[Lcom/t4game/GImageData;

.field public in_map:Ljava/lang/String;

.field public intId:I

.field public isTry:Z

.field public is_roll_name_illegal:Z

.field public job:B

.field public mapName:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field nowOutFrame:I

.field public objectData:Lcom/t4game/GObjectData;

.field public objectDataId:S

.field public outlineType:B

.field public sex:B

.field public supportChangeImage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/t4game/MiniPlayer;->effectImage:Lcom/t4game/GImageData;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    const-string v4, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v1, p0, Lcom/t4game/MiniPlayer;->alpha:B

    const-string v0, ""

    iput-object v4, p0, Lcom/t4game/MiniPlayer;->mapName:Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/MiniPlayer;->imageDataList:[Lcom/t4game/GImageData;

    iput-object v2, p0, Lcom/t4game/MiniPlayer;->imageDataIdList:[S

    const-string v0, ""

    iput-object v4, p0, Lcom/t4game/MiniPlayer;->in_map:Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/MiniPlayer;->hair:Lcom/t4game/GImageData;

    iput-boolean v1, p0, Lcom/t4game/MiniPlayer;->isTry:Z

    iput-short v3, p0, Lcom/t4game/MiniPlayer;->TryImageId:S

    iput v3, p0, Lcom/t4game/MiniPlayer;->TryImagePos:I

    iput v1, p0, Lcom/t4game/MiniPlayer;->nowOutFrame:I

    return-void
.end method


# virtual methods
.method public drawHead(Ljavax/microedition/lcdui/Graphics;II)V
    .locals 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/t4game/MiniPlayer;->objectData:Lcom/t4game/GObjectData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/MiniPlayer;->objectData:Lcom/t4game/GObjectData;

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/MiniPlayer;->objectData:Lcom/t4game/GObjectData;

    add-int/lit8 v3, p2, 0xa

    add-int/lit8 v4, p3, 0xa

    iget-byte v8, p0, Lcom/t4game/MiniPlayer;->alpha:B

    move-object v1, p1

    move v5, v2

    move v6, v2

    move-object v7, p0

    invoke-virtual/range {v0 .. v8}, Lcom/t4game/GObjectData;->drawObjectFrame(Ljavax/microedition/lcdui/Graphics;IIIZZLcom/t4game/GIRenderManager;B)V

    :cond_0
    return-void
.end method

.method public drawOut(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 12

    iget-object v0, p0, Lcom/t4game/MiniPlayer;->objectData:Lcom/t4game/GObjectData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/MiniPlayer;->objectData:Lcom/t4game/GObjectData;

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/t4game/MiniPlayer;->nowOutFrame:I

    shr-int/lit8 v5, v0, 0x1

    iget-object v0, p0, Lcom/t4game/MiniPlayer;->objectData:Lcom/t4game/GObjectData;

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-byte v11, p0, Lcom/t4game/MiniPlayer;->alpha:B

    move-object v1, p1

    move/from16 v3, p5

    move/from16 v4, p4

    move v6, p2

    move v7, p3

    move-object v10, p0

    invoke-virtual/range {v0 .. v11}, Lcom/t4game/GObjectData;->drawActionAnimFrame(Ljavax/microedition/lcdui/Graphics;IIIIIIZZLcom/t4game/GIRenderManager;B)V

    iget v0, p0, Lcom/t4game/MiniPlayer;->nowOutFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/MiniPlayer;->nowOutFrame:I

    :cond_0
    return-void
.end method

.method public getImageList()[Lcom/t4game/GImageData;
    .locals 1

    iget-object v0, p0, Lcom/t4game/MiniPlayer;->imageDataList:[Lcom/t4game/GImageData;

    return-object v0
.end method

.method public final initImageDataList(I)V
    .locals 3

    iget-object v0, p0, Lcom/t4game/MiniPlayer;->imageDataIdList:[S

    if-nez v0, :cond_1

    new-array v0, p1, [S

    iput-object v0, p0, Lcom/t4game/MiniPlayer;->imageDataIdList:[S

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/t4game/MiniPlayer;->imageDataIdList:[S

    const/4 v2, -0x1

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v0, p1, [Lcom/t4game/GImageData;

    iput-object v0, p0, Lcom/t4game/MiniPlayer;->imageDataList:[Lcom/t4game/GImageData;

    :cond_1
    return-void
.end method

.method public release()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/t4game/MiniPlayer;->releaseImageDataList()V

    iget-object v0, p0, Lcom/t4game/MiniPlayer;->objectData:Lcom/t4game/GObjectData;

    if-eqz v0, :cond_0

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    iget-object v1, p0, Lcom/t4game/MiniPlayer;->objectData:Lcom/t4game/GObjectData;

    iget-object v1, v1, Lcom/t4game/GObjectData;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    :cond_0
    iput-object v2, p0, Lcom/t4game/MiniPlayer;->objectData:Lcom/t4game/GObjectData;

    sget-object v0, Lcom/t4game/MiniPlayer;->effectImage:Lcom/t4game/GImageData;

    if-eqz v0, :cond_1

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    sget-object v1, Lcom/t4game/MiniPlayer;->effectImage:Lcom/t4game/GImageData;

    iget-object v1, v1, Lcom/t4game/GImageData;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    :cond_1
    sput-object v2, Lcom/t4game/MiniPlayer;->effectImage:Lcom/t4game/GImageData;

    iget-object v0, p0, Lcom/t4game/MiniPlayer;->hair:Lcom/t4game/GImageData;

    if-eqz v0, :cond_2

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    iget-object v1, p0, Lcom/t4game/MiniPlayer;->hair:Lcom/t4game/GImageData;

    iget-object v1, v1, Lcom/t4game/GImageData;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    :cond_2
    iput-object v2, p0, Lcom/t4game/MiniPlayer;->hair:Lcom/t4game/GImageData;

    return-void
.end method

.method protected final releaseImageDataList()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/t4game/MiniPlayer;->imageDataList:[Lcom/t4game/GImageData;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/MiniPlayer;->imageDataList:[Lcom/t4game/GImageData;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/t4game/MiniPlayer;->imageDataList:[Lcom/t4game/GImageData;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    sget-byte v3, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    iget-object v2, v2, Lcom/t4game/GImageData;->id:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iput-object v4, p0, Lcom/t4game/MiniPlayer;->imageDataList:[Lcom/t4game/GImageData;

    iput-object v4, p0, Lcom/t4game/MiniPlayer;->imageDataIdList:[S

    goto :goto_0
.end method

.method public renderImageClip(Ljavax/microedition/lcdui/Graphics;Lcom/t4game/GImageData;IIIIIIB)V
    .locals 8

    and-int/lit8 v0, p9, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v5, v0

    :goto_0
    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    move v6, v0

    :goto_1
    if-nez p3, :cond_4

    iget-object v0, p0, Lcom/t4game/MiniPlayer;->hair:Lcom/t4game/GImageData;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/t4game/MiniPlayer;->isTry:Z

    if-nez v0, :cond_3

    iget-byte v0, p0, Lcom/t4game/MiniPlayer;->outlineType:B

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/t4game/MiniPlayer;->hair:Lcom/t4game/GImageData;

    invoke-virtual {v0}, Lcom/t4game/GImageData;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/MiniPlayer;->hair:Lcom/t4game/GImageData;

    iget-byte v7, p0, Lcom/t4game/MiniPlayer;->alpha:B

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v7}, Lcom/t4game/GImageData;->drawClip(Ljavax/microedition/lcdui/Graphics;IIIZZB)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move v6, v0

    goto :goto_1

    :cond_3
    iget-byte v7, p0, Lcom/t4game/MiniPlayer;->alpha:B

    move-object v0, p2

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v7}, Lcom/t4game/GImageData;->drawClip(Ljavax/microedition/lcdui/Graphics;IIIZZB)V

    goto :goto_2

    :cond_4
    iget-byte v7, p0, Lcom/t4game/MiniPlayer;->alpha:B

    move-object v0, p2

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v7}, Lcom/t4game/GImageData;->drawClip(Ljavax/microedition/lcdui/Graphics;IIIZZB)V

    goto :goto_2
.end method

.method public setHair(I)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/MiniPlayer;->hair:Lcom/t4game/GImageData;

    :goto_0
    return-void

    :cond_0
    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GImageData;

    iput-object v0, p0, Lcom/t4game/MiniPlayer;->hair:Lcom/t4game/GImageData;

    iget-object v0, p0, Lcom/t4game/MiniPlayer;->hair:Lcom/t4game/GImageData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/t4game/GImageData;->isDelayRelease:Z

    goto :goto_0
.end method

.method public final setImageData(SI)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/t4game/MiniPlayer;->imageDataList:[Lcom/t4game/GImageData;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/MiniPlayer;->imageDataList:[Lcom/t4game/GImageData;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/t4game/MiniPlayer;->supportChangeImage:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    :cond_2
    if-ne p1, v3, :cond_3

    sget-object v0, Lcom/t4game/CommonConstants;->DEFAULT_POS_IMAGE:[[[S

    iget-byte v1, p0, Lcom/t4game/MiniPlayer;->job:B

    aget-object v0, v0, v1

    iget-byte v1, p0, Lcom/t4game/MiniPlayer;->sex:B

    aget-object v0, v0, v1

    aget-short v0, v0, p2

    :goto_1
    iget-object v1, p0, Lcom/t4game/MiniPlayer;->imageDataList:[Lcom/t4game/GImageData;

    aget-object v1, v1, p2

    iget-object v1, p0, Lcom/t4game/MiniPlayer;->imageDataIdList:[S

    aput-short v0, v1, p2

    iget-object v1, p0, Lcom/t4game/MiniPlayer;->imageDataList:[Lcom/t4game/GImageData;

    const/4 v2, 0x0

    aput-object v2, v1, p2

    if-eq v0, v3, :cond_0

    iget-object v1, p0, Lcom/t4game/MiniPlayer;->imageDataList:[Lcom/t4game/GImageData;

    sget-byte v2, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GImageData;

    aput-object v0, v1, p2

    iget-object v0, p0, Lcom/t4game/MiniPlayer;->imageDataList:[Lcom/t4game/GImageData;

    aget-object v0, v0, p2

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/t4game/GImageData;->isDelayRelease:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    move v0, p1

    goto :goto_1
.end method

.method public setImageDataList([S)V
    .locals 3

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/t4game/MiniPlayer;->initImageDataList(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-short v2, p1, v1

    invoke-virtual {p0, v2, v1}, Lcom/t4game/MiniPlayer;->setImageData(SI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setJob(B)V
    .locals 3

    iput-byte p1, p0, Lcom/t4game/MiniPlayer;->job:B

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    sget-object v1, Lcom/t4game/CommonConstants;->DEFAULT_WEAPON_EFFECT_IMAGEID:[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/MiniPlayer;->job:B

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object p0

    check-cast p0, Lcom/t4game/GImageData;

    sput-object p0, Lcom/t4game/MiniPlayer;->effectImage:Lcom/t4game/GImageData;

    return-void
.end method

.method public setObjectDataId(S)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-short p1, p0, Lcom/t4game/MiniPlayer;->objectDataId:S

    iget-object v0, p0, Lcom/t4game/MiniPlayer;->objectData:Lcom/t4game/GObjectData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/MiniPlayer;->objectData:Lcom/t4game/GObjectData;

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->getIntId()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/t4game/MiniPlayer;->releaseImageDataList()V

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    iget-object v1, p0, Lcom/t4game/MiniPlayer;->objectData:Lcom/t4game/GObjectData;

    iget-object v1, v1, Lcom/t4game/GObjectData;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/MiniPlayer;->objectData:Lcom/t4game/GObjectData;

    :cond_2
    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GObjectData;

    iput-object v0, p0, Lcom/t4game/MiniPlayer;->objectData:Lcom/t4game/GObjectData;

    iget-object v0, p0, Lcom/t4game/MiniPlayer;->objectData:Lcom/t4game/GObjectData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/t4game/GObjectData;->isDelayRelease:Z

    goto :goto_0
.end method
