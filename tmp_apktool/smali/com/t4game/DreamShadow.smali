.class public Lcom/t4game/DreamShadow;
.super Ljava/lang/Object;


# static fields
.field public static final Dialog_Butterfly:B = 0x1t

.field public static final Dialog_Cicada:B = 0x2t

.field public static final Dialog_Leaves:B = 0x3t

.field public static final Dialog_Menu:B = 0x0t

.field public static final Dialog_Snow:B = 0x4t

.field public static final Dialog_attribute:B = 0x5t

.field private static dreamShadow:Lcom/t4game/DreamShadow;

.field private static qualityColor:[I


# instance fields
.field private attribute:[Ljava/lang/String;

.field private awardStrings:[Ljava/lang/String;

.field private bagState:B

.field private bgImage:Ljavax/microedition/lcdui/Image;

.field private buttonImageOne:Ljavax/microedition/lcdui/Image;

.field private buttonImageTen:Ljavax/microedition/lcdui/Image;

.field private buttonW:I

.field private buttonX:I

.field private buttonY:I

.field private canGet:[B

.field private chengHaoImage:Ljavax/microedition/lcdui/Image;

.field private cicadaImage:Ljavax/microedition/lcdui/Image;

.field private dialogId:B

.field private finalGreatStoneNum:B

.field private focusBar:B

.field private getNum:[S

.field private getStoneExperienceHas:[I

.field private getStoneExperienceNow:[I

.field private getStoneExperienceOwn:[I

.field private getStoneLevel:[I

.field private getStoneName:[Ljava/lang/String;

.field private getStoneQuality:[B

.field private getStoneType:[B

.field private greatStoneImage:Ljavax/microedition/lcdui/Image;

.field private greatStoneX:I

.field private greatStoneY:I

.field protected gs:Lcom/t4game/GameScreen;

.field protected gw:Lcom/t4game/GameWorld;

.field private hasYuan:[Z

.field private index:B

.field private lastTime:J

.field private leavesStone:[[[Ljava/lang/String;

.field private leftTimeOne:J

.field private leftTimesOne:B

.field private leftW:I

.field private lqAlreadyImage:Ljavax/microedition/lcdui/Image;

.field private lqImage:Ljavax/microedition/lcdui/Image;

.field private lqUnableImage:Ljavax/microedition/lcdui/Image;

.field private mainMenu:Ljavax/microedition/lcdui/Image;

.field private menuStrings:Lcom/t4game/UI_Menu;

.field private name:[Ljava/lang/String;

.field private num:[B

.field private numOneLIne:I

.field private obj:Ljava/util/Vector;

.field private objLoading:Lcom/t4game/GObjectData;

.field private poetryLineNum:B

.field private poetryString:[Ljava/lang/String;

.field private preIndex:B

.field private preQualityIndex:B

.field private preSelectedButton:B

.field private prefocuseBar:B

.field private qualityIndex:B

.field private qualityStrings:[Ljava/lang/String;

.field private readBuffer:Lcom/t4game/IoBuffer;

.field private seImageIndex:B

.field private selected:B

.field private selectedList:Ljava/util/Vector;

.field private selectedMenuIndex:B

.field private selectedX:I

.field private selectedY:I

.field private sendBuffer:Lcom/t4game/IoBuffer;

.field private stoneExperienceHas:[[I

.field private stoneExperienceNow:[[I

.field private stoneExperienceOwn:[[I

.field private stoneLevel:[[I

.field private stoneName:[[Ljava/lang/String;

.field private stoneQuality:[[B

.field private stoneType:[[B

.field private timesTen:I

.field private totalLineNum:I

.field private yuanImage:Ljavax/microedition/lcdui/Image;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/t4game/DreamShadow;->qualityColor:[I

    return-void

    nop

    :array_0
    .array-data 4
        0xffffff
        0xff00
        0x90ff
        0xc018c0
        0xffa500
        0xff0000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v6, 0xa

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x7

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "\u6625\u542c\u9e1f\u8bed\uff1b\u590f\u542c\u8749\u58f0\uff1b\u79cb\u542c\u866b\u58f0\uff1b\u51ac\u542c\u96ea\u58f0\uff1b\u65b9\u4e0d\u865a\u751f\u6b64\u8033\u3002"

    aput-object v1, v0, v3

    const-string v1, "----\u5f20\u6f6e\u300a\u5e7d\u68a6\u5f71\u300b"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/t4game/DreamShadow;->poetryString:[Ljava/lang/String;

    iput v3, p0, Lcom/t4game/DreamShadow;->selectedX:I

    iput v3, p0, Lcom/t4game/DreamShadow;->selectedY:I

    iput v3, p0, Lcom/t4game/DreamShadow;->leftW:I

    iput-byte v3, p0, Lcom/t4game/DreamShadow;->poetryLineNum:B

    iput-byte v3, p0, Lcom/t4game/DreamShadow;->selectedMenuIndex:B

    iput v3, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iput v3, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iput v3, p0, Lcom/t4game/DreamShadow;->buttonW:I

    iput v3, p0, Lcom/t4game/DreamShadow;->greatStoneX:I

    iput v3, p0, Lcom/t4game/DreamShadow;->greatStoneY:I

    iput-byte v3, p0, Lcom/t4game/DreamShadow;->selected:B

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->preSelectedButton:B

    iput-byte v6, p0, Lcom/t4game/DreamShadow;->leftTimesOne:B

    iput v3, p0, Lcom/t4game/DreamShadow;->timesTen:I

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/DreamShadow;->awardStrings:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u51e1\u9636"

    aput-object v1, v0, v3

    const-string v1, "\u7075\u9636"

    aput-object v1, v0, v5

    const-string v1, "\u4ed9\u9636"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "\u9b54\u9636"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u795e\u9636"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u81f3\u5c0a"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/t4game/DreamShadow;->qualityStrings:[Ljava/lang/String;

    iput-byte v5, p0, Lcom/t4game/DreamShadow;->seImageIndex:B

    new-array v0, v4, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/DreamShadow;->stoneName:[[Ljava/lang/String;

    new-array v0, v4, [[B

    iput-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    new-array v0, v4, [[B

    iput-object v0, p0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    new-array v0, v4, [[I

    iput-object v0, p0, Lcom/t4game/DreamShadow;->stoneExperienceNow:[[I

    new-array v0, v4, [[I

    iput-object v0, p0, Lcom/t4game/DreamShadow;->stoneExperienceOwn:[[I

    new-array v0, v4, [[I

    iput-object v0, p0, Lcom/t4game/DreamShadow;->stoneLevel:[[I

    new-array v0, v4, [[I

    iput-object v0, p0, Lcom/t4game/DreamShadow;->stoneExperienceHas:[[I

    iput-byte v3, p0, Lcom/t4game/DreamShadow;->finalGreatStoneNum:B

    new-array v0, v6, [[[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/DreamShadow;->objLoading:Lcom/t4game/GObjectData;

    return-void
.end method

.method private clearAllDevour()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/DreamShadow;->selectedList:Ljava/util/Vector;

    return-void
.end method

.method private drawPetObj(Ljavax/microedition/lcdui/Graphics;IILcom/t4game/GObjectData;)V
    .locals 11

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lcom/t4game/GObjectData;->isReady()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/t4game/DreamShadow;->objLoading:Lcom/t4game/GObjectData;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->isReady()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    return-void

    :cond_2
    move-object v0, p4

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/GObjectData;->getActionAnimDataIndex(III)B

    move-result v1

    iget-object v2, v0, Lcom/t4game/GObjectData;->animDataOffsets:[S

    aget-short v1, v2, v1

    add-int/lit8 v1, v1, 0x2

    iget-object v2, v0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v2, v2, Lcom/t4game/GUser;->nowFrame:B

    if-gez v2, :cond_4

    const/4 v2, 0x0

    :cond_4
    if-lt v2, v1, :cond_a

    rem-int v1, v2, v1

    :goto_1
    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    iget-object v2, v0, Lcom/t4game/GObjectData;->animDatas:[B

    aget-byte v2, v2, v1

    iget-object v3, v0, Lcom/t4game/GObjectData;->objectFrameDataOffsets:[S

    aget-short v3, v3, v2

    iget-object v4, v0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v4, v3

    iget-object v4, v0, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    aget-byte v4, v4, v5

    iget-object v5, v0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v6, v1, 0x1

    aget-byte v7, v5, v6

    and-int/lit8 v5, v7, 0x2

    if-lez v5, :cond_7

    const/4 v5, 0x1

    :goto_2
    and-int/lit8 v6, v7, 0x1

    if-lez v6, :cond_8

    const/4 v6, 0x1

    :goto_3
    if-eqz v5, :cond_5

    neg-int v3, v3

    :cond_5
    if-eqz v6, :cond_6

    neg-int v4, v4

    :cond_6
    and-int/lit8 v7, v7, 0x4

    if-lez v7, :cond_9

    iget-object v7, v0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v8, v1, 0x2

    aget-byte v7, v7, v8

    add-int/2addr v7, p2

    iget-object v8, v0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v9, v1, 0x3

    aget-byte v8, v8, v9

    add-int/2addr v8, p3

    iget-object v9, v0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v10, v1, 0x2

    aget-byte v9, v9, v10

    add-int/2addr v3, v9

    iget-object v3, v0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v1, v1, 0x3

    aget-byte v1, v3, v1

    add-int/2addr v1, v4

    move v4, v8

    move v3, v7

    :goto_4
    const/4 v1, 0x0

    move v8, v1

    :goto_5
    const/4 v1, 0x4

    if-ge v8, v1, :cond_1

    iget-object v1, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, v1, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    invoke-virtual {v0, v1}, Lcom/t4game/GObjectData;->setClip(Lcom/t4game/GMap;)V

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/t4game/GObjectData;->drawClipLayer(Ljavax/microedition/lcdui/Graphics;IIIZZLcom/t4game/GIRenderManager;IB)V

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->resetClip()V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    :cond_9
    move v4, p3

    move v3, p2

    goto :goto_4

    :cond_a
    move v1, v2

    goto :goto_1
.end method

.method private drawScrollBar(Ljavax/microedition/lcdui/Graphics;IIIIII)V
    .locals 6

    const/4 v5, 0x1

    sub-int v0, p5, v5

    div-int/2addr v0, p7

    const v1, 0x7a654a

    invoke-virtual {p1, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    invoke-virtual {p1, p2, p3, p4, p5}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    const/4 v1, -0x1

    if-ne p6, v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    sub-int v2, p7, v5

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p3, 0x1

    mul-int/2addr v1, v0

    add-int/2addr v1, v3

    sub-int v3, p4, v5

    invoke-virtual {p1, v2, v1, v3, v0}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p3, 0x1

    sub-int v4, p5, v5

    rem-int/2addr v4, p7

    add-int/2addr v3, v4

    mul-int/2addr v1, v0

    add-int/2addr v1, v3

    sub-int v3, p4, v5

    invoke-virtual {p1, v2, v1, v3, v0}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto :goto_1

    :cond_1
    move v1, p6

    goto :goto_0
.end method

.method private gatTimeString(J)Ljava/lang/String;
    .locals 9

    const-wide/16 v6, 0x3e8

    const-string v8, "0"

    invoke-static {}, Lcom/t4game/Util;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/t4game/DreamShadow;->lastTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/t4game/DreamShadow;->leftTimeOne:J

    sub-long/2addr v2, v6

    iput-wide v2, p0, Lcom/t4game/DreamShadow;->leftTimeOne:J

    iput-wide v0, p0, Lcom/t4game/DreamShadow;->lastTime:J

    :cond_0
    iget-wide v0, p0, Lcom/t4game/DreamShadow;->lastTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-wide v1, p0, Lcom/t4game/DreamShadow;->leftTimeOne:J

    div-long/2addr v1, v6

    const-wide/16 v3, 0x3c

    div-long/2addr v1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-wide v2, p0, Lcom/t4game/DreamShadow;->leftTimeOne:J

    div-long/2addr v2, v6

    mul-int/lit8 v4, v1, 0x3c

    int-to-long v4, v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xa

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/t4game/DreamShadow;->leftTimeOne:J

    div-long/2addr v3, v6

    mul-int/lit8 v1, v1, 0x3c

    int-to-long v5, v1

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lcom/t4game/DreamShadow;->leftTimeOne:J

    div-long/2addr v2, v6

    mul-int/lit8 v1, v1, 0x3c

    int-to-long v4, v1

    sub-long v1, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method public static getInstance()Lcom/t4game/DreamShadow;
    .locals 1

    sget-object v0, Lcom/t4game/DreamShadow;->dreamShadow:Lcom/t4game/DreamShadow;

    if-nez v0, :cond_0

    new-instance v0, Lcom/t4game/DreamShadow;

    invoke-direct {v0}, Lcom/t4game/DreamShadow;-><init>()V

    sput-object v0, Lcom/t4game/DreamShadow;->dreamShadow:Lcom/t4game/DreamShadow;

    :cond_0
    sget-object v0, Lcom/t4game/DreamShadow;->dreamShadow:Lcom/t4game/DreamShadow;

    return-object v0
.end method

.method private initAttributeDialog()V
    .locals 2

    sget v0, Lcom/t4game/Defaults;->dialogBodyHight:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->totalLineNum:I

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    return-void
.end method

.method private initButterflyDialog()V
    .locals 2

    const-string v0, "/dreamShadow/chun.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/DreamShadow;->bgImage:Ljavax/microedition/lcdui/Image;

    const-string v0, "/dreamShadow/1ci.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/DreamShadow;->buttonImageOne:Ljavax/microedition/lcdui/Image;

    const-string v0, "/dreamShadow/10ci.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/DreamShadow;->buttonImageTen:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/DreamShadow;->buttonImageOne:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonW:I

    const/16 v0, 0x168

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonW:I

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    const/16 v0, 0xe8

    sget v1, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->preSelectedButton:B

    invoke-static {}, Lcom/t4game/Util;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/t4game/DreamShadow;->lastTime:J

    return-void
.end method

.method private initCicadaDialog()V
    .locals 1

    const-string v0, "/dreamShadow/xia.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/DreamShadow;->bgImage:Ljavax/microedition/lcdui/Image;

    const-string v0, "/dreamShadow/chan.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/DreamShadow;->cicadaImage:Ljavax/microedition/lcdui/Image;

    const-string v0, "/dreamShadow/sanshengshi.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    const-string v0, "/dreamShadow/minggongSE.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/DreamShadow;->yuanImage:Ljavax/microedition/lcdui/Image;

    const/16 v0, 0x96

    iput v0, p0, Lcom/t4game/DreamShadow;->leftW:I

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->bagState:B

    invoke-direct {p0}, Lcom/t4game/DreamShadow;->initCicadaDialog_Data()V

    return-void
.end method

.method private initCicadaDialog_Data()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->bagState:B

    if-ne v0, v3, :cond_1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-eqz v0, :cond_0

    iput-byte v2, p0, Lcom/t4game/DreamShadow;->focusBar:B

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->preIndex:B

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    :cond_0
    :goto_0
    iput-byte v2, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    iput-byte v2, p0, Lcom/t4game/DreamShadow;->preIndex:B

    iput-byte v2, p0, Lcom/t4game/DreamShadow;->preQualityIndex:B

    iput-byte v2, p0, Lcom/t4game/DreamShadow;->bagState:B

    invoke-direct {p0}, Lcom/t4game/DreamShadow;->clearAllDevour()V

    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->bagState:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->preQualityIndex:B

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->preIndex:B

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->bagState:B

    if-ne v0, v3, :cond_0

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    sub-int/2addr v0, v3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    if-gez v0, :cond_0

    iput-byte v3, p0, Lcom/t4game/DreamShadow;->focusBar:B

    goto :goto_0

    :cond_2
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iput-byte v2, p0, Lcom/t4game/DreamShadow;->focusBar:B

    goto :goto_0
.end method

.method private initLeavesDialog()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x96

    iput v0, p0, Lcom/t4game/DreamShadow;->leftW:I

    const-string v0, "/dreamShadow/qiu.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/DreamShadow;->bgImage:Ljavax/microedition/lcdui/Image;

    const-string v0, "/dreamShadow/chan.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/DreamShadow;->cicadaImage:Ljavax/microedition/lcdui/Image;

    const-string v0, "/dreamShadow/sanshengshi.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    iput-byte v3, p0, Lcom/t4game/DreamShadow;->index:B

    iget-object v0, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    aget-object v0, v0, v1

    array-length v0, v0

    add-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    aget-object v1, v1, v2

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->totalLineNum:I

    iput-byte v3, p0, Lcom/t4game/DreamShadow;->focusBar:B

    iput-byte v3, p0, Lcom/t4game/DreamShadow;->bagState:B

    iput-byte v3, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    const/4 v0, 0x4

    iput v0, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    iput-byte v3, p0, Lcom/t4game/DreamShadow;->preIndex:B

    return-void
.end method

.method private initSnowDialog()V
    .locals 3

    const/4 v1, 0x0

    const/16 v0, 0xb4

    iput v0, p0, Lcom/t4game/DreamShadow;->leftW:I

    iput-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    iput-byte v1, p0, Lcom/t4game/DreamShadow;->preIndex:B

    const-string v0, "/dreamShadow/dong.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/DreamShadow;->bgImage:Ljavax/microedition/lcdui/Image;

    const-string v0, "/dreamShadow/lq.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/DreamShadow;->lqImage:Ljavax/microedition/lcdui/Image;

    const-string v0, "/dreamShadow/lqUnable.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/DreamShadow;->lqUnableImage:Ljavax/microedition/lcdui/Image;

    const-string v0, "/dreamShadow/lqAlready.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/DreamShadow;->lqAlreadyImage:Ljavax/microedition/lcdui/Image;

    const-string v0, "/dreamShadow/qianshengjinshipng8.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/DreamShadow;->chengHaoImage:Ljavax/microedition/lcdui/Image;

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    const-string v1, "1104"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GObjectData;

    iput-object v0, p0, Lcom/t4game/DreamShadow;->objLoading:Lcom/t4game/GObjectData;

    return-void
.end method

.method private processMagInlay()V
    .locals 3

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x132

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/t4game/DreamShadow;->initCicadaDialog_Data()V

    return-void
.end method

.method private processMag_EXCHANGE()V
    .locals 3

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x27a

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private processMag_Fallen_Snow()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    iget-object v0, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    :cond_0
    iget-object v0, p0, Lcom/t4game/DreamShadow;->num:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/DreamShadow;->num:[B

    array-length v0, v0

    if-eq v0, v1, :cond_2

    :cond_1
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/t4game/DreamShadow;->num:[B

    :cond_2
    iget-object v0, p0, Lcom/t4game/DreamShadow;->name:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/DreamShadow;->name:[Ljava/lang/String;

    array-length v0, v0

    if-eq v0, v1, :cond_4

    :cond_3
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/DreamShadow;->name:[Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/t4game/DreamShadow;->getNum:[S

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/t4game/DreamShadow;->getNum:[S

    array-length v0, v0

    if-eq v0, v1, :cond_6

    :cond_5
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/t4game/DreamShadow;->getNum:[S

    :cond_6
    iget-object v0, p0, Lcom/t4game/DreamShadow;->canGet:[B

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/t4game/DreamShadow;->canGet:[B

    array-length v0, v0

    if-eq v0, v1, :cond_8

    :cond_7
    new-array v0, v1, [B

    iput-object v0, p0, Lcom/t4game/DreamShadow;->canGet:[B

    :cond_8
    move v2, v6

    :goto_0
    if-ge v2, v1, :cond_b

    iget-object v0, p0, Lcom/t4game/DreamShadow;->num:[B

    iget-object v3, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    aput-byte v3, v0, v2

    iget-object v0, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    int-to-short v0, v0

    iget-object v3, p0, Lcom/t4game/DreamShadow;->name:[Ljava/lang/String;

    iget-object v4, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v3

    if-ne v0, v7, :cond_9

    iget-object v4, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GImageData;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/t4game/DreamShadow;->getNum:[S

    iget-object v3, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v3

    aput-short v3, v0, v2

    iget-object v0, p0, Lcom/t4game/DreamShadow;->canGet:[B

    iget-object v3, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    aput-byte v3, v0, v2

    add-int/lit8 v0, v2, 0x1

    int-to-byte v0, v0

    move v2, v0

    goto :goto_0

    :cond_9
    if-nez v0, :cond_a

    iget-object v4, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GObjectData;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_a
    new-instance v0, Lcom/t4game/GPNGGroupData;

    invoke-direct {v0}, Lcom/t4game/GPNGGroupData;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/t4game/GPNGGroupData;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    const/4 v4, 0x3

    new-array v5, v7, [S

    aput-short v3, v5, v6

    invoke-virtual {v0, v4, v5, v7}, Lcom/t4game/GameWorld;->getGoodsIcon(B[SZ)V

    goto :goto_1

    :cond_b
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/t4game/DreamShadow;->setDialogId(B)V

    return-void
.end method

.method private processMag_GREAT_STONE_DETAIL_MSG()V
    .locals 9

    const/4 v8, 0x0

    const-string v7, "~"

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u540d\u79f0\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "~"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    iget-object v2, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u54c1\u8d28\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/t4game/DreamShadow;->qualityStrings:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "~"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7b49\u7ea7\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u7ea7~"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f53\u524d\u7ecf\u9a8c\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "~"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getBoolean()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "~"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u81ea\u8eab\u7ecf\u9a8c\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "~"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "\u5f53\u524d\u5c5e\u6027\u63d0\u5347\uff1a~"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v0, v4

    int-to-byte v0, v0

    move v4, v8

    :goto_0
    if-ge v4, v3, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v6}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "~"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    goto :goto_0

    :cond_0
    const-string v3, "\u4e0b\u4e00\u7ea7\u5c5e\u6027\u63d0\u5347\uff1a~"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v0, v4

    int-to-byte v0, v0

    move v4, v8

    :goto_1
    if-ge v4, v3, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v6}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "~"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-le v2, v3, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e09\u751f\u77f3\u7f18\uff1a\u4e0e"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u540c\u65f6\u9576\u5d4c\u6fc0\u6d3b\u7f18\u6548\u679c~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iget-object v2, p0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    array-length v2, v2

    if-eq v2, v0, :cond_3

    :cond_2
    new-array v2, v0, [Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    :cond_3
    move v2, v8

    move v3, v8

    :goto_3
    if-ge v2, v0, :cond_5

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x7e

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    sub-int v7, v4, v7

    invoke-virtual {v6, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    move v3, v4

    goto :goto_3

    :cond_4
    const-string v2, "\u4e09\u751f\u77f3\u7f18\uff1a\u9b54\u9636\u54c1\u8d28\u4ee5\u4e0a\u624d\u6709\u53ef\u80fd\u89e6\u53d1\u4e09\u751f\u77f3\u7f18~"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/t4game/DreamShadow;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    const/16 v1, -0x2a

    if-eq v0, v1, :cond_6

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gs:Lcom/t4game/GameScreen;

    const/16 v1, 0x22

    iput-byte v1, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    invoke-direct {p0}, Lcom/t4game/DreamShadow;->initAttributeDialog()V

    :goto_4
    return-void

    :cond_6
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/t4game/DreamShadow;->setDialogId(B)V

    goto :goto_4
.end method

.method private processMsgButterfly()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x276

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x6

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->getStoneName:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->getStoneName:[Ljava/lang/String;

    array-length v2, v2

    if-eq v2, v1, :cond_2

    :cond_1
    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/DreamShadow;->getStoneName:[Ljava/lang/String;

    :cond_2
    iget-object v2, p0, Lcom/t4game/DreamShadow;->getStoneType:[B

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/t4game/DreamShadow;->getStoneType:[B

    array-length v2, v2

    if-eq v2, v1, :cond_4

    :cond_3
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/t4game/DreamShadow;->getStoneType:[B

    :cond_4
    iget-object v2, p0, Lcom/t4game/DreamShadow;->getStoneQuality:[B

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/t4game/DreamShadow;->getStoneQuality:[B

    array-length v2, v2

    if-eq v2, v1, :cond_6

    :cond_5
    new-array v2, v1, [B

    iput-object v2, p0, Lcom/t4game/DreamShadow;->getStoneQuality:[B

    :cond_6
    iget-object v2, p0, Lcom/t4game/DreamShadow;->getStoneLevel:[I

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/t4game/DreamShadow;->getStoneLevel:[I

    array-length v2, v2

    if-eq v2, v1, :cond_8

    :cond_7
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/t4game/DreamShadow;->getStoneLevel:[I

    :cond_8
    iget-object v2, p0, Lcom/t4game/DreamShadow;->getStoneExperienceNow:[I

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/t4game/DreamShadow;->getStoneExperienceNow:[I

    array-length v2, v2

    if-eq v2, v1, :cond_a

    :cond_9
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/t4game/DreamShadow;->getStoneExperienceNow:[I

    :cond_a
    iget-object v2, p0, Lcom/t4game/DreamShadow;->getStoneExperienceOwn:[I

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/t4game/DreamShadow;->getStoneExperienceOwn:[I

    array-length v2, v2

    if-eq v2, v1, :cond_c

    :cond_b
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/t4game/DreamShadow;->getStoneExperienceOwn:[I

    :cond_c
    iget-object v2, p0, Lcom/t4game/DreamShadow;->getStoneExperienceHas:[I

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/t4game/DreamShadow;->getStoneExperienceHas:[I

    array-length v2, v2

    if-eq v2, v1, :cond_e

    :cond_d
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/t4game/DreamShadow;->getStoneExperienceHas:[I

    :cond_e
    move v2, v5

    :goto_1
    if-ge v2, v1, :cond_f

    iget-object v3, p0, Lcom/t4game/DreamShadow;->getStoneName:[Ljava/lang/String;

    iget-object v4, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/t4game/DreamShadow;->getStoneType:[B

    iget-object v4, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v4

    aput-byte v4, v3, v2

    iget-object v3, p0, Lcom/t4game/DreamShadow;->getStoneQuality:[B

    iget-object v4, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v4

    aput-byte v4, v3, v2

    iget-object v3, p0, Lcom/t4game/DreamShadow;->getStoneQuality:[B

    aget-byte v3, v3, v2

    aget-byte v4, v0, v3

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    iget-object v3, p0, Lcom/t4game/DreamShadow;->getStoneLevel:[I

    iget-object v4, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v4

    aput v4, v3, v2

    iget-object v3, p0, Lcom/t4game/DreamShadow;->getStoneExperienceNow:[I

    iget-object v4, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v4

    aput v4, v3, v2

    iget-object v3, p0, Lcom/t4game/DreamShadow;->getStoneExperienceOwn:[I

    iget-object v4, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v4

    aput v4, v3, v2

    iget-object v3, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    iget-object v3, p0, Lcom/t4game/DreamShadow;->getStoneExperienceHas:[I

    iget-object v4, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v4

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_1

    :cond_f
    iget-object v0, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->leftTimesOne:B

    iget-object v0, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/t4game/DreamShadow;->leftTimeOne:J

    iget-object v0, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/DreamShadow;->timesTen:I

    iget-object v0, p0, Lcom/t4game/DreamShadow;->awardStrings:[Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/t4game/DreamShadow;->awardStrings:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->preSelectedButton:B

    goto/16 :goto_0
.end method

.method private processMsgIntoButterflyDialog()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->leftTimesOne:B

    iget-object v0, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/t4game/DreamShadow;->leftTimeOne:J

    iget-object v0, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/DreamShadow;->timesTen:I

    iget-object v0, p0, Lcom/t4game/DreamShadow;->awardStrings:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/t4game/DreamShadow;->awardStrings:[Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-virtual {p0, v3}, Lcom/t4game/DreamShadow;->setDialogId(B)V

    return-void
.end method

.method private processMsgUpdateBag()V
    .locals 8

    const/4 v4, -0x1

    const/16 v2, 0x8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/DreamShadow;->hasYuan:[Z

    if-nez v0, :cond_1

    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/t4game/DreamShadow;->hasYuan:[Z

    :cond_1
    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneName:[[Ljava/lang/String;

    aget-object v0, v0, v7

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneName:[[Ljava/lang/String;

    aget-object v0, v0, v7

    array-length v0, v0

    if-eq v0, v2, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneName:[[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, v7

    :cond_3
    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    aget-object v0, v0, v7

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    aget-object v0, v0, v7

    array-length v0, v0

    if-eq v0, v2, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    new-array v1, v2, [B

    aput-object v1, v0, v7

    :cond_5
    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    aget-object v0, v0, v7

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    aget-object v0, v0, v7

    array-length v0, v0

    if-eq v0, v2, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    new-array v1, v2, [B

    aput-object v1, v0, v7

    :cond_7
    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneLevel:[[I

    aget-object v0, v0, v7

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneLevel:[[I

    aget-object v0, v0, v7

    array-length v0, v0

    if-eq v0, v2, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneLevel:[[I

    new-array v1, v2, [I

    aput-object v1, v0, v7

    :cond_9
    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneExperienceNow:[[I

    aget-object v0, v0, v7

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneExperienceNow:[[I

    aget-object v0, v0, v7

    array-length v0, v0

    if-eq v0, v2, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneExperienceNow:[[I

    new-array v1, v2, [I

    aput-object v1, v0, v7

    :cond_b
    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneExperienceOwn:[[I

    aget-object v0, v0, v7

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneExperienceOwn:[[I

    aget-object v0, v0, v7

    array-length v0, v0

    if-eq v0, v2, :cond_d

    :cond_c
    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneExperienceOwn:[[I

    new-array v1, v2, [I

    aput-object v1, v0, v7

    :cond_d
    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneExperienceHas:[[I

    aget-object v0, v0, v7

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneExperienceHas:[[I

    aget-object v0, v0, v7

    array-length v0, v0

    if-eq v0, v2, :cond_f

    :cond_e
    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneExperienceHas:[[I

    new-array v1, v2, [I

    aput-object v1, v0, v7

    :cond_f
    iget-object v0, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    move v1, v7

    :goto_1
    if-ge v1, v0, :cond_11

    iget-object v2, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_10

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneName:[[Ljava/lang/String;

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    aput-byte v3, v2, v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    aput-byte v3, v2, v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneLevel:[[I

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneExperienceNow:[[I

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneExperienceOwn:[[I

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->hasYuan:[Z

    iget-object v3, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getBoolean()Z

    move-result v3

    aput-boolean v3, v2, v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneExperienceHas:[[I

    aget-object v2, v2, v7

    iget-object v3, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v3

    aput v3, v2, v1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_1

    :cond_10
    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneName:[[Ljava/lang/String;

    aget-object v2, v2, v7

    const-string v3, ""

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    aget-object v2, v2, v7

    aput-byte v4, v2, v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    aget-object v2, v2, v7

    aput-byte v4, v2, v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneLevel:[[I

    aget-object v2, v2, v7

    aput v4, v2, v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneExperienceNow:[[I

    aget-object v2, v2, v7

    aput v7, v2, v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneExperienceOwn:[[I

    aget-object v2, v2, v7

    aput v7, v2, v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->hasYuan:[Z

    aput-boolean v7, v2, v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneExperienceHas:[[I

    aget-object v2, v2, v7

    aput v7, v2, v1

    goto :goto_2

    :cond_11
    iget-object v0, p0, Lcom/t4game/DreamShadow;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    const/16 v1, -0x2a

    if-eq v0, v1, :cond_12

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gs:Lcom/t4game/GameScreen;

    const/16 v1, 0x21

    iput-byte v1, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    invoke-direct {p0}, Lcom/t4game/DreamShadow;->initCicadaDialog()V

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    move v1, v7

    :goto_3
    if-ge v1, v0, :cond_22

    iget-object v2, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    iget-object v3, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    iget-object v4, p0, Lcom/t4game/DreamShadow;->stoneName:[[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/t4game/DreamShadow;->stoneName:[[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    array-length v4, v4

    if-eq v4, v3, :cond_14

    :cond_13
    iget-object v4, p0, Lcom/t4game/DreamShadow;->stoneName:[[Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    new-array v6, v3, [Ljava/lang/String;

    aput-object v6, v4, v5

    :cond_14
    iget-object v4, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_15

    iget-object v4, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    array-length v4, v4

    if-eq v4, v3, :cond_16

    :cond_15
    iget-object v4, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    add-int/lit8 v5, v2, 0x1

    new-array v6, v3, [B

    aput-object v6, v4, v5

    :cond_16
    iget-object v4, p0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_17

    iget-object v4, p0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    array-length v4, v4

    if-eq v4, v3, :cond_18

    :cond_17
    iget-object v4, p0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    add-int/lit8 v5, v2, 0x1

    new-array v6, v3, [B

    aput-object v6, v4, v5

    :cond_18
    iget-object v4, p0, Lcom/t4game/DreamShadow;->stoneLevel:[[I

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_19

    iget-object v4, p0, Lcom/t4game/DreamShadow;->stoneLevel:[[I

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    array-length v4, v4

    if-eq v4, v3, :cond_1a

    :cond_19
    iget-object v4, p0, Lcom/t4game/DreamShadow;->stoneLevel:[[I

    add-int/lit8 v5, v2, 0x1

    new-array v6, v3, [I

    aput-object v6, v4, v5

    :cond_1a
    iget-object v4, p0, Lcom/t4game/DreamShadow;->stoneExperienceNow:[[I

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/t4game/DreamShadow;->stoneExperienceNow:[[I

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    array-length v4, v4

    if-eq v4, v3, :cond_1c

    :cond_1b
    iget-object v4, p0, Lcom/t4game/DreamShadow;->stoneExperienceNow:[[I

    add-int/lit8 v5, v2, 0x1

    new-array v6, v3, [I

    aput-object v6, v4, v5

    :cond_1c
    iget-object v4, p0, Lcom/t4game/DreamShadow;->stoneExperienceOwn:[[I

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_1d

    iget-object v4, p0, Lcom/t4game/DreamShadow;->stoneExperienceOwn:[[I

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    array-length v4, v4

    if-eq v4, v3, :cond_1e

    :cond_1d
    iget-object v4, p0, Lcom/t4game/DreamShadow;->stoneExperienceOwn:[[I

    add-int/lit8 v5, v2, 0x1

    new-array v6, v3, [I

    aput-object v6, v4, v5

    :cond_1e
    iget-object v4, p0, Lcom/t4game/DreamShadow;->stoneExperienceHas:[[I

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-eqz v4, :cond_1f

    iget-object v4, p0, Lcom/t4game/DreamShadow;->stoneExperienceHas:[[I

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    array-length v4, v4

    if-eq v4, v3, :cond_20

    :cond_1f
    iget-object v4, p0, Lcom/t4game/DreamShadow;->stoneExperienceHas:[[I

    add-int/lit8 v5, v2, 0x1

    new-array v6, v3, [I

    aput-object v6, v4, v5

    :cond_20
    move v4, v7

    :goto_4
    if-ge v4, v3, :cond_21

    iget-object v5, p0, Lcom/t4game/DreamShadow;->stoneName:[[Ljava/lang/String;

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v6}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    iget-object v5, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v6}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v6

    aput-byte v6, v5, v4

    iget-object v5, p0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v6}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v6

    aput-byte v6, v5, v4

    iget-object v5, p0, Lcom/t4game/DreamShadow;->stoneLevel:[[I

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v6}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v6

    aput v6, v5, v4

    iget-object v5, p0, Lcom/t4game/DreamShadow;->stoneExperienceNow:[[I

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v6}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v6

    aput v6, v5, v4

    iget-object v5, p0, Lcom/t4game/DreamShadow;->stoneExperienceOwn:[[I

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v6}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v6

    aput v6, v5, v4

    iget-object v5, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v5}, Lcom/t4game/IoBuffer;->getBoolean()Z

    iget-object v5, p0, Lcom/t4game/DreamShadow;->stoneExperienceHas:[[I

    add-int/lit8 v6, v2, 0x1

    aget-object v5, v5, v6

    iget-object v6, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v6}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    goto :goto_4

    :cond_21
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto/16 :goto_3

    :cond_22
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/t4game/DreamShadow;->setDialogId(B)V

    goto/16 :goto_0
.end method

.method private processMsg_Devoue()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u5904\u7406==\u5904\u7406\u541e\u566c\u6d88\u606f"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneName:[[Ljava/lang/String;

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneLevel:[[I

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneExperienceNow:[[I

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneExperienceOwn:[[I

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->hasYuan:[Z

    iget-object v2, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getBoolean()Z

    move-result v2

    aput-boolean v2, v1, v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneExperienceHas:[[I

    aget-object v1, v1, v3

    iget-object v2, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v2

    aput v2, v1, v0

    :cond_0
    invoke-direct {p0}, Lcom/t4game/DreamShadow;->clearAllDevour()V

    return-void
.end method

.method private processMsg_FALLEN_LEAVES_VIEW()V
    .locals 10

    const/16 v9, 0x9

    const/4 v8, 0x7

    const/4 v7, 0x6

    const/4 v5, 0x0

    const-string v6, ""

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->finalGreatStoneNum:B

    move v1, v5

    :goto_0
    if-ge v1, v7, :cond_2

    iget-object v0, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    aget-object v0, v0, v1

    array-length v0, v0

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->finalGreatStoneNum:B

    if-eq v0, v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->finalGreatStoneNum:B

    const/4 v3, 0x1

    filled-new-array {v0, v3}, [I

    move-result-object v0

    const-class v3, Ljava/lang/String;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    aput-object v0, v2, v1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    move v1, v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    aget-object v0, v0, v7

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    aget-object v0, v0, v7

    array-length v0, v0

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->finalGreatStoneNum:B

    if-eq v0, v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->finalGreatStoneNum:B

    const/4 v2, 0x2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    aput-object v0, v1, v7

    :cond_4
    move v0, v8

    :goto_1
    if-ge v0, v9, :cond_7

    iget-object v1, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    aget-object v1, v1, v0

    array-length v1, v1

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->finalGreatStoneNum:B

    if-eq v1, v2, :cond_6

    :cond_5
    iget-object v1, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->finalGreatStoneNum:B

    new-array v2, v2, [[Ljava/lang/String;

    aput-object v2, v1, v0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    aget-object v0, v0, v9

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    aget-object v0, v0, v9

    array-length v0, v0

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->finalGreatStoneNum:B

    if-eq v0, v1, :cond_9

    :cond_8
    iget-object v1, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->finalGreatStoneNum:B

    const/4 v2, 0x1

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    aput-object v0, v1, v9

    :cond_9
    move v0, v5

    :goto_2
    iget-byte v1, p0, Lcom/t4game/DreamShadow;->finalGreatStoneNum:B

    if-ge v0, v1, :cond_10

    iget-object v1, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    aget-object v1, v1, v9

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v1, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    aget-object v1, v1, v5

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v1, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v1, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v1, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v1, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v1, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    iget-object v1, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v1, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    aget-object v1, v1, v7

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iget-object v1, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    aget-object v1, v1, v7

    aget-object v1, v1, v0

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    aget-object v2, v2, v8

    aget-object v2, v2, v0

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    aget-object v2, v2, v8

    aget-object v2, v2, v0

    array-length v2, v2

    if-eq v2, v1, :cond_b

    :cond_a
    iget-object v2, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    aget-object v2, v2, v8

    new-array v3, v1, [Ljava/lang/String;

    aput-object v3, v2, v0

    :cond_b
    move v2, v5

    :goto_3
    if-ge v2, v1, :cond_c

    iget-object v3, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    aget-object v3, v3, v8

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_3

    :cond_c
    iget-object v1, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    aget-object v2, v2, v0

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    aget-object v2, v2, v0

    array-length v2, v2

    if-eq v2, v1, :cond_e

    :cond_d
    iget-object v2, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    const/16 v3, 0x8

    aget-object v2, v2, v3

    new-array v3, v1, [Ljava/lang/String;

    aput-object v3, v2, v0

    :cond_e
    move v2, v5

    :goto_4
    if-ge v2, v1, :cond_f

    iget-object v3, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_4

    :cond_f
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto/16 :goto_2

    :cond_10
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/t4game/DreamShadow;->setDialogId(B)V

    return-void
.end method

.method private releaseButterfly()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/DreamShadow;->bgImage:Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/DreamShadow;->buttonImageOne:Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/DreamShadow;->buttonImageTen:Ljavax/microedition/lcdui/Image;

    return-void
.end method

.method private releaseCicada()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/DreamShadow;->bgImage:Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/DreamShadow;->cicadaImage:Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    return-void
.end method

.method private releaseLeaves()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/DreamShadow;->bgImage:Ljavax/microedition/lcdui/Image;

    return-void
.end method

.method private releaseSnow()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/DreamShadow;->bgImage:Ljavax/microedition/lcdui/Image;

    return-void
.end method

.method private sendMessageIntoButterfDialog()Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x275

    iget-object v2, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method private sendMsgInlay(BBB)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p3}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x278

    iget-object v2, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method private sengMsg_FALLEN_LEAVES_VIEW_MSG()Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x279

    iget-object v2, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->dialogId:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/t4game/DreamShadow;->drawMainMenuDialog(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/t4game/DreamShadow;->drawButterfly(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/t4game/DreamShadow;->drawCicada(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/t4game/DreamShadow;->drawLeaves(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/t4game/DreamShadow;->drawSnow(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/t4game/DreamShadow;->drawAttribute(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public drawAttribute(Ljavax/microedition/lcdui/Graphics;)V
    .locals 22

    const-string v6, "\u8be6\u60c5"

    sget v7, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/4 v8, 0x4

    const/16 v9, 0x168

    const/16 v10, 0x104

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/t4game/DraftingUtil;->paintDialog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->selected:B

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/DreamShadow;->totalLineNum:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/DreamShadow;->totalLineNum:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    :cond_0
    sget-object v6, Lcom/t4game/Data;->color:[I

    const/16 v7, 0xe

    aget v6, v6, v7

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v6, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v6, v6, 0x4

    sget v7, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x20

    add-int/lit8 v5, v5, 0x5

    const/16 v7, 0x160

    sget v8, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v8, v8, 0x2

    move-object/from16 v0, p1

    move v1, v6

    move v2, v5

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->selected:B

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/DreamShadow;->totalLineNum:I

    move v6, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-le v5, v6, :cond_5

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->selected:B

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/DreamShadow;->totalLineNum:I

    move v6, v0

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    move-object v6, v0

    array-length v6, v6

    const/16 v7, 0x9

    sub-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    move-object v8, v0

    array-length v8, v8

    const/4 v9, 0x2

    sub-int/2addr v8, v9

    aget-object v7, v7, v8

    const-string v8, "\u4e0b\u4e00\u7ea7\u5c5e\u6027"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-le v7, v8, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    move-object v6, v0

    array-length v6, v6

    const/16 v7, 0x9

    sub-int/2addr v6, v7

    int-to-byte v6, v6

    :cond_1
    const/4 v7, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    move-object v8, v0

    array-length v8, v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    if-ge v5, v8, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    move-object v9, v0

    array-length v9, v9

    const/4 v10, 0x2

    sub-int/2addr v9, v10

    aget-object v8, v8, v9

    const-string v9, "\u4e0b\u4e00\u7ea7\u5c5e\u6027"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v9, -0x1

    if-le v8, v9, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    move-object v8, v0

    array-length v8, v8

    const/4 v9, 0x3

    sub-int/2addr v8, v9

    if-ne v5, v8, :cond_2

    add-int/lit8 v5, v5, 0x1

    :cond_2
    const/4 v8, 0x5

    if-le v5, v8, :cond_6

    add-int/lit8 v8, v6, 0x6

    if-ge v5, v8, :cond_6

    sget-object v8, Lcom/t4game/DreamShadow;->qualityColor:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v8, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0xa

    :goto_2
    const/4 v9, 0x3

    if-le v5, v9, :cond_27

    add-int/lit8 v9, v5, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    move-object v10, v0

    aget-object v10, v10, v9

    const/16 v11, 0x168

    mul-int/lit8 v12, v8, 0x2

    sub-int/2addr v11, v12

    sget-object v12, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v10, v11, v12}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    if-ge v9, v11, :cond_c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    aget-object v11, v10, v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    aget-object v13, v10, v13

    const-string v14, "\uff1a"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, "\uff1a"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget v11, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/2addr v11, v8

    sget v12, Lcom/t4game/Defaults;->lableTop:I

    sget v13, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v13, v7

    add-int/2addr v12, v13

    add-int/lit8 v12, v12, 0x5

    sget v13, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v0, p1

    move-object v1, v9

    move v2, v11

    move v3, v12

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->focusBar:B

    move v9, v0

    if-nez v9, :cond_9

    sget-object v9, Lcom/t4game/DreamShadow;->qualityColor:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    move-object v11, v0

    const/4 v12, 0x0

    aget-object v11, v11, v12

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->index:B

    move v12, v0

    aget-byte v11, v11, v12

    aget v9, v9, v11

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    :cond_3
    :goto_4
    const/4 v9, 0x0

    aget-object v9, v10, v9

    const/4 v11, 0x0

    aget-object v11, v10, v11

    const-string v12, "\uff1a"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    sget v11, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/2addr v8, v11

    sget-object v11, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x0

    aget-object v13, v10, v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    aget-object v10, v10, v15

    const-string v15, "\uff1a"

    invoke-virtual {v10, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v13, v14, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "\uff1a"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v8, v10

    sget v10, Lcom/t4game/Defaults;->lableTop:I

    sget v11, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v11, v7

    add-int/2addr v10, v11

    add-int/lit8 v10, v10, 0x5

    sget v11, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v0, p1

    move-object v1, v9

    move v2, v8

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    add-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    :goto_5
    sget v8, Lcom/t4game/Defaults;->lableTop:I

    sget v9, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v10, v7, 0x1

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x5

    const/16 v9, 0xe8

    if-le v8, v9, :cond_25

    move v5, v7

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    move-object v6, v0

    array-length v6, v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_4

    sget v5, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v5, v5, 0x168

    const/16 v6, 0x8

    sub-int/2addr v5, v6

    const/4 v6, 0x6

    sub-int v7, v5, v6

    const/16 v8, 0x24

    const/16 v9, 0x8

    const/16 v10, 0xc0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->selected:B

    move v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    move-object v5, v0

    array-length v5, v5

    const/4 v6, 0x1

    sub-int v12, v5, v6

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v12}, Lcom/t4game/DreamShadow;->drawScrollBar(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    :cond_4
    return-void

    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    move-object v8, v0

    array-length v8, v8

    const/4 v9, 0x3

    sub-int/2addr v8, v9

    if-le v5, v8, :cond_7

    const/16 v8, 0xa

    const v9, 0xffd100

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto/16 :goto_2

    :cond_7
    add-int/lit8 v8, v6, 0x6

    if-le v5, v8, :cond_8

    shl-int/lit8 v8, v6, 0x1

    add-int/lit8 v8, v8, 0x7

    if-ge v5, v8, :cond_8

    const/high16 v8, 0xff0000

    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v8, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0xa

    goto/16 :goto_2

    :cond_8
    const/16 v8, 0xa

    const v9, 0xffd100

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->focusBar:B

    move v9, v0

    const/4 v11, 0x2

    if-ne v9, v11, :cond_a

    sget-object v9, Lcom/t4game/DreamShadow;->qualityColor:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    move-object v11, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->qualityIndex:B

    move v12, v0

    add-int/lit8 v12, v12, 0x1

    aget-object v11, v11, v12

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->index:B

    move v12, v0

    aget-byte v11, v11, v12

    aget v9, v9, v11

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->focusBar:B

    move v9, v0

    const/4 v11, -0x1

    if-ne v9, v11, :cond_3

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    move v9, v0

    if-nez v9, :cond_b

    sget-object v9, Lcom/t4game/DreamShadow;->qualityColor:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    move-object v11, v0

    const/4 v12, 0x0

    aget-object v11, v11, v12

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->index:B

    move v12, v0

    aget-byte v11, v11, v12

    aget v9, v9, v11

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    move v9, v0

    const/4 v11, 0x2

    if-ne v9, v11, :cond_3

    sget-object v9, Lcom/t4game/DreamShadow;->qualityColor:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    move-object v11, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->qualityIndex:B

    move v12, v0

    add-int/lit8 v12, v12, 0x1

    aget-object v11, v11, v12

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->index:B

    move v12, v0

    aget-byte v11, v11, v12

    aget v9, v9, v11

    move-object/from16 v0, p1

    move v1, v9

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto/16 :goto_4

    :cond_c
    const/4 v9, 0x0

    :goto_7
    array-length v11, v10

    if-ge v9, v11, :cond_d

    sget v11, Lcom/t4game/Defaults;->lableTop:I

    sget v12, Lcom/t4game/Defaults;->sfh:I

    add-int v13, v7, v9

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x5

    sget v12, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v11, v12

    const/16 v12, 0xe8

    if-le v11, v12, :cond_e

    :cond_d
    add-int/2addr v7, v9

    int-to-byte v7, v7

    goto/16 :goto_5

    :cond_e
    aget-object v11, v10, v9

    const-string v12, "\u77f3"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-le v11, v12, :cond_24

    aget-object v11, v10, v9

    const-string v12, "\u4e0e"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-gt v11, v12, :cond_f

    aget-object v11, v10, v9

    const-string v12, "\u540c"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-gt v11, v12, :cond_f

    aget-object v11, v10, v9

    const-string v12, "\u6216"

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    const/4 v12, -0x1

    if-le v11, v12, :cond_24

    :cond_f
    const/4 v11, 0x0

    const/4 v12, -0x1

    aget-object v13, v10, v9

    const-string v14, "\u540c"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const/4 v14, -0x1

    if-le v13, v14, :cond_14

    aget-object v13, v10, v9

    aget-object v14, v10, v9

    const-string v15, "\u4e0e"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    aget-object v15, v10, v9

    const-string v16, "\u540c"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    :goto_8
    aget-object v14, v10, v9

    const-string v15, "\u4e0e"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    const/4 v15, -0x1

    if-le v14, v15, :cond_10

    aget-object v11, v10, v9

    const/4 v14, 0x0

    aget-object v15, v10, v9

    const-string v16, "\u4e0e"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v11, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    sget v14, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/2addr v14, v8

    sget v15, Lcom/t4game/Defaults;->lableTop:I

    sget v16, Lcom/t4game/Defaults;->sfh:I

    add-int v17, v7, v9

    mul-int v16, v16, v17

    add-int v15, v15, v16

    add-int/lit8 v15, v15, 0x5

    sget v16, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v0, p1

    move-object v1, v11

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    sget v11, Lcom/t4game/Defaults;->sfw:I

    aget-object v14, v10, v9

    const-string v15, "\u4e0e"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    mul-int/2addr v11, v14

    :cond_10
    const-string v14, "\u6216"

    invoke-virtual {v13, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-gez v14, :cond_26

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v14

    move v15, v12

    move-object v12, v13

    :goto_9
    if-nez v14, :cond_19

    const/16 v16, 0x0

    add-int/lit8 v17, v14, 0x1

    move-object v0, v12

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    sget v17, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int v17, v17, v8

    sget-object v18, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    const/16 v19, 0x0

    add-int/lit8 v20, v15, 0x1

    move-object v0, v13

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v18

    add-int v17, v17, v18

    sget v18, Lcom/t4game/Defaults;->lableTop:I

    sget v19, Lcom/t4game/Defaults;->sfh:I

    add-int v20, v7, v9

    mul-int v19, v19, v20

    add-int v18, v18, v19

    add-int/lit8 v18, v18, 0x5

    sget v19, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    add-int/lit8 v16, v14, 0x1

    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    add-int/lit8 v14, v14, 0x1

    add-int/2addr v14, v15

    const-string v15, "\u6216"

    invoke-virtual {v12, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    if-gez v15, :cond_18

    const v14, 0xffd100

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const-string v14, "\u6216"

    sget v15, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/2addr v15, v8

    sget-object v16, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    const/16 v17, 0x0

    const/16 v18, 0x6216

    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    move-object v0, v13

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v16

    add-int v15, v15, v16

    sget v16, Lcom/t4game/Defaults;->lableTop:I

    sget v17, Lcom/t4game/Defaults;->sfh:I

    add-int v18, v7, v9

    mul-int v17, v17, v18

    add-int v16, v16, v17

    add-int/lit8 v16, v16, 0x5

    sget v17, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v0, p1

    move-object v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->focusBar:B

    move v14, v0

    if-nez v14, :cond_15

    sget-object v14, Lcom/t4game/DreamShadow;->qualityColor:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    move-object v15, v0

    const/16 v16, 0x0

    aget-object v15, v15, v16

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->index:B

    move/from16 v16, v0

    aget-byte v15, v15, v16

    aget v14, v14, v15

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    :cond_11
    :goto_a
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    sget v14, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/2addr v14, v8

    sget-object v15, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    const/16 v16, 0x0

    const/16 v17, 0x6216

    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move-object v0, v13

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    sget v15, Lcom/t4game/Defaults;->lableTop:I

    sget v16, Lcom/t4game/Defaults;->sfh:I

    add-int v17, v7, v9

    mul-int v16, v16, v17

    add-int v15, v15, v16

    add-int/lit8 v15, v15, 0x5

    sget v16, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v0, p1

    move-object v1, v12

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    :cond_12
    :goto_b
    const v12, 0xffd100

    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    aget-object v12, v10, v9

    const-string v14, "\u540c"

    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v14, -0x1

    if-le v12, v14, :cond_13

    aget-object v12, v10, v9

    aget-object v14, v10, v9

    const-string v15, "\u540c"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    sget v14, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/2addr v11, v14

    add-int/2addr v11, v8

    sget-object v14, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v14, v13}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v13

    add-int/2addr v11, v13

    sget v13, Lcom/t4game/Defaults;->lableTop:I

    sget v14, Lcom/t4game/Defaults;->sfh:I

    add-int v15, v7, v9

    mul-int/2addr v14, v15

    add-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x5

    sget v14, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v0, p1

    move-object v1, v12

    move v2, v11

    move v3, v13

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    :cond_13
    :goto_c
    add-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    goto/16 :goto_7

    :cond_14
    aget-object v13, v10, v9

    aget-object v14, v10, v9

    const-string v15, "\u4e0e"

    invoke-virtual {v14, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_8

    :cond_15
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->focusBar:B

    move v14, v0

    const/4 v15, 0x2

    if-ne v14, v15, :cond_16

    sget-object v14, Lcom/t4game/DreamShadow;->qualityColor:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    move-object v15, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->qualityIndex:B

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    aget-object v15, v15, v16

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->index:B

    move/from16 v16, v0

    aget-byte v15, v15, v16

    aget v14, v14, v15

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto/16 :goto_a

    :cond_16
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->focusBar:B

    move v14, v0

    const/4 v15, -0x1

    if-ne v14, v15, :cond_11

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    move v14, v0

    if-nez v14, :cond_17

    sget-object v14, Lcom/t4game/DreamShadow;->qualityColor:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    move-object v15, v0

    const/16 v16, 0x0

    aget-object v15, v15, v16

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->index:B

    move/from16 v16, v0

    aget-byte v15, v15, v16

    aget v14, v14, v15

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto/16 :goto_a

    :cond_17
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    move v14, v0

    const/4 v15, 0x2

    if-ne v14, v15, :cond_11

    sget-object v14, Lcom/t4game/DreamShadow;->qualityColor:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    move-object v15, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->qualityIndex:B

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    aget-object v15, v15, v16

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->index:B

    move/from16 v16, v0

    aget-byte v15, v15, v16

    aget v14, v14, v15

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto/16 :goto_a

    :cond_18
    move/from16 v21, v15

    move v15, v14

    move/from16 v14, v21

    :cond_19
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->focusBar:B

    move/from16 v16, v0

    if-nez v16, :cond_1c

    sget-object v16, Lcom/t4game/DreamShadow;->qualityColor:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->index:B

    move/from16 v18, v0

    aget-byte v17, v17, v18

    aget v16, v16, v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    :cond_1a
    :goto_d
    const/16 v16, 0x0

    move-object v0, v12

    move/from16 v1, v16

    move v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    sget v17, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int v17, v17, v11

    add-int v17, v17, v8

    sget-object v18, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    const/16 v19, 0x0

    add-int/lit8 v20, v15, 0x1

    move-object v0, v13

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v18

    add-int v17, v17, v18

    sget v18, Lcom/t4game/Defaults;->lableTop:I

    sget v19, Lcom/t4game/Defaults;->sfh:I

    add-int v20, v7, v9

    mul-int v19, v19, v20

    add-int v18, v18, v19

    add-int/lit8 v18, v18, 0x5

    sget v19, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move v0, v14

    move/from16 v1, v16

    if-gt v0, v1, :cond_12

    add-int/lit8 v14, v14, 0x1

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    const-string v14, "\u6216"

    invoke-virtual {v12, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-gez v14, :cond_22

    const v14, 0xffd100

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const-string v14, "\u6216"

    sget v15, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/2addr v15, v11

    add-int/2addr v15, v8

    sget-object v16, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    const/16 v17, 0x0

    const/16 v18, 0x6216

    move-object v0, v13

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v18

    move-object v0, v13

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v16

    add-int v15, v15, v16

    sget v16, Lcom/t4game/Defaults;->lableTop:I

    sget v17, Lcom/t4game/Defaults;->sfh:I

    add-int v18, v7, v9

    mul-int v17, v17, v18

    add-int v16, v16, v17

    add-int/lit8 v16, v16, 0x5

    sget v17, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v0, p1

    move-object v1, v14

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->focusBar:B

    move v14, v0

    if-nez v14, :cond_1f

    sget-object v14, Lcom/t4game/DreamShadow;->qualityColor:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    move-object v15, v0

    const/16 v16, 0x0

    aget-object v15, v15, v16

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->index:B

    move/from16 v16, v0

    aget-byte v15, v15, v16

    aget v14, v14, v15

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    :cond_1b
    :goto_e
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    sget v14, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/2addr v14, v11

    add-int/2addr v14, v8

    sget-object v15, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    const/16 v16, 0x0

    const/16 v17, 0x6216

    move-object v0, v13

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v17

    add-int/lit8 v17, v17, 0x1

    move-object v0, v13

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v15

    add-int/2addr v14, v15

    sget v15, Lcom/t4game/Defaults;->lableTop:I

    sget v16, Lcom/t4game/Defaults;->sfh:I

    add-int v17, v7, v9

    mul-int v16, v16, v17

    add-int v15, v15, v16

    add-int/lit8 v15, v15, 0x5

    sget v16, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v0, p1

    move-object v1, v12

    move v2, v14

    move v3, v15

    move/from16 v4, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    goto/16 :goto_b

    :cond_1c
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->focusBar:B

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1d

    sget-object v16, Lcom/t4game/DreamShadow;->qualityColor:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->qualityIndex:B

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    aget-object v17, v17, v18

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->index:B

    move/from16 v18, v0

    aget-byte v17, v17, v18

    aget v16, v16, v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto/16 :goto_d

    :cond_1d
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->focusBar:B

    move/from16 v16, v0

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    move/from16 v16, v0

    if-nez v16, :cond_1e

    sget-object v16, Lcom/t4game/DreamShadow;->qualityColor:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget-object v17, v17, v18

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->index:B

    move/from16 v18, v0

    aget-byte v17, v17, v18

    aget v16, v16, v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto/16 :goto_d

    :cond_1e
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1a

    sget-object v16, Lcom/t4game/DreamShadow;->qualityColor:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->qualityIndex:B

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    aget-object v17, v17, v18

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->index:B

    move/from16 v18, v0

    aget-byte v17, v17, v18

    aget v16, v16, v17

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto/16 :goto_d

    :cond_1f
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->focusBar:B

    move v14, v0

    const/4 v15, 0x2

    if-ne v14, v15, :cond_20

    sget-object v14, Lcom/t4game/DreamShadow;->qualityColor:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    move-object v15, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->qualityIndex:B

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    aget-object v15, v15, v16

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->index:B

    move/from16 v16, v0

    aget-byte v15, v15, v16

    aget v14, v14, v15

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto/16 :goto_e

    :cond_20
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->focusBar:B

    move v14, v0

    const/4 v15, -0x1

    if-ne v14, v15, :cond_1b

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    move v14, v0

    if-nez v14, :cond_21

    sget-object v14, Lcom/t4game/DreamShadow;->qualityColor:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    move-object v15, v0

    const/16 v16, 0x0

    aget-object v15, v15, v16

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->index:B

    move/from16 v16, v0

    aget-byte v15, v15, v16

    aget v14, v14, v15

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto/16 :goto_e

    :cond_21
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    move v14, v0

    const/4 v15, 0x2

    if-ne v14, v15, :cond_1b

    sget-object v14, Lcom/t4game/DreamShadow;->qualityColor:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    move-object v15, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->qualityIndex:B

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    aget-object v15, v15, v16

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/DreamShadow;->index:B

    move/from16 v16, v0

    aget-byte v15, v15, v16

    aget v14, v14, v15

    move-object/from16 v0, p1

    move v1, v14

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto/16 :goto_e

    :cond_22
    if-lez v15, :cond_23

    add-int/lit8 v16, v14, 0x1

    add-int v15, v15, v16

    :goto_f
    const v16, 0xffd100

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const-string v16, "\u6216"

    sget v17, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int v17, v17, v11

    add-int v17, v17, v8

    sget-object v18, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    const/16 v19, 0x0

    move-object v0, v13

    move/from16 v1, v19

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v18

    add-int v17, v17, v18

    sget v18, Lcom/t4game/Defaults;->lableTop:I

    sget v19, Lcom/t4game/Defaults;->sfh:I

    add-int v20, v7, v9

    mul-int v19, v19, v20

    add-int v18, v18, v19

    add-int/lit8 v18, v18, 0x5

    sget v19, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    goto/16 :goto_9

    :cond_23
    const-string v15, "\u6216"

    invoke-virtual {v13, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v15

    goto :goto_f

    :cond_24
    aget-object v11, v10, v9

    sget v12, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/2addr v12, v8

    sget v13, Lcom/t4game/Defaults;->lableTop:I

    sget v14, Lcom/t4game/Defaults;->sfh:I

    add-int v15, v7, v9

    mul-int/2addr v14, v15

    add-int/2addr v13, v14

    add-int/lit8 v13, v13, 0x5

    sget v14, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v0, p1

    move-object v1, v11

    move v2, v12

    move v3, v13

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    goto/16 :goto_c

    :cond_25
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_26
    move v15, v12

    move-object v12, v13

    goto/16 :goto_9

    :cond_27
    move v9, v5

    goto/16 :goto_3

    :cond_28
    move v5, v7

    goto/16 :goto_6
.end method

.method public drawButterfly(Ljavax/microedition/lcdui/Graphics;)V
    .locals 14

    const/16 v4, 0x168

    const/4 v9, 0x3

    const/4 v11, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string v1, "\u8776\u821e"

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/4 v3, 0x4

    const/16 v5, 0x104

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintDialog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->bgImage:Ljavax/microedition/lcdui/Image;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget-object v2, p0, Lcom/t4game/DreamShadow;->bgImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    sub-int v2, v4, v2

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0x23

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->buttonImageOne:Ljavax/microedition/lcdui/Image;

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonW:I

    add-int/2addr v0, v1

    sget-object v1, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v3, p0, Lcom/t4game/DreamShadow;->leftTimesOne:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->leftTimesOne:B

    invoke-static {v0, v1, v2, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    invoke-virtual {p1, v12}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const/16 v0, 0x12

    invoke-static {v12, v13, v0}, Ljavax/microedition/lcdui/Font;->getFont(III)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    iget-wide v0, p0, Lcom/t4game/DreamShadow;->leftTimeOne:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\uff08\u514d\u8d39CD:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/t4game/DreamShadow;->leftTimeOne:J

    invoke-direct {p0, v1, v2}, Lcom/t4game/DreamShadow;->gatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\uff09"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonW:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget-object v3, p0, Lcom/t4game/DreamShadow;->buttonImageTen:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/DreamShadow;->buttonImageTen:Ljavax/microedition/lcdui/Image;

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    shl-int/lit8 v1, v1, 0x1

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonW:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    invoke-virtual {p1, v12}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const/16 v0, 0xa

    iget v1, p0, Lcom/t4game/DreamShadow;->timesTen:I

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/t4game/DreamShadow;->awardStrings:[Ljava/lang/String;

    aget-object v0, v0, v12

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    shl-int/lit8 v1, v1, 0x1

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonW:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget-object v3, p0, Lcom/t4game/DreamShadow;->buttonImageTen:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->awardStrings:[Ljava/lang/String;

    aget-object v0, v0, v13

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    shl-int/lit8 v1, v1, 0x1

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonW:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget-object v3, p0, Lcom/t4game/DreamShadow;->buttonImageTen:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    :goto_0
    const/16 v0, 0x12

    invoke-static {v12, v12, v0}, Ljavax/microedition/lcdui/Font;->getFont(III)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    if-nez v0, :cond_4

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->selectedX:I

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iput v0, p0, Lcom/t4game/DreamShadow;->selectedY:I

    :cond_1
    :goto_1
    invoke-virtual {p1, v12}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v0, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v0, v0, 0x4

    if-ge v0, v11, :cond_5

    iget v0, p0, Lcom/t4game/DreamShadow;->selectedX:I

    sub-int v5, v0, v11

    iget v0, p0, Lcom/t4game/DreamShadow;->selectedY:I

    sub-int v6, v0, v11

    iget-object v0, p0, Lcom/t4game/DreamShadow;->buttonImageOne:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    add-int/lit8 v7, v0, 0x4

    iget-object v0, p0, Lcom/t4game/DreamShadow;->buttonImageOne:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    add-int/lit8 v8, v0, 0x4

    move-object v10, p1

    invoke-static/range {v5 .. v10}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/DreamShadow;->selectedX:I

    sub-int v5, v0, v13

    iget v0, p0, Lcom/t4game/DreamShadow;->selectedY:I

    sub-int v6, v0, v13

    iget-object v0, p0, Lcom/t4game/DreamShadow;->buttonImageOne:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    add-int/lit8 v7, v0, 0x2

    iget-object v0, p0, Lcom/t4game/DreamShadow;->buttonImageOne:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    add-int/lit8 v8, v0, 0x2

    move-object v10, p1

    invoke-static/range {v5 .. v10}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_2
    const v0, 0x110f11

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->getStoneType:[B

    if-eqz v0, :cond_2

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->preSelectedButton:B

    if-nez v0, :cond_6

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0xb4

    iput v0, p0, Lcom/t4game/DreamShadow;->greatStoneX:I

    sget v0, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/t4game/DreamShadow;->greatStoneY:I

    sput-byte v13, Lcom/t4game/Defaults;->drawStringBounds:B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/t4game/DreamShadow;->qualityStrings:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/DreamShadow;->getStoneQuality:[B

    aget-byte v2, v2, v12

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->getStoneName:[Ljava/lang/String;

    aget-object v1, v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/t4game/DreamShadow;->greatStoneX:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/t4game/DreamShadow;->greatStoneY:I

    add-int/lit8 v2, v2, 0x1

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    aget v4, v4, v12

    sget-object v5, Lcom/t4game/DreamShadow;->qualityColor:[I

    iget-object v6, p0, Lcom/t4game/DreamShadow;->getStoneQuality:[B

    aget-byte v6, v6, v12

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_2
    const v0, 0xffc700

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const-string v0, "\u5316\u8776\u83b7\u5f97\u968f\u673a\u4e09\u751f\u77f3\u63d0\u5347\u8749\u9e23"

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0xb4

    const/16 v2, 0xec

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/t4game/DreamShadow;->awardStrings:[Ljava/lang/String;

    aget-object v0, v0, v12

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    shl-int/lit8 v1, v1, 0x1

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonW:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget-object v3, p0, Lcom/t4game/DreamShadow;->buttonImageTen:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    goto/16 :goto_0

    :cond_4
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    if-ne v0, v13, :cond_1

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    shl-int/lit8 v0, v0, 0x1

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonW:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->selectedX:I

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iput v0, p0, Lcom/t4game/DreamShadow;->selectedY:I

    goto/16 :goto_1

    :cond_5
    iget v5, p0, Lcom/t4game/DreamShadow;->selectedX:I

    iget v6, p0, Lcom/t4game/DreamShadow;->selectedY:I

    iget-object v0, p0, Lcom/t4game/DreamShadow;->buttonImageOne:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v7

    iget-object v0, p0, Lcom/t4game/DreamShadow;->buttonImageOne:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v8

    move-object v10, p1

    invoke-static/range {v5 .. v10}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/DreamShadow;->selectedX:I

    add-int/lit8 v5, v0, 0x1

    iget v0, p0, Lcom/t4game/DreamShadow;->selectedY:I

    add-int/lit8 v6, v0, 0x1

    iget-object v0, p0, Lcom/t4game/DreamShadow;->buttonImageOne:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    sub-int v7, v0, v11

    iget-object v0, p0, Lcom/t4game/DreamShadow;->buttonImageOne:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    sub-int v8, v0, v11

    move-object v10, p1

    invoke-static/range {v5 .. v10}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_2

    :cond_6
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->preSelectedButton:B

    if-ne v0, v13, :cond_2

    const/16 v0, 0x20

    iput v0, p0, Lcom/t4game/DreamShadow;->greatStoneY:I

    iget v0, p0, Lcom/t4game/DreamShadow;->greatStoneY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->greatStoneY:I

    move v0, v12

    :goto_3
    iget-object v1, p0, Lcom/t4game/DreamShadow;->getStoneType:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_7

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/t4game/DreamShadow;->qualityStrings:[Ljava/lang/String;

    iget-object v6, p0, Lcom/t4game/DreamShadow;->getStoneQuality:[B

    aget-byte v6, v6, v0

    aget-object v5, v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/t4game/DreamShadow;->getStoneName:[Ljava/lang/String;

    aget-object v5, v5, v12

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "x1\uff01"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v4, v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/t4game/DreamShadow;->greatStoneX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->greatStoneY:I

    sget v2, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/t4game/DreamShadow;->greatStoneY:I

    :goto_4
    sput-byte v13, Lcom/t4game/Defaults;->drawStringBounds:B

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/t4game/DreamShadow;->qualityStrings:[Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/DreamShadow;->getStoneQuality:[B

    aget-byte v3, v3, v0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->getStoneName:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, p0, Lcom/t4game/DreamShadow;->greatStoneX:I

    iget v7, p0, Lcom/t4game/DreamShadow;->greatStoneY:I

    const/16 v8, 0x14

    sget-object v1, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    aget v9, v1, v12

    sget-object v1, Lcom/t4game/DreamShadow;->qualityColor:[I

    iget-object v2, p0, Lcom/t4game/DreamShadow;->getStoneQuality:[B

    aget-byte v2, v2, v0

    aget v10, v1, v2

    move-object v11, p1

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto/16 :goto_3

    :cond_7
    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0xb4

    iput v1, p0, Lcom/t4game/DreamShadow;->greatStoneX:I

    goto :goto_4
.end method

.method public drawCicada(Ljavax/microedition/lcdui/Graphics;)V
    .locals 13

    const-string v0, "\u8749\u9e23"

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintDialog_SplitFloating_H2(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->bgImage:Ljavax/microedition/lcdui/Image;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x4

    const/16 v2, 0x24

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    const/16 v0, 0x8

    if-ge v10, v0, :cond_4

    const/4 v0, 0x4

    if-ge v10, v0, :cond_2

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    const/16 v2, 0x8c

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    :goto_1
    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    rem-int/lit8 v1, v10, 0x4

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    invoke-static {v0, v1, p1}, Lcom/t4game/DraftingUtil;->paintIconBlock(IILjavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-byte v0, v0, v10

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/t4game/DreamShadow;->cicadaImage:Ljavax/microedition/lcdui/Image;

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    rem-int/lit8 v2, v10, 0x4

    mul-int/lit8 v2, v2, 0x1d

    add-int/2addr v1, v2

    const/16 v2, 0x18

    iget-object v3, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/16 v3, 0x18

    iget-object v4, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :goto_2
    iget-object v0, p0, Lcom/t4game/DreamShadow;->hasYuan:[Z

    aget-boolean v0, v0, v10

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/t4game/DreamShadow;->lastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->seImageIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->seImageIndex:B

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->seImageIndex:B

    rem-int/lit8 v0, v0, 0x5

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->seImageIndex:B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/t4game/DreamShadow;->lastTime:J

    :cond_0
    iget-object v1, p0, Lcom/t4game/DreamShadow;->yuanImage:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/DreamShadow;->yuanImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->seImageIndex:B

    mul-int/2addr v0, v2

    div-int/lit8 v2, v0, 0x5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/DreamShadow;->yuanImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/t4game/DreamShadow;->yuanImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    rem-int/lit8 v6, v10, 0x4

    mul-int/lit8 v6, v6, 0x1c

    add-int/2addr v0, v6

    const/4 v6, 0x2

    sub-int v6, v0, v6

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/4 v7, 0x2

    sub-int v7, v0, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    :cond_1
    add-int/lit8 v0, v10, 0x1

    int-to-byte v0, v0

    move v10, v0

    goto/16 :goto_0

    :cond_2
    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    const/16 v2, 0x70

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    const/16 v0, 0x74

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    goto/16 :goto_1

    :cond_3
    iget-object v1, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget-byte v2, v2, v10

    mul-int/2addr v0, v2

    div-int/lit8 v2, v0, 0x29

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    rem-int/lit8 v6, v10, 0x4

    mul-int/lit8 v6, v6, 0x1d

    add-int/2addr v0, v6

    const/16 v6, 0x18

    iget-object v7, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x1

    add-int/2addr v0, v6

    add-int/lit8 v6, v0, 0x2

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/16 v7, 0x18

    iget-object v8, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v8}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0x1

    add-int/2addr v0, v7

    add-int/lit8 v7, v0, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    sget-object v0, Lcom/t4game/DreamShadow;->qualityColor:[I

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-byte v1, v1, v10

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    rem-int/lit8 v1, v10, 0x4

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x19

    const/16 v3, 0x19

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    rem-int/lit8 v1, v10, 0x4

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    rem-int/lit8 v1, v10, 0x4

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneLevel:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget v2, v2, v10

    invoke-static {v0, v1, v2, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_2

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x12

    invoke-static {v0, v1, v2}, Ljavax/microedition/lcdui/Font;->getFont(III)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-eqz v0, :cond_5

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    :cond_5
    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v1, :cond_7

    const/4 v1, 0x0

    :goto_3
    aget-object v0, v0, v1

    array-length v0, v0

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    if-le v0, v1, :cond_c

    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v1, :cond_8

    const/4 v1, 0x0

    :goto_4
    aget-object v0, v0, v1

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    aget-byte v0, v0, v1

    const/4 v1, -0x1

    if-le v0, v1, :cond_c

    const/4 v0, 0x1

    sput-byte v0, Lcom/t4game/Defaults;->drawStringBounds:B

    const-string v0, "\u5f53\u524d\u7ecf\u9a8c\uff1a"

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0xe8

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    const v5, 0x600ff

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneExperienceNow:[[I

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v2, :cond_9

    const/4 v2, 0x0

    :goto_5
    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneExperienceOwn:[[I

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v2, :cond_a

    const/4 v2, 0x0

    :goto_6
    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0xe8

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    const v5, 0x600ff

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u81ea\u8eab\u7ecf\u9a8c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneExperienceHas:[[I

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v2, :cond_b

    const/4 v2, 0x0

    :goto_7
    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0xe8

    sget v3, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    const v5, 0x600ff

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_6
    :goto_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-static {v0, v1, v2}, Ljavax/microedition/lcdui/Font;->getFont(III)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    const/16 v0, 0x22

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/16 v0, 0x168

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/DreamShadow;->qualityStrings:[Ljava/lang/String;

    array-length v1, v1

    div-int v4, v0, v1

    const/4 v0, 0x0

    move v12, v0

    :goto_9
    iget-object v0, p0, Lcom/t4game/DreamShadow;->qualityStrings:[Ljava/lang/String;

    array-length v0, v0

    if-ge v12, v0, :cond_15

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    if-ne v0, v12, :cond_14

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x13

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonX:I

    mul-int v3, v12, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :goto_a
    iget-object v0, p0, Lcom/t4game/DreamShadow;->qualityStrings:[Ljava/lang/String;

    aget-object v5, v0, v12

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    mul-int v1, v12, v4

    add-int/2addr v0, v1

    div-int/lit8 v1, v4, 0x2

    add-int/2addr v0, v1

    add-int/lit8 v6, v0, 0x2

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    add-int/lit8 v7, v0, 0x4

    sget v8, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v9, -0x1

    sget-object v0, Lcom/t4game/DreamShadow;->qualityColor:[I

    aget v10, v0, v12

    move-object v11, p1

    invoke-static/range {v5 .. v11}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v12, 0x1

    int-to-byte v0, v0

    move v12, v0

    goto :goto_9

    :cond_7
    iget-byte v1, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_8
    iget-byte v1, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_9
    iget-byte v2, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_a
    iget-byte v2, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_b
    iget-byte v2, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_c
    const/4 v0, 0x1

    sput-byte v0, Lcom/t4game/Defaults;->drawStringBounds:B

    const-string v0, "\u672a\u9576\u5d4c\u4e09\u751f\u77f3"

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0xe8

    sget v3, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    const v5, 0x600ff

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_8

    :cond_d
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v1, :cond_e

    const/4 v1, 0x0

    :goto_b
    aget-object v0, v0, v1

    array-length v0, v0

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    if-le v0, v1, :cond_13

    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v1, :cond_f

    const/4 v1, 0x0

    :goto_c
    aget-object v0, v0, v1

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    aget-byte v0, v0, v1

    const/4 v1, -0x1

    if-le v0, v1, :cond_13

    const/4 v0, 0x1

    sput-byte v0, Lcom/t4game/Defaults;->drawStringBounds:B

    const-string v0, "\u5f53\u524d\u7ecf\u9a8c\uff1a"

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0xe8

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v3, v3, 0x3

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    const v5, 0x600ff

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneExperienceNow:[[I

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v2, :cond_10

    const/4 v2, 0x0

    :goto_d
    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneExperienceOwn:[[I

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v2, :cond_11

    const/4 v2, 0x0

    :goto_e
    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0xe8

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    const v5, 0x600ff

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u81ea\u8eab\u7ecf\u9a8c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneExperienceHas:[[I

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v2, :cond_12

    const/4 v2, 0x0

    :goto_f
    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0xe8

    sget v3, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    const v5, 0x600ff

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_8

    :cond_e
    iget-byte v1, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    :cond_f
    iget-byte v1, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_c

    :cond_10
    iget-byte v2, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_d

    :cond_11
    iget-byte v2, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_12
    iget-byte v2, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_13
    const/4 v0, 0x1

    sput-byte v0, Lcom/t4game/Defaults;->drawStringBounds:B

    const-string v0, "\u672a\u9576\u5d4c\u4e09\u751f\u77f3"

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0xe8

    sget v3, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    const v5, 0x600ff

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_8

    :cond_14
    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x12

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonX:I

    mul-int v3, v12, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    goto/16 :goto_a

    :cond_15
    const/16 v0, 0x168

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x1c

    iput v0, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    add-int/2addr v0, v1

    const/16 v1, 0x168

    iget v2, p0, Lcom/t4game/DreamShadow;->leftW:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    mul-int/lit8 v2, v2, 0x1c

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/16 v0, 0xd4

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x1c

    int-to-byte v10, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v2, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    mul-int/2addr v2, v10

    const/16 v3, 0x32

    if-ge v2, v3, :cond_24

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    iget v3, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    if-le v2, v10, :cond_24

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    iget v2, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v1, v10

    int-to-byte v1, v1

    iget v2, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    int-to-byte v0, v0

    move v11, v1

    move v12, v0

    :goto_10
    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    rem-int v1, v12, v1

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget v2, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int v2, v12, v2

    sub-int/2addr v2, v11

    mul-int/lit8 v2, v2, 0x1c

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1}, Lcom/t4game/DraftingUtil;->paintIconBlock(IILjavax/microedition/lcdui/Graphics;)V

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->bagState:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_19

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->preQualityIndex:B

    if-ne v0, v1, :cond_19

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->preIndex:B

    if-ne v12, v0, :cond_19

    :goto_11
    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    array-length v0, v0

    if-ge v12, v0, :cond_17

    iget-object v1, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    iget-byte v3, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    aget-byte v2, v2, v12

    mul-int/2addr v0, v2

    div-int/lit8 v2, v0, 0x29

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v6, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    rem-int v6, v12, v6

    mul-int/lit8 v6, v6, 0x1c

    add-int/2addr v0, v6

    const/16 v6, 0x18

    iget-object v7, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x1

    add-int/2addr v0, v6

    add-int/lit8 v6, v0, 0x2

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget v7, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int v7, v12, v7

    sub-int/2addr v7, v11

    mul-int/lit8 v7, v7, 0x1c

    add-int/2addr v0, v7

    const/16 v7, 0x18

    iget-object v8, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v8}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0x1

    add-int/2addr v0, v7

    add-int/lit8 v7, v0, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->selectedList:Ljava/util/Vector;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/t4game/DreamShadow;->selectedList:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Byte;

    invoke-direct {v1, v12}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const v0, 0xf6dc00

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    rem-int v1, v12, v1

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget v2, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int v2, v12, v2

    sub-int/2addr v2, v11

    mul-int/lit8 v2, v2, 0x1c

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x19

    const/16 v3, 0x19

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    rem-int v1, v12, v1

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget v2, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int v2, v12, v2

    sub-int/2addr v2, v11

    mul-int/lit8 v2, v2, 0x1c

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0x17

    const/16 v3, 0x17

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    :cond_16
    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    rem-int v1, v12, v1

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget v2, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int v2, v12, v2

    sub-int/2addr v2, v11

    mul-int/lit8 v2, v2, 0x1c

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneLevel:[[I

    iget-byte v3, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    aget v2, v2, v12

    invoke-static {v0, v1, v2, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    :cond_17
    add-int/lit8 v0, v12, 0x1

    iget v1, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int/2addr v0, v1

    sub-int/2addr v0, v11

    const/4 v1, 0x1

    sub-int v1, v10, v1

    if-le v0, v1, :cond_1a

    iget v0, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    mul-int/2addr v0, v10

    const/16 v1, 0x32

    if-ge v0, v1, :cond_18

    const/16 v0, 0x32

    iget v1, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_1b

    const/16 v0, 0x32

    iget v1, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int/2addr v0, v1

    :goto_12
    add-int/lit8 v1, v12, 0x1

    iget v2, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int/2addr v1, v2

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->focusBar:B

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1c

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    :goto_13
    iget v3, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v3, v3, 0x168

    const/16 v4, 0x12

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/16 v5, 0xc8

    sget v6, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v5, v6

    const/16 v6, 0x10

    sub-int/2addr v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_18
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    packed-switch v0, :pswitch_data_0

    :goto_14
    return-void

    :cond_19
    sget-object v0, Lcom/t4game/DreamShadow;->qualityColor:[I

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    rem-int v1, v12, v1

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget v2, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int v2, v12, v2

    sub-int/2addr v2, v11

    mul-int/lit8 v2, v2, 0x1c

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x19

    const/16 v3, 0x19

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    goto/16 :goto_11

    :cond_1a
    add-int/lit8 v0, v12, 0x1

    int-to-byte v0, v0

    move v12, v0

    goto/16 :goto_10

    :cond_1b
    const/16 v0, 0x32

    iget v1, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_1c
    const/4 v2, 0x0

    goto :goto_13

    :pswitch_0
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1e

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    const/16 v2, 0x8c

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    :goto_15
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget v0, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v0, v0, 0x4

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1f

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    rem-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0x18

    const/16 v3, 0x18

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    rem-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x16

    const/16 v3, 0x16

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_16
    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    aget-byte v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1d

    iget-object v0, p0, Lcom/t4game/DreamShadow;->hasYuan:[Z

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gs:Lcom/t4game/GameScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7f18\u00b7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneName:[[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-byte v3, p0, Lcom/t4game/DreamShadow;->index:B

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneLevel:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-byte v3, p0, Lcom/t4game/DreamShadow;->index:B

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7ea7)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget-byte v3, p0, Lcom/t4game/DreamShadow;->index:B

    rem-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x18

    add-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/DreamShadow;->buttonY:I

    add-int/lit8 v3, v3, 0x18

    add-int/lit8 v3, v3, 0x4

    sget-object v4, Lcom/t4game/DreamShadow;->qualityColor:[I

    iget-object v5, p0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-byte v6, p0, Lcom/t4game/DreamShadow;->index:B

    aget-byte v5, v5, v6

    aget v5, v4, v5

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GameScreen;->paintFunctionIntro(Ljava/lang/String;IILjavax/microedition/lcdui/Graphics;I)V

    :cond_1d
    :goto_17
    const/4 v0, 0x1

    const/16 v1, 0x5af

    invoke-static {v0, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintFunctionEndAlert(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_14

    :cond_1e
    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    const/16 v2, 0x70

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    const/16 v0, 0x74

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    goto/16 :goto_15

    :cond_1f
    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    rem-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    rem-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_16

    :cond_20
    iget-object v0, p0, Lcom/t4game/DreamShadow;->gs:Lcom/t4game/GameScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneName:[[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-byte v3, p0, Lcom/t4game/DreamShadow;->index:B

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneLevel:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-byte v3, p0, Lcom/t4game/DreamShadow;->index:B

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7ea7)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget-byte v3, p0, Lcom/t4game/DreamShadow;->index:B

    rem-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x18

    add-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/DreamShadow;->buttonY:I

    add-int/lit8 v3, v3, 0x18

    add-int/lit8 v3, v3, 0x4

    sget-object v4, Lcom/t4game/DreamShadow;->qualityColor:[I

    iget-object v5, p0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-byte v6, p0, Lcom/t4game/DreamShadow;->index:B

    aget-byte v5, v5, v6

    aget v5, v4, v5

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GameScreen;->paintFunctionIntro(Ljava/lang/String;IILjavax/microedition/lcdui/Graphics;I)V

    goto/16 :goto_17

    :pswitch_1
    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    const/16 v0, 0x22

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/16 v0, 0x168

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/DreamShadow;->qualityStrings:[Ljava/lang/String;

    array-length v1, v1

    div-int v6, v0, v1

    const v0, 0xffff00

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget v0, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v0, v0, 0x4

    const/4 v1, 0x2

    if-ge v0, v1, :cond_21

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    mul-int/2addr v1, v6

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    add-int/lit8 v2, v6, 0x2

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v3, v3, 0xa

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    mul-int/2addr v1, v6

    add-int/2addr v0, v1

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    add-int/lit8 v2, v6, 0x4

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v3, v3, 0xc

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_14

    :cond_21
    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    mul-int/2addr v1, v6

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    sub-int v2, v6, v2

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v3, v3, 0x7

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    mul-int/2addr v1, v6

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v2, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v3, v2, 0x9

    const/4 v4, 0x3

    move v2, v6

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_14

    :pswitch_2
    const/16 v0, 0x168

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x1c

    iput v0, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    add-int/2addr v0, v1

    const/16 v1, 0x168

    iget v2, p0, Lcom/t4game/DreamShadow;->leftW:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    mul-int/lit8 v2, v2, 0x1c

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    const v0, 0xffff00

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget v0, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v0, v0, 0x4

    const/4 v1, 0x2

    if-ge v0, v1, :cond_23

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    iget v2, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    rem-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    iget v3, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int/2addr v2, v3

    sub-int/2addr v2, v11

    mul-int/lit8 v2, v2, 0x1c

    add-int/2addr v1, v2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/16 v2, 0x1d

    const/16 v3, 0x1d

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    iget v2, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    rem-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    iget v3, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int/2addr v2, v3

    sub-int/2addr v2, v11

    mul-int/lit8 v2, v2, 0x1c

    add-int/2addr v1, v2

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_18
    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    array-length v0, v0

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    if-le v0, v1, :cond_22

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gs:Lcom/t4game/GameScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneName:[[Ljava/lang/String;

    iget-byte v3, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    iget-byte v3, p0, Lcom/t4game/DreamShadow;->index:B

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneLevel:[[I

    iget-byte v3, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    iget-byte v3, p0, Lcom/t4game/DreamShadow;->index:B

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7ea7)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget-byte v3, p0, Lcom/t4game/DreamShadow;->index:B

    iget v4, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    rem-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x1c

    add-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget-byte v4, p0, Lcom/t4game/DreamShadow;->index:B

    iget v5, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    sub-int/2addr v4, v11

    mul-int/lit8 v4, v4, 0x1c

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x2

    sget-object v4, Lcom/t4game/DreamShadow;->qualityColor:[I

    iget-object v5, p0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    iget-byte v6, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v6, v6, 0x1

    aget-object v5, v5, v6

    iget-byte v6, p0, Lcom/t4game/DreamShadow;->index:B

    aget-byte v5, v5, v6

    aget v5, v4, v5

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GameScreen;->paintFunctionIntro(Ljava/lang/String;IILjavax/microedition/lcdui/Graphics;I)V

    :cond_22
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->bagState:B

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_14

    :pswitch_3
    const/4 v0, 0x1

    const/16 v1, 0x5af

    invoke-static {v0, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintFunctionEndAlert(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_14

    :cond_23
    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    iget v2, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    rem-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    iget v3, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int/2addr v2, v3

    sub-int/2addr v2, v11

    mul-int/lit8 v2, v2, 0x1c

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x19

    const/16 v3, 0x19

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    iget v2, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    rem-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    iget v3, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int/2addr v2, v3

    sub-int/2addr v2, v11

    mul-int/lit8 v2, v2, 0x1c

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0x17

    const/16 v3, 0x17

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_18

    :pswitch_4
    const/4 v0, 0x1

    const/16 v1, 0x5af

    invoke-static {v0, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintFunctionEndAlert(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    const/16 v3, 0xeb

    const/16 v6, 0x64

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x17

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v2, v2, 0x168

    sub-int/2addr v2, v6

    const/16 v4, 0x17

    sub-int/2addr v2, v4

    add-int/lit8 v4, v6, 0x14

    const/16 v5, 0x20

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    const-string v1, "\u541e\u566c"

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x168

    shr-int/lit8 v2, v6, 0x1

    sub-int/2addr v0, v2

    const/16 v2, 0xc

    sub-int v2, v0, v2

    sget v4, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v5, -0x1

    const v6, 0xffffff

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_14

    :pswitch_5
    iget-object v0, p0, Lcom/t4game/DreamShadow;->menuStrings:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->draw(Ljavax/microedition/lcdui/Graphics;)V

    const/4 v0, 0x1

    const/16 v1, 0x5af

    invoke-static {v0, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintFunctionEndAlert(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_14

    :cond_24
    move v11, v1

    move v12, v0

    goto/16 :goto_10

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public drawCicada_ChaKan(Ljavax/microedition/lcdui/Graphics;)V
    .locals 11

    const/16 v0, 0x96

    iput v0, p0, Lcom/t4game/DreamShadow;->leftW:I

    const-string v0, "\u8749\u9e23"

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintDialog_SplitFloating_H2(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->bgImage:Ljavax/microedition/lcdui/Image;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x4

    const/16 v2, 0x24

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    const/16 v0, 0x8

    if-ge v10, v0, :cond_4

    const/4 v0, 0x4

    if-ge v10, v0, :cond_2

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    const/16 v2, 0x8c

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    :goto_1
    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    rem-int/lit8 v1, v10, 0x4

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    invoke-static {v0, v1, p1}, Lcom/t4game/DraftingUtil;->paintIconBlock(IILjavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget-byte v0, v0, v10

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/t4game/DreamShadow;->cicadaImage:Ljavax/microedition/lcdui/Image;

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    rem-int/lit8 v2, v10, 0x4

    mul-int/lit8 v2, v2, 0x1d

    add-int/2addr v1, v2

    const/16 v2, 0x18

    iget-object v3, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/16 v3, 0x18

    iget-object v4, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :goto_2
    iget-object v0, p0, Lcom/t4game/DreamShadow;->hasYuan:[Z

    aget-boolean v0, v0, v10

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/t4game/DreamShadow;->lastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->seImageIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->seImageIndex:B

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->seImageIndex:B

    rem-int/lit8 v0, v0, 0x5

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->seImageIndex:B

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/t4game/DreamShadow;->lastTime:J

    :cond_0
    iget-object v1, p0, Lcom/t4game/DreamShadow;->yuanImage:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/DreamShadow;->yuanImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->seImageIndex:B

    mul-int/2addr v0, v2

    div-int/lit8 v2, v0, 0x5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/DreamShadow;->yuanImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/t4game/DreamShadow;->yuanImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    rem-int/lit8 v6, v10, 0x4

    mul-int/lit8 v6, v6, 0x1c

    add-int/2addr v0, v6

    const/4 v6, 0x2

    sub-int v6, v0, v6

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/4 v7, 0x2

    sub-int v7, v0, v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    :cond_1
    add-int/lit8 v0, v10, 0x1

    int-to-byte v0, v0

    move v10, v0

    goto/16 :goto_0

    :cond_2
    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    const/16 v2, 0x70

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    const/16 v0, 0x74

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    goto/16 :goto_1

    :cond_3
    iget-object v1, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget-byte v2, v2, v10

    mul-int/2addr v0, v2

    div-int/lit8 v2, v0, 0x29

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    rem-int/lit8 v6, v10, 0x4

    mul-int/lit8 v6, v6, 0x1d

    add-int/2addr v0, v6

    const/16 v6, 0x18

    iget-object v7, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x1

    add-int/2addr v0, v6

    add-int/lit8 v6, v0, 0x2

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/16 v7, 0x18

    iget-object v8, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v8}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v8

    sub-int/2addr v7, v8

    shr-int/lit8 v7, v7, 0x1

    add-int/2addr v0, v7

    add-int/lit8 v7, v0, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    sget-object v0, Lcom/t4game/DreamShadow;->qualityColor:[I

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-byte v1, v1, v10

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    rem-int/lit8 v1, v10, 0x4

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x19

    const/16 v3, 0x19

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    rem-int/lit8 v1, v10, 0x4

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/16 v2, 0x1b

    const/16 v3, 0x1b

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    rem-int/lit8 v1, v10, 0x4

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneLevel:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget v2, v2, v10

    invoke-static {v0, v1, v2, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_2

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x12

    invoke-static {v0, v1, v2}, Ljavax/microedition/lcdui/Font;->getFont(III)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-eqz v0, :cond_5

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    :cond_5
    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v1, :cond_7

    const/4 v1, 0x0

    :goto_3
    aget-object v0, v0, v1

    array-length v0, v0

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    if-le v0, v1, :cond_c

    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v1, :cond_8

    const/4 v1, 0x0

    :goto_4
    aget-object v0, v0, v1

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    aget-byte v0, v0, v1

    const/4 v1, -0x1

    if-le v0, v1, :cond_c

    const/4 v0, 0x1

    sput-byte v0, Lcom/t4game/Defaults;->drawStringBounds:B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f53\u524d\u7ecf\u9a8c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneExperienceNow:[[I

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v2, :cond_9

    const/4 v2, 0x0

    :goto_5
    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneExperienceOwn:[[I

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v2, :cond_a

    const/4 v2, 0x0

    :goto_6
    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0xe8

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    const v5, 0x600ff

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u81ea\u8eab\u7ecf\u9a8c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneExperienceHas:[[I

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v2, :cond_b

    const/4 v2, 0x0

    :goto_7
    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0xe8

    sget v3, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    const v5, 0x600ff

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_6
    :goto_8
    const/4 v0, 0x0

    sput-byte v0, Lcom/t4game/Defaults;->drawStringBounds:B

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-static {v0, v1, v2}, Ljavax/microedition/lcdui/Font;->getFont(III)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    packed-switch v0, :pswitch_data_0

    :goto_9
    const/16 v0, 0xd2

    shr-int/lit8 v0, v0, 0x1

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x96

    add-int/lit8 v2, v0, 0x69

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit8 v3, v0, 0x64

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->viewUser:Lcom/t4game/GUser;

    const/4 v4, 0x2

    const/4 v5, 0x3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GUser;->drawOut(Ljavax/microedition/lcdui/Graphics;IIII)V

    return-void

    :cond_7
    iget-byte v1, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_8
    iget-byte v1, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    :cond_9
    iget-byte v2, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    :cond_a
    iget-byte v2, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_6

    :cond_b
    iget-byte v2, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    const/4 v0, 0x1

    sput-byte v0, Lcom/t4game/Defaults;->drawStringBounds:B

    const-string v0, "\u672a\u9576\u5d4c\u4e09\u751f\u77f3"

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0xe8

    sget v3, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    const v5, 0x600ff

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_8

    :cond_d
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v1, :cond_e

    const/4 v1, 0x0

    :goto_a
    aget-object v0, v0, v1

    array-length v0, v0

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    if-le v0, v1, :cond_13

    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v1, :cond_f

    const/4 v1, 0x0

    :goto_b
    aget-object v0, v0, v1

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    aget-byte v0, v0, v1

    const/4 v1, -0x1

    if-le v0, v1, :cond_13

    const/4 v0, 0x1

    sput-byte v0, Lcom/t4game/Defaults;->drawStringBounds:B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f53\u524d\u7ecf\u9a8c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneExperienceNow:[[I

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v2, :cond_10

    const/4 v2, 0x0

    :goto_c
    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneExperienceOwn:[[I

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v2, :cond_11

    const/4 v2, 0x0

    :goto_d
    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0xe8

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    const v5, 0x600ff

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u81ea\u8eab\u7ecf\u9a8c\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneExperienceHas:[[I

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v2, :cond_12

    const/4 v2, 0x0

    :goto_e
    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0xe8

    sget v3, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    const v5, 0x600ff

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_8

    :cond_e
    iget-byte v1, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_a

    :cond_f
    iget-byte v1, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_b

    :cond_10
    iget-byte v2, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_c

    :cond_11
    iget-byte v2, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_12
    iget-byte v2, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_13
    const/4 v0, 0x1

    sput-byte v0, Lcom/t4game/Defaults;->drawStringBounds:B

    const-string v0, "\u672a\u9576\u5d4c\u4e09\u751f\u77f3"

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0xe8

    sget v3, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    const v5, 0x600ff

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_8

    :pswitch_0
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    const/4 v1, 0x4

    if-ge v0, v1, :cond_15

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    const/16 v2, 0x8c

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    :goto_f
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget v0, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v0, v0, 0x4

    const/4 v1, 0x2

    if-ge v0, v1, :cond_16

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    rem-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0x18

    const/16 v3, 0x18

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    rem-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x16

    const/16 v3, 0x16

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_10
    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    aget-byte v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_14

    iget-object v0, p0, Lcom/t4game/DreamShadow;->hasYuan:[Z

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gs:Lcom/t4game/GameScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7f18\u00b7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneName:[[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-byte v3, p0, Lcom/t4game/DreamShadow;->index:B

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneLevel:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-byte v3, p0, Lcom/t4game/DreamShadow;->index:B

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7ea7)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget-byte v3, p0, Lcom/t4game/DreamShadow;->index:B

    rem-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x18

    add-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/DreamShadow;->buttonY:I

    add-int/lit8 v3, v3, 0x18

    add-int/lit8 v3, v3, 0x4

    sget-object v4, Lcom/t4game/DreamShadow;->qualityColor:[I

    iget-object v5, p0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-byte v6, p0, Lcom/t4game/DreamShadow;->index:B

    aget-byte v5, v5, v6

    aget v5, v4, v5

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GameScreen;->paintFunctionIntro(Ljava/lang/String;IILjavax/microedition/lcdui/Graphics;I)V

    :cond_14
    :goto_11
    const/4 v0, 0x1

    const/16 v1, 0x5af

    invoke-static {v0, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintFunctionEndAlert(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_9

    :cond_15
    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    const/16 v2, 0x70

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    const/16 v0, 0x74

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    goto/16 :goto_f

    :cond_16
    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    rem-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/16 v2, 0x1c

    const/16 v3, 0x1c

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    rem-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x1d

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_10

    :cond_17
    iget-object v0, p0, Lcom/t4game/DreamShadow;->gs:Lcom/t4game/GameScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneName:[[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-byte v3, p0, Lcom/t4game/DreamShadow;->index:B

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->stoneLevel:[[I

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-byte v3, p0, Lcom/t4game/DreamShadow;->index:B

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7ea7)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget-byte v3, p0, Lcom/t4game/DreamShadow;->index:B

    rem-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x18

    add-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/DreamShadow;->buttonY:I

    add-int/lit8 v3, v3, 0x18

    add-int/lit8 v3, v3, 0x4

    sget-object v4, Lcom/t4game/DreamShadow;->qualityColor:[I

    iget-object v5, p0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-byte v6, p0, Lcom/t4game/DreamShadow;->index:B

    aget-byte v5, v5, v6

    aget v5, v4, v5

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GameScreen;->paintFunctionIntro(Ljava/lang/String;IILjavax/microedition/lcdui/Graphics;I)V

    goto/16 :goto_11

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public drawLeaves(Ljavax/microedition/lcdui/Graphics;)V
    .locals 14

    const-string v0, "\u843d\u53f6"

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintDialog_SplitFloating_H2(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->bgImage:Ljavax/microedition/lcdui/Image;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x4

    const/16 v2, 0x24

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    const/16 v2, 0x8c

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/16 v0, 0x24

    const/16 v1, 0xc

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->finalGreatStoneNum:B

    const/16 v3, 0x10

    if-le v2, v3, :cond_17

    const/4 v0, 0x6

    iput v0, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    const/16 v0, 0x18

    const/4 v1, 0x0

    move v10, v0

    move v0, v1

    :goto_0
    iget-byte v1, p0, Lcom/t4game/DreamShadow;->finalGreatStoneNum:B

    const/16 v2, 0x1e

    if-le v1, v2, :cond_16

    const/4 v0, 0x7

    iput v0, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    const/4 v0, 0x0

    move v11, v0

    :goto_1
    const/4 v0, 0x0

    move v12, v0

    :goto_2
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->finalGreatStoneNum:B

    if-ge v12, v0, :cond_2

    iget v0, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int v0, v12, v0

    mul-int/2addr v0, v11

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    rem-int v1, v12, v1

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget v2, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int v2, v12, v2

    mul-int/2addr v2, v10

    add-int/2addr v1, v2

    invoke-static {v0, v1, p1}, Lcom/t4game/DraftingUtil;->paintIconBlock(IILjavax/microedition/lcdui/Graphics;)V

    iget-object v1, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    iget-object v2, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget-object v2, v2, v12

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    mul-int/2addr v2, v0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/t4game/DreamShadow;->greatStoneImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    iget v0, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int v0, v12, v0

    mul-int/2addr v0, v11

    iget v6, p0, Lcom/t4game/DreamShadow;->buttonX:I

    add-int/2addr v0, v6

    iget v6, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    rem-int v6, v12, v6

    mul-int/lit8 v6, v6, 0x1c

    add-int/2addr v0, v6

    add-int/lit8 v6, v0, 0x4

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget v7, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int v7, v12, v7

    mul-int/2addr v7, v10

    add-int/2addr v0, v7

    add-int/lit8 v7, v0, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    sget-object v0, Lcom/t4game/DreamShadow;->qualityColor:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget v0, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int v0, v12, v0

    mul-int/2addr v0, v11

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    rem-int v1, v12, v1

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget v2, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int v2, v12, v2

    mul-int/2addr v2, v10

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x19

    const/16 v3, 0x19

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    iget v0, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int v0, v12, v0

    mul-int/2addr v0, v11

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    rem-int v1, v12, v1

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget v2, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int v2, v12, v2

    mul-int/2addr v2, v10

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0x17

    const/16 v3, 0x17

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    if-ne v12, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget v0, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v0, v0, 0x4

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int v0, v12, v0

    mul-int/2addr v0, v11

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    rem-int v1, v12, v1

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget v2, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int v2, v12, v2

    mul-int/2addr v2, v10

    add-int/2addr v1, v2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/16 v2, 0x1c

    const/16 v3, 0x1d

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int v0, v12, v0

    mul-int/2addr v0, v11

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    rem-int v1, v12, v1

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget v2, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int v2, v12, v2

    mul-int/2addr v2, v10

    add-int/2addr v1, v2

    const/16 v2, 0x1a

    const/16 v3, 0x1b

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_0
    :goto_3
    add-int/lit8 v0, v12, 0x1

    int-to-byte v0, v0

    move v12, v0

    goto/16 :goto_2

    :cond_1
    iget v0, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int v0, v12, v0

    mul-int/2addr v0, v11

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    rem-int v1, v12, v1

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget v2, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int v2, v12, v2

    mul-int/2addr v2, v10

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x18

    const/16 v3, 0x1a

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int v0, v12, v0

    mul-int/2addr v0, v11

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    rem-int v1, v12, v1

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget v2, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int v2, v12, v2

    mul-int/2addr v2, v10

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    const/16 v2, 0x16

    const/16 v3, 0x18

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_3

    :cond_2
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u540d\u79f0\uff1a"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u54c1\u8d28\uff1a"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u7b49\u7ea7\uff1a"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u5f53\u524d\u7ecf\u9a8c\uff1a"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u81ea\u8eab\u7ecf\u9a8c\uff1a"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u5151\u6362\u6240\u9700\uff1a"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u672c\u7ea7\u5c5e\u6027\uff1a"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u4e0b\u4e00\u7ea7\u5c5e\u6027\uff1a"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    sget v2, Lcom/t4game/Defaults;->sfh:I

    div-int/2addr v1, v2

    int-to-byte v1, v1

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->preIndex:B

    const/4 v3, 0x1

    sub-int v3, v1, v3

    if-le v2, v3, :cond_3

    const/4 v2, 0x1

    sub-int v2, v1, v2

    int-to-byte v2, v2

    :cond_3
    const/4 v3, 0x0

    iget-byte v4, p0, Lcom/t4game/DreamShadow;->focusBar:B

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    sget-object v4, Lcom/t4game/Data;->color:[I

    const/16 v5, 0xe

    aget v4, v4, v5

    invoke-virtual {p1, v4}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v4, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v5, p0, Lcom/t4game/DreamShadow;->leftW:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x8

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v2, v5

    add-int/lit8 v2, v2, 0x28

    const/16 v5, 0x168

    iget v6, p0, Lcom/t4game/DreamShadow;->leftW:I

    sub-int/2addr v5, v6

    const/16 v6, 0x10

    sub-int/2addr v5, v6

    sget v6, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {p1, v4, v2, v5, v6}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_4
    iget-byte v2, p0, Lcom/t4game/DreamShadow;->preIndex:B

    if-ge v2, v1, :cond_8

    const/4 v1, 0x0

    :goto_4
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    move v2, v3

    :goto_5
    const/4 v3, 0x3

    if-ge v1, v3, :cond_b

    const v3, 0xf6dc00

    invoke-virtual {p1, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    aget-object v3, v0, v1

    sget v4, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v5, p0, Lcom/t4game/DreamShadow;->leftW:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x8

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x28

    sget v6, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v3, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    sget-object v3, Lcom/t4game/DreamShadow;->qualityColor:[I

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-virtual {p1, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    if-nez v1, :cond_9

    iget-object v3, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    iget-byte v4, p0, Lcom/t4game/DreamShadow;->index:B

    aget-object v3, v3, v4

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget v4, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v5, p0, Lcom/t4game/DreamShadow;->leftW:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x8

    sget-object v5, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x28

    sget v6, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v3, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    :cond_5
    :goto_6
    const/4 v3, 0x3

    if-eq v1, v3, :cond_6

    const/4 v3, 0x4

    if-ne v1, v3, :cond_14

    :cond_6
    :goto_7
    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x28

    sget v4, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v5, 0x24

    sub-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v4, v5

    if-le v3, v4, :cond_15

    const/4 v0, 0x1

    sub-int v0, v2, v0

    int-to-byte v0, v0

    :goto_8
    iget v1, p0, Lcom/t4game/DreamShadow;->totalLineNum:I

    if-ge v0, v1, :cond_7

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v1, 0x8

    sub-int v2, v0, v1

    const/16 v3, 0x2a

    const/4 v4, 0x4

    sget v0, Lcom/t4game/Defaults;->dialogBodyHight:I

    iget-object v1, p0, Lcom/t4game/DreamShadow;->bgImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    sub-int v5, v0, v1

    iget-byte v6, p0, Lcom/t4game/DreamShadow;->preIndex:B

    iget v7, p0, Lcom/t4game/DreamShadow;->totalLineNum:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/t4game/DreamShadow;->drawScrollBar(Ljavax/microedition/lcdui/Graphics;IIIIII)V

    :cond_7
    const-string v0, "\u5151\u6362"

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintFunctionEndAlert(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    return-void

    :cond_8
    iget-byte v2, p0, Lcom/t4game/DreamShadow;->preIndex:B

    sub-int v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto/16 :goto_4

    :cond_9
    const/4 v3, 0x1

    if-ne v1, v3, :cond_a

    const-string v3, "\u81f3\u5c0a"

    sget v4, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v5, p0, Lcom/t4game/DreamShadow;->leftW:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x8

    sget-object v5, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x28

    sget v6, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v3, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    goto :goto_6

    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-byte v5, p0, Lcom/t4game/DreamShadow;->index:B

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u7ea7"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v5, p0, Lcom/t4game/DreamShadow;->leftW:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x8

    sget-object v5, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x28

    sget v6, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v3, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    goto/16 :goto_6

    :cond_b
    const/4 v3, 0x5

    if-ne v1, v3, :cond_c

    const v3, 0xf6dc00

    invoke-virtual {p1, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x5

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/t4game/DreamShadow;->qualityStrings:[Ljava/lang/String;

    iget-object v5, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    iget-byte v6, p0, Lcom/t4game/DreamShadow;->index:B

    aget-object v5, v5, v6

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4e09\u751f\u77f3"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v4, v4, v5

    iget-byte v5, p0, Lcom/t4game/DreamShadow;->index:B

    aget-object v4, v4, v5

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v5, p0, Lcom/t4game/DreamShadow;->leftW:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x8

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x28

    sget v6, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v3, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    goto/16 :goto_6

    :cond_c
    const/4 v3, 0x6

    if-ne v1, v3, :cond_f

    const v3, 0xf6dc00

    invoke-virtual {p1, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    aget-object v3, v0, v1

    sget v4, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v5, p0, Lcom/t4game/DreamShadow;->leftW:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x8

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x28

    sget v6, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v3, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    const v3, 0xff00

    invoke-virtual {p1, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const/4 v3, 0x0

    move v13, v3

    move v3, v2

    move v2, v13

    :goto_9
    iget-object v4, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    iget-byte v5, p0, Lcom/t4game/DreamShadow;->index:B

    aget-object v4, v4, v5

    array-length v4, v4

    if-ge v2, v4, :cond_d

    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x28

    const/16 v5, 0xe8

    if-le v4, v5, :cond_e

    :cond_d
    const/4 v2, 0x1

    sub-int v2, v3, v2

    int-to-byte v2, v2

    goto/16 :goto_6

    :cond_e
    iget-object v4, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    iget-byte v5, p0, Lcom/t4game/DreamShadow;->index:B

    aget-object v4, v4, v5

    aget-object v4, v4, v2

    sget v5, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v6, p0, Lcom/t4game/DreamShadow;->leftW:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x8

    sget v6, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v5, v6

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x28

    sget v7, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v4, v5, v6, v7}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_9

    :cond_f
    const/4 v3, 0x7

    if-ne v1, v3, :cond_5

    iget-object v3, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    iget-byte v4, p0, Lcom/t4game/DreamShadow;->index:B

    aget-object v3, v3, v4

    array-length v3, v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_10

    move v0, v2

    goto/16 :goto_8

    :cond_10
    const v3, 0xf6dc00

    invoke-virtual {p1, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    aget-object v3, v0, v1

    sget v4, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v5, p0, Lcom/t4game/DreamShadow;->leftW:I

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x8

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v2

    add-int/lit8 v5, v5, 0x28

    sget v6, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v3, v4, v5, v6}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v2

    add-int/lit8 v3, v3, 0x28

    const/16 v4, 0xe8

    if-le v3, v4, :cond_11

    move v0, v2

    goto/16 :goto_8

    :cond_11
    const/high16 v3, 0xff0000

    invoke-virtual {p1, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const/4 v3, 0x0

    move v13, v3

    move v3, v2

    move v2, v13

    :goto_a
    iget-object v4, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    iget-byte v5, p0, Lcom/t4game/DreamShadow;->index:B

    aget-object v4, v4, v5

    array-length v4, v4

    if-ge v2, v4, :cond_12

    sget v4, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v5, v3, 0x1

    mul-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x28

    const/16 v5, 0xe8

    if-le v4, v5, :cond_13

    :cond_12
    const/4 v2, 0x1

    sub-int v2, v3, v2

    int-to-byte v2, v2

    goto/16 :goto_6

    :cond_13
    iget-object v4, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    add-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    iget-byte v5, p0, Lcom/t4game/DreamShadow;->index:B

    aget-object v4, v4, v5

    aget-object v4, v4, v2

    sget v5, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v6, p0, Lcom/t4game/DreamShadow;->leftW:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x8

    sget v6, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v5, v6

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v6, v3

    add-int/lit8 v6, v6, 0x28

    sget v7, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v4, v5, v6, v7}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_a

    :cond_14
    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto/16 :goto_7

    :cond_15
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto/16 :goto_5

    :cond_16
    move v11, v0

    goto/16 :goto_1

    :cond_17
    move v10, v0

    move v0, v1

    goto/16 :goto_0
.end method

.method public drawMainMenuDialog(Ljavax/microedition/lcdui/Graphics;)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, -0x1

    const/16 v4, 0x168

    const/4 v10, 0x3

    const/4 v9, 0x0

    const-string v1, "\u5e7d\u68a6\u5f71"

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/4 v3, 0x4

    const/16 v5, 0x104

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintDialog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->mainMenu:Ljavax/microedition/lcdui/Image;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget-object v2, p0, Lcom/t4game/DreamShadow;->mainMenu:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    sub-int v2, v4, v2

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit8 v2, v2, 0x3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    const v0, 0xff5f00

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v0, v0, 0x2c

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->selectedMenuIndex:B

    mul-int/lit8 v1, v1, 0x48

    add-int/2addr v0, v1

    const/16 v1, 0x2b

    const/16 v2, 0x38

    const/16 v3, 0x94

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v0, v0, 0x2d

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->selectedMenuIndex:B

    mul-int/lit8 v1, v1, 0x48

    add-int/2addr v0, v1

    const/16 v1, 0x2c

    const/16 v2, 0x36

    const/16 v3, 0x92

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->poetryString:[Ljava/lang/String;

    aget-object v0, v0, v9

    sget-object v1, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v4, v1}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v7

    move v8, v9

    :goto_0
    array-length v0, v7

    if-ge v8, v0, :cond_0

    aget-object v0, v7, v8

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x6

    const/16 v2, 0xe8

    iget-byte v3, p0, Lcom/t4game/DreamShadow;->poetryLineNum:B

    sub-int/2addr v3, v8

    sub-int/2addr v3, v12

    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    sub-int/2addr v2, v10

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    move v4, v11

    move v5, v9

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v8, 0x1

    int-to-byte v0, v0

    move v8, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/DreamShadow;->poetryString:[Ljava/lang/String;

    aget-object v0, v0, v12

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sub-int/2addr v1, v10

    iget v2, p0, Lcom/t4game/DreamShadow;->leftW:I

    add-int/2addr v1, v2

    const/16 v2, 0xe8

    sget v3, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v10

    sget v3, Lcom/t4game/Defaults;->RIGHT_TOP:I

    move v4, v11

    move v5, v9

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public drawSnow(Ljavax/microedition/lcdui/Graphics;)V
    .locals 10

    const-string v0, "\u98d8\u96ea"

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintDialog_SplitFloating_H2(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->bgImage:Ljavax/microedition/lcdui/Image;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/16 v2, 0x168

    iget-object v3, p0, Lcom/t4game/DreamShadow;->bgImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    const/16 v2, 0x23

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/4 v1, 0x7

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v2, v2, 0x3

    const/16 v3, 0x23

    const/16 v4, 0xb4

    const/16 v5, 0xc2

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/4 v1, 0x7

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v3, p0, Lcom/t4game/DreamShadow;->leftW:I

    add-int/2addr v2, v3

    const/16 v3, 0x23

    const/16 v4, 0xb4

    const/16 v5, 0xc2

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    iget-byte v7, p0, Lcom/t4game/DreamShadow;->index:B

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    sget v0, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/4 v0, 0x1

    sput-byte v0, Lcom/t4game/Defaults;->drawStringBounds:B

    iget-object v0, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GBaseData;

    iget-byte v0, v0, Lcom/t4game/GBaseData;->type:B

    sget-byte v1, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u51d1\u9f50"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->num:[B

    aget-byte v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u79cd\u81f3\u5c0a\u4e09\u751f\u77f3\u53ef\u9886\u53d6\u70ab\u9177\u79f0\u53f7\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->name:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    sub-int/2addr v1, v2

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    array-length v0, v8

    if-ge v9, v0, :cond_3

    aget-object v0, v8, v9

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v9

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    sget-object v5, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v9, 0x1

    int-to-byte v0, v0

    move v9, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GBaseData;

    iget-byte v0, v0, Lcom/t4game/GBaseData;->type:B

    sget-byte v1, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u51d1\u9f50"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->num:[B

    aget-byte v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u79cd\u81f3\u5c0a\u4e09\u751f\u77f3\u53ef\u9886\u53d6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->name:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    sub-int/2addr v1, v2

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    move v9, v0

    :goto_1
    array-length v0, v8

    if-ge v9, v0, :cond_3

    aget-object v0, v8, v9

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v9

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    sget-object v5, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v9, 0x1

    int-to-byte v0, v0

    move v9, v0

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u51d1\u9f50"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->num:[B

    aget-byte v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u79cd\u81f3\u5c0a\u4e09\u751f\u77f3\u53ef\u9886\u53d6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->name:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    sub-int/2addr v1, v2

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    move v9, v0

    :goto_2
    array-length v0, v8

    if-ge v9, v0, :cond_2

    aget-object v0, v8, v9

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v9

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    sget-object v5, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v9, 0x1

    int-to-byte v0, v0

    move v9, v0

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    array-length v2, v8

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u793c\u5305\u8be6\u60c5\uff1a\u793c\u5305\u4e2d\u542b\u6709"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->getNum:[S

    aget-short v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e2a\u8be5\u54c1\u8d28\u4e09\u751f\u77f3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    sub-int/2addr v1, v2

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    move v9, v0

    :goto_3
    array-length v0, v8

    if-ge v9, v0, :cond_3

    aget-object v0, v8, v9

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v9

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    sget-object v5, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v9, 0x1

    int-to-byte v0, v0

    move v9, v0

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GBaseData;

    iget-byte v0, v0, Lcom/t4game/GBaseData;->type:B

    sget-byte v1, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    if-ne v0, v1, :cond_9

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GObjectData;

    iget-short v0, v0, Lcom/t4game/GObjectData;->boundH:S

    add-int/lit8 v2, v0, 0x20

    const/16 v3, 0xa8

    iget-object v0, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GObjectData;

    iget-short v0, v0, Lcom/t4game/GObjectData;->boundH:S

    sub-int v0, v3, v0

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GObjectData;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/t4game/DreamShadow;->drawPetObj(Ljavax/microedition/lcdui/Graphics;IILcom/t4game/GObjectData;)V

    :cond_4
    :goto_4
    const/16 v0, 0xc8

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    iget-object v2, p0, Lcom/t4game/DreamShadow;->lqImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x14

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget-object v0, p0, Lcom/t4game/DreamShadow;->canGet:[B

    aget-byte v0, v0, v7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/t4game/DreamShadow;->lqImage:Ljavax/microedition/lcdui/Image;

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_5
    :goto_5
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->preIndex:B

    rem-int/lit8 v1, v7, 0x2

    if-ne v0, v1, :cond_6

    const/high16 v0, 0xff0000

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget v0, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v0, v0, 0x4

    const/4 v1, 0x2

    if-ge v0, v1, :cond_d

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget-object v2, p0, Lcom/t4game/DreamShadow;->lqImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    const/16 v3, 0x1a

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->lqImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    const/16 v3, 0x18

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_6
    :goto_6
    add-int/lit8 v0, v7, 0x1

    int-to-byte v7, v0

    iget-object v0, p0, Lcom/t4game/DreamShadow;->num:[B

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le v7, v0, :cond_e

    :cond_7
    :goto_7
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/t4game/DreamShadow;->num:[B

    array-length v1, v1

    if-ge v0, v1, :cond_8

    iget-object v0, p0, Lcom/t4game/DreamShadow;->num:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    shr-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    shr-int/lit8 v2, v2, 0x1

    sget v3, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v3, v3, 0xb4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const/16 v4, 0x22

    const/16 v5, 0xc4

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GBaseData;

    iget-byte v0, v0, Lcom/t4game/GBaseData;->type:B

    sget-byte v1, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GImageData;

    iget-object v1, v0, Lcom/t4game/GImageData;->img:Ljavax/microedition/lcdui/Image;

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->leftW:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    const/16 v3, 0xa8

    iget-object v0, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GImageData;

    iget v0, v0, Lcom/t4game/GImageData;->img_h:I

    sub-int v0, v3, v0

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x20

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    invoke-virtual {p1, v1, v2, v0, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_4

    :cond_a
    iget-object v0, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GBaseData;

    iget-byte v0, v0, Lcom/t4game/GBaseData;->type:B

    sget-byte v1, Lcom/t4game/GDataManager;->DATATYPE_PNGGROUP:B

    if-ne v0, v1, :cond_4

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v0, v0, 0x5a

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    const/16 v0, 0x84

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    iget-object v1, v0, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    iget-object v0, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GPNGGroupData;

    iget-object v0, v0, Lcom/t4game/GPNGGroupData;->id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Image;

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/4 v3, 0x3

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_4

    :cond_b
    iget-object v0, p0, Lcom/t4game/DreamShadow;->canGet:[B

    aget-byte v0, v0, v7

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/t4game/DreamShadow;->lqUnableImage:Ljavax/microedition/lcdui/Image;

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_5

    :cond_c
    iget-object v0, p0, Lcom/t4game/DreamShadow;->canGet:[B

    aget-byte v0, v0, v7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/t4game/DreamShadow;->lqAlreadyImage:Ljavax/microedition/lcdui/Image;

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_5

    :cond_d
    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/DreamShadow;->lqImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    const/16 v3, 0x1b

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/DreamShadow;->lqImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    const/16 v3, 0x1d

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_6

    :cond_e
    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    sget v0, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/4 v0, 0x1

    sput-byte v0, Lcom/t4game/Defaults;->drawStringBounds:B

    iget-object v0, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GBaseData;

    iget-byte v0, v0, Lcom/t4game/GBaseData;->type:B

    sget-byte v1, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    if-ne v0, v1, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u51d1\u9f50"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->num:[B

    aget-byte v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u79cd\u81f3\u5c0a\u4e09\u751f\u77f3\u53ef\u9886\u53d6\u70ab\u9177\u79f0\u53f7\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->name:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    sub-int/2addr v1, v2

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    move v9, v0

    :goto_8
    array-length v0, v8

    if-ge v9, v0, :cond_12

    aget-object v0, v8, v9

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v9

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    sget-object v5, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v9, 0x1

    int-to-byte v0, v0

    move v9, v0

    goto :goto_8

    :cond_f
    iget-object v0, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GBaseData;

    iget-byte v0, v0, Lcom/t4game/GBaseData;->type:B

    sget-byte v1, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    if-ne v0, v1, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u51d1\u9f50"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->num:[B

    aget-byte v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u79cd\u81f3\u5c0a\u4e09\u751f\u77f3\u53ef\u9886\u53d6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->name:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    sub-int/2addr v1, v2

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    move v9, v0

    :goto_9
    array-length v0, v8

    if-ge v9, v0, :cond_12

    aget-object v0, v8, v9

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v9

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    sget-object v5, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v9, 0x1

    int-to-byte v0, v0

    move v9, v0

    goto :goto_9

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u51d1\u9f50"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->num:[B

    aget-byte v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u79cd\u81f3\u5c0a\u4e09\u751f\u77f3\u53ef\u9886\u53d6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->name:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    sub-int/2addr v1, v2

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    move v9, v0

    :goto_a
    array-length v0, v8

    if-ge v9, v0, :cond_11

    aget-object v0, v8, v9

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v9

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    sget-object v5, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v9, 0x1

    int-to-byte v0, v0

    move v9, v0

    goto :goto_a

    :cond_11
    iget v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    array-length v2, v8

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u793c\u5305\u8be6\u60c5\uff1a\u793c\u5305\u4e2d\u542b\u6709"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->getNum:[S

    aget-short v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e2a\u8be5\u54c1\u8d28\u4e09\u751f\u77f3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    sget v2, Lcom/t4game/Defaults;->sfw:I

    sub-int/2addr v1, v2

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v8

    const/4 v0, 0x0

    move v9, v0

    :goto_b
    array-length v0, v8

    if-ge v9, v0, :cond_12

    aget-object v0, v8, v9

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v9

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v4, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v5, 0x3

    aget v4, v4, v5

    sget-object v5, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v9, 0x1

    int-to-byte v0, v0

    move v9, v0

    goto :goto_b

    :cond_12
    iget-object v0, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GBaseData;

    iget-byte v0, v0, Lcom/t4game/GBaseData;->type:B

    sget-byte v1, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    if-ne v0, v1, :cond_15

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GObjectData;

    iget-short v0, v0, Lcom/t4game/GObjectData;->boundH:S

    add-int/lit8 v2, v0, 0x20

    const/16 v3, 0xa8

    iget-object v0, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GObjectData;

    iget-short v0, v0, Lcom/t4game/GObjectData;->boundH:S

    sub-int v0, v3, v0

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GObjectData;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/t4game/DreamShadow;->drawPetObj(Ljavax/microedition/lcdui/Graphics;IILcom/t4game/GObjectData;)V

    :cond_13
    :goto_c
    const/16 v0, 0xc8

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    iget-object v2, p0, Lcom/t4game/DreamShadow;->lqImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    const/16 v2, 0x14

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget-object v0, p0, Lcom/t4game/DreamShadow;->canGet:[B

    aget-byte v0, v0, v7

    const/4 v1, 0x2

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/t4game/DreamShadow;->lqImage:Ljavax/microedition/lcdui/Image;

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_14
    :goto_d
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->preIndex:B

    rem-int/lit8 v1, v7, 0x2

    if-ne v0, v1, :cond_7

    const/high16 v0, 0xff0000

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget v0, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v0, v0, 0x4

    const/4 v1, 0x2

    if-ge v0, v1, :cond_19

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget-object v2, p0, Lcom/t4game/DreamShadow;->lqImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    const/16 v3, 0x1a

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/t4game/DreamShadow;->lqImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    const/16 v3, 0x18

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_7

    :cond_15
    iget-object v0, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GBaseData;

    iget-byte v0, v0, Lcom/t4game/GBaseData;->type:B

    sget-byte v1, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GImageData;

    iget-object v1, v0, Lcom/t4game/GImageData;->img:Ljavax/microedition/lcdui/Image;

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->leftW:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    iget v2, p0, Lcom/t4game/DreamShadow;->leftW:I

    add-int/2addr v2, v0

    const/16 v3, 0xa8

    iget-object v0, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GImageData;

    iget v0, v0, Lcom/t4game/GImageData;->img_h:I

    sub-int v0, v3, v0

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x20

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    invoke-virtual {p1, v1, v2, v0, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_c

    :cond_16
    iget-object v0, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GBaseData;

    iget-byte v0, v0, Lcom/t4game/GBaseData;->type:B

    sget-byte v1, Lcom/t4game/GDataManager;->DATATYPE_PNGGROUP:B

    if-ne v0, v1, :cond_13

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x10e

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    const/16 v0, 0x84

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    iget-object v1, v0, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    iget-object v0, p0, Lcom/t4game/DreamShadow;->obj:Ljava/util/Vector;

    invoke-virtual {v0, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GPNGGroupData;

    iget-object v0, v0, Lcom/t4game/GPNGGroupData;->id:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Image;

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/4 v3, 0x3

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_c

    :cond_17
    iget-object v0, p0, Lcom/t4game/DreamShadow;->canGet:[B

    aget-byte v0, v0, v7

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/t4game/DreamShadow;->lqUnableImage:Ljavax/microedition/lcdui/Image;

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_d

    :cond_18
    iget-object v0, p0, Lcom/t4game/DreamShadow;->canGet:[B

    aget-byte v0, v0, v7

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/t4game/DreamShadow;->lqAlreadyImage:Ljavax/microedition/lcdui/Image;

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_d

    :cond_19
    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/DreamShadow;->lqImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    const/16 v3, 0x1b

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/DreamShadow;->lqImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    const/16 v3, 0x1d

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_7
.end method

.method public getContext(Lcom/t4game/GameScreen;)V
    .locals 1

    iput-object p1, p0, Lcom/t4game/DreamShadow;->gs:Lcom/t4game/GameScreen;

    iget-object v0, p1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iput-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    iget-object v0, p1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v0, p1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/DreamShadow;->readBuffer:Lcom/t4game/IoBuffer;

    return-void
.end method

.method public getSelectedButton()B
    .locals 1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    return v0
.end method

.method public initDialog()V
    .locals 1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->dialogId:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/t4game/DreamShadow;->initMainMenuDialog()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/t4game/DreamShadow;->initButterflyDialog()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/t4game/DreamShadow;->initCicadaDialog()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/t4game/DreamShadow;->initLeavesDialog()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/t4game/DreamShadow;->initSnowDialog()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/t4game/DreamShadow;->initAttributeDialog()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public initMainMenuDialog()V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x168

    iput v0, p0, Lcom/t4game/DreamShadow;->leftW:I

    iget v0, p0, Lcom/t4game/DreamShadow;->leftW:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->poetryString:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    div-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/t4game/DreamShadow;->poetryLineNum:B

    iget-object v1, p0, Lcom/t4game/DreamShadow;->poetryString:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int v0, v1, v0

    if-lez v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->poetryLineNum:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->poetryLineNum:B

    :cond_0
    const-string v0, "/dreamShadow/shouye.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/DreamShadow;->mainMenu:Ljavax/microedition/lcdui/Image;

    iput-byte v2, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    iput-byte v2, p0, Lcom/t4game/DreamShadow;->preIndex:B

    iput-byte v2, p0, Lcom/t4game/DreamShadow;->preQualityIndex:B

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->preSelectedButton:B

    invoke-direct {p0}, Lcom/t4game/DreamShadow;->clearAllDevour()V

    return-void
.end method

.method public pointerEvent()V
    .locals 1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->dialogId:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/t4game/DreamShadow;->pointerEventOnMenu()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/t4game/DreamShadow;->pointerEventButterfly()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/t4game/DreamShadow;->pointerEventCicada()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/t4game/DreamShadow;->pointerEventLeaves()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/t4game/DreamShadow;->pointerEventSnow()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public pointerEventButterfly()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    iget-object v4, p0, Lcom/t4game/DreamShadow;->buttonImageOne:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/t4game/DreamShadow;->buttonImageOne:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    if-nez v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    invoke-virtual {p0, v6, v0}, Lcom/t4game/DreamShadow;->sendMsgButterfly(BB)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-byte v6, p0, Lcom/t4game/DreamShadow;->selected:B

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    shl-int/lit8 v0, v0, 0x1

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonW:I

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    iget-object v4, p0, Lcom/t4game/DreamShadow;->buttonImageOne:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/t4game/DreamShadow;->buttonImageOne:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    if-ne v0, v7, :cond_3

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    invoke-virtual {p0, v6, v0}, Lcom/t4game/DreamShadow;->sendMsgButterfly(BB)Z

    goto :goto_0

    :cond_3
    iput-byte v7, p0, Lcom/t4game/DreamShadow;->selected:B

    goto :goto_0
.end method

.method public pointerEventCicada()V
    .locals 12

    const/16 v11, 0x168

    const/4 v10, 0x1

    const/16 v9, 0x1c

    const/4 v8, -0x5

    const/4 v7, 0x0

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/DreamShadow;->menuStrings:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->pointerEvent()V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->menuStrings:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p0, v8}, Lcom/t4game/DreamShadow;->pressKeyEventCicada(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    const/4 v0, -0x7

    invoke-virtual {p0, v0}, Lcom/t4game/DreamShadow;->pressKeyEventCicada(I)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x168

    const/16 v1, 0x64

    sub-int/2addr v0, v1

    const/16 v1, 0x18

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    const/16 v2, 0xeb

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    const/16 v4, 0x78

    const/16 v5, 0x20

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x6

    invoke-virtual {p0, v0}, Lcom/t4game/DreamShadow;->pressKeyEventCicada(I)V

    goto :goto_0

    :cond_3
    move v6, v7

    :goto_1
    const/16 v0, 0x8

    if-ge v6, v0, :cond_8

    const/4 v0, 0x4

    if-ge v6, v0, :cond_5

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    const/16 v2, 0x8c

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    :goto_2
    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    rem-int/lit8 v1, v6, 0x4

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    move v4, v9

    move v5, v9

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-eqz v0, :cond_4

    iput-byte v7, p0, Lcom/t4game/DreamShadow;->focusBar:B

    :cond_4
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    if-ne v0, v6, :cond_6

    invoke-virtual {p0, v8}, Lcom/t4game/DreamShadow;->pressKeyEventCicada(I)V

    goto :goto_0

    :cond_5
    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    const/16 v2, 0x70

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    const/16 v0, 0x74

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    goto :goto_2

    :cond_6
    iput-byte v6, p0, Lcom/t4game/DreamShadow;->index:B

    goto :goto_0

    :cond_7
    add-int/lit8 v0, v6, 0x1

    int-to-byte v0, v0

    move v6, v0

    goto :goto_1

    :cond_8
    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    const/16 v0, 0x22

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget v0, p0, Lcom/t4game/DreamShadow;->leftW:I

    sub-int v0, v11, v0

    const/4 v1, 0x4

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/DreamShadow;->qualityStrings:[Ljava/lang/String;

    array-length v1, v1

    div-int v4, v0, v1

    move v6, v7

    :goto_3
    iget-object v0, p0, Lcom/t4game/DreamShadow;->qualityStrings:[Ljava/lang/String;

    array-length v0, v0

    if-ge v6, v0, :cond_c

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    mul-int v1, v6, v4

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    sget v5, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v5, v5, 0xa

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-eq v0, v10, :cond_9

    iput-byte v10, p0, Lcom/t4game/DreamShadow;->focusBar:B

    :cond_9
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    if-ne v0, v6, :cond_a

    invoke-virtual {p0, v8}, Lcom/t4game/DreamShadow;->pressKeyEventCicada(I)V

    goto/16 :goto_0

    :cond_a
    iput-byte v6, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    array-length v1, v1

    sub-int/2addr v1, v10

    if-le v0, v1, :cond_0

    iput-byte v7, p0, Lcom/t4game/DreamShadow;->index:B

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v0, v6, 0x1

    int-to-byte v0, v0

    move v6, v0

    goto :goto_3

    :cond_c
    iget v0, p0, Lcom/t4game/DreamShadow;->leftW:I

    sub-int v0, v11, v0

    sget v1, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x1c

    iput v0, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    sub-int v1, v11, v1

    iget v2, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    mul-int/lit8 v2, v2, 0x1c

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    move v6, v7

    :goto_4
    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    rem-int v1, v6, v1

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget v3, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int v3, v6, v3

    mul-int/lit8 v3, v3, 0x1c

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    move v4, v9

    move v5, v9

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    array-length v0, v0

    if-ge v6, v0, :cond_d

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    :cond_d
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    if-ne v0, v6, :cond_e

    invoke-virtual {p0, v8}, Lcom/t4game/DreamShadow;->pressKeyEventCicada(I)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    array-length v0, v0

    if-ge v6, v0, :cond_0

    iput-byte v6, p0, Lcom/t4game/DreamShadow;->index:B

    goto/16 :goto_0

    :cond_f
    iget v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    add-int/lit8 v1, v6, 0x1

    iget v2, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1c

    const/16 v1, 0xe8

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, v6, 0x1

    int-to-byte v0, v0

    move v6, v0

    goto :goto_4
.end method

.method public pointerEventCicada_ChaKan(I)V
    .locals 8

    const/16 v4, 0x1c

    const/4 v7, 0x0

    move v6, v7

    :goto_0
    const/16 v0, 0x8

    if-ge v6, v0, :cond_5

    const/4 v0, 0x4

    if-ge v6, v0, :cond_2

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    const/16 v2, 0x8c

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    :goto_1
    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    rem-int/lit8 v1, v6, 0x4

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-eqz v0, :cond_0

    iput-byte v7, p0, Lcom/t4game/DreamShadow;->focusBar:B

    :cond_0
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    if-ne v0, v6, :cond_3

    const/4 v0, -0x5

    invoke-virtual {p0, v0, p1}, Lcom/t4game/DreamShadow;->pressKeyEventCicada_ChaKan(II)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    const/16 v2, 0x70

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    const/16 v0, 0x74

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    goto :goto_1

    :cond_3
    iput-byte v6, p0, Lcom/t4game/DreamShadow;->index:B

    goto :goto_2

    :cond_4
    add-int/lit8 v0, v6, 0x1

    int-to-byte v0, v0

    move v6, v0

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerFastViewKey()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x30

    invoke-virtual {p0, v0, p1}, Lcom/t4game/DreamShadow;->pressKeyEventCicada_ChaKan(II)V

    goto :goto_2
.end method

.method public pointerEventLeaves()V
    .locals 9

    const/16 v4, 0x1c

    const/4 v5, 0x0

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    const/16 v2, 0x8c

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    const/16 v0, 0x50

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    const/16 v0, 0x24

    const/16 v1, 0xc

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->finalGreatStoneNum:B

    const/16 v3, 0x10

    if-le v2, v3, :cond_5

    const/4 v0, 0x6

    iput v0, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    const/16 v0, 0x18

    move v6, v0

    move v0, v5

    :goto_0
    iget-byte v1, p0, Lcom/t4game/DreamShadow;->finalGreatStoneNum:B

    const/16 v2, 0x1e

    if-le v1, v2, :cond_4

    const/4 v0, 0x7

    iput v0, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    move v7, v5

    :goto_1
    move v8, v5

    :goto_2
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->finalGreatStoneNum:B

    if-ge v8, v0, :cond_0

    iget v0, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int v0, v8, v0

    mul-int/2addr v0, v7

    iget v1, p0, Lcom/t4game/DreamShadow;->buttonX:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    rem-int v1, v8, v1

    mul-int/lit8 v1, v1, 0x1c

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    iget v3, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    div-int v3, v8, v3

    mul-int/2addr v3, v6

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x5

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->finalGreatStoneNum:B

    if-ge v8, v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    if-ne v0, v8, :cond_3

    const/4 v0, -0x5

    invoke-virtual {p0, v0}, Lcom/t4game/DreamShadow;->pressKeyEventLeaves(I)V

    :cond_1
    :goto_3
    return-void

    :cond_2
    add-int/lit8 v0, v8, 0x1

    int-to-byte v0, v0

    move v8, v0

    goto :goto_2

    :cond_3
    iput-byte v8, p0, Lcom/t4game/DreamShadow;->index:B

    goto :goto_3

    :cond_4
    move v7, v0

    goto :goto_1

    :cond_5
    move v6, v0

    move v0, v1

    goto :goto_0
.end method

.method public pointerEventOnMenu()V
    .locals 8

    const/4 v7, 0x4

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    if-ge v6, v7, :cond_0

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v0, v0, 0x3f

    mul-int/lit8 v1, v6, 0x58

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    const/16 v2, 0x2f

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    const/16 v4, 0x44

    const/16 v5, 0xb4

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-ge v6, v7, :cond_1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->selectedMenuIndex:B

    if-ne v0, v6, :cond_3

    const/4 v0, -0x5

    invoke-virtual {p0, v0}, Lcom/t4game/DreamShadow;->pressKeyEventOnMenu(I)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    add-int/lit8 v0, v6, 0x1

    int-to-byte v0, v0

    move v6, v0

    goto :goto_0

    :cond_3
    iput-byte v6, p0, Lcom/t4game/DreamShadow;->selectedMenuIndex:B

    goto :goto_1
.end method

.method public pointerEventSnow()V
    .locals 8

    const/16 v4, 0x78

    const/16 v5, 0x20

    const/4 v7, 0x1

    const/4 v6, -0x5

    const/16 v0, 0xc8

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    const/16 v2, 0x64

    sub-int/2addr v1, v2

    const/16 v2, 0x14

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->preIndex:B

    if-nez v0, :cond_1

    invoke-virtual {p0, v6}, Lcom/t4game/DreamShadow;->pressKeyEventSnow(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->preIndex:B

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/t4game/DreamShadow;->buttonX:I

    iget v1, p0, Lcom/t4game/DreamShadow;->leftW:I

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget v2, p0, Lcom/t4game/DreamShadow;->buttonY:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->preIndex:B

    if-ne v0, v7, :cond_3

    invoke-virtual {p0, v6}, Lcom/t4game/DreamShadow;->pressKeyEventSnow(I)V

    goto :goto_0

    :cond_3
    iput-byte v7, p0, Lcom/t4game/DreamShadow;->preIndex:B

    goto :goto_0
.end method

.method public pressKeyEvent(I)V
    .locals 1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->dialogId:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/t4game/DreamShadow;->pressKeyEventOnMenu(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/t4game/DreamShadow;->pressKeyEventButterfly(I)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/t4game/DreamShadow;->pressKeyEventCicada(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/t4game/DreamShadow;->pressKeyEventLeaves(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, p1}, Lcom/t4game/DreamShadow;->pressKeyEventSnow(I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0, p1}, Lcom/t4game/DreamShadow;->pressKeyEventAttribute(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public pressKeyEventAttribute(I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    iput-byte v4, p0, Lcom/t4game/DreamShadow;->dialogId:B

    const/16 v0, 0x96

    iput v0, p0, Lcom/t4game/DreamShadow;->leftW:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    if-ne p1, v3, :cond_4

    :cond_2
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    :cond_3
    :goto_1
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    if-gez v0, :cond_6

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    goto :goto_0

    :cond_4
    const/4 v0, -0x4

    if-eq p1, v0, :cond_5

    const/4 v0, -0x2

    if-ne p1, v0, :cond_3

    :cond_5
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    goto :goto_1

    :cond_6
    const/16 v0, 0x5a

    iput v0, p0, Lcom/t4game/DreamShadow;->leftW:I

    iget-object v0, p0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    const/16 v1, 0x168

    iget v2, p0, Lcom/t4game/DreamShadow;->leftW:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x3

    sub-int/2addr v1, v2

    array-length v0, v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v2, v4

    aget-object v1, v1, v2

    const-string v2, "\u4e0b\u4e00\u7ea7\u5c5e\u6027"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-le v1, v3, :cond_7

    add-int/lit8 v0, v0, -0x1

    :cond_7
    iget-byte v1, p0, Lcom/t4game/DreamShadow;->selected:B

    if-le v1, v0, :cond_0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    goto :goto_0
.end method

.method public pressKeyEventAttribute_ChaKan(I)V
    .locals 5

    const/4 v2, 0x1

    const/4 v4, -0x1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_0

    if-ne p1, v4, :cond_3

    :cond_0
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    :cond_1
    :goto_0
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    if-gez v0, :cond_5

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    :cond_2
    :goto_1
    return-void

    :cond_3
    const/4 v0, -0x4

    if-eq p1, v0, :cond_4

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    :cond_4
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    goto :goto_0

    :cond_5
    const/16 v0, 0x5a

    iput v0, p0, Lcom/t4game/DreamShadow;->leftW:I

    iget-object v0, p0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    const/16 v1, 0x168

    iget v2, p0, Lcom/t4game/DreamShadow;->leftW:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x3

    sub-int/2addr v1, v2

    array-length v0, v0

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/DreamShadow;->attribute:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    const-string v2, "\u4e0b\u4e00\u7ea7\u5c5e\u6027"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-le v1, v4, :cond_6

    add-int/lit8 v0, v0, -0x1

    :cond_6
    iget-byte v1, p0, Lcom/t4game/DreamShadow;->selected:B

    if-le v1, v0, :cond_2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    goto :goto_1
.end method

.method public pressKeyEventButterfly(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/t4game/DreamShadow;->setDialogId(B)V

    invoke-direct {p0}, Lcom/t4game/DreamShadow;->releaseButterfly()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x3

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    :cond_2
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    if-gez v0, :cond_0

    iput-byte v1, p0, Lcom/t4game/DreamShadow;->selected:B

    goto :goto_0

    :cond_3
    const/4 v0, -0x4

    if-eq p1, v0, :cond_4

    const/4 v0, -0x2

    if-ne p1, v0, :cond_5

    :cond_4
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    if-le v0, v2, :cond_0

    iput-byte v2, p0, Lcom/t4game/DreamShadow;->selected:B

    goto :goto_0

    :cond_5
    const/4 v0, -0x6

    if-eq p1, v0, :cond_6

    const/4 v0, -0x5

    if-ne p1, v0, :cond_0

    :cond_6
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->selected:B

    invoke-virtual {p0, v1, v0}, Lcom/t4game/DreamShadow;->sendMsgButterfly(BB)Z

    goto :goto_0
.end method

.method public pressKeyEventCicada(I)V
    .locals 7

    const/4 v6, 0x4

    const/4 v2, -0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v0, -0x7

    if-ne p1, v0, :cond_5

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->bagState:B

    if-eqz v0, :cond_2

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->bagState:B

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lcom/t4game/DreamShadow;->clearAllDevour()V

    :cond_0
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    iput-byte v4, p0, Lcom/t4game/DreamShadow;->bagState:B

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->preIndex:B

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-ne v0, v5, :cond_1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->preQualityIndex:B

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-le v0, v2, :cond_4

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    if-ne v0, v5, :cond_3

    iput-byte v4, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4}, Lcom/t4game/DreamShadow;->setDialogId(B)V

    invoke-direct {p0}, Lcom/t4game/DreamShadow;->releaseCicada()V

    goto :goto_0

    :cond_4
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    iput-byte v4, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    goto :goto_0

    :cond_5
    const/4 v0, -0x5

    if-eq p1, v0, :cond_6

    const/4 v0, -0x6

    if-ne p1, v0, :cond_22

    :cond_6
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v0, :cond_b

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    if-ne v0, v5, :cond_7

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "\u9576\u5d4c"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->preIndex:B

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    invoke-direct {p0, v0, v1, v2}, Lcom/t4game/DreamShadow;->sendMsgInlay(BBB)Z

    goto :goto_0

    :cond_7
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->preIndex:B

    iput-byte v2, p0, Lcom/t4game/DreamShadow;->focusBar:B

    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    aget-object v0, v0, v4

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    aget-byte v0, v0, v1

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/t4game/DreamShadow;->menuStrings:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/t4game/DreamShadow;->menuStrings:Lcom/t4game/UI_Menu;

    iget-byte v0, v0, Lcom/t4game/UI_Menu;->leng:B

    if-eq v0, v5, :cond_1

    :cond_8
    new-instance v0, Lcom/t4game/UI_Menu;

    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "\u9576\u5d4c\u4e09\u751f\u77f3"

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/t4game/DreamShadow;->menuStrings:Lcom/t4game/UI_Menu;

    goto :goto_0

    :cond_9
    iget-object v0, p0, Lcom/t4game/DreamShadow;->menuStrings:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/t4game/DreamShadow;->menuStrings:Lcom/t4game/UI_Menu;

    iget-byte v0, v0, Lcom/t4game/UI_Menu;->leng:B

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    :cond_a
    new-instance v0, Lcom/t4game/UI_Menu;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u67e5\u770b\u4e09\u751f\u77f3"

    aput-object v2, v1, v4

    const-string v2, "\u9576\u5d4c\u4e09\u751f\u77f3"

    aput-object v2, v1, v3

    const-string v2, "\u541e\u566c\u4e09\u751f\u77f3"

    aput-object v2, v1, v5

    const/4 v2, 0x3

    const-string v3, "\u541e\u566c\u4f4e\u54c1\u8d28\u4e09\u751f\u77f3"

    aput-object v3, v1, v2

    const-string v2, "\u5378\u4e0b\u4e09\u751f\u77f3"

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/t4game/DreamShadow;->menuStrings:Lcom/t4game/UI_Menu;

    goto/16 :goto_0

    :cond_b
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-ne v0, v2, :cond_17

    iget-object v0, p0, Lcom/t4game/DreamShadow;->menuStrings:Lcom/t4game/UI_Menu;

    iget-byte v0, v0, Lcom/t4game/UI_Menu;->index:B

    if-nez v0, :cond_f

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    aget-object v0, v0, v4

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    aget-byte v0, v0, v1

    if-ne v0, v2, :cond_e

    iput-byte v3, p0, Lcom/t4game/DreamShadow;->focusBar:B

    iput-byte v3, p0, Lcom/t4game/DreamShadow;->bagState:B

    iput-byte v4, p0, Lcom/t4game/DreamShadow;->index:B

    move v0, v3

    :goto_1
    const/4 v1, 0x7

    if-ge v0, v1, :cond_c

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    aget-object v1, v1, v0

    array-length v1, v1

    if-lez v1, :cond_d

    sub-int/2addr v0, v3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/t4game/DreamShadow;->menuStrings:Lcom/t4game/UI_Menu;

    iget-byte v0, v0, Lcom/t4game/UI_Menu;->index:B

    iget-object v1, p0, Lcom/t4game/DreamShadow;->menuStrings:Lcom/t4game/UI_Menu;

    iget-byte v1, v1, Lcom/t4game/UI_Menu;->leng:B

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    goto/16 :goto_0

    :cond_d
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    :cond_e
    invoke-virtual {p0, v2}, Lcom/t4game/DreamShadow;->sendMag_Attribute(I)Z

    goto :goto_2

    :cond_f
    iget-object v0, p0, Lcom/t4game/DreamShadow;->menuStrings:Lcom/t4game/UI_Menu;

    iget-byte v0, v0, Lcom/t4game/UI_Menu;->index:B

    if-ne v0, v3, :cond_12

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    if-nez v0, :cond_11

    iput-byte v5, p0, Lcom/t4game/DreamShadow;->focusBar:B

    iput-byte v3, p0, Lcom/t4game/DreamShadow;->bagState:B

    iput-byte v4, p0, Lcom/t4game/DreamShadow;->index:B

    move v0, v3

    :goto_3
    const/4 v1, 0x7

    if-ge v0, v1, :cond_c

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    aget-object v1, v1, v0

    array-length v1, v1

    if-lez v1, :cond_10

    sub-int/2addr v0, v3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    goto :goto_2

    :cond_10
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_3

    :cond_11
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    if-ne v0, v5, :cond_c

    iput-byte v4, p0, Lcom/t4game/DreamShadow;->focusBar:B

    iput-byte v4, p0, Lcom/t4game/DreamShadow;->index:B

    iput-byte v3, p0, Lcom/t4game/DreamShadow;->bagState:B

    goto :goto_2

    :cond_12
    iget-object v0, p0, Lcom/t4game/DreamShadow;->menuStrings:Lcom/t4game/UI_Menu;

    iget-byte v0, v0, Lcom/t4game/UI_Menu;->index:B

    if-ne v0, v5, :cond_15

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    aget-object v0, v0, v4

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    aget-byte v0, v0, v1

    if-eq v0, v2, :cond_13

    iput-byte v3, p0, Lcom/t4game/DreamShadow;->focusBar:B

    iput-byte v5, p0, Lcom/t4game/DreamShadow;->bagState:B

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->preIndex:B

    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    aget-object v0, v0, v4

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->preIndex:B

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->preQualityIndex:B

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/DreamShadow;->selectedList:Ljava/util/Vector;

    goto :goto_2

    :cond_13
    iput-byte v4, p0, Lcom/t4game/DreamShadow;->focusBar:B

    iput-byte v4, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    goto :goto_2

    :cond_14
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->preIndex:B

    iput-byte v3, p0, Lcom/t4game/DreamShadow;->focusBar:B

    iput-byte v5, p0, Lcom/t4game/DreamShadow;->bagState:B

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/DreamShadow;->selectedList:Ljava/util/Vector;

    goto/16 :goto_2

    :cond_15
    iget-object v0, p0, Lcom/t4game/DreamShadow;->menuStrings:Lcom/t4game/UI_Menu;

    iget-byte v0, v0, Lcom/t4game/UI_Menu;->index:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    const-string v1, "\u662f\u5426\u541e\u566c\u6240\u6709\u4f4e\u54c1\u8d28\u4e09\u751f\u77f3?"

    const/16 v2, 0x277

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_16
    iget-object v0, p0, Lcom/t4game/DreamShadow;->menuStrings:Lcom/t4game/UI_Menu;

    iget-byte v0, v0, Lcom/t4game/UI_Menu;->index:B

    if-ne v0, v6, :cond_c

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    const-string v1, "\u786e\u5b9a\u8981\u5378\u4e0b\u8be5\u4e09\u751f\u77f3\u5417?"

    const/16 v2, 0x27f

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto/16 :goto_2

    :cond_17
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-ne v0, v5, :cond_1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->bagState:B

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->preIndex:B

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->preQualityIndex:B

    iput-byte v2, p0, Lcom/t4game/DreamShadow;->focusBar:B

    iget-object v0, p0, Lcom/t4game/DreamShadow;->menuStrings:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/t4game/DreamShadow;->menuStrings:Lcom/t4game/UI_Menu;

    iget-byte v0, v0, Lcom/t4game/UI_Menu;->leng:B

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    :cond_18
    new-instance v0, Lcom/t4game/UI_Menu;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u67e5\u770b\u4e09\u751f\u77f3"

    aput-object v2, v1, v4

    const-string v2, "\u9576\u5d4c\u4e09\u751f\u77f3"

    aput-object v2, v1, v3

    const-string v2, "\u541e\u566c\u4e09\u751f\u77f3"

    aput-object v2, v1, v5

    const/4 v2, 0x3

    const-string v3, "\u541e\u566c\u4f4e\u54c1\u8d28\u4e09\u751f\u77f3"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/t4game/DreamShadow;->menuStrings:Lcom/t4game/UI_Menu;

    goto/16 :goto_0

    :pswitch_1
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->preIndex:B

    invoke-direct {p0, v0, v1, v2}, Lcom/t4game/DreamShadow;->sendMsgInlay(BBB)Z

    goto/16 :goto_0

    :pswitch_2
    const/4 v0, -0x5

    if-ne p1, v0, :cond_1f

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    if-nez v0, :cond_1b

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    aget-object v1, v1, v4

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->preIndex:B

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1a

    iget-object v0, p0, Lcom/t4game/DreamShadow;->selectedList:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Byte;

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/t4game/DreamShadow;->selectedList:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Byte;

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_19
    iget-object v0, p0, Lcom/t4game/DreamShadow;->selectedList:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Byte;

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1a
    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    const-string v1, "\u4e0d\u53ef\u541e\u566c\u54c1\u8d28\u9ad8\u4e8e\u672c\u8eab\u7684\u4e09\u751f\u77f3"

    const/16 v2, 0x132

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1b
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->preQualityIndex:B

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_1e

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->preQualityIndex:B

    if-ne v0, v1, :cond_1c

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->preIndex:B

    if-eq v0, v1, :cond_1

    :cond_1c
    iget-object v0, p0, Lcom/t4game/DreamShadow;->selectedList:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Byte;

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/t4game/DreamShadow;->selectedList:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Byte;

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_1d
    iget-object v0, p0, Lcom/t4game/DreamShadow;->selectedList:Ljava/util/Vector;

    new-instance v1, Ljava/lang/Byte;

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    invoke-direct {v1, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1e
    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    const-string v1, "\u4e0d\u53ef\u541e\u566c\u54c1\u8d28\u9ad8\u4e8e\u672c\u8eab\u7684\u4e09\u751f\u77f3"

    const/16 v2, 0x132

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1f
    iget-object v0, p0, Lcom/t4game/DreamShadow;->selectedList:Ljava/util/Vector;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/t4game/DreamShadow;->selectedList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_21

    :cond_20
    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    const-string v1, "\u8bf7\u5148\u9009\u62e9\u88ab\u541e\u566c\u4e09\u751f\u77f3\u3002"

    const/16 v2, 0x132

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_21
    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    const-string v1, "\u662f\u5426\u541e\u566c\u5df2\u9009\u4e2d\u4e09\u751f\u77f3?"

    const/16 v2, 0x277

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_22
    if-ne p1, v2, :cond_25

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/t4game/DreamShadow;->menuStrings:Lcom/t4game/UI_Menu;

    iget-byte v0, v0, Lcom/t4game/UI_Menu;->index:B

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/t4game/DreamShadow;->menuStrings:Lcom/t4game/UI_Menu;

    iget-byte v1, v0, Lcom/t4game/UI_Menu;->index:B

    sub-int/2addr v1, v3

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/t4game/UI_Menu;->index:B

    goto/16 :goto_0

    :pswitch_4
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    if-ge v0, v6, :cond_23

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    if-lez v0, :cond_23

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    sub-int/2addr v0, v3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    goto/16 :goto_0

    :cond_23
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    sub-int/2addr v0, v6

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    goto/16 :goto_0

    :pswitch_5
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->bagState:B

    if-nez v0, :cond_1

    iput-byte v4, p0, Lcom/t4game/DreamShadow;->focusBar:B

    goto/16 :goto_0

    :pswitch_6
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    iget v1, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_24

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    iget v1, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    goto/16 :goto_0

    :cond_24
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    if-le v0, v2, :cond_1

    iput-byte v3, p0, Lcom/t4game/DreamShadow;->focusBar:B

    goto/16 :goto_0

    :cond_25
    const/4 v0, -0x2

    if-ne p1, v0, :cond_28

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/t4game/DreamShadow;->menuStrings:Lcom/t4game/UI_Menu;

    iget-byte v0, v0, Lcom/t4game/UI_Menu;->index:B

    iget-object v1, p0, Lcom/t4game/DreamShadow;->menuStrings:Lcom/t4game/UI_Menu;

    iget-byte v1, v1, Lcom/t4game/UI_Menu;->leng:B

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/DreamShadow;->menuStrings:Lcom/t4game/UI_Menu;

    iget-byte v1, v0, Lcom/t4game/UI_Menu;->index:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/t4game/UI_Menu;->index:B

    goto/16 :goto_0

    :pswitch_8
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    if-ge v0, v6, :cond_26

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    add-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    goto/16 :goto_0

    :cond_26
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    if-eq v0, v5, :cond_1

    iput-byte v3, p0, Lcom/t4game/DreamShadow;->focusBar:B

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    array-length v0, v0

    if-eqz v0, :cond_1

    iput-byte v5, p0, Lcom/t4game/DreamShadow;->focusBar:B

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    iget v1, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    rem-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    array-length v1, v1

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    array-length v0, v0

    sub-int/2addr v0, v3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    goto/16 :goto_0

    :pswitch_a
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    array-length v1, v1

    iget v2, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_27

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    iget v1, p0, Lcom/t4game/DreamShadow;->numOneLIne:I

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    goto/16 :goto_0

    :cond_27
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    array-length v1, v1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    goto/16 :goto_0

    :cond_28
    const/4 v0, -0x3

    if-ne p1, v0, :cond_2c

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    packed-switch v0, :pswitch_data_3

    goto/16 :goto_0

    :pswitch_b
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    if-lez v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    sub-int/2addr v0, v3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/t4game/DreamShadow;->selectedList:Ljava/util/Vector;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/t4game/DreamShadow;->selectedList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_29
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    if-nez v0, :cond_2a

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->bagState:B

    if-nez v0, :cond_1

    iput-byte v4, p0, Lcom/t4game/DreamShadow;->focusBar:B

    const/4 v0, 0x7

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    goto/16 :goto_0

    :cond_2a
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    sub-int/2addr v0, v3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    goto/16 :goto_0

    :pswitch_d
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    if-lez v0, :cond_2b

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    sub-int/2addr v0, v3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    goto/16 :goto_0

    :cond_2b
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    if-nez v0, :cond_1

    iput-byte v3, p0, Lcom/t4game/DreamShadow;->focusBar:B

    iput-byte v4, p0, Lcom/t4game/DreamShadow;->index:B

    goto/16 :goto_0

    :cond_2c
    const/4 v0, -0x4

    if-ne p1, v0, :cond_30

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    packed-switch v0, :pswitch_data_4

    goto/16 :goto_0

    :pswitch_e
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    const/4 v1, 0x7

    if-ge v0, v1, :cond_2d

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    goto/16 :goto_0

    :cond_2d
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    if-eq v0, v5, :cond_1

    iput-byte v3, p0, Lcom/t4game/DreamShadow;->focusBar:B

    iput-byte v4, p0, Lcom/t4game/DreamShadow;->index:B

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/t4game/DreamShadow;->selectedList:Ljava/util/Vector;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/t4game/DreamShadow;->selectedList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_2e
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    iget-object v1, p0, Lcom/t4game/DreamShadow;->qualityStrings:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_2f

    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    iget-object v1, p0, Lcom/t4game/DreamShadow;->qualityStrings:[Ljava/lang/String;

    array-length v1, v1

    aget-object v0, v0, v1

    array-length v0, v0

    if-lez v0, :cond_1

    iput-byte v5, p0, Lcom/t4game/DreamShadow;->focusBar:B

    iput-byte v4, p0, Lcom/t4game/DreamShadow;->index:B

    goto/16 :goto_0

    :cond_2f
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    goto/16 :goto_0

    :pswitch_10
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    array-length v1, v1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    goto/16 :goto_0

    :cond_30
    const/16 v0, 0x30

    if-ne p1, v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-eq v0, v3, :cond_1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    aget-object v0, v0, v4

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    aget-byte v0, v0, v1

    if-eq v0, v2, :cond_1

    :cond_31
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-eq v0, v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/t4game/DreamShadow;->sendMag_Attribute(I)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method public pressKeyEventCicada_ChaKan(II)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x4

    const/4 v0, -0x6

    if-eq p1, v0, :cond_0

    const/4 v0, -0x5

    if-eq p1, v0, :cond_0

    const/16 v0, 0x30

    if-ne p1, v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/t4game/DreamShadow;->stoneType:[[B

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    aget-byte v0, v0, v1

    if-ne v0, v3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0, p2}, Lcom/t4game/DreamShadow;->sendMag_Attribute(I)Z

    goto :goto_0

    :cond_3
    if-ne p1, v3, :cond_5

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    if-ge v0, v2, :cond_4

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    if-lez v0, :cond_4

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    goto :goto_0

    :cond_4
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    goto :goto_0

    :cond_5
    const/4 v0, -0x2

    if-ne p1, v0, :cond_6

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    if-ge v0, v2, :cond_1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    add-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    goto :goto_0

    :cond_6
    const/4 v0, -0x3

    if-ne p1, v0, :cond_7

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    if-lez v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    goto :goto_0

    :cond_7
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    const/4 v1, 0x7

    if-ge v0, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    goto :goto_0
.end method

.method public pressKeyEventLeaves(I)V
    .locals 5

    const/4 v2, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v0, -0x6

    if-eq p1, v0, :cond_0

    const/16 v0, 0x30

    if-ne p1, v0, :cond_4

    :cond_0
    invoke-virtual {p0, v4}, Lcom/t4game/DreamShadow;->sendMag_Exchange(B)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    const/4 v1, 0x7

    aget-object v0, v0, v1

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    aget-object v0, v0, v1

    array-length v0, v0

    add-int/lit8 v0, v0, 0x6

    iget-object v1, p0, Lcom/t4game/DreamShadow;->leavesStone:[[[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    aget-object v1, v1, v2

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DreamShadow;->totalLineNum:I

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->preIndex:B

    if-gez v0, :cond_2

    iput-byte v4, p0, Lcom/t4game/DreamShadow;->preIndex:B

    :cond_2
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->preIndex:B

    iget v1, p0, Lcom/t4game/DreamShadow;->totalLineNum:I

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_3

    iget v0, p0, Lcom/t4game/DreamShadow;->totalLineNum:I

    sub-int/2addr v0, v3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->preIndex:B

    :cond_3
    return-void

    :cond_4
    const/4 v0, -0x7

    if-ne p1, v0, :cond_6

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v0, :cond_5

    invoke-virtual {p0, v4}, Lcom/t4game/DreamShadow;->setDialogId(B)V

    invoke-direct {p0}, Lcom/t4game/DreamShadow;->releaseLeaves()V

    goto :goto_0

    :cond_5
    iput-byte v4, p0, Lcom/t4game/DreamShadow;->focusBar:B

    iput-byte v4, p0, Lcom/t4game/DreamShadow;->preIndex:B

    goto :goto_0

    :cond_6
    const/4 v0, -0x5

    if-ne p1, v0, :cond_7

    iput-byte v3, p0, Lcom/t4game/DreamShadow;->focusBar:B

    goto :goto_0

    :cond_7
    const/4 v0, -0x3

    if-ne p1, v0, :cond_9

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v0, :cond_8

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    if-lez v0, :cond_8

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    sub-int/2addr v0, v3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    goto :goto_0

    :cond_8
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-ne v0, v3, :cond_1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->preIndex:B

    sub-int/2addr v0, v3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->preIndex:B

    goto :goto_0

    :cond_9
    const/4 v0, -0x4

    if-ne p1, v0, :cond_b

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v0, :cond_a

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->finalGreatStoneNum:B

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_a

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    goto :goto_0

    :cond_a
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-ne v0, v3, :cond_1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->preIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->preIndex:B

    goto/16 :goto_0

    :cond_b
    const/4 v0, -0x1

    if-ne p1, v0, :cond_d

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v0, :cond_c

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    const/4 v1, 0x3

    if-le v0, v1, :cond_c

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    goto/16 :goto_0

    :cond_c
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-ne v0, v3, :cond_1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->preIndex:B

    sub-int/2addr v0, v3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->preIndex:B

    goto/16 :goto_0

    :cond_d
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v0, :cond_e

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->finalGreatStoneNum:B

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_e

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    add-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    goto/16 :goto_0

    :cond_e
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-ne v0, v3, :cond_1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->preIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->preIndex:B

    goto/16 :goto_0
.end method

.method public pressKeyEventOnMenu(I)V
    .locals 4

    const/4 v3, 0x3

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    const/4 v0, -0x3

    if-ne p1, v0, :cond_2

    :cond_0
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->selectedMenuIndex:B

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->selectedMenuIndex:B

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->selectedMenuIndex:B

    if-gez v0, :cond_1

    iput-byte v2, p0, Lcom/t4game/DreamShadow;->selectedMenuIndex:B

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, -0x2

    if-eq p1, v0, :cond_3

    const/4 v0, -0x4

    if-ne p1, v0, :cond_4

    :cond_3
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->selectedMenuIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->selectedMenuIndex:B

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->selectedMenuIndex:B

    if-le v0, v3, :cond_1

    iput-byte v3, p0, Lcom/t4game/DreamShadow;->selectedMenuIndex:B

    goto :goto_0

    :cond_4
    const/4 v0, -0x5

    if-eq p1, v0, :cond_5

    const/4 v0, -0x6

    if-ne p1, v0, :cond_6

    :cond_5
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->selectedMenuIndex:B

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/t4game/DreamShadow;->sendMessageIntoButterfDialog()Z

    goto :goto_0

    :pswitch_1
    iput-byte v2, p0, Lcom/t4game/DreamShadow;->focusBar:B

    iput-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    iput-byte v2, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    iput-byte v2, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    iput-byte v2, p0, Lcom/t4game/DreamShadow;->preIndex:B

    iput-byte v2, p0, Lcom/t4game/DreamShadow;->preQualityIndex:B

    invoke-virtual {p0, v1}, Lcom/t4game/DreamShadow;->sendMessageDREAMSHADOWS_UPDATE_BAG_MSG(I)Z

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/t4game/DreamShadow;->sengMsg_FALLEN_LEAVES_VIEW_MSG()Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/t4game/DreamShadow;->sendMag_Fallen_Snow()Z

    goto :goto_0

    :cond_6
    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/DreamShadow;->gs:Lcom/t4game/GameScreen;

    iget-byte v1, v1, Lcom/t4game/GameScreen;->PreState:B

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->setState(BZ)V

    invoke-virtual {p0}, Lcom/t4game/DreamShadow;->release()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public pressKeyEventSnow(I)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x7

    if-ne p1, v0, :cond_3

    invoke-virtual {p0, v2}, Lcom/t4game/DreamShadow;->setDialogId(B)V

    invoke-direct {p0}, Lcom/t4game/DreamShadow;->releaseSnow()V

    :cond_0
    :goto_0
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    if-gez v0, :cond_9

    iput-byte v2, p0, Lcom/t4game/DreamShadow;->index:B

    :cond_1
    :goto_1
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->preIndex:B

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/DreamShadow;->num:[B

    array-length v1, v1

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_2

    iput-byte v2, p0, Lcom/t4game/DreamShadow;->preIndex:B

    :cond_2
    return-void

    :cond_3
    const/4 v0, -0x6

    if-eq p1, v0, :cond_4

    const/4 v0, -0x5

    if-ne p1, v0, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/t4game/DreamShadow;->sendMag_Get_Reward()Z

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    sub-int/2addr v0, v4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    goto :goto_0

    :cond_6
    const/4 v0, -0x2

    if-ne p1, v0, :cond_7

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    add-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    goto :goto_0

    :cond_7
    const/4 v0, -0x3

    if-ne p1, v0, :cond_8

    iput-byte v2, p0, Lcom/t4game/DreamShadow;->preIndex:B

    goto :goto_0

    :cond_8
    const/4 v0, -0x4

    if-ne p1, v0, :cond_0

    iput-byte v3, p0, Lcom/t4game/DreamShadow;->preIndex:B

    goto :goto_0

    :cond_9
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    iget-object v1, p0, Lcom/t4game/DreamShadow;->num:[B

    array-length v1, v1

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/DreamShadow;->num:[B

    array-length v0, v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/t4game/DreamShadow;->num:[B

    array-length v0, v0

    sub-int/2addr v0, v4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/t4game/DreamShadow;->num:[B

    array-length v0, v0

    sub-int/2addr v0, v3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->index:B

    goto :goto_1
.end method

.method public processMag(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/t4game/DreamShadow;->processMsgIntoButterflyDialog()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/t4game/DreamShadow;->processMsgButterfly()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/t4game/DreamShadow;->processMsgUpdateBag()V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0}, Lcom/t4game/DreamShadow;->processMagInlay()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/t4game/DreamShadow;->processMsg_FALLEN_LEAVES_VIEW()V

    goto :goto_0

    :pswitch_5
    invoke-direct {p0}, Lcom/t4game/DreamShadow;->processMag_EXCHANGE()V

    goto :goto_0

    :pswitch_6
    invoke-direct {p0}, Lcom/t4game/DreamShadow;->processMag_GREAT_STONE_DETAIL_MSG()V

    goto :goto_0

    :pswitch_7
    invoke-direct {p0}, Lcom/t4game/DreamShadow;->processMag_Fallen_Snow()V

    goto :goto_0

    :pswitch_8
    invoke-direct {p0}, Lcom/t4game/DreamShadow;->processMsg_Devoue()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x275
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public sendMag_Attribute(I)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v3}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    :goto_0
    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x27c

    iget-object v2, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v2}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    goto :goto_0

    :cond_1
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->focusBar:B

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v3}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v2}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    goto :goto_0
.end method

.method public sendMag_Exchange(B)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x27a

    iget-object v2, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public sendMag_Fallen_Snow()Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x27d

    iget-object v2, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public sendMag_Get_Reward()Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->preIndex:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x27e

    iget-object v2, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public sendMag_Un_Inlay()Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->index:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x27f

    iget-object v2, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public sendMessageDREAMSHADOWS_UPDATE_BAG_MSG(I)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x27b

    iget-object v2, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public sendMsgButterfly(BB)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x276

    iget-object v2, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public sendMsg_Devour()Z
    .locals 5

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->bagState:B

    if-ne v1, v4, :cond_1

    move v1, v3

    :goto_0
    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/DreamShadow;->stoneQuality:[[B

    aget-object v1, v1, v3

    iget-byte v2, p0, Lcom/t4game/DreamShadow;->preIndex:B

    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->preIndex:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    :goto_2
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->prefocuseBar:B

    if-nez v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    iput-byte v0, p0, Lcom/t4game/DreamShadow;->preQualityIndex:B

    :cond_0
    iget-byte v0, p0, Lcom/t4game/DreamShadow;->bagState:B

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->qualityIndex:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/DreamShadow;->selectedList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putInt(I)V

    move v1, v3

    :goto_3
    iget-object v0, p0, Lcom/t4game/DreamShadow;->selectedList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v0, p0, Lcom/t4game/DreamShadow;->selectedList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-virtual {v2, v0}, Lcom/t4game/IoBuffer;->putByte(B)V

    add-int/lit8 v0, v1, 0x1

    int-to-byte v0, v0

    move v1, v0

    goto :goto_3

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->preQualityIndex:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/DreamShadow;->preIndex:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/t4game/DreamShadow;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x277

    iget-object v2, p0, Lcom/t4game/DreamShadow;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public setDialogId(B)V
    .locals 0

    iput-byte p1, p0, Lcom/t4game/DreamShadow;->dialogId:B

    invoke-virtual {p0}, Lcom/t4game/DreamShadow;->initDialog()V

    return-void
.end method
