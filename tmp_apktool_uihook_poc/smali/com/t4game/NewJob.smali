.class public Lcom/t4game/NewJob;
.super Ljava/lang/Object;


# instance fields
.field protected final bottom:I

.field protected buttonIndex:I

.field protected cPlayer:Ljava/util/Vector;

.field protected currentId:I

.field protected final equip:[[S

.field protected focusImage:Ljavax/microedition/lcdui/Image;

.field protected gs:Lcom/t4game/GameScreen;

.field protected gw:Lcom/t4game/GameWorld;

.field protected hasNewjob:B

.field protected helpInfo:[Ljava/lang/String;

.field protected helpInfo1:[Ljava/lang/String;

.field protected id:[I

.field protected jiantouImage:Ljavax/microedition/lcdui/Image;

.field protected jobId:[B

.field protected jobInfo:[Ljava/lang/String;

.field protected lineNum:I

.field protected final mid:I

.field protected pageIndex:I

.field protected pageNum:I

.field private pt:Lcom/t4game/PageTable;

.field private readBuffer:Lcom/t4game/IoBuffer;

.field private sendBuffer:Lcom/t4game/IoBuffer;

.field protected shengxianMan:Lcom/t4game/MiniPlayer;

.field protected shengxianWoman:Lcom/t4game/MiniPlayer;

.field protected final top:I

.field protected userName:[Ljava/lang/String;

.field protected wushenMan:Lcom/t4game/MiniPlayer;

.field protected wushenWoman:Lcom/t4game/MiniPlayer;

.field protected zhiye:Ljavax/microedition/lcdui/Image;

.field protected zy:[Ljavax/microedition/lcdui/Image;


# direct methods
.method public constructor <init>(Lcom/t4game/GameScreen;)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0xa

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    sget v1, Lcom/t4game/Defaults;->lableTop:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/NewJob;->top:I

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v1, 0x24

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->lableTop:I

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/NewJob;->bottom:I

    iget v0, p0, Lcom/t4game/NewJob;->top:I

    iget v1, p0, Lcom/t4game/NewJob;->bottom:I

    iget v2, p0, Lcom/t4game/NewJob;->top:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/NewJob;->mid:I

    iput-byte v3, p0, Lcom/t4game/NewJob;->hasNewjob:B

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "\u6b66\u795e\uff1a\u55dc\u6b66\u4e4b\u795e\uff0c\u901a\u6653\u529b\u91cf\u4e0e\u654f\u6377\uff0c\u51b2\u950b\u9677\u9635\uff0c\u6240\u5411\u62ab\u9761\uff0c\u5728\u9c9c\u8840\u4e0e\u53ae\u6740\u4e2d\u50b2\u89c6\u7fa4\u96c4"

    aput-object v1, v0, v3

    const-string v1, "\u5723\u4ed9\uff1a\u900d\u9065\u4e4b\u4ed9\uff0c\u5584\u7528\u4ed9\u672f\u4fdd\u62a4\u540c\u4f34\uff0c\u53ef\u8c03\u661f\u6708\u4e4b\u5149\u964d\u9b54\u4f0f\u5996\uff0c\u53ef\u653b\u53ef\u5b88\u6cd5\u529b\u65e0\u8fb9"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/t4game/NewJob;->jobInfo:[Ljava/lang/String;

    iput v3, p0, Lcom/t4game/NewJob;->pageNum:I

    iput v3, p0, Lcom/t4game/NewJob;->pageIndex:I

    iput v3, p0, Lcom/t4game/NewJob;->lineNum:I

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5343\u96be\u4e07\u9669\uff0c\u767e\u70bc\u6210\u4ed9\uff01\u5165\u4ed9\u5316\u795e\uff0c\u968f\u5fc3\u800c\u53d8\uff01"

    aput-object v1, v0, v3

    const-string v1, "\u5f00\u542f:"

    aput-object v1, v0, v5

    const-string v1, "\u73a9\u5bb6\u8fbe\u523060\u7ea7\u540e\uff0c\u5373\u53ef\u5f00\u542f\u5316\u795e\u7cfb\u7edf\u3002"

    aput-object v1, v0, v6

    const-string v1, "\u5316\u795e:"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u5728\u5316\u795e\u754c\u9762\u53ef\u8fdb\u884c\u5316\u795e\uff0c\u9009\u62e9\u804c\u4e1a\u4e14\u82b1\u8d39\u4e00\u5b9a\u7684\u5143\u5b9d\u540e\uff0c\u73a9\u5bb6\u5c06\u5f97\u5230\u4e00\u4e2a\u5206\u8eab.\u5316\u795e\u662f\u4e00\u4e2a\u4e0e\u672c\u4f53\u76f8\u540c\u7ea7\u522b\u7684\u89d2\u8272\u3002\u5316\u795e\u4f1a\u4fdd\u7559\u90e8\u5206\u672c\u4f53\u7684\u5c5e\u6027\u6210\u5c31\u3002\u4f5c\u4e3a\u82f1\u96c4\u7684\u795e\u7ea7\u5206\u8eab\uff0c\u8981\u60f3\u53d8\u5f97\u5f3a\u5927\uff0c\u8fd8\u9700\u8981\u73a9\u5bb6\u81ea\u5df1\u53bb\u57f9\u517b\u548c\u589e\u5f3a"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u8f6c\u5316:"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u73a9\u5bb6\u53ef\u5728\u672c\u4f53\u548c\u5316\u795e\u4e4b\u95f4\u81ea\u7531\u5730\u8fdb\u884c\u89d2\u8272\u7684\u5207\u6362\uff0c\u4e0d\u8fc7\u6709\u8f6c\u5316\u5341\u5206\u8017\u8d39\u7cbe\u529b\uff0c\u6709\u4e00\u5b9a\u7684\u4f11\u606f\u51b7\u5374\u65f6\u95f4\u3002\u82e5\u4f60\u5df2\u4fee\u70bc\u81f3\u5316\u795e\u7684\u5883\u754c\uff0c\u4f55\u4e0d\u5f00\u542f\u66f4\u5f3a\u5927\u7684\u65c5\u7a0b\u5165\u4ed9\u5316\u795e\uff0c\u79f0\u9738\u4e09\u754c\uff01"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/t4game/NewJob;->helpInfo:[Ljava/lang/String;

    iput v3, p0, Lcom/t4game/NewJob;->currentId:I

    iput v3, p0, Lcom/t4game/NewJob;->buttonIndex:I

    const/4 v0, 0x4

    new-array v0, v0, [[S

    new-array v1, v4, [S

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v4, [S

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v4, [S

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    new-array v1, v4, [S

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/t4game/NewJob;->equip:[[S

    iput-object p1, p0, Lcom/t4game/NewJob;->gs:Lcom/t4game/GameScreen;

    iget-object v0, p1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iput-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/NewJob;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/NewJob;->cPlayer:Ljava/util/Vector;

    return-void

    nop

    :array_0
    .array-data 2
        0x241s
        0x374s
        0x377s
        0x378s
        0x3e6s
        -0x1s
        -0x1s
        0x376s
        0x379s
        0x360s
    .end array-data

    :array_1
    .array-data 2
        0x22fs
        0x36es
        0x36cs
        0x36ds
        0x3e0s
        -0x1s
        -0x1s
        0x36fs
        0x36as
        0x36bs
    .end array-data

    :array_2
    .array-data 2
        0x241s
        0x399s
        0x39cs
        0x39ds
        0x138fs
        -0x1s
        -0x1s
        0x39as
        0x39bs
        0x361s
    .end array-data

    :array_3
    .array-data 2
        0x22fs
        0x3abs
        0x3aes
        0x3afs
        0x138cs
        -0x1s
        -0x1s
        0x3acs
        0x3ads
        0x362s
    .end array-data
.end method

.method private getHelpInfo([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    aget-object v1, p1, v4

    iget-object v2, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget v2, v2, Lcom/t4game/PageTable;->w:I

    sub-int/2addr v2, v5

    sget-object v3, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v1, v2, v3}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v1

    move v2, v4

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v1, 0x2

    aget-object v1, p1, v1

    iget-object v2, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget v2, v2, Lcom/t4game/PageTable;->w:I

    sub-int/2addr v2, v5

    sget-object v3, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v1, v2, v3}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v1

    move v2, v4

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v1, 0x4

    aget-object v1, p1, v1

    iget-object v2, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget v2, v2, Lcom/t4game/PageTable;->w:I

    sub-int/2addr v2, v5

    sget-object v3, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v1, v2, v3}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v1

    move v2, v4

    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_2

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x5

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v1, 0x6

    aget-object v1, p1, v1

    iget-object v2, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget v2, v2, Lcom/t4game/PageTable;->w:I

    sub-int/2addr v2, v5

    sget-object v3, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v1, v2, v3}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v1

    move v2, v4

    :goto_3
    array-length v3, v1

    if-ge v2, v3, :cond_3

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    move v2, v4

    :goto_4
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    return-object v1
.end method

.method private initMiniPlayer(BSI[SI)Lcom/t4game/MiniPlayer;
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lcom/t4game/MiniPlayer;

    invoke-direct {v0}, Lcom/t4game/MiniPlayer;-><init>()V

    invoke-virtual {v0, p1}, Lcom/t4game/MiniPlayer;->setJob(B)V

    iput-boolean v3, v0, Lcom/t4game/MiniPlayer;->supportChangeImage:Z

    invoke-virtual {v0, p2}, Lcom/t4game/MiniPlayer;->setObjectDataId(S)V

    invoke-virtual {v0, p3}, Lcom/t4game/MiniPlayer;->initImageDataList(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_0

    aget-short v2, p4, v1

    invoke-virtual {v0, v2, v1}, Lcom/t4game/MiniPlayer;->setImageData(SI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-short v3, v0, Lcom/t4game/MiniPlayer;->grade:S

    invoke-virtual {v0, p5}, Lcom/t4game/MiniPlayer;->setHair(I)V

    return-object v0
.end method

.method private isInRect(IIIIII)Z
    .locals 1

    if-le p1, p3, :cond_0

    add-int v0, p3, p5

    if-ge p1, v0, :cond_0

    if-le p2, p4, :cond_0

    add-int v0, p4, p6

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processBag()V
    .locals 4

    iget-object v0, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    iget-object v3, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->pack:Lcom/t4game/Pack;

    iget-object v3, v3, Lcom/t4game/Pack;->outFitBagBlock:[Lcom/t4game/RoleOutfit;

    aget-object v2, v3, v2

    iget-object v3, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/t4game/RoleOutfit;->setCanUse(B)V

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processM()V
    .locals 4

    iget-object v0, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    iget-object v3, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->pack:Lcom/t4game/Pack;

    iget-object v3, v3, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    aget-object v2, v3, v2

    iget-object v3, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/t4game/RoleMisc;->setCanUse(B)V

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private processOutfit()V
    .locals 7

    const/4 v6, 0x0

    const/16 v5, 0xd

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v0, v0, Lcom/t4game/GUser;->outFitOn:[Lcom/t4game/RoleOutfit;

    new-instance v1, Lcom/t4game/RoleOutfit;

    invoke-direct {v1}, Lcom/t4game/RoleOutfit;-><init>()V

    aput-object v1, v0, v5

    move v1, v6

    :goto_0
    const/16 v0, 0xe

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-ne v0, v4, :cond_2

    if-ne v1, v5, :cond_0

    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v0, v0, Lcom/t4game/GUser;->outFitOn:[Lcom/t4game/RoleOutfit;

    aget-object v0, v0, v1

    const/16 v2, 0x8f

    iput-short v2, v0, Lcom/t4game/RoleOutfit;->iconId:S

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v2, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    invoke-virtual {v0, v4}, Lcom/t4game/GameWorld;->functionReadRoleGoods(Z)Lcom/t4game/RoleGoods;

    move-result-object v0

    check-cast v0, Lcom/t4game/RoleOutfit;

    invoke-virtual {v2, v1, v0}, Lcom/t4game/GUser;->setRoleOutfit(ILcom/t4game/RoleOutfit;)V

    const/4 v0, 0x4

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v0, v0, Lcom/t4game/GUser;->outFitOn:[Lcom/t4game/RoleOutfit;

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    iput-byte v2, v0, Lcom/t4game/RoleOutfit;->weaponTyte:B

    :cond_1
    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v2, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    int-to-byte v3, v1

    invoke-virtual {v0, v2, v3, v4}, Lcom/t4game/GameWorld;->readOutfitSpecialEffectDataList(Lcom/t4game/GUser;BB)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GUser;->setRoleOutfit(ILcom/t4game/RoleOutfit;)V

    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v0, v0, Lcom/t4game/GUser;->outfitSEState:[Ljava/util/Vector;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/t4game/GUser;->setOutlineFlag(B)V

    iget-object v0, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iput-boolean v4, v1, Lcom/t4game/GUser;->visible:Z

    iget-object v1, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    invoke-virtual {v1, v0}, Lcom/t4game/GUser;->initImageDataList(I)V

    move v1, v6

    :goto_2
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v3, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v3

    invoke-virtual {v2, v3, v1}, Lcom/t4game/GUser;->setImageData(SI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iput-boolean v4, v0, Lcom/t4game/GUser;->visible:Z

    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v1

    iget-object v2, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GUser;->setHair(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v0, v0, Lcom/t4game/GUser;->outFitOn:[Lcom/t4game/RoleOutfit;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, v1, Lcom/t4game/GUser;->HairName:Ljava/lang/String;

    iput-object v1, v0, Lcom/t4game/RoleOutfit;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/NewJob;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    const/16 v1, -0x1c

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "\u5316\u795e"

    invoke-static {p1, v0}, Lcom/t4game/DraftingUtil;->paintFloatingDailog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    invoke-virtual {v0, p1}, Lcom/t4game/PageTable;->draw(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0
.end method

.method public init()V
    .locals 12

    const/4 v8, 0x4

    const/16 v3, 0xa

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/t4game/NewJob;->equip:[[S

    aget-object v4, v0, v1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/t4game/NewJob;->initMiniPlayer(BSI[SI)Lcom/t4game/MiniPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/NewJob;->wushenMan:Lcom/t4game/MiniPlayer;

    iget-object v0, p0, Lcom/t4game/NewJob;->equip:[[S

    const/4 v4, 0x1

    aget-object v4, v0, v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/t4game/NewJob;->initMiniPlayer(BSI[SI)Lcom/t4game/MiniPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/NewJob;->wushenWoman:Lcom/t4game/MiniPlayer;

    iget-object v0, p0, Lcom/t4game/NewJob;->equip:[[S

    aget-object v10, v0, v2

    move-object v6, p0

    move v7, v2

    move v9, v3

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/t4game/NewJob;->initMiniPlayer(BSI[SI)Lcom/t4game/MiniPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/NewJob;->shengxianMan:Lcom/t4game/MiniPlayer;

    iget-object v0, p0, Lcom/t4game/NewJob;->equip:[[S

    const/4 v4, 0x3

    aget-object v10, v0, v4

    move-object v6, p0

    move v7, v2

    move v9, v3

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lcom/t4game/NewJob;->initMiniPlayer(BSI[SI)Lcom/t4game/MiniPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/NewJob;->shengxianWoman:Lcom/t4game/MiniPlayer;

    const-string v0, "/login/xuanzhong1.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/NewJob;->focusImage:Ljavax/microedition/lcdui/Image;

    const-string v0, "/login/jiantou.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/NewJob;->jiantouImage:Ljavax/microedition/lcdui/Image;

    const-string v0, "/login/focus0.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/NewJob;->zhiye:Ljavax/microedition/lcdui/Image;

    new-array v0, v2, [Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/NewJob;->zy:[Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/NewJob;->zy:[Ljavax/microedition/lcdui/Image;

    const-string v2, "/login/ws.png"

    invoke-static {v2}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/t4game/NewJob;->zy:[Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x1

    const-string v3, "/login/sx.png"

    invoke-static {v3}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v3

    aput-object v3, v0, v2

    new-instance v0, Lcom/t4game/PageTable;

    invoke-direct {v0, p0}, Lcom/t4game/PageTable;-><init>(Lcom/t4game/NewJob;)V

    iput-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget-object v0, p0, Lcom/t4game/NewJob;->helpInfo:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/t4game/NewJob;->getHelpInfo([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/NewJob;->helpInfo1:[Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget v0, v0, Lcom/t4game/PageTable;->h:I

    sget v2, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v2, v2, 0x1

    div-int/2addr v0, v2

    sub-int/2addr v0, v8

    iput v0, p0, Lcom/t4game/NewJob;->lineNum:I

    iget-object v0, p0, Lcom/t4game/NewJob;->helpInfo1:[Ljava/lang/String;

    array-length v0, v0

    iget v2, p0, Lcom/t4game/NewJob;->lineNum:I

    div-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/NewJob;->pageNum:I

    iput v1, p0, Lcom/t4game/NewJob;->pageIndex:I

    return-void
.end method

.method public keyEvent(I)V
    .locals 3

    iget-object v0, p0, Lcom/t4game/NewJob;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    const/16 v1, -0x1c

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/NewJob;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/NewJob;->gs:Lcom/t4game/GameScreen;

    iget-byte v1, v1, Lcom/t4game/GameScreen;->PreState:B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->setState(BZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    invoke-virtual {v0, p1}, Lcom/t4game/PageTable;->keyPressEvent(I)V

    goto :goto_0
.end method

.method public pointerEvent()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/t4game/NewJob;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    const/16 v1, -0x1c

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    sget v2, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget v3, v0, Lcom/t4game/PageTable;->x:I

    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget v4, v0, Lcom/t4game/PageTable;->y:I

    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget v5, v0, Lcom/t4game/PageTable;->w:I

    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget v6, v0, Lcom/t4game/PageTable;->lableHeight:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/t4game/NewJob;->isInRect(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iput-boolean v8, v0, Lcom/t4game/PageTable;->bFocus:Z

    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget-object v2, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget v2, v2, Lcom/t4game/PageTable;->x:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget v2, v2, Lcom/t4game/PageTable;->lableWidth:I

    div-int/2addr v1, v2

    iput v1, v0, Lcom/t4game/PageTable;->index:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget v0, v0, Lcom/t4game/PageTable;->index:I

    if-nez v0, :cond_3

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    sget v2, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget v3, v0, Lcom/t4game/PageTable;->x:I

    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget-object v0, v0, Lcom/t4game/PageTable;->list:Lcom/t4game/List;

    iget-short v4, v0, Lcom/t4game/List;->y:S

    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget v5, v0, Lcom/t4game/PageTable;->w:I

    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget v0, v0, Lcom/t4game/PageTable;->lableHeight:I

    iget-object v6, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget-object v6, v6, Lcom/t4game/PageTable;->list:Lcom/t4game/List;

    iget v6, v6, Lcom/t4game/List;->focusH:I

    add-int/lit8 v6, v6, 0x1

    mul-int/2addr v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/t4game/NewJob;->isInRect(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iput-boolean v7, v0, Lcom/t4game/PageTable;->bFocus:Z

    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget-object v0, v0, Lcom/t4game/PageTable;->list:Lcom/t4game/List;

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    iget-object v2, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget-object v2, v2, Lcom/t4game/PageTable;->list:Lcom/t4game/List;

    iget-short v2, v2, Lcom/t4game/List;->y:S

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget-object v2, v2, Lcom/t4game/PageTable;->list:Lcom/t4game/List;

    iget-short v2, v2, Lcom/t4game/List;->h:S

    div-int/2addr v1, v2

    iput v1, v0, Lcom/t4game/List;->index:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget v0, v0, Lcom/t4game/PageTable;->index:I

    if-ne v0, v7, :cond_0

    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget v0, v0, Lcom/t4game/PageTable;->x:I

    iget-object v1, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget v1, v1, Lcom/t4game/PageTable;->w:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget v0, v0, Lcom/t4game/PageTable;->y:I

    iget-object v1, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget v1, v1, Lcom/t4game/PageTable;->lableHeight:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x41

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    sget v2, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget v3, v0, Lcom/t4game/PageTable;->x:I

    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget v4, v0, Lcom/t4game/PageTable;->y:I

    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget v5, v0, Lcom/t4game/PageTable;->w:I

    const/16 v6, 0x140

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/t4game/NewJob;->isInRect(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    iget-object v1, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget v1, v1, Lcom/t4game/PageTable;->x:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget v1, v1, Lcom/t4game/PageTable;->w:I

    shr-int/lit8 v1, v1, 0x1

    if-gt v0, v1, :cond_4

    iput v8, p0, Lcom/t4game/NewJob;->buttonIndex:I

    :goto_1
    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iput-boolean v7, v0, Lcom/t4game/PageTable;->bFocus:Z

    goto/16 :goto_0

    :cond_4
    iput v7, p0, Lcom/t4game/NewJob;->buttonIndex:I

    goto :goto_1
.end method

.method public processMsg(I)V
    .locals 11

    const/4 v2, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/t4game/NewJob;->cPlayer:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v6

    iget-object v0, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/NewJob;->currentId:I

    iget-object v0, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v7

    if-lez v7, :cond_0

    iput-byte v10, p0, Lcom/t4game/NewJob;->hasNewjob:B

    :goto_1
    if-lez v7, :cond_2

    new-array v0, v7, [I

    iput-object v0, p0, Lcom/t4game/NewJob;->id:[I

    new-array v0, v7, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/NewJob;->userName:[Ljava/lang/String;

    new-array v0, v7, [B

    iput-object v0, p0, Lcom/t4game/NewJob;->jobId:[B

    move v8, v9

    :goto_2
    if-ge v8, v7, :cond_2

    iget-object v0, p0, Lcom/t4game/NewJob;->id:[I

    iget-object v1, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v1

    aput v1, v0, v8

    iget-object v0, p0, Lcom/t4game/NewJob;->userName:[Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    iget-object v0, p0, Lcom/t4game/NewJob;->jobId:[B

    iget-object v1, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    aput-byte v1, v0, v8

    iget-object v0, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v2

    iget-object v0, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    new-array v4, v3, [S

    move v0, v9

    :goto_3
    if-ge v0, v3, :cond_1

    iget-object v1, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v1

    aput-short v1, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_0
    iput-byte v9, p0, Lcom/t4game/NewJob;->hasNewjob:B

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v5

    iget-object v0, p0, Lcom/t4game/NewJob;->jobId:[B

    aget-byte v1, v0, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/t4game/NewJob;->initMiniPlayer(BSI[SI)Lcom/t4game/MiniPlayer;

    move-result-object v0

    iput-short v10, v0, Lcom/t4game/MiniPlayer;->grade:S

    iput-boolean v10, v0, Lcom/t4game/MiniPlayer;->supportChangeImage:Z

    iget-object v1, p0, Lcom/t4game/NewJob;->cPlayer:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    :cond_2
    if-nez v6, :cond_3

    invoke-virtual {p0}, Lcom/t4game/NewJob;->init()V

    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    invoke-virtual {v0}, Lcom/t4game/PageTable;->init()V

    iget-object v0, p0, Lcom/t4game/NewJob;->gs:Lcom/t4game/GameScreen;

    const/16 v1, -0x1c

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->setDialog(B)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    invoke-virtual {v0}, Lcom/t4game/PageTable;->init()V

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    const/16 v2, 0x24d

    invoke-virtual {v1, v0, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-ne v0, v10, :cond_5

    const/16 v0, 0x24c

    invoke-virtual {p0, v0, v10}, Lcom/t4game/NewJob;->sendMsg(IB)V

    :cond_5
    iget-object v0, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    invoke-virtual {v1, v0}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    invoke-virtual {v0, v1}, Lcom/t4game/GUser;->setJob(B)V

    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v1

    invoke-virtual {v0, v1}, Lcom/t4game/GUser;->setObjectDataId(S)V

    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/GUser;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/t4game/GUser;->attr_baseHP:I

    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/t4game/GUser;->attr_baseMP:I

    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/t4game/GUser;->maxHp:I

    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/t4game/GUser;->maxMp:I

    invoke-direct {p0}, Lcom/t4game/NewJob;->processOutfit()V

    invoke-direct {p0}, Lcom/t4game/NewJob;->processBag()V

    invoke-direct {p0}, Lcom/t4game/NewJob;->processM()V

    iget-object v0, p0, Lcom/t4game/NewJob;->id:[I

    iget-object v1, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget-object v1, v1, Lcom/t4game/PageTable;->list:Lcom/t4game/List;

    iget v1, v1, Lcom/t4game/List;->index:I

    aget v0, v0, v1

    iput v0, p0, Lcom/t4game/NewJob;->currentId:I

    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v1

    iput-short v1, v0, Lcom/t4game/GUser;->canUsedPoint:S

    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    goto/16 :goto_0

    :sswitch_3
    move v0, v9

    :goto_4
    iget-object v1, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->quickUse1:[Lcom/t4game/QuickAction;

    array-length v1, v1

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->quickUse1:[Lcom/t4game/QuickAction;

    aget-object v1, v1, v0

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->quickUse1:[Lcom/t4game/QuickAction;

    aget-object v1, v1, v0

    iput v2, v1, Lcom/t4game/QuickAction;->type:I

    iget-object v1, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->quickUse1:[Lcom/t4game/QuickAction;

    aget-object v1, v1, v0

    iput-short v2, v1, Lcom/t4game/QuickAction;->QUICK_OTHOR_ICONID:S

    iget-object v1, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->quickUse1:[Lcom/t4game/QuickAction;

    aget-object v1, v1, v0

    iput v2, v1, Lcom/t4game/QuickAction;->QUICK_SKILL_ID:I

    iget-object v1, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->quickUse1:[Lcom/t4game/QuickAction;

    aget-object v1, v1, v0

    iput-short v2, v1, Lcom/t4game/QuickAction;->QUICK_SKILL_ICONID:S

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    move v1, v9

    :goto_5
    if-ge v1, v0, :cond_8

    iget-object v2, p0, Lcom/t4game/NewJob;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    iget-object v3, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->quickUse1:[Lcom/t4game/QuickAction;

    iget-object v4, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    invoke-virtual {v4, v2, v10}, Lcom/t4game/GameWorld;->readRoleQuickAction(BZ)Lcom/t4game/QuickAction;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    invoke-virtual {v0, v9}, Lcom/t4game/GameWorld;->functionGetQuickUseIcon(Z)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x24c -> :sswitch_0
        0x24d -> :sswitch_1
        0x24e -> :sswitch_2
        0x257 -> :sswitch_3
    .end sparse-switch
.end method

.method public release()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/t4game/NewJob;->cPlayer:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/NewJob;->cPlayer:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/MiniPlayer;

    invoke-virtual {v0}, Lcom/t4game/MiniPlayer;->release()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/NewJob;->cPlayer:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iput-object v2, p0, Lcom/t4game/NewJob;->cPlayer:Ljava/util/Vector;

    iget-object v0, p0, Lcom/t4game/NewJob;->wushenMan:Lcom/t4game/MiniPlayer;

    invoke-virtual {v0}, Lcom/t4game/MiniPlayer;->release()V

    iput-object v2, p0, Lcom/t4game/NewJob;->wushenMan:Lcom/t4game/MiniPlayer;

    iget-object v0, p0, Lcom/t4game/NewJob;->wushenWoman:Lcom/t4game/MiniPlayer;

    invoke-virtual {v0}, Lcom/t4game/MiniPlayer;->release()V

    iput-object v2, p0, Lcom/t4game/NewJob;->wushenWoman:Lcom/t4game/MiniPlayer;

    iget-object v0, p0, Lcom/t4game/NewJob;->shengxianMan:Lcom/t4game/MiniPlayer;

    invoke-virtual {v0}, Lcom/t4game/MiniPlayer;->release()V

    iput-object v2, p0, Lcom/t4game/NewJob;->shengxianMan:Lcom/t4game/MiniPlayer;

    iget-object v0, p0, Lcom/t4game/NewJob;->shengxianWoman:Lcom/t4game/MiniPlayer;

    invoke-virtual {v0}, Lcom/t4game/MiniPlayer;->release()V

    iput-object v2, p0, Lcom/t4game/NewJob;->shengxianWoman:Lcom/t4game/MiniPlayer;

    iput-object v2, p0, Lcom/t4game/NewJob;->focusImage:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/NewJob;->jiantouImage:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/NewJob;->zhiye:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/NewJob;->zy:[Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    invoke-virtual {v0}, Lcom/t4game/PageTable;->release()V

    iput-object v2, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    return-void
.end method

.method public sendMsg(IB)V
    .locals 3

    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    iget-object v1, p0, Lcom/t4game/NewJob;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putByte(B)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget v0, p0, Lcom/t4game/NewJob;->buttonIndex:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/t4game/NewJob;->buttonIndex:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/t4game/NewJob;->gw:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/NewJob;->id:[I

    iget-object v2, p0, Lcom/t4game/NewJob;->pt:Lcom/t4game/PageTable;

    iget-object v2, v2, Lcom/t4game/PageTable;->list:Lcom/t4game/List;

    iget v2, v2, Lcom/t4game/List;->index:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putInt(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x24c
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
