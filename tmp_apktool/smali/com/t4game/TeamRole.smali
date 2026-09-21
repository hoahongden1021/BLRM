.class public Lcom/t4game/TeamRole;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/t4game/GIRenderManager;


# instance fields
.field public alpha:B

.field public grade:S

.field public hp:I

.field public id:I

.field public imageDataList:[Lcom/t4game/GImageData;

.field public job:B

.field public leader:B

.field public maxHp:I

.field public maxMp:I

.field public mp:I

.field public name:Ljava/lang/String;

.field public objectData:Lcom/t4game/GObjectData;

.field public sex:B


# direct methods
.method public constructor <init>(S)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v0, p0, Lcom/t4game/TeamRole;->leader:B

    iput-byte v0, p0, Lcom/t4game/TeamRole;->alpha:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/TeamRole;->imageDataList:[Lcom/t4game/GImageData;

    invoke-virtual {p0, p1}, Lcom/t4game/TeamRole;->setObjectDataId(S)V

    return-void
.end method


# virtual methods
.method public drawBigTeamSelected(IILjavax/microedition/lcdui/Graphics;)V
    .locals 8

    const/4 v6, 0x3

    const/16 v5, 0xb

    const/4 v4, 0x0

    const/16 v0, 0x61

    const/16 v1, 0x37

    const/16 v2, 0x29

    invoke-virtual {p3, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(III)V

    add-int/lit8 v0, p1, 0xb

    const/16 v1, 0x20

    invoke-virtual {p3, v0, p2, v1, v5}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    const/16 v0, 0xe6

    const/16 v1, 0x11

    invoke-virtual {p3, v0, v4, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(III)V

    add-int/lit8 v0, p1, 0xc

    add-int/lit8 v1, p2, 0x2

    iget v2, p0, Lcom/t4game/TeamRole;->hp:I

    mul-int/lit8 v2, v2, 0x1e

    iget v3, p0, Lcom/t4game/TeamRole;->maxHp:I

    div-int/2addr v2, v3

    invoke-virtual {p3, v0, v1, v2, v6}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    const/16 v0, 0x68

    const/16 v1, 0xb7

    invoke-virtual {p3, v4, v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(III)V

    add-int/lit8 v0, p1, 0xc

    add-int/lit8 v1, p2, 0x7

    iget v2, p0, Lcom/t4game/TeamRole;->mp:I

    mul-int/lit8 v2, v2, 0x1e

    iget v3, p0, Lcom/t4game/TeamRole;->maxMp:I

    div-int/2addr v2, v3

    invoke-virtual {p3, v0, v1, v2, v6}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    sget-object v0, Lcom/t4game/Defaults;->jobSmallImg:Ljavax/microedition/lcdui/Image;

    iget-byte v1, p0, Lcom/t4game/TeamRole;->job:B

    mul-int/lit8 v3, v1, 0xb

    move v1, p1

    move v2, p2

    move v6, v5

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, p1, 0x2a

    add-int/lit8 v1, p2, 0x2

    iget-short v2, p0, Lcom/t4game/TeamRole;->grade:S

    invoke-static {v0, v1, v2, p3}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    iget-byte v0, p0, Lcom/t4game/TeamRole;->leader:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/t4game/Defaults;->jobSmallImg:Ljavax/microedition/lcdui/Image;

    add-int/lit8 v1, p1, 0x34

    add-int/lit8 v2, p2, 0x2

    const/16 v3, 0x42

    const/16 v5, 0x9

    const/4 v6, 0x7

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_0
    return-void
.end method

.method public drawSelected(IILjavax/microedition/lcdui/Graphics;)V
    .locals 12

    add-int/lit8 v7, p1, 0x1b

    add-int/lit8 v8, p2, 0x10

    const/16 v11, 0x46

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    sget-object v1, Lcom/t4game/Defaults;->hp:Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x13

    const/4 v5, 0x4

    const/4 v6, 0x0

    iget v9, p0, Lcom/t4game/TeamRole;->hp:I

    mul-int/2addr v9, v11

    iget v10, p0, Lcom/t4game/TeamRole;->maxHp:I

    div-int/2addr v9, v10

    const/4 v10, 0x6

    invoke-virtual/range {v0 .. v10}, Lcom/t4game/UIPainter;->fillTile(Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    sget-object v1, Lcom/t4game/Defaults;->mp:Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x13

    const/4 v5, 0x4

    const/4 v6, 0x0

    add-int/lit8 v8, v8, 0x9

    iget v9, p0, Lcom/t4game/TeamRole;->mp:I

    mul-int/2addr v9, v11

    iget v10, p0, Lcom/t4game/TeamRole;->maxMp:I

    div-int/2addr v9, v10

    const/4 v10, 0x4

    invoke-virtual/range {v0 .. v10}, Lcom/t4game/UIPainter;->fillTile(Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    sget-object v0, Lcom/t4game/Defaults;->head_small:Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p1, p2, v1}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v1, p2, 0xa

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-virtual {p3, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    iget-object v0, p0, Lcom/t4game/TeamRole;->objectData:Lcom/t4game/GObjectData;

    const/4 v2, 0x0

    add-int/lit8 v3, p1, 0x10

    add-int/lit8 v4, p2, 0x12

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-byte v8, p0, Lcom/t4game/TeamRole;->alpha:B

    move-object v1, p3

    move-object v7, p0

    invoke-virtual/range {v0 .. v8}, Lcom/t4game/GObjectData;->drawObjectFrame(Ljavax/microedition/lcdui/Graphics;IIIZZLcom/t4game/GIRenderManager;B)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v3, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual {p3, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    add-int/lit8 v0, p1, 0x2a

    add-int/lit8 v1, p2, 0x6

    iget-short v2, p0, Lcom/t4game/TeamRole;->grade:S

    invoke-static {v0, v1, v2, p3}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->jobSmallImg:Ljavax/microedition/lcdui/Image;

    add-int/lit8 v1, p1, 0x1c

    add-int/lit8 v2, p2, 0x3

    iget-byte v3, p0, Lcom/t4game/TeamRole;->job:B

    mul-int/lit8 v3, v3, 0xb

    const/4 v4, 0x0

    const/16 v5, 0xb

    const/16 v6, 0xb

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/t4game/Defaults;->testOpenSystemSet(BB)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/TeamRole;->name:Ljava/lang/String;

    add-int/lit8 v1, p1, 0x66

    add-int/lit8 v2, p2, 0x8

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, 0x0

    const v5, 0xffc700

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_0
    iget-byte v0, p0, Lcom/t4game/TeamRole;->leader:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/t4game/Defaults;->jobSmallImg:Ljavax/microedition/lcdui/Image;

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, p2, 0x2

    const/16 v3, 0x42

    const/4 v4, 0x0

    const/16 v5, 0x9

    const/4 v6, 0x7

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_1
    return-void
.end method

.method public getImageList()[Lcom/t4game/GImageData;
    .locals 1

    iget-object v0, p0, Lcom/t4game/TeamRole;->imageDataList:[Lcom/t4game/GImageData;

    return-object v0
.end method

.method protected final release()V
    .locals 4

    iget-object v0, p0, Lcom/t4game/TeamRole;->imageDataList:[Lcom/t4game/GImageData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/TeamRole;->objectData:Lcom/t4game/GObjectData;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/TeamRole;->imageDataList:[Lcom/t4game/GImageData;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/t4game/TeamRole;->imageDataList:[Lcom/t4game/GImageData;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    sget-byte v3, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    iget-object v2, v2, Lcom/t4game/GImageData;->id:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/TeamRole;->imageDataList:[Lcom/t4game/GImageData;

    goto :goto_0
.end method

.method public renderImageClip(Ljavax/microedition/lcdui/Graphics;Lcom/t4game/GImageData;IIIIIIB)V
    .locals 8

    and-int/lit8 v0, p9, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move v5, v0

    :goto_0
    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v6, v0

    :goto_1
    iget-byte v7, p0, Lcom/t4game/TeamRole;->alpha:B

    move-object v0, p2

    move-object v1, p1

    move v2, p4

    move v3, p5

    move v4, p6

    invoke-virtual/range {v0 .. v7}, Lcom/t4game/GImageData;->drawClip(Ljavax/microedition/lcdui/Graphics;IIIZZB)V

    return-void

    :cond_0
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move v6, v0

    goto :goto_1
.end method

.method public final setImageData(SI)V
    .locals 4

    iget-object v0, p0, Lcom/t4game/TeamRole;->imageDataList:[Lcom/t4game/GImageData;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/TeamRole;->imageDataList:[Lcom/t4game/GImageData;

    array-length v0, v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/TeamRole;->imageDataList:[Lcom/t4game/GImageData;

    aget-object v0, v0, p2

    if-eqz v0, :cond_2

    sget-byte v1, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    iget-object v0, v0, Lcom/t4game/GImageData;->id:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    :cond_2
    iget-object v0, p0, Lcom/t4game/TeamRole;->imageDataList:[Lcom/t4game/GImageData;

    const/4 v1, 0x0

    aput-object v1, v0, p2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/TeamRole;->imageDataList:[Lcom/t4game/GImageData;

    sget-byte v1, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object p0

    check-cast p0, Lcom/t4game/GImageData;

    aput-object p0, v0, p2

    goto :goto_0
.end method

.method public setObjectDataId(S)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GObjectData;

    iput-object v0, p0, Lcom/t4game/TeamRole;->objectData:Lcom/t4game/GObjectData;

    iget-object v0, p0, Lcom/t4game/TeamRole;->objectData:Lcom/t4game/GObjectData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/TeamRole;->objectData:Lcom/t4game/GObjectData;

    iget-object v0, v0, Lcom/t4game/GObjectData;->imageDatas:[Lcom/t4game/GImageData;

    array-length v0, v0

    new-array v0, v0, [Lcom/t4game/GImageData;

    iput-object v0, p0, Lcom/t4game/TeamRole;->imageDataList:[Lcom/t4game/GImageData;

    goto :goto_0
.end method
