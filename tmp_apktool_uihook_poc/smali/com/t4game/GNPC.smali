.class public Lcom/t4game/GNPC;
.super Lcom/t4game/GSprite;


# static fields
.field public static final AutoMoveMaxTick:B = 0x1et

.field public static final CONTROLTICK:I = 0x64

.field public static final FLAG_CANSAYSOMTHING:B = -0x1t

.field public static flagImage:Ljavax/microedition/lcdui/Image; = null

.field public static final showInfoWidth:B = 0x28t

.field public static final xy:B = 0xat


# instance fields
.field public Flag:[B

.field public autoControlType:B

.field public autoMovePos:[S

.field public controlTick:I

.field public iconList:[B

.field public isTrggerEvent:B

.field public mainUserInView:Z

.field protected picOnTop:Z

.field public selfSEId:S

.field public selfSEObjectId:S

.field private showFlag:Z

.field public targetSEId:S

.field public targetSEObjectId:S

.field public tickAutoMove:B

.field public triggerActionId:B

.field public triggerWords:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/t4game/GNPC;->flagImage:Ljavax/microedition/lcdui/Image;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/t4game/GSprite;-><init>()V

    iput-byte v1, p0, Lcom/t4game/GNPC;->autoControlType:B

    iput v1, p0, Lcom/t4game/GNPC;->controlTick:I

    iput-object v2, p0, Lcom/t4game/GNPC;->autoMovePos:[S

    iput-byte v1, p0, Lcom/t4game/GNPC;->tickAutoMove:B

    iput-object v2, p0, Lcom/t4game/GNPC;->iconList:[B

    iput-byte v1, p0, Lcom/t4game/GNPC;->isTrggerEvent:B

    iput-byte v0, p0, Lcom/t4game/GNPC;->triggerActionId:B

    iput-short v0, p0, Lcom/t4game/GNPC;->selfSEObjectId:S

    iput-short v0, p0, Lcom/t4game/GNPC;->selfSEId:S

    iput-short v0, p0, Lcom/t4game/GNPC;->targetSEObjectId:S

    iput-short v0, p0, Lcom/t4game/GNPC;->targetSEId:S

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/GNPC;->triggerWords:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/t4game/GNPC;->picOnTop:Z

    iput-object v2, p0, Lcom/t4game/GNPC;->Flag:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/GNPC;->showFlag:Z

    iput-byte v3, p0, Lcom/t4game/GNPC;->type:B

    iput-byte v3, p0, Lcom/t4game/GNPC;->poolId:B

    iput-object v2, p0, Lcom/t4game/GNPC;->Flag:[B

    return-void
.end method

.method public static getFaceDirection(II)B
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_1

    if-lez p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-lez p0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private giantNpcName(Ljavax/microedition/lcdui/Graphics;II)V
    .locals 10

    const/4 v2, 0x0

    const/16 v1, 0x1e

    const/16 v8, 0x14

    invoke-static {v1, v8}, Ljavax/microedition/lcdui/Image;->createImage(II)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v3

    const v4, 0xffffff

    invoke-virtual {v3, v4}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    invoke-virtual {v3, v2, v2, v1, v8}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    invoke-static {v0, v1, v8}, Lcom/t4game/Util;->getTransparentImag(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/microedition/lcdui/Image;->getGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget-object v0, Lcom/t4game/GNPC;->flagImage:Ljavax/microedition/lcdui/Image;

    shr-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lcom/t4game/GNPC;->iconList:[B

    aget-byte v3, v3, v2

    mul-int/lit8 v3, v3, 0xc

    const/16 v5, 0xc

    const/16 v6, 0xd

    move v4, v2

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    iget-byte v0, p0, Lcom/t4game/GNPC;->size1:B

    iget-byte v1, p0, Lcom/t4game/GNPC;->size2:B

    invoke-static {v9, v0, v1}, Lcom/t4game/Util;->scaleImage(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    shr-int/lit8 v1, v8, 0x1

    sub-int v1, p3, v1

    const/16 v2, 0x21

    invoke-virtual {p1, v0, p2, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    return-void
.end method

.method private testShowName()Z
    .locals 3

    const/4 v0, 0x0

    sget-byte v1, Lcom/t4game/GameScreen;->screenQuilityIndex:B

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/GNPC;->id:Ljava/lang/String;

    sget v1, Lcom/t4game/GameWorld;->enlargeNPCId:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/GNPC;->isTheTargetNpc:Z

    :goto_0
    invoke-super {p0, p1}, Lcom/t4game/GSprite;->draw(Ljavax/microedition/lcdui/Graphics;)V

    iget-byte v0, p0, Lcom/t4game/GNPC;->initState:B

    sget-byte v1, Lcom/t4game/GNPC;->INIT_STATE_INITED:B

    if-eq v0, v1, :cond_0

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/GNPC;->isTheTargetNpc:Z

    goto :goto_0
.end method

.method public drawName(Ljavax/microedition/lcdui/Graphics;)V
    .locals 10

    const/16 v5, 0xc

    const/16 v6, 0xd

    const/4 v9, 0x6

    const/4 v7, 0x4

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/t4game/GSprite;->drawName(Ljavax/microedition/lcdui/Graphics;)V

    iget-short v0, p0, Lcom/t4game/GNPC;->mapX:S

    iget-object v1, p0, Lcom/t4game/GNPC;->scene:Lcom/t4game/GScene;

    iget v1, v1, Lcom/t4game/GScene;->screen_mapx:I

    sub-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/GNPC;->mapY:S

    iget-object v2, p0, Lcom/t4game/GNPC;->scene:Lcom/t4game/GScene;

    iget v2, v2, Lcom/t4game/GScene;->screen_mapy:I

    sub-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/t4game/GNPC;->showFlag:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/t4game/GNPC;->iconList:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/t4game/GNPC;->iconList:[B

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/t4game/GNPC;->iconList:[B

    aget-byte v2, v2, v4

    if-gt v2, v7, :cond_0

    sub-int v3, v0, v9

    iget v0, p0, Lcom/t4game/GNPC;->by1:I

    add-int/2addr v0, v1

    sub-int/2addr v0, v6

    invoke-direct {p0}, Lcom/t4game/GNPC;->testShowName()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/t4game/Defaults;->sfh:I

    :goto_0
    sub-int v2, v0, v1

    iget-object v0, p0, Lcom/t4game/GNPC;->scene:Lcom/t4game/GScene;

    iget-short v0, v0, Lcom/t4game/GScene;->lowLevel:S

    const/4 v1, 0x5

    if-ge v0, v1, :cond_6

    iget-object v0, p0, Lcom/t4game/GNPC;->iconList:[B

    aget-byte v0, v0, v4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/t4game/Defaults;->MissionFont:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/t4game/GNPC;->scene:Lcom/t4game/GScene;

    iget-object v1, v1, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    sget v1, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v1, v1, 0x8

    if-le v1, v7, :cond_4

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v1, v1, 0xa

    sget-object v7, Lcom/t4game/Defaults;->MissionFont:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    invoke-static {v3, v2, v1, v7, p1}, Lcom/t4game/DraftingUtil;->paintMissonBox(IIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v1, v3, 0x5

    add-int/lit8 v7, v2, 0x2

    iget-object v8, p0, Lcom/t4game/GNPC;->iconList:[B

    aget-byte v8, v8, v4

    invoke-static {v1, v7, v8, p1}, Lcom/t4game/DraftingUtil;->paintMissonFont(IIBLjavax/microedition/lcdui/Graphics;)V

    move v1, v0

    :goto_1
    iget-boolean v0, p0, Lcom/t4game/GNPC;->isTheTargetNpc:Z

    if-eqz v0, :cond_5

    sub-int v0, v3, v1

    sub-int/2addr v0, v9

    invoke-direct {p0, p1, v0, v2}, Lcom/t4game/GNPC;->giantNpcName(Ljavax/microedition/lcdui/Graphics;II)V

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/t4game/GNPC;->words:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/t4game/GNPC;->Pop(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/t4game/GNPC;->iconList:[B

    aget-byte v0, v0, v4

    if-nez v0, :cond_8

    sget-object v0, Lcom/t4game/Defaults;->MissionFont:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    shr-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/t4game/GNPC;->scene:Lcom/t4game/GScene;

    iget-object v1, v1, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    sget v1, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v1, v1, 0x8

    if-le v1, v7, :cond_4

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v1, v1, 0xa

    sget-object v7, Lcom/t4game/Defaults;->MissionFont:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v7

    add-int/lit8 v7, v7, 0x4

    invoke-static {v3, v2, v1, v7, p1}, Lcom/t4game/DraftingUtil;->paintMissonBox(IIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v1, v3, 0x5

    add-int/lit8 v7, v2, 0x2

    iget-object v8, p0, Lcom/t4game/GNPC;->iconList:[B

    aget-byte v8, v8, v4

    invoke-static {v1, v7, v8, p1}, Lcom/t4game/DraftingUtil;->paintMissonFont(IIBLjavax/microedition/lcdui/Graphics;)V

    :cond_4
    move v1, v0

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/t4game/GNPC;->flagImage:Ljavax/microedition/lcdui/Image;

    sub-int v1, v3, v1

    sub-int/2addr v1, v9

    iget-object v3, p0, Lcom/t4game/GNPC;->iconList:[B

    aget-byte v3, v3, v4

    mul-int/lit8 v3, v3, 0xc

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lcom/t4game/GNPC;->isTheTargetNpc:Z

    if-eqz v0, :cond_7

    sub-int v0, v3, v4

    invoke-direct {p0, p1, v0, v2}, Lcom/t4game/GNPC;->giantNpcName(Ljavax/microedition/lcdui/Graphics;II)V

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/t4game/GNPC;->flagImage:Ljavax/microedition/lcdui/Image;

    sub-int v1, v3, v4

    iget-object v3, p0, Lcom/t4game/GNPC;->iconList:[B

    aget-byte v3, v3, v4

    mul-int/lit8 v3, v3, 0xc

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_2

    :cond_8
    move v1, v4

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 8

    const-string v6, "]"

    const-string v5, "["

    iget-object v0, p0, Lcom/t4game/GNPC;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/GNPC;->Flag:[B

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_0
    iget-object v2, p0, Lcom/t4game/GNPC;->Flag:[B

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/t4game/GNPC;->Flag:[B

    aget-byte v2, v2, v0

    const/4 v3, 0x5

    if-le v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/t4game/GNPC;->isTheTargetNpc:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/t4game/CommonConstants;->NPC_FLAG_NAMES:[Ljava/lang/String;

    iget-object v4, p0, Lcom/t4game/GNPC;->Flag:[B

    aget-byte v4, v4, v0

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/t4game/CommonConstants;->NPC_FLAG_NAMES:[Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/GNPC;->Flag:[B

    aget-byte v3, v3, v0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    :cond_3
    return-object v0
.end method

.method public initAutoMove()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/t4game/GNPC;->autoMovePos:[S

    if-nez v0, :cond_0

    new-array v0, v3, [S

    iput-object v0, p0, Lcom/t4game/GNPC;->autoMovePos:[S

    iget-object v0, p0, Lcom/t4game/GNPC;->autoMovePos:[S

    iget-short v1, p0, Lcom/t4game/GNPC;->mapX:S

    aput-short v1, v0, v4

    iget-object v0, p0, Lcom/t4game/GNPC;->autoMovePos:[S

    iget-short v1, p0, Lcom/t4game/GNPC;->mapY:S

    aput-short v1, v0, v5

    iget-object v0, p0, Lcom/t4game/GNPC;->autoMovePos:[S

    const/4 v1, 0x2

    iget-short v2, p0, Lcom/t4game/GNPC;->mapX:S

    sub-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/t4game/GNPC;->autoMovePos:[S

    iget-short v1, p0, Lcom/t4game/GNPC;->mapY:S

    aput-short v1, v0, v6

    iget-object v0, p0, Lcom/t4game/GNPC;->autoMovePos:[S

    const/4 v1, 0x4

    iget-short v2, p0, Lcom/t4game/GNPC;->mapX:S

    add-int/lit8 v2, v2, 0xa

    int-to-short v2, v2

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/t4game/GNPC;->autoMovePos:[S

    iget-short v1, p0, Lcom/t4game/GNPC;->mapY:S

    aput-short v1, v0, v7

    iget-object v0, p0, Lcom/t4game/GNPC;->autoMovePos:[S

    const/4 v1, 0x6

    iget-short v2, p0, Lcom/t4game/GNPC;->mapX:S

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/t4game/GNPC;->autoMovePos:[S

    const/4 v1, 0x7

    iget-short v2, p0, Lcom/t4game/GNPC;->mapY:S

    add-int/lit8 v2, v2, 0xa

    int-to-short v2, v2

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/t4game/GNPC;->autoMovePos:[S

    const/16 v1, 0x8

    iget-short v2, p0, Lcom/t4game/GNPC;->mapX:S

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/t4game/GNPC;->autoMovePos:[S

    const/16 v1, 0x9

    iget-short v2, p0, Lcom/t4game/GNPC;->mapY:S

    sub-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, v0, v1

    :cond_0
    iput-byte v4, p0, Lcom/t4game/GNPC;->tickAutoMove:B

    iput-byte v5, p0, Lcom/t4game/GNPC;->autoControlType:B

    invoke-static {v7}, Lcom/t4game/Util;->rand(I)I

    move-result v0

    invoke-static {v0}, Lcom/t4game/Util;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/t4game/GNPC;->autoMovePos:[S

    mul-int/lit8 v2, v0, 0x2

    aget-short v1, v1, v2

    iget-object v2, p0, Lcom/t4game/GNPC;->autoMovePos:[S

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-short v0, v2, v0

    invoke-virtual {p0, v1, v0, v6}, Lcom/t4game/GNPC;->setMoveDestPos(IIB)V

    return-void
.end method

.method public release()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-super {p0}, Lcom/t4game/GSprite;->release()V

    iput-object v2, p0, Lcom/t4game/GNPC;->autoMovePos:[S

    iput-object v2, p0, Lcom/t4game/GNPC;->iconList:[B

    iput-object v2, p0, Lcom/t4game/GNPC;->Flag:[B

    iput-byte v1, p0, Lcom/t4game/GNPC;->autoControlType:B

    iput-byte v1, p0, Lcom/t4game/GNPC;->isTrggerEvent:B

    iput-byte v0, p0, Lcom/t4game/GNPC;->triggerActionId:B

    iput-short v0, p0, Lcom/t4game/GNPC;->selfSEObjectId:S

    iput-short v0, p0, Lcom/t4game/GNPC;->selfSEId:S

    iput-short v0, p0, Lcom/t4game/GNPC;->targetSEObjectId:S

    iput-short v0, p0, Lcom/t4game/GNPC;->targetSEId:S

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/GNPC;->triggerWords:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/t4game/GNPC;->mainUserInView:Z

    iput-boolean v1, p0, Lcom/t4game/GNPC;->picOnTop:Z

    return-void
.end method

.method public releaseMineControl()V
    .locals 1

    iget-byte v0, p0, Lcom/t4game/GNPC;->autoControlType:B

    if-lez v0, :cond_0

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/t4game/GNPC;->autoControlType:B

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/GNPC;->controlTick:I

    :cond_0
    return-void
.end method

.method public setFlag([B)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/t4game/GNPC;->Flag:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GNPC;->iconList:[B

    iget-object v0, p0, Lcom/t4game/GNPC;->Flag:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GNPC;->Flag:[B

    aget-byte v0, v0, v2

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/t4game/GNPC;->iconList:[B

    iget-object v0, p0, Lcom/t4game/GNPC;->iconList:[B

    iget-object v1, p0, Lcom/t4game/GNPC;->Flag:[B

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/t4game/GNPC;->iconList:[B

    if-eqz v0, :cond_2

    iput-boolean v3, p0, Lcom/t4game/GNPC;->picOnTop:Z

    iput-boolean v3, p0, Lcom/t4game/GNPC;->CanShowPop:Z

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/GNPC;->Flag:[B

    iput-object v0, p0, Lcom/t4game/GNPC;->iconList:[B

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/t4game/GNPC;->picOnTop:Z

    iput-boolean v2, p0, Lcom/t4game/GNPC;->CanShowPop:Z

    goto :goto_1
.end method

.method public update()B
    .locals 9

    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-byte v0, p0, Lcom/t4game/GNPC;->actionType:B

    if-ne v0, v5, :cond_2

    invoke-virtual {p0}, Lcom/t4game/GNPC;->moveNPC()V

    iget-boolean v0, p0, Lcom/t4game/GNPC;->moved:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/t4game/GNPC;->setActType(B)V

    iget-byte v0, p0, Lcom/t4game/GNPC;->dir:B

    invoke-virtual {p0, v4, v0}, Lcom/t4game/GNPC;->setAction(BB)V

    :cond_0
    iget-byte v0, p0, Lcom/t4game/GNPC;->controlType:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    iput-byte v4, p0, Lcom/t4game/GNPC;->controlType:B

    iget v0, p0, Lcom/t4game/GNPC;->crazyMovePosIndex:I

    rem-int/lit8 v0, v0, 0x14

    if-lez v0, :cond_1

    const/16 v0, 0x32

    iput v0, p0, Lcom/t4game/GNPC;->crazyStopTick:I

    invoke-virtual {p0}, Lcom/t4game/GNPC;->startCrazy()V

    :cond_1
    iget-byte v0, p0, Lcom/t4game/GNPC;->controlType:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/t4game/GNPC;->nSpeed:I

    invoke-virtual {p0, v0, v5, v4}, Lcom/t4game/GNPC;->setSpeed(IZZ)V

    iput-byte v4, p0, Lcom/t4game/GNPC;->controlType:B

    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/t4game/GSprite;->update()B

    iget-byte v0, p0, Lcom/t4game/GNPC;->initState:B

    sget-byte v1, Lcom/t4game/GNPC;->INIT_STATE_INITED:B

    if-eq v0, v1, :cond_4

    move v0, v4

    :goto_1
    return v0

    :cond_3
    iget-byte v0, p0, Lcom/t4game/GNPC;->controlType:B

    if-ne v0, v6, :cond_2

    iput-byte v4, p0, Lcom/t4game/GNPC;->controlType:B

    goto :goto_0

    :cond_4
    iget-boolean v0, p0, Lcom/t4game/GNPC;->visible:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/t4game/GNPC;->showFlag:Z

    if-nez v0, :cond_5

    iput-boolean v5, p0, Lcom/t4game/GNPC;->showFlag:Z

    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/t4game/GNPC;->visible:Z

    if-nez v0, :cond_7

    move v0, v4

    goto :goto_1

    :cond_6
    iget-boolean v0, p0, Lcom/t4game/GNPC;->showFlag:Z

    if-eqz v0, :cond_5

    iput-boolean v4, p0, Lcom/t4game/GNPC;->showFlag:Z

    goto :goto_2

    :cond_7
    iget-byte v0, p0, Lcom/t4game/GNPC;->autoControlType:B

    if-ne v0, v5, :cond_f

    iget-byte v0, p0, Lcom/t4game/GNPC;->actionType:B

    if-nez v0, :cond_8

    iget-byte v0, p0, Lcom/t4game/GNPC;->tickAutoMove:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GNPC;->tickAutoMove:B

    iget-byte v0, p0, Lcom/t4game/GNPC;->tickAutoMove:B

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_8

    iget-object v0, p0, Lcom/t4game/GNPC;->xianZhiFlag:[Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/t4game/GNPC;->initAutoMove()V

    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/t4game/GNPC;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v1, v0, Lcom/t4game/GUser;->mapX:S

    iget-short v2, p0, Lcom/t4game/GNPC;->mapX:S

    const/16 v3, 0x3c

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_11

    iget-short v1, v0, Lcom/t4game/GUser;->mapY:S

    iget-short v2, p0, Lcom/t4game/GNPC;->mapY:S

    const/16 v3, 0x3c

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_11

    iget-short v1, v0, Lcom/t4game/GUser;->mapX:S

    iget-short v2, p0, Lcom/t4game/GNPC;->mapX:S

    add-int/lit8 v2, v2, 0x3c

    if-gt v1, v2, :cond_11

    iget-short v0, v0, Lcom/t4game/GUser;->mapY:S

    iget-short v1, p0, Lcom/t4game/GNPC;->mapY:S

    add-int/lit8 v1, v1, 0x3c

    if-gt v0, v1, :cond_11

    iget-boolean v0, p0, Lcom/t4game/GNPC;->mainUserInView:Z

    if-nez v0, :cond_d

    iget-byte v0, p0, Lcom/t4game/GNPC;->isTrggerEvent:B

    if-ne v0, v5, :cond_c

    iget-byte v0, p0, Lcom/t4game/GNPC;->triggerActionId:B

    if-eq v0, v7, :cond_9

    iget-byte v0, p0, Lcom/t4game/GNPC;->actionType:B

    if-nez v0, :cond_9

    iget-byte v0, p0, Lcom/t4game/GNPC;->triggerActionId:B

    iget-byte v1, p0, Lcom/t4game/GNPC;->dir:B

    invoke-virtual {p0, v0, v1}, Lcom/t4game/GNPC;->setAction(BB)V

    :cond_9
    iget-object v0, p0, Lcom/t4game/GNPC;->triggerWords:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/t4game/GNPC;->CanShowPop:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/t4game/GNPC;->triggerWords:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/GNPC;->triggerWords:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v6, :cond_b

    iget-object v1, p0, Lcom/t4game/GNPC;->triggerWords:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "<pp/>"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/t4game/GNPC;->scene:Lcom/t4game/GScene;

    iget-object v1, p0, Lcom/t4game/GNPC;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v8}, Lcom/t4game/GScene;->getSpriteFromHash(IB)Lcom/t4game/GSprite;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/GNPC;->triggerWords:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_a

    iput-byte v5, v0, Lcom/t4game/GSprite;->SayInPop:B

    invoke-static {}, Lcom/t4game/Util;->getTime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/t4game/GSprite;->StartPop:J

    iput-object v1, v0, Lcom/t4game/GSprite;->words:Ljava/lang/String;

    :cond_a
    move-object v0, v1

    :cond_b
    iget-object v1, p0, Lcom/t4game/GNPC;->triggerWords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Lcom/t4game/ChatMessage;

    invoke-direct {v1}, Lcom/t4game/ChatMessage;-><init>()V

    const/4 v2, 0x7

    iput-byte v2, v1, Lcom/t4game/ChatMessage;->type:B

    iget-object v2, p0, Lcom/t4game/GNPC;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/t4game/ChatMessage;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, v4}, Lcom/t4game/ChatMessage;->initHightColorGoods(II)V

    invoke-virtual {v1, v0}, Lcom/t4game/ChatMessage;->initMessage(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/GNPC;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-byte v2, v1, Lcom/t4game/ChatMessage;->type:B

    invoke-virtual {v0, v2, v1}, Lcom/t4game/GameWorld;->processChatMessageTo(BLcom/t4game/ChatMessage;)V

    :cond_c
    iput-boolean v5, p0, Lcom/t4game/GNPC;->mainUserInView:Z

    :cond_d
    :goto_4
    iget-boolean v0, p0, Lcom/t4game/GNPC;->moved:Z

    if-eqz v0, :cond_e

    iput-boolean v4, p0, Lcom/t4game/GNPC;->moved:Z

    :cond_e
    move v0, v5

    goto/16 :goto_1

    :cond_f
    iget-byte v0, p0, Lcom/t4game/GNPC;->autoControlType:B

    if-ne v0, v8, :cond_8

    iget v0, p0, Lcom/t4game/GNPC;->controlTick:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_10

    iget v0, p0, Lcom/t4game/GNPC;->controlTick:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/GNPC;->controlTick:I

    goto/16 :goto_3

    :cond_10
    iget-object v0, p0, Lcom/t4game/GNPC;->xianZhiFlag:[Z

    aget-boolean v0, v0, v4

    if-nez v0, :cond_8

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GNPC;->autoMovePos:[S

    invoke-virtual {p0}, Lcom/t4game/GNPC;->initAutoMove()V

    goto/16 :goto_3

    :cond_11
    iget-boolean v0, p0, Lcom/t4game/GNPC;->mainUserInView:Z

    if-eqz v0, :cond_d

    iget-byte v0, p0, Lcom/t4game/GNPC;->isTrggerEvent:B

    if-ne v0, v5, :cond_12

    iget-byte v0, p0, Lcom/t4game/GNPC;->triggerActionId:B

    if-eq v0, v7, :cond_12

    iget-byte v0, p0, Lcom/t4game/GNPC;->actionType:B

    iget-byte v1, p0, Lcom/t4game/GNPC;->triggerActionId:B

    if-ne v0, v1, :cond_12

    iget-byte v0, p0, Lcom/t4game/GNPC;->dir:B

    invoke-virtual {p0, v4, v0}, Lcom/t4game/GNPC;->setAction(BB)V

    :cond_12
    iput-boolean v4, p0, Lcom/t4game/GNPC;->mainUserInView:Z

    goto :goto_4
.end method
