.class public Lcom/t4game/GSEObject;
.super Lcom/t4game/GMapObject;


# static fields
.field public static PLAYTYPE_GIVENFRAME:B

.field public static PLAYTYPE_LOOP:B

.field public static PLAYTYPE_ONE:B

.field public static SPECIALEFFECT_SPRITE_LAYER:B


# instance fields
.field private delayFrameNum:I

.field private frameIndex:I

.field private itemHeads:[Lcom/t4game/GSEItemObject;

.field private mapObject:Lcom/t4game/GMapObject;

.field public nextSE:Lcom/t4game/GSEObject;

.field private nowOffsetX:S

.field private nowOffsetY:S

.field private objectData:Lcom/t4game/GObjectData;

.field public offsetH:B

.field public offsetW:B

.field public offsetX:B

.field public offsetY:B

.field public playFrame:I

.field public playType:I

.field public seData:Lcom/t4game/GSEData;

.field public type:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    sput-byte v0, Lcom/t4game/GSEObject;->SPECIALEFFECT_SPRITE_LAYER:B

    const/4 v0, 0x0

    sput-byte v0, Lcom/t4game/GSEObject;->PLAYTYPE_ONE:B

    const/4 v0, 0x1

    sput-byte v0, Lcom/t4game/GSEObject;->PLAYTYPE_GIVENFRAME:B

    const/4 v0, 0x2

    sput-byte v0, Lcom/t4game/GSEObject;->PLAYTYPE_LOOP:B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/t4game/GMapObject;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/t4game/GSEObject;->frameIndex:I

    iput v1, p0, Lcom/t4game/GSEObject;->delayFrameNum:I

    iput v1, p0, Lcom/t4game/GSEObject;->playFrame:I

    iput v1, p0, Lcom/t4game/GSEObject;->playType:I

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/t4game/GSEItemObject;

    iput-object v0, p0, Lcom/t4game/GSEObject;->itemHeads:[Lcom/t4game/GSEItemObject;

    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/t4game/GSEObject;->poolId:B

    return-void
.end method

.method private addItemObject(ILcom/t4game/GSEItemObject;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/t4game/GSEObject;->itemHeads:[Lcom/t4game/GSEItemObject;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GSEObject;->itemHeads:[Lcom/t4game/GSEItemObject;

    aput-object p2, v0, p1

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v1, :cond_3

    iget-byte v2, v1, Lcom/t4game/GSEItemObject;->flag2:B

    and-int/lit8 v2, v2, 0xf

    iget-byte v3, p2, Lcom/t4game/GSEItemObject;->flag2:B

    and-int/lit8 v3, v3, 0xf

    if-lt v2, v3, :cond_2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/t4game/GSEObject;->itemHeads:[Lcom/t4game/GSEItemObject;

    aput-object p2, v0, p1

    iput-object v1, p2, Lcom/t4game/GSEItemObject;->nextSEItem:Lcom/t4game/GSEItemObject;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iput-object p2, v0, Lcom/t4game/GSEItemObject;->nextSEItem:Lcom/t4game/GSEItemObject;

    iput-object v1, p2, Lcom/t4game/GSEItemObject;->nextSEItem:Lcom/t4game/GSEItemObject;

    goto :goto_0

    :cond_2
    iget-object v0, v1, Lcom/t4game/GSEItemObject;->nextSEItem:Lcom/t4game/GSEItemObject;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :cond_3
    iput-object p2, v0, Lcom/t4game/GSEItemObject;->nextSEItem:Lcom/t4game/GSEItemObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method private cleanItems()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/t4game/GSEObject;->itemHeads:[Lcom/t4game/GSEItemObject;

    aget-object v1, v1, v0

    :goto_1
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/t4game/GSEItemObject;->nextSEItem:Lcom/t4game/GSEItemObject;

    invoke-virtual {v1}, Lcom/t4game/GSEItemObject;->release()V

    invoke-static {v1}, Lcom/t4game/GDataManager;->putToPool(Lcom/t4game/AbstractPoolObject;)V

    move-object v1, v2

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/t4game/GSEObject;->itemHeads:[Lcom/t4game/GSEItemObject;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateOffsetPos()V
    .locals 2

    iget-byte v0, p0, Lcom/t4game/GSEObject;->offsetW:B

    if-lez v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/GSEObject;->offsetX:B

    iget-byte v1, p0, Lcom/t4game/GSEObject;->offsetW:B

    invoke-static {v1}, Lcom/t4game/GUtil;->random(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSEObject;->nowOffsetX:S

    :goto_0
    iget-byte v0, p0, Lcom/t4game/GSEObject;->offsetH:B

    if-lez v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/GSEObject;->offsetY:B

    iget-byte v1, p0, Lcom/t4game/GSEObject;->offsetH:B

    invoke-static {v1}, Lcom/t4game/GUtil;->random(I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSEObject;->nowOffsetY:S

    :goto_1
    return-void

    :cond_0
    iget-byte v0, p0, Lcom/t4game/GSEObject;->offsetX:B

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSEObject;->nowOffsetX:S

    goto :goto_0

    :cond_1
    iget-byte v0, p0, Lcom/t4game/GSEObject;->offsetY:B

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSEObject;->nowOffsetY:S

    goto :goto_1
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 3

    iget-short v0, p0, Lcom/t4game/GSEObject;->mapX:S

    iget-object v1, p0, Lcom/t4game/GSEObject;->scene:Lcom/t4game/GScene;

    iget v1, v1, Lcom/t4game/GScene;->win_x:I

    sub-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/GSEObject;->mapY:S

    iget-object v2, p0, Lcom/t4game/GSEObject;->scene:Lcom/t4game/GScene;

    iget v2, v2, Lcom/t4game/GScene;->win_y:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/t4game/GSEObject;->draw(Ljavax/microedition/lcdui/Graphics;III)V

    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/t4game/GSEObject;->draw(Ljavax/microedition/lcdui/Graphics;III)V

    return-void
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;III)V
    .locals 3

    iget-short v0, p0, Lcom/t4game/GSEObject;->nowOffsetX:S

    add-int/2addr v0, p3

    iget-short v1, p0, Lcom/t4game/GSEObject;->nowOffsetY:S

    add-int/2addr v1, p4

    iget-object v2, p0, Lcom/t4game/GSEObject;->itemHeads:[Lcom/t4game/GSEItemObject;

    aget-object v2, v2, p2

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1, v0, v1}, Lcom/t4game/GSEItemObject;->draw(Ljavax/microedition/lcdui/Graphics;II)Z

    iget-object v2, v2, Lcom/t4game/GSEItemObject;->nextSEItem:Lcom/t4game/GSEItemObject;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drawButtom(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0

    return-void
.end method

.method public drawName(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0

    return-void
.end method

.method public init(Lcom/t4game/GScene;Lcom/t4game/GSEData;Lcom/t4game/GObjectData;ISS)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GSEObject;->mapObject:Lcom/t4game/GMapObject;

    iput-object p2, p0, Lcom/t4game/GSEObject;->seData:Lcom/t4game/GSEData;

    iput-object p3, p0, Lcom/t4game/GSEObject;->objectData:Lcom/t4game/GObjectData;

    iput-object p1, p0, Lcom/t4game/GSEObject;->scene:Lcom/t4game/GScene;

    iput-short p5, p0, Lcom/t4game/GSEObject;->mapX:S

    iput-short p6, p0, Lcom/t4game/GSEObject;->mapY:S

    iput p4, p0, Lcom/t4game/GSEObject;->delayFrameNum:I

    return-void
.end method

.method public init(Lcom/t4game/GSprite;Lcom/t4game/GSEData;Lcom/t4game/GObjectData;I)V
    .locals 1

    iput-object p1, p0, Lcom/t4game/GSEObject;->mapObject:Lcom/t4game/GMapObject;

    iput-object p2, p0, Lcom/t4game/GSEObject;->seData:Lcom/t4game/GSEData;

    iput-object p3, p0, Lcom/t4game/GSEObject;->objectData:Lcom/t4game/GObjectData;

    iget-object v0, p0, Lcom/t4game/GSEObject;->mapObject:Lcom/t4game/GMapObject;

    iget-object v0, v0, Lcom/t4game/GMapObject;->scene:Lcom/t4game/GScene;

    iput-object v0, p0, Lcom/t4game/GSEObject;->scene:Lcom/t4game/GScene;

    iput p4, p0, Lcom/t4game/GSEObject;->delayFrameNum:I

    return-void
.end method

.method public release()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v2, p0, Lcom/t4game/GSEObject;->seData:Lcom/t4game/GSEData;

    invoke-direct {p0}, Lcom/t4game/GSEObject;->cleanItems()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/t4game/GSEObject;->frameIndex:I

    iput v1, p0, Lcom/t4game/GSEObject;->delayFrameNum:I

    iput-byte v1, p0, Lcom/t4game/GSEObject;->type:B

    iput-byte v1, p0, Lcom/t4game/GSEObject;->offsetX:B

    iput-byte v1, p0, Lcom/t4game/GSEObject;->offsetY:B

    iput-byte v1, p0, Lcom/t4game/GSEObject;->offsetW:B

    iput-byte v1, p0, Lcom/t4game/GSEObject;->offsetH:B

    iput-object v2, p0, Lcom/t4game/GSEObject;->mapObject:Lcom/t4game/GMapObject;

    iput-short v1, p0, Lcom/t4game/GSEObject;->nowOffsetX:S

    iput-short v1, p0, Lcom/t4game/GSEObject;->nowOffsetY:S

    iput-object v2, p0, Lcom/t4game/GSEObject;->nextSE:Lcom/t4game/GSEObject;

    iput-object v2, p0, Lcom/t4game/GSEObject;->objectData:Lcom/t4game/GObjectData;

    return-void
.end method

.method public reset()V
    .locals 1

    invoke-direct {p0}, Lcom/t4game/GSEObject;->cleanItems()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/t4game/GSEObject;->frameIndex:I

    return-void
.end method

.method public setOffsetPos(IIII)V
    .locals 1

    int-to-byte v0, p1

    iput-byte v0, p0, Lcom/t4game/GSEObject;->offsetX:B

    int-to-byte v0, p2

    iput-byte v0, p0, Lcom/t4game/GSEObject;->offsetY:B

    int-to-byte v0, p3

    iput-byte v0, p0, Lcom/t4game/GSEObject;->offsetW:B

    int-to-byte v0, p4

    iput-byte v0, p0, Lcom/t4game/GSEObject;->offsetH:B

    invoke-direct {p0}, Lcom/t4game/GSEObject;->updateOffsetPos()V

    return-void
.end method

.method public update()B
    .locals 13

    const/4 v11, 0x5

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget v0, p0, Lcom/t4game/GSEObject;->delayFrameNum:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/t4game/GSEObject;->delayFrameNum:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/t4game/GSEObject;->delayFrameNum:I

    move v0, v7

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/t4game/GSEObject;->playType:I

    sget-byte v1, Lcom/t4game/GSEObject;->PLAYTYPE_ONE:B

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/t4game/GSEObject;->frameIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/GSEObject;->frameIndex:I

    iget v0, p0, Lcom/t4game/GSEObject;->frameIndex:I

    iget-object v1, p0, Lcom/t4game/GSEObject;->seData:Lcom/t4game/GSEData;

    iget-short v1, v1, Lcom/t4game/GSEData;->frameNum:S

    if-lt v0, v1, :cond_3

    move v0, v8

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/t4game/GSEObject;->playType:I

    sget-byte v1, Lcom/t4game/GSEObject;->PLAYTYPE_GIVENFRAME:B

    if-ne v0, v1, :cond_6

    iget v0, p0, Lcom/t4game/GSEObject;->playFrame:I

    if-gtz v0, :cond_2

    move v0, v8

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/t4game/GSEObject;->playFrame:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/t4game/GSEObject;->playFrame:I

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/t4game/GSEObject;->seData:Lcom/t4game/GSEData;

    iget-object v0, v0, Lcom/t4game/GSEData;->itemDataList:[[[B

    iget v1, p0, Lcom/t4game/GSEObject;->frameIndex:I

    aget-object v1, v0, v1

    iget-object v0, p0, Lcom/t4game/GSEObject;->seData:Lcom/t4game/GSEData;

    iget-object v0, v0, Lcom/t4game/GSEData;->frameTypeList:[B

    iget v2, p0, Lcom/t4game/GSEObject;->frameIndex:I

    aget-byte v0, v0, v2

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/t4game/GSEObject;->mapObject:Lcom/t4game/GMapObject;

    iget-byte v0, v0, Lcom/t4game/GMapObject;->type:B

    if-eq v0, v9, :cond_4

    iget-object v0, p0, Lcom/t4game/GSEObject;->mapObject:Lcom/t4game/GMapObject;

    iget-byte v0, v0, Lcom/t4game/GMapObject;->type:B

    if-ne v0, v10, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/t4game/GSEObject;->mapObject:Lcom/t4game/GMapObject;

    check-cast v0, Lcom/t4game/GSprite;

    iput-boolean v7, v0, Lcom/t4game/GSprite;->hitMove:Z

    :cond_5
    move v0, v8

    :goto_2
    if-ge v0, v9, :cond_c

    iget-object v2, p0, Lcom/t4game/GSEObject;->itemHeads:[Lcom/t4game/GSEItemObject;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    move-object v12, v3

    move-object v3, v2

    move-object v2, v12

    :goto_3
    if-eqz v3, :cond_b

    iget-object v4, v3, Lcom/t4game/GSEItemObject;->nextSEItem:Lcom/t4game/GSEItemObject;

    invoke-virtual {v3}, Lcom/t4game/GSEItemObject;->update()Z

    move-result v5

    if-nez v5, :cond_a

    if-nez v2, :cond_9

    iget-object v5, p0, Lcom/t4game/GSEObject;->itemHeads:[Lcom/t4game/GSEItemObject;

    aput-object v4, v5, v0

    :goto_4
    invoke-virtual {v3}, Lcom/t4game/GSEItemObject;->release()V

    invoke-static {v3}, Lcom/t4game/GDataManager;->putToPool(Lcom/t4game/AbstractPoolObject;)V

    :goto_5
    move-object v3, v4

    goto :goto_3

    :cond_6
    iget v0, p0, Lcom/t4game/GSEObject;->playType:I

    sget-byte v1, Lcom/t4game/GSEObject;->PLAYTYPE_LOOP:B

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/t4game/GSEObject;->frameIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/GSEObject;->frameIndex:I

    iget v0, p0, Lcom/t4game/GSEObject;->frameIndex:I

    iget-object v1, p0, Lcom/t4game/GSEObject;->seData:Lcom/t4game/GSEData;

    iget-short v1, v1, Lcom/t4game/GSEData;->frameNum:S

    if-lt v0, v1, :cond_3

    iget v0, p0, Lcom/t4game/GSEObject;->playFrame:I

    if-lez v0, :cond_8

    iget v0, p0, Lcom/t4game/GSEObject;->playFrame:I

    if-ne v0, v7, :cond_7

    move v0, v8

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/t4game/GSEObject;->playFrame:I

    sub-int/2addr v0, v7

    iput v0, p0, Lcom/t4game/GSEObject;->playFrame:I

    :cond_8
    iput v8, p0, Lcom/t4game/GSEObject;->frameIndex:I

    invoke-direct {p0}, Lcom/t4game/GSEObject;->updateOffsetPos()V

    goto :goto_1

    :cond_9
    iput-object v4, v2, Lcom/t4game/GSEItemObject;->nextSEItem:Lcom/t4game/GSEItemObject;

    goto :goto_4

    :cond_a
    move-object v2, v3

    goto :goto_5

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_c
    array-length v2, v1

    move v3, v8

    :goto_6
    if-ge v3, v2, :cond_14

    aget-object v4, v1, v3

    invoke-static {v11}, Lcom/t4game/GDataManager;->getFromPool(B)Lcom/t4game/AbstractPoolObject;

    move-result-object v0

    check-cast v0, Lcom/t4game/GSEItemObject;

    iget-object v5, p0, Lcom/t4game/GSEObject;->objectData:Lcom/t4game/GObjectData;

    invoke-virtual {v0, p0, v5, v3, v4}, Lcom/t4game/GSEItemObject;->init(Lcom/t4game/GSEObject;Lcom/t4game/GObjectData;I[B)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {v0}, Lcom/t4game/GSEItemObject;->release()V

    invoke-static {v0}, Lcom/t4game/GDataManager;->putToPool(Lcom/t4game/AbstractPoolObject;)V

    :goto_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    :cond_d
    iget-byte v4, v0, Lcom/t4game/GSEItemObject;->flag1:B

    and-int/lit8 v4, v4, 0xf

    if-ne v4, v9, :cond_f

    :cond_e
    iget-byte v4, v0, Lcom/t4game/GSEItemObject;->flag2:B

    and-int/lit8 v4, v4, 0xf

    sget-byte v5, Lcom/t4game/GSEObject;->SPECIALEFFECT_SPRITE_LAYER:B

    if-ge v4, v5, :cond_13

    invoke-direct {p0, v8, v0}, Lcom/t4game/GSEObject;->addItemObject(ILcom/t4game/GSEItemObject;)V

    goto :goto_7

    :cond_f
    if-ne v4, v10, :cond_10

    iget-object v4, p0, Lcom/t4game/GSEObject;->scene:Lcom/t4game/GScene;

    invoke-virtual {v4, v0, v8}, Lcom/t4game/GScene;->setScreenSE(Lcom/t4game/GSEItemObject;I)V

    goto :goto_7

    :cond_10
    const/4 v5, 0x4

    if-ne v4, v5, :cond_11

    iget-object v4, p0, Lcom/t4game/GSEObject;->scene:Lcom/t4game/GScene;

    invoke-virtual {v4, v0, v7}, Lcom/t4game/GScene;->setScreenSE(Lcom/t4game/GSEItemObject;I)V

    goto :goto_7

    :cond_11
    if-ne v4, v11, :cond_e

    iget-object v4, p0, Lcom/t4game/GSEObject;->mapObject:Lcom/t4game/GMapObject;

    if-nez v4, :cond_12

    iget-short v4, v0, Lcom/t4game/GSEItemObject;->offsetX:S

    iget-short v5, p0, Lcom/t4game/GSEObject;->mapX:S

    iget-object v6, p0, Lcom/t4game/GSEObject;->scene:Lcom/t4game/GScene;

    iget v6, v6, Lcom/t4game/GScene;->screen_mapx:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-short v4, v4

    iput-short v4, v0, Lcom/t4game/GSEItemObject;->offsetX:S

    iget-short v4, v0, Lcom/t4game/GSEItemObject;->offsetY:S

    iget-short v5, p0, Lcom/t4game/GSEObject;->mapY:S

    iget-object v6, p0, Lcom/t4game/GSEObject;->scene:Lcom/t4game/GScene;

    iget v6, v6, Lcom/t4game/GScene;->screen_mapy:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-short v4, v4

    iput-short v4, v0, Lcom/t4game/GSEItemObject;->offsetY:S

    :goto_8
    iget-object v4, p0, Lcom/t4game/GSEObject;->scene:Lcom/t4game/GScene;

    invoke-virtual {v4, v0, v9}, Lcom/t4game/GScene;->setScreenSE(Lcom/t4game/GSEItemObject;I)V

    goto :goto_7

    :cond_12
    iget-short v4, v0, Lcom/t4game/GSEItemObject;->offsetX:S

    iget-object v5, p0, Lcom/t4game/GSEObject;->mapObject:Lcom/t4game/GMapObject;

    iget-short v5, v5, Lcom/t4game/GMapObject;->mapX:S

    iget-object v6, p0, Lcom/t4game/GSEObject;->scene:Lcom/t4game/GScene;

    iget v6, v6, Lcom/t4game/GScene;->screen_mapx:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-short v4, v4

    iput-short v4, v0, Lcom/t4game/GSEItemObject;->offsetX:S

    iget-short v4, v0, Lcom/t4game/GSEItemObject;->offsetY:S

    iget-object v5, p0, Lcom/t4game/GSEObject;->mapObject:Lcom/t4game/GMapObject;

    iget-short v5, v5, Lcom/t4game/GMapObject;->mapY:S

    iget-object v6, p0, Lcom/t4game/GSEObject;->scene:Lcom/t4game/GScene;

    iget v6, v6, Lcom/t4game/GScene;->screen_mapy:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-short v4, v4

    iput-short v4, v0, Lcom/t4game/GSEItemObject;->offsetY:S

    goto :goto_8

    :cond_13
    invoke-direct {p0, v7, v0}, Lcom/t4game/GSEObject;->addItemObject(ILcom/t4game/GSEItemObject;)V

    goto :goto_7

    :cond_14
    move v0, v7

    goto/16 :goto_0
.end method
