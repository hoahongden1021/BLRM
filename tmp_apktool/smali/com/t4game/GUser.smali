.class public Lcom/t4game/GUser;
.super Lcom/t4game/GSprite;


# static fields
.field public static final MOVE2POINTER:B = 0x63t

.field static final disGuaJi:I = 0x64


# instance fields
.field public AtrrbuiteHash:[[I

.field public ChouDi:Z

.field public Duel:Z

.field protected FP_speedX225:I

.field protected FP_speedY225:I

.field public GuaJiX:S

.field public GuaJiY:S

.field public HongMing:Z

.field public JieYiName:Ljava/lang/String;

.field private PathXY:[I

.field public PeiOu:Ljava/lang/String;

.field public QCoin_TW:I

.field public attackSpeed:B

.field autoAttackGuaJi:B

.field public badName:I

.field public bangPaiName:Ljava/lang/String;

.field public battlehorse:Lcom/t4game/GBattleHorse;

.field public beatBack:B

.field canUseRecPointerInGeniusTree:Z

.field public canUsedPoint:S

.field public exp:I

.field public gangDuty:B

.field public gangHonor:I

.field public gangId:I

.field public gangNickName:Ljava/lang/String;

.field public geniusTree:Lcom/t4game/GGeniusTreeData;

.field public geniusTreeId:B

.field public goldCoin:I

.field public guajiChoice:Lcom/t4game/GSprite;

.field guajiRedNameNPC:B

.field private img:Ljavax/microedition/lcdui/Image;

.field public isMainHero:Z

.field public job:B

.field private lastDir:B

.field public lockX:S

.field public lockY:S

.field public money:J

.field public nationHonor:I

.field public nextExp:I

.field public onSkillList:Ljava/util/Hashtable;

.field openGeniusTreeList:Z

.field public outFitOn:[Lcom/t4game/RoleOutfit;

.field public outfitSEState:[Ljava/util/Vector;

.field private pathIndex:I

.field private pathLength:I

.field public sex:B

.field public shenHao:Ljava/lang/String;

.field public shuangBeiExp:Z

.field public skyMoney:I

.field public someBody:Lcom/t4game/GUser;

.field public specialShow:Ljava/lang/String;

.field public specialShowColorFlog:B

.field private specialShowIconID:I

.field public title:Ljava/lang/String;

.field public unbindGoldCoin:I

.field public viewRadius:I

.field vipExpireTime:I

.field vipExpireTimeNode:J

.field public vipLevel:B


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v2, "\u65e0"

    invoke-direct {p0}, Lcom/t4game/GSprite;-><init>()V

    iput-boolean v3, p0, Lcom/t4game/GUser;->canUseRecPointerInGeniusTree:Z

    iput-boolean v3, p0, Lcom/t4game/GUser;->openGeniusTreeList:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/t4game/GUser;->vipExpireTimeNode:J

    iput v3, p0, Lcom/t4game/GUser;->vipExpireTime:I

    iput-byte v3, p0, Lcom/t4game/GUser;->guajiRedNameNPC:B

    iput-byte v3, p0, Lcom/t4game/GUser;->autoAttackGuaJi:B

    iput-byte v3, p0, Lcom/t4game/GUser;->beatBack:B

    iput-short v3, p0, Lcom/t4game/GUser;->lockX:S

    iput-short v3, p0, Lcom/t4game/GUser;->lockY:S

    iput-byte v3, p0, Lcom/t4game/GUser;->vipLevel:B

    iput-object v4, p0, Lcom/t4game/GUser;->battlehorse:Lcom/t4game/GBattleHorse;

    const/16 v0, 0x14

    iput v0, p0, Lcom/t4game/GUser;->exp:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/t4game/GUser;->nextExp:I

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/t4game/RoleOutfit;

    iput-object v0, p0, Lcom/t4game/GUser;->outFitOn:[Lcom/t4game/RoleOutfit;

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/util/Vector;

    iput-object v0, p0, Lcom/t4game/GUser;->outfitSEState:[Ljava/util/Vector;

    iput-boolean v3, p0, Lcom/t4game/GUser;->Duel:Z

    const/16 v0, 0xa

    iput-short v0, p0, Lcom/t4game/GUser;->canUsedPoint:S

    iput-boolean v3, p0, Lcom/t4game/GUser;->HongMing:Z

    iput-boolean v3, p0, Lcom/t4game/GUser;->ChouDi:Z

    const-string v0, "\u5e73\u6c11"

    iput-object v0, p0, Lcom/t4game/GUser;->title:Ljava/lang/String;

    const-string v0, "\u65e0"

    iput-object v2, p0, Lcom/t4game/GUser;->bangPaiName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/GUser;->gangNickName:Ljava/lang/String;

    const-string v0, "\u65e0"

    iput-object v2, p0, Lcom/t4game/GUser;->JieYiName:Ljava/lang/String;

    const-string v0, "\u65e0"

    iput-object v2, p0, Lcom/t4game/GUser;->PeiOu:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/GUser;->shenHao:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/t4game/GUser;->shuangBeiExp:Z

    iput v3, p0, Lcom/t4game/GUser;->badName:I

    iput v5, p0, Lcom/t4game/GUser;->specialShowIconID:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/t4game/GUser;->onSkillList:Ljava/util/Hashtable;

    iget v0, p0, Lcom/t4game/GUser;->speed:I

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/t4game/GUser;->FP_speedY225:I

    iget v0, p0, Lcom/t4game/GUser;->speed:I

    mul-int/lit8 v0, v0, 0x12

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/t4game/GUser;->FP_speedX225:I

    const/16 v0, 0x4c

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/t4game/GUser;->AtrrbuiteHash:[[I

    iput-object v4, p0, Lcom/t4game/GUser;->geniusTree:Lcom/t4game/GGeniusTreeData;

    iput-boolean v3, p0, Lcom/t4game/GUser;->isMainHero:Z

    iput-byte v5, p0, Lcom/t4game/GUser;->lastDir:B

    iput-object v4, p0, Lcom/t4game/GUser;->guajiChoice:Lcom/t4game/GSprite;

    iput-object v4, p0, Lcom/t4game/GUser;->PathXY:[I

    iput v3, p0, Lcom/t4game/GUser;->pathLength:I

    iput v3, p0, Lcom/t4game/GUser;->pathIndex:I

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/t4game/GUser;->type:B

    iput-byte v6, p0, Lcom/t4game/GUser;->layer:B

    iput-byte v6, p0, Lcom/t4game/GUser;->store:B

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/t4game/GUser;->poolId:B

    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/t4game/GUser;->outFitOn:[Lcom/t4game/RoleOutfit;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/GUser;->outFitOn:[Lcom/t4game/RoleOutfit;

    aput-object v4, v1, v0

    iget-object v1, p0, Lcom/t4game/GUser;->outfitSEState:[Ljava/util/Vector;

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-byte v3, p0, Lcom/t4game/GUser;->controlType:B

    iput-byte v3, p0, Lcom/t4game/GUser;->alpha:B

    new-instance v0, Lcom/t4game/GBattleHorse;

    invoke-direct {v0, p0}, Lcom/t4game/GBattleHorse;-><init>(Lcom/t4game/GSprite;)V

    iput-object v0, p0, Lcom/t4game/GUser;->battlehorse:Lcom/t4game/GBattleHorse;

    return-void
.end method

.method private chooseEnemyInGuaJiArea()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-byte v0, p0, Lcom/t4game/GUser;->autoAttackGuaJi:B

    if-ne v0, v2, :cond_2

    iget-boolean v0, p0, Lcom/t4game/GUser;->isMainHero:Z

    if-eqz v0, :cond_2

    iget-byte v0, p0, Lcom/t4game/GUser;->actionType:B

    if-eq v0, v2, :cond_0

    iget-byte v0, p0, Lcom/t4game/GUser;->actionType:B

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    invoke-virtual {v0}, Lcom/t4game/GScene;->getGuaJiAttackSprite2()Lcom/t4game/GSprite;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iput-object v0, p0, Lcom/t4game/GUser;->guajiChoice:Lcom/t4game/GSprite;

    invoke-virtual {p0, v1}, Lcom/t4game/GUser;->setGuaJi(Z)V

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private handleVIPExpireTime()J
    .locals 8

    invoke-static {}, Lcom/t4game/Util;->getTime()J

    move-result-wide v0

    iget v2, p0, Lcom/t4game/GUser;->vipExpireTime:I

    int-to-long v2, v2

    iget-wide v4, p0, Lcom/t4game/GUser;->vipExpireTimeNode:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Lcom/t4game/GUser;->vipExpireTime:I

    iput-wide v0, p0, Lcom/t4game/GUser;->vipExpireTimeNode:J

    iget v0, p0, Lcom/t4game/GUser;->vipExpireTime:I

    int-to-long v0, v0

    return-wide v0
.end method

.method private initPath()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GUser;->PathXY:[I

    iput v1, p0, Lcom/t4game/GUser;->pathIndex:I

    iput v1, p0, Lcom/t4game/GUser;->pathLength:I

    iput-byte v1, p0, Lcom/t4game/GUser;->controlType:B

    iput-boolean v1, p0, Lcom/t4game/GUser;->moved:Z

    iput v1, p0, Lcom/t4game/GUser;->leftStep:I

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p0}, Lcom/t4game/GameWorld;->sendSpriteMoveMessage(Lcom/t4game/GUser;)Z

    return-void
.end method


# virtual methods
.method public changeImageData(SI)V
    .locals 6

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x5

    iget-object v0, p0, Lcom/t4game/GUser;->imageDataList:[[Lcom/t4game/GImageData;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/GUser;->imageDataIdList:[S

    array-length v0, v0

    if-ge p2, v0, :cond_0

    if-ltz p2, :cond_0

    iget-boolean v0, p0, Lcom/t4game/GUser;->supportChangeImage:Z

    if-eqz v0, :cond_0

    if-eq p2, v3, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/GUser;->outlineType:B

    if-nez v0, :cond_4

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_5

    :cond_2
    if-ne p1, v2, :cond_5

    sget-object v0, Lcom/t4game/CommonConstants;->DEFAULT_POS_IMAGE:[[[S

    iget-byte v1, p0, Lcom/t4game/GUser;->job:B

    aget-object v0, v0, v1

    iget-byte v1, p0, Lcom/t4game/GUser;->sex:B

    aget-object v0, v0, v1

    aget-short v0, v0, p2

    :goto_1
    if-ne p2, v5, :cond_3

    if-ne v0, v2, :cond_6

    iget-object v1, p0, Lcom/t4game/GUser;->imageDataList:[[Lcom/t4game/GImageData;

    aget-object v1, v1, v4

    const/4 v2, 0x0

    aput-object v2, v1, v3

    :cond_3
    :goto_2
    invoke-virtual {p0, v0, p2}, Lcom/t4game/GUser;->_setImageData(SI)V

    goto :goto_0

    :cond_4
    iget-byte v0, p0, Lcom/t4game/GUser;->outlineType:B

    if-ne v0, v1, :cond_5

    if-ne p2, v5, :cond_0

    :cond_5
    move v0, p1

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/t4game/GUser;->imageDataList:[[Lcom/t4game/GImageData;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/t4game/GUser;->effectImage:Lcom/t4game/GImageData;

    aput-object v2, v1, v3

    goto :goto_2
.end method

.method public checkUserVip()Z
    .locals 4

    invoke-direct {p0}, Lcom/t4game/GUser;->handleVIPExpireTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearGuaJi()V
    .locals 3

    const/4 v2, 0x0

    iget-byte v0, p0, Lcom/t4game/GUser;->autoAttackGuaJi:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GUser;->guajiChoice:Lcom/t4game/GSprite;

    iput-byte v2, p0, Lcom/t4game/GUser;->autoAttackGuaJi:B

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v2, v0, Lcom/t4game/GameWorld;->autoGuaJi:Z

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-byte v1, p0, Lcom/t4game/GUser;->autoAttackGuaJi:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->sendSpriteAutoGuaJi(B)Z

    :cond_0
    iput-byte v2, p0, Lcom/t4game/GUser;->controlType:B

    iput v2, p0, Lcom/t4game/GUser;->leftStep:I

    invoke-virtual {p0, v2}, Lcom/t4game/GUser;->setActType(B)V

    iget-byte v0, p0, Lcom/t4game/GUser;->dir:B

    invoke-virtual {p0, v2, v0}, Lcom/t4game/GUser;->setAction(BB)V

    :cond_1
    return-void
.end method

.method public drawSelected(SSLjavax/microedition/lcdui/Graphics;)V
    .locals 8

    const/16 v5, 0xb

    invoke-super {p0, p1, p2, p3}, Lcom/t4game/GSprite;->drawSelected(SSLjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->jobSmallImg:Ljavax/microedition/lcdui/Image;

    add-int/lit8 v1, p1, 0x1f

    add-int/lit8 v2, p2, 0x4

    iget-byte v3, p0, Lcom/t4game/GUser;->job:B

    mul-int/lit8 v3, v3, 0xb

    const/4 v4, 0x0

    move v6, v5

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public drawSpecialShow(Ljavax/microedition/lcdui/Graphics;III)V
    .locals 7

    const/4 v4, 0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/GUser;->specialShow:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GUser;->specialShow:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/GUser;->specialShowType:B

    if-eq v0, v4, :cond_4

    iget-object v0, p0, Lcom/t4game/GUser;->specialShow:Ljava/lang/String;

    invoke-static {v0}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    sub-int v0, p2, v0

    :goto_0
    iget-object v1, p0, Lcom/t4game/GUser;->img:Ljavax/microedition/lcdui/Image;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/t4game/GUser;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iget-byte v1, p0, Lcom/t4game/GUser;->specialShowType:B

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/t4game/GUser;->img:Ljavax/microedition/lcdui/Image;

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v2

    sub-int v2, p3, v2

    invoke-virtual {p1, v1, v0, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :goto_1
    iget-object v1, p0, Lcom/t4game/GUser;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    move v1, v0

    :goto_2
    iget-byte v0, p0, Lcom/t4game/GUser;->specialShowColorFlog:B

    if-ltz v0, :cond_2

    iget-byte v0, p0, Lcom/t4game/GUser;->specialShowColorFlog:B

    sget-object v2, Lcom/t4game/CommonConstants;->ChengHaoQualityColor:[I

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-byte v0, p0, Lcom/t4game/GUser;->specialShowColorFlog:B

    move v2, v0

    :goto_3
    iget-byte v0, p0, Lcom/t4game/GUser;->specialShowType:B

    if-eq v0, v4, :cond_0

    iget-object v0, p0, Lcom/t4game/GUser;->specialShow:Ljava/lang/String;

    sget-object v4, Lcom/t4game/CommonConstants;->ChengHaoQualityColor_side:[I

    aget v4, v4, v2

    sget-object v5, Lcom/t4game/CommonConstants;->ChengHaoQualityColor:[I

    aget v5, v5, v2

    move v2, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/t4game/GUser;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {p1, v1, v0, p3, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_3

    :cond_3
    move v1, v0

    goto :goto_2

    :cond_4
    move v0, p2

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/t4game/GUser;->name:Ljava/lang/String;

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/t4game/GUser;->job:B

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    const-string v1, "[\u6b66]"

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/t4game/GUser;->gangNickName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/GUser;->gangNickName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    iget-byte v2, p0, Lcom/t4game/GUser;->job:B

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    const-string v1, "[\u5723]"

    goto :goto_0
.end method

.method protected hitTest(II)I
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Lcom/t4game/GSprite;->hitTest(II)I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/t4game/GUser;->isMainHero:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v2, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    invoke-virtual {v2, p1}, Lcom/t4game/GScene;->sceneX2GridX(I)I

    move-result v2

    iget-object v3, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    invoke-virtual {v3, p2}, Lcom/t4game/GScene;->sceneY2GridY(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/t4game/GScene;->isInTransferAreaG(II)Lcom/t4game/GTransferArea;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-byte v2, p0, Lcom/t4game/GUser;->autoAttackGuaJi:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v4, v0, Lcom/t4game/GameWorld;->stillMove:Z

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-byte v0, v0, Lcom/t4game/GameWorld;->gameScreenState:B

    const/16 v2, 0x28

    if-eq v0, v2, :cond_2

    invoke-virtual {p0, v4}, Lcom/t4game/GUser;->setActType(B)V

    iget-byte v0, p0, Lcom/t4game/GUser;->dir:B

    invoke-virtual {p0, v4, v0}, Lcom/t4game/GUser;->setAction(BB)V

    iput v4, p0, Lcom/t4game/GUser;->nowMoveTick:I

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p0}, Lcom/t4game/GameWorld;->sendSpriteMoveMessage(Lcom/t4game/GUser;)Z

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-byte v1, v1, Lcom/t4game/GTransferArea;->id:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->sendChangeSceneMessage(B)Z

    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method protected final moveByDir()V
    .locals 12

    const/4 v10, 0x1

    const/16 v9, 0xf

    const/4 v8, 0x0

    sget-object v0, Lcom/t4game/GUser;->DIRORDER:[[B

    iget-byte v1, p0, Lcom/t4game/GUser;->dir:B

    aget-object v0, v0, v1

    iput-boolean v8, p0, Lcom/t4game/GUser;->moved:Z

    move v1, v8

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_4

    and-int/lit8 v2, v1, 0x1

    if-lez v2, :cond_1

    iget-boolean v2, p0, Lcom/t4game/GUser;->rightHand:Z

    if-nez v2, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    aget-byte v2, v0, v1

    sget-byte v3, Lcom/t4game/GUser;->DIR_UP:B

    if-ne v2, v3, :cond_5

    iget v3, p0, Lcom/t4game/GUser;->FP_speed:I

    neg-int v3, v3

    iput v3, p0, Lcom/t4game/GUser;->FP_nowSpeedY:I

    iput v8, p0, Lcom/t4game/GUser;->FP_nowSpeedX:I

    :cond_2
    :goto_1
    iget v3, p0, Lcom/t4game/GUser;->FP_nowSpeedX:I

    sget v4, Lcom/t4game/GameScreen;->lastFrameTimeTaken:I

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x32

    div-int/lit8 v3, v3, 0x64

    iput v3, p0, Lcom/t4game/GUser;->FP_nowSpeedX:I

    iget v3, p0, Lcom/t4game/GUser;->FP_nowSpeedY:I

    sget v4, Lcom/t4game/GameScreen;->lastFrameTimeTaken:I

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x32

    div-int/lit8 v3, v3, 0x64

    iput v3, p0, Lcom/t4game/GUser;->FP_nowSpeedY:I

    iget v3, p0, Lcom/t4game/GUser;->FP_nowSpeedX:I

    iget v4, p0, Lcom/t4game/GUser;->FP_mapX:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/t4game/GUser;->FP_nowSpeedY:I

    iget v5, p0, Lcom/t4game/GUser;->FP_mapY:I

    add-int/2addr v4, v5

    shr-int/lit8 v5, v3, 0x4

    shr-int/lit8 v6, v4, 0x4

    iget-short v7, p0, Lcom/t4game/GUser;->mapX:S

    sub-int v7, v5, v7

    invoke-static {v7}, Lcom/t4game/Util;->abs(I)I

    move-result v7

    if-le v7, v9, :cond_11

    iget-short v3, p0, Lcom/t4game/GUser;->mapX:S

    if-le v5, v3, :cond_c

    iget-short v3, p0, Lcom/t4game/GUser;->mapX:S

    add-int/lit8 v3, v3, 0xf

    :goto_2
    shl-int/lit8 v5, v3, 0x4

    :goto_3
    iget-short v7, p0, Lcom/t4game/GUser;->mapY:S

    sub-int v7, v6, v7

    invoke-static {v7}, Lcom/t4game/Util;->abs(I)I

    move-result v7

    if-le v7, v9, :cond_10

    iget-short v4, p0, Lcom/t4game/GUser;->mapY:S

    sub-int v4, v6, v4

    if-lez v4, :cond_d

    iget-short v4, p0, Lcom/t4game/GUser;->mapY:S

    add-int/lit8 v4, v4, 0xf

    :goto_4
    shl-int/lit8 v6, v4, 0x4

    :goto_5
    invoke-virtual {p0, v3, v4}, Lcom/t4game/GUser;->hitTest(II)I

    move-result v7

    if-nez v7, :cond_f

    if-nez v1, :cond_e

    iput-boolean v10, p0, Lcom/t4game/GUser;->rightHand:Z

    :cond_3
    :goto_6
    iput-boolean v10, p0, Lcom/t4game/GUser;->moved:Z

    iput v5, p0, Lcom/t4game/GUser;->FP_mapX:I

    iput v6, p0, Lcom/t4game/GUser;->FP_mapY:I

    invoke-virtual {p0, v3, v4}, Lcom/t4game/GUser;->setPos1(II)V

    iget-byte v0, p0, Lcom/t4game/GUser;->lastDir:B

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p0}, Lcom/t4game/GameWorld;->sendSpriteMoveMessage(Lcom/t4game/GUser;)Z

    iput v8, p0, Lcom/t4game/GUser;->nowMoveTick:I

    iput-byte v2, p0, Lcom/t4game/GUser;->lastDir:B

    :cond_4
    :goto_7
    return-void

    :cond_5
    sget-byte v3, Lcom/t4game/GUser;->DIR_RIGHT:B

    if-ne v2, v3, :cond_6

    iget v3, p0, Lcom/t4game/GUser;->FP_speed:I

    iput v3, p0, Lcom/t4game/GUser;->FP_nowSpeedX:I

    iput v8, p0, Lcom/t4game/GUser;->FP_nowSpeedY:I

    goto :goto_1

    :cond_6
    sget-byte v3, Lcom/t4game/GUser;->DIR_DOWN:B

    if-ne v2, v3, :cond_7

    iput v8, p0, Lcom/t4game/GUser;->FP_nowSpeedX:I

    iget v3, p0, Lcom/t4game/GUser;->FP_speed:I

    iput v3, p0, Lcom/t4game/GUser;->FP_nowSpeedY:I

    goto/16 :goto_1

    :cond_7
    sget-byte v3, Lcom/t4game/GUser;->DIR_LEFT:B

    if-ne v2, v3, :cond_8

    iget v3, p0, Lcom/t4game/GUser;->FP_speed:I

    neg-int v3, v3

    iput v3, p0, Lcom/t4game/GUser;->FP_nowSpeedX:I

    iput v8, p0, Lcom/t4game/GUser;->FP_nowSpeedY:I

    goto/16 :goto_1

    :cond_8
    sget-byte v3, Lcom/t4game/GUser;->DIR_UPRIGHT:B

    if-ne v2, v3, :cond_9

    iget v3, p0, Lcom/t4game/GUser;->FP_speedX225:I

    iput v3, p0, Lcom/t4game/GUser;->FP_nowSpeedX:I

    iget v3, p0, Lcom/t4game/GUser;->FP_speedY225:I

    neg-int v3, v3

    iput v3, p0, Lcom/t4game/GUser;->FP_nowSpeedY:I

    goto/16 :goto_1

    :cond_9
    sget-byte v3, Lcom/t4game/GUser;->DIR_DOWNLEFT:B

    if-ne v2, v3, :cond_a

    iget v3, p0, Lcom/t4game/GUser;->FP_speedX225:I

    neg-int v3, v3

    iput v3, p0, Lcom/t4game/GUser;->FP_nowSpeedX:I

    iget v3, p0, Lcom/t4game/GUser;->FP_speedY225:I

    iput v3, p0, Lcom/t4game/GUser;->FP_nowSpeedY:I

    goto/16 :goto_1

    :cond_a
    sget-byte v3, Lcom/t4game/GUser;->DIR_UPLEFT:B

    if-ne v2, v3, :cond_b

    iget v3, p0, Lcom/t4game/GUser;->FP_speedX225:I

    neg-int v3, v3

    iput v3, p0, Lcom/t4game/GUser;->FP_nowSpeedX:I

    iget v3, p0, Lcom/t4game/GUser;->FP_speedY225:I

    neg-int v3, v3

    iput v3, p0, Lcom/t4game/GUser;->FP_nowSpeedY:I

    goto/16 :goto_1

    :cond_b
    sget-byte v3, Lcom/t4game/GUser;->DIR_DOWNRIGHT:B

    if-ne v2, v3, :cond_2

    iget v3, p0, Lcom/t4game/GUser;->FP_speedX225:I

    iput v3, p0, Lcom/t4game/GUser;->FP_nowSpeedX:I

    iget v3, p0, Lcom/t4game/GUser;->FP_speedY225:I

    iput v3, p0, Lcom/t4game/GUser;->FP_nowSpeedY:I

    goto/16 :goto_1

    :cond_c
    iget-short v3, p0, Lcom/t4game/GUser;->mapX:S

    sub-int/2addr v3, v9

    goto/16 :goto_2

    :cond_d
    iget-short v4, p0, Lcom/t4game/GUser;->mapY:S

    sub-int/2addr v4, v9

    goto/16 :goto_4

    :cond_e
    and-int/lit8 v0, v1, 0x1

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/t4game/GUser;->rightHand:Z

    if-eqz v0, :cond_3

    iput-boolean v8, p0, Lcom/t4game/GUser;->rightHand:Z

    goto/16 :goto_6

    :cond_f
    const/4 v2, 0x2

    if-ne v7, v2, :cond_0

    goto :goto_7

    :cond_10
    move v11, v6

    move v6, v4

    move v4, v11

    goto/16 :goto_5

    :cond_11
    move v11, v5

    move v5, v3

    move v3, v11

    goto/16 :goto_3
.end method

.method public onKeyPressed(I)V
    .locals 6

    const/4 v2, -0x1

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-byte v0, p0, Lcom/t4game/GUser;->dir:B

    if-ne p1, v2, :cond_1

    sget-byte v1, Lcom/t4game/GUser;->DIR_UP:B

    :goto_0
    const/4 v2, -0x5

    if-eq p1, v2, :cond_0

    iget-byte v2, p0, Lcom/t4game/GUser;->controlType:B

    if-ne v2, v4, :cond_8

    iget-object v2, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v2, v2, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iget-byte v2, v2, Lcom/t4game/GameScreen;->roleQuestType:B

    if-nez v2, :cond_8

    iput-byte v3, p0, Lcom/t4game/GUser;->controlType:B

    iput v3, p0, Lcom/t4game/GUser;->leftStep:I

    iget-object v2, p0, Lcom/t4game/GUser;->DestPos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    iget-object v2, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v2, v2, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-boolean v2, v2, Lcom/t4game/GameWorld;->stillMove:Z

    if-eqz v2, :cond_6

    sget-object v2, Lcom/t4game/GUser;->DIR_NEGATIVE_LIST:[B

    aget-byte v2, v2, v1

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v3, v0, Lcom/t4game/GameWorld;->stillMove:Z

    invoke-virtual {p0, v3}, Lcom/t4game/GUser;->setActType(B)V

    iget-byte v0, p0, Lcom/t4game/GUser;->dir:B

    invoke-virtual {p0, v3, v0}, Lcom/t4game/GUser;->setAction(BB)V

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p0}, Lcom/t4game/GameWorld;->sendSpriteMoveMessage(Lcom/t4game/GUser;)Z

    :goto_1
    iget-short v0, p0, Lcom/t4game/GUser;->grade:S

    sget-short v1, Lcom/t4game/Defaults;->QUEST_START_ALERT_LEVEL:S

    if-ge v0, v1, :cond_7

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/t4game/GameScreen;->isFinshRenWuState:B

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v1, v1, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    const/16 v1, -0x2c

    invoke-virtual {v0, v1, v3}, Lcom/t4game/GameScreen;->setState(BZ)V

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iput-byte v3, v0, Lcom/t4game/GUser;->actionType:B

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/4 v1, -0x2

    if-ne p1, v1, :cond_2

    sget-byte v1, Lcom/t4game/GUser;->DIR_DOWN:B

    goto :goto_0

    :cond_2
    const/4 v1, -0x3

    if-ne p1, v1, :cond_3

    sget-byte v1, Lcom/t4game/GUser;->DIR_LEFT:B

    goto :goto_0

    :cond_3
    const/4 v1, -0x4

    if-ne p1, v1, :cond_c

    sget-byte v1, Lcom/t4game/GUser;->DIR_RIGHT:B

    goto :goto_0

    :cond_4
    if-eq v0, v1, :cond_5

    invoke-virtual {p0, v4}, Lcom/t4game/GUser;->setActType(B)V

    invoke-virtual {p0, v5, v1}, Lcom/t4game/GUser;->setAction(BB)V

    iput v3, p0, Lcom/t4game/GUser;->nowMoveTick:I

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p0}, Lcom/t4game/GameWorld;->sendSpriteMoveMessage(Lcom/t4game/GUser;)Z

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v3, v0, Lcom/t4game/GameWorld;->stillMove:Z

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v4}, Lcom/t4game/GUser;->setActType(B)V

    invoke-virtual {p0, v5, v1}, Lcom/t4game/GUser;->setAction(BB)V

    iput v3, p0, Lcom/t4game/GUser;->nowMoveTick:I

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p0}, Lcom/t4game/GameWorld;->sendSpriteMoveMessage(Lcom/t4game/GUser;)Z

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setState(B)V

    goto :goto_2

    :cond_8
    iput-byte v3, p0, Lcom/t4game/GUser;->controlType:B

    iput v3, p0, Lcom/t4game/GUser;->leftStep:I

    iget-object v2, p0, Lcom/t4game/GUser;->DestPos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    iget-object v2, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v2, v2, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-boolean v2, v2, Lcom/t4game/GameWorld;->stillMove:Z

    if-eqz v2, :cond_b

    sget-object v2, Lcom/t4game/GUser;->DIR_NEGATIVE_LIST:[B

    aget-byte v2, v2, v1

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v3, v0, Lcom/t4game/GameWorld;->stillMove:Z

    invoke-virtual {p0, v3}, Lcom/t4game/GUser;->setActType(B)V

    iget-byte v0, p0, Lcom/t4game/GUser;->dir:B

    invoke-virtual {p0, v3, v0}, Lcom/t4game/GUser;->setAction(BB)V

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p0}, Lcom/t4game/GameWorld;->sendSpriteMoveMessage(Lcom/t4game/GUser;)Z

    goto :goto_2

    :cond_9
    if-eq v0, v1, :cond_a

    invoke-virtual {p0, v4}, Lcom/t4game/GUser;->setActType(B)V

    invoke-virtual {p0, v5, v1}, Lcom/t4game/GUser;->setAction(BB)V

    iput v3, p0, Lcom/t4game/GUser;->nowMoveTick:I

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p0}, Lcom/t4game/GameWorld;->sendSpriteMoveMessage(Lcom/t4game/GUser;)Z

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v3, v0, Lcom/t4game/GameWorld;->stillMove:Z

    goto/16 :goto_2

    :cond_b
    invoke-virtual {p0, v4}, Lcom/t4game/GUser;->setActType(B)V

    invoke-virtual {p0, v5, v1}, Lcom/t4game/GUser;->setAction(BB)V

    iput v3, p0, Lcom/t4game/GUser;->nowMoveTick:I

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p0}, Lcom/t4game/GameWorld;->sendSpriteMoveMessage(Lcom/t4game/GUser;)Z

    goto/16 :goto_2

    :cond_c
    move v1, v2

    goto/16 :goto_0
.end method

.method public onKeyReleased(I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    const/4 v0, -0x3

    if-eq p1, v0, :cond_0

    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-boolean v0, v0, Lcom/t4game/GameWorld;->stillMove:Z

    if-nez v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/GUser;->actionType:B

    if-eqz v0, :cond_1

    iput-byte v1, p0, Lcom/t4game/GUser;->controlType:B

    invoke-virtual {p0, v1}, Lcom/t4game/GUser;->setActType(B)V

    iget-byte v0, p0, Lcom/t4game/GUser;->dir:B

    invoke-virtual {p0, v1, v0}, Lcom/t4game/GUser;->setAction(BB)V

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p0}, Lcom/t4game/GameWorld;->sendSpriteMoveMessage(Lcom/t4game/GUser;)Z

    :cond_1
    const/4 v0, -0x5

    if-eq p1, v0, :cond_2

    :cond_2
    return-void
.end method

.method public onLevelUp(SSS)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-byte v0, v0, Lcom/t4game/GameWorld;->isup:B

    if-ne v0, v3, :cond_1

    invoke-super {p0, p1, p2, p3}, Lcom/t4game/GSprite;->onLevelUp(SSS)V

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iput-byte v1, v0, Lcom/t4game/GameWorld;->isup:B

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->roleUpOn:[Z

    aput-boolean v1, v0, v1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/t4game/GUser;->intId:I

    iget-object v1, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v1, v1, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget v1, v1, Lcom/t4game/GUser;->intId:I

    if-ne v0, v1, :cond_0

    if-ne p1, v3, :cond_2

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0}, Lcom/t4game/GameWorld;->sendAutoAddSkillPointMessage()Z

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iput-byte v2, v0, Lcom/t4game/GameWorld;->isup:B

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iput-byte v2, v0, Lcom/t4game/GameWorld;->isup:B

    :cond_3
    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-byte v0, v0, Lcom/t4game/GameWorld;->isup:B

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iput-byte v3, v0, Lcom/t4game/GameWorld;->isup:B

    goto :goto_0
.end method

.method public processKeyEvent(IZ)V
    .locals 2

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/GUser;->beatBack:B

    invoke-virtual {p0}, Lcom/t4game/GUser;->clearGuaJi()V

    iget-object v0, p0, Lcom/t4game/GUser;->xianZhiFlag:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/t4game/GUser;->onKeyPressed(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/t4game/GUser;->onKeyReleased(I)V

    goto :goto_0
.end method

.method public release()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/t4game/GSprite;->release()V

    iget-object v0, p0, Lcom/t4game/GUser;->onSkillList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/GUser;->outFitOn:[Lcom/t4game/RoleOutfit;

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/t4game/GUser;->outfitSEState:[Ljava/util/Vector;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/t4game/GUser;->guajiChoice:Lcom/t4game/GSprite;

    iget-object v0, p0, Lcom/t4game/GUser;->battlehorse:Lcom/t4game/GBattleHorse;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/GUser;->battlehorse:Lcom/t4game/GBattleHorse;

    invoke-virtual {v0}, Lcom/t4game/GBattleHorse;->Release()V

    :cond_1
    iput-object v2, p0, Lcom/t4game/GUser;->battlehorse:Lcom/t4game/GBattleHorse;

    return-void
.end method

.method public releaseMainHero()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v2, p0, Lcom/t4game/GUser;->distancenext:Lcom/t4game/GSprite;

    iput-object v2, p0, Lcom/t4game/GUser;->distancepre:Lcom/t4game/GSprite;

    invoke-virtual {p0}, Lcom/t4game/GUser;->cleanSpecialEffect()V

    iget-object v0, p0, Lcom/t4game/GUser;->bloodUp:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iput-short v1, p0, Lcom/t4game/GUser;->mapY:S

    iput-short v1, p0, Lcom/t4game/GUser;->mapX:S

    iput-short v1, p0, Lcom/t4game/GUser;->gridY:S

    iput-short v1, p0, Lcom/t4game/GUser;->gridX:S

    iput-object v2, p0, Lcom/t4game/GUser;->pre:Lcom/t4game/GMapObject;

    iput-object v2, p0, Lcom/t4game/GUser;->next:Lcom/t4game/GMapObject;

    iput-object v2, p0, Lcom/t4game/GUser;->gnext:Lcom/t4game/GMapObject;

    iput-object v2, p0, Lcom/t4game/GUser;->gpre:Lcom/t4game/GMapObject;

    iput-boolean v1, p0, Lcom/t4game/GUser;->visible:Z

    iput-boolean v1, p0, Lcom/t4game/GUser;->moved:Z

    return-void
.end method

.method public renderImageClip(Ljavax/microedition/lcdui/Graphics;Lcom/t4game/GImageData;IIIIIIB)V
    .locals 13

    invoke-super/range {p0 .. p9}, Lcom/t4game/GSprite;->renderImageClip(Ljavax/microedition/lcdui/Graphics;Lcom/t4game/GImageData;IIIIIIB)V

    iget-object v0, p0, Lcom/t4game/GUser;->xianZhiFlag:[Z

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/GUser;->outlineType:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/t4game/GameScreen;->screenQuilityIndex:B

    if-gtz v0, :cond_0

    sget-object v0, Lcom/t4game/CommonConstants;->IMAGEPOS_OUTFITPOS_MAPPING:[B

    aget-byte v0, v0, p3

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/GUser;->outfitSEState:[Ljava/util/Vector;

    aget-object v6, v1, v0

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v7

    if-eqz v7, :cond_0

    and-int/lit8 v0, p9, 0x2

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_1
    mul-int/lit8 v2, p4, 0x6

    iget-object v3, p2, Lcom/t4game/GImageData;->clips:[B

    add-int/lit8 v4, v2, 0x3

    aget-byte v8, v3, v4

    iget-object v3, p2, Lcom/t4game/GImageData;->clips:[B

    add-int/lit8 v4, v2, 0x2

    aget-byte v9, v3, v4

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    sub-int v0, v8, v0

    neg-int v0, v0

    iget-object v3, p2, Lcom/t4game/GImageData;->clips:[B

    add-int/lit8 v4, v2, 0x4

    aget-byte v3, v3, v4

    sub-int/2addr v0, v3

    move v10, v0

    :goto_2
    if-eqz v1, :cond_7

    const/4 v0, 0x1

    sub-int v0, v9, v0

    neg-int v0, v0

    iget-object v1, p2, Lcom/t4game/GImageData;->clips:[B

    add-int/lit8 v2, v2, 0x5

    aget-byte v1, v1, v2

    sub-int/2addr v0, v1

    move v11, v0

    :goto_3
    const/4 v0, 0x0

    move v12, v0

    :goto_4
    if-ge v12, v7, :cond_0

    invoke-virtual {v6, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [S

    check-cast p1, [S

    const/4 v0, 0x3

    aget-short v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    aput-short v1, p1, v0

    const/4 v0, 0x3

    aget-short v0, p1, v0

    const/4 v1, 0x2

    aget-short v1, p1, v1

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    aget-short v1, p1, v0

    const/4 v0, 0x1

    aget-short v2, p1, v0

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/t4game/GUtil;->random(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GUser;->addSpecialEffect(IIIII)Lcom/t4game/GSEObject;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/t4game/GSEObject;->type:B

    add-int v1, p7, v10

    iget v2, p0, Lcom/t4game/GUser;->offsetOX:I

    add-int/2addr v1, v2

    add-int v2, p8, v11

    iget v3, p0, Lcom/t4game/GUser;->offsetOY:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2, v8, v9}, Lcom/t4game/GSEObject;->setOffsetPos(IIII)V

    :cond_2
    const/4 v0, 0x3

    const/4 v1, 0x0

    aput-short v1, p1, v0

    :cond_3
    add-int/lit8 v0, v12, 0x1

    move v12, v0

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    iget-object v0, p2, Lcom/t4game/GImageData;->clips:[B

    add-int/lit8 v3, v2, 0x4

    aget-byte v0, v0, v3

    move v10, v0

    goto :goto_2

    :cond_7
    iget-object v0, p2, Lcom/t4game/GImageData;->clips:[B

    add-int/lit8 v1, v2, 0x5

    aget-byte v0, v0, v1

    move v11, v0

    goto :goto_3
.end method

.method public setBeatBack(Lcom/t4game/GUser;)V
    .locals 1

    iget-byte v0, p0, Lcom/t4game/GUser;->beatBack:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/GUser;->beatBack:B

    iput-object p1, p0, Lcom/t4game/GUser;->someBody:Lcom/t4game/GUser;

    iget-short v0, p0, Lcom/t4game/GUser;->mapX:S

    iput-short v0, p0, Lcom/t4game/GUser;->lockX:S

    iget-short v0, p0, Lcom/t4game/GUser;->mapY:S

    iput-short v0, p0, Lcom/t4game/GUser;->lockY:S

    :cond_0
    return-void
.end method

.method public setGuaJi(Z)V
    .locals 10

    const/4 v9, -0x1

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    invoke-virtual {v0}, Lcom/t4game/GScene;->getGuaJiAttackSprite()Lcom/t4game/GSprite;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/GUser;->guajiChoice:Lcom/t4game/GSprite;

    if-nez v1, :cond_2

    iput-object v0, p0, Lcom/t4game/GUser;->guajiChoice:Lcom/t4game/GSprite;

    :goto_0
    if-eqz v0, :cond_8

    if-eqz p1, :cond_1

    iput v6, p0, Lcom/t4game/GUser;->leftStep:I

    invoke-virtual {p0, v6}, Lcom/t4game/GUser;->setActType(B)V

    iget-byte v1, p0, Lcom/t4game/GUser;->dir:B

    invoke-virtual {p0, v6, v1}, Lcom/t4game/GUser;->setAction(BB)V

    iput-byte v7, p0, Lcom/t4game/GUser;->autoAttackGuaJi:B

    iget-object v1, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v1, v1, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v1, v1, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-byte v2, p0, Lcom/t4game/GUser;->autoAttackGuaJi:B

    invoke-virtual {v1, v2}, Lcom/t4game/GameWorld;->sendSpriteAutoGuaJi(B)Z

    :cond_0
    iget-short v1, p0, Lcom/t4game/GUser;->mapX:S

    iput-short v1, p0, Lcom/t4game/GUser;->GuaJiX:S

    iget-short v1, p0, Lcom/t4game/GUser;->mapY:S

    iput-short v1, p0, Lcom/t4game/GUser;->GuaJiY:S

    iget-object v1, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v1, v1, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v1}, Lcom/t4game/GameWorld;->clearSkillLead()V

    :cond_1
    iget-short v1, p0, Lcom/t4game/GUser;->GuaJiX:S

    iget-short v2, p0, Lcom/t4game/GUser;->GuaJiY:S

    iget-short v3, p0, Lcom/t4game/GUser;->mapX:S

    iget-short v4, p0, Lcom/t4game/GUser;->mapY:S

    const/16 v5, 0x64

    invoke-static {v1, v2, v3, v4, v5}, Lcom/t4game/Util;->testInterRound(IIIII)Z

    move-result v1

    if-nez v1, :cond_4

    iget-short v0, p0, Lcom/t4game/GUser;->GuaJiX:S

    iget-short v1, p0, Lcom/t4game/GUser;->GuaJiY:S

    invoke-virtual {p0, v0, v1, v8}, Lcom/t4game/GUser;->setMoveDestPos(IIB)V

    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/t4game/GUser;->controlType:B

    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/t4game/GUser;->guajiChoice:Lcom/t4game/GSprite;

    iget-boolean v1, v1, Lcom/t4game/GSprite;->visibleReady:Z

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/t4game/GUser;->guajiChoice:Lcom/t4game/GSprite;

    iget-object v1, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget v2, v0, Lcom/t4game/GSprite;->intId:I

    iput v2, v1, Lcom/t4game/GScene;->choicedSpriteId:I

    iget-object v1, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-byte v2, v0, Lcom/t4game/GSprite;->type:B

    iput-byte v2, v1, Lcom/t4game/GScene;->choicedSpriteType:B

    goto :goto_0

    :cond_3
    iput-object v0, p0, Lcom/t4game/GUser;->guajiChoice:Lcom/t4game/GSprite;

    goto :goto_0

    :cond_4
    iget-byte v1, p0, Lcom/t4game/GUser;->skillPos:B

    if-ne v1, v9, :cond_6

    iget-object v1, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v1, v1, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v1, v7}, Lcom/t4game/GameWorld;->useQuickNomarlAttack(Z)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v6}, Lcom/t4game/GUser;->setActType(B)V

    iget-byte v0, p0, Lcom/t4game/GUser;->dir:B

    invoke-virtual {p0, v6, v0}, Lcom/t4game/GUser;->setAction(BB)V

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, v6}, Lcom/t4game/GameWorld;->useQuickNomarlAttack(Z)Z

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v7, v0, Lcom/t4game/GameWorld;->autoAttack:Z

    iput-byte v6, p0, Lcom/t4game/GUser;->controlType:B

    iput v6, p0, Lcom/t4game/GUser;->leftStep:I

    goto :goto_1

    :cond_5
    iget-short v1, v0, Lcom/t4game/GSprite;->mapX:S

    iget-short v0, v0, Lcom/t4game/GSprite;->mapY:S

    invoke-virtual {p0, v1, v0, v8}, Lcom/t4game/GUser;->setMoveDestPos(IIB)V

    iput-byte v8, p0, Lcom/t4game/GUser;->controlType:B

    iput-byte v9, p0, Lcom/t4game/GUser;->skillPos:B

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v1, v1, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-byte v2, p0, Lcom/t4game/GUser;->skillPos:B

    invoke-virtual {v1, v2, v7}, Lcom/t4game/GameWorld;->useQuickSkill(BZ)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, v6}, Lcom/t4game/GUser;->setActType(B)V

    iget-byte v0, p0, Lcom/t4game/GUser;->dir:B

    invoke-virtual {p0, v6, v0}, Lcom/t4game/GUser;->setAction(BB)V

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-byte v1, p0, Lcom/t4game/GUser;->skillPos:B

    invoke-virtual {v0, v1, v6}, Lcom/t4game/GameWorld;->useQuickSkill(BZ)Z

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v7, v0, Lcom/t4game/GameWorld;->autoAttack:Z

    iput-byte v6, p0, Lcom/t4game/GUser;->controlType:B

    iput v6, p0, Lcom/t4game/GUser;->leftStep:I

    goto :goto_1

    :cond_7
    iget-short v1, v0, Lcom/t4game/GSprite;->mapX:S

    iget-short v0, v0, Lcom/t4game/GSprite;->mapY:S

    invoke-virtual {p0, v1, v0, v8}, Lcom/t4game/GUser;->setMoveDestPos(IIB)V

    iput-byte v8, p0, Lcom/t4game/GUser;->controlType:B

    iput-byte v9, p0, Lcom/t4game/GUser;->skillPos:B

    goto :goto_1

    :cond_8
    iput v6, p0, Lcom/t4game/GUser;->leftStep:I

    invoke-virtual {p0, v6}, Lcom/t4game/GUser;->setActType(B)V

    iget-byte v0, p0, Lcom/t4game/GUser;->dir:B

    invoke-virtual {p0, v6, v0}, Lcom/t4game/GUser;->setAction(BB)V

    goto/16 :goto_1
.end method

.method public setImageData(SI)V
    .locals 6

    const/4 v5, 0x4

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x5

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/t4game/GUser;->imageDataList:[[Lcom/t4game/GImageData;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/GUser;->imageDataIdList:[S

    array-length v0, v0

    if-ge p2, v0, :cond_0

    iget-boolean v0, p0, Lcom/t4game/GUser;->supportChangeImage:Z

    if-eqz v0, :cond_8

    if-eq p2, v3, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/GUser;->outlineType:B

    if-nez v0, :cond_4

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_7

    :cond_2
    if-ne p1, v2, :cond_7

    sget-object v0, Lcom/t4game/CommonConstants;->DEFAULT_POS_IMAGE:[[[S

    iget-byte v1, p0, Lcom/t4game/GUser;->job:B

    aget-object v0, v0, v1

    iget-byte v1, p0, Lcom/t4game/GUser;->sex:B

    aget-object v0, v0, v1

    aget-short v0, v0, p2

    :goto_1
    if-ne p2, v5, :cond_3

    if-ne v0, v2, :cond_6

    iget-object v1, p0, Lcom/t4game/GUser;->imageDataList:[[Lcom/t4game/GImageData;

    aget-object v1, v1, v4

    const/4 v2, 0x0

    aput-object v2, v1, v3

    :cond_3
    :goto_2
    invoke-virtual {p0, v0, p2}, Lcom/t4game/GUser;->_setImageData(SI)V

    goto :goto_0

    :cond_4
    iget-byte v0, p0, Lcom/t4game/GUser;->outlineType:B

    if-ne v0, v1, :cond_7

    if-ne p2, v5, :cond_7

    iget-object v0, p0, Lcom/t4game/GUser;->outFitOn:[Lcom/t4game/RoleOutfit;

    aget-object v0, v0, p2

    if-nez v0, :cond_5

    move v0, v2

    goto :goto_1

    :cond_5
    iget-short v0, v0, Lcom/t4game/RoleOutfit;->imageId:S

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/t4game/GUser;->imageDataList:[[Lcom/t4game/GImageData;

    aget-object v1, v1, v4

    iget-object v2, p0, Lcom/t4game/GUser;->effectImage:Lcom/t4game/GImageData;

    aput-object v2, v1, v3

    goto :goto_2

    :cond_7
    move v0, p1

    goto :goto_1

    :cond_8
    move v0, p1

    goto :goto_2
.end method

.method public setJob(B)V
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    iput-byte p1, p0, Lcom/t4game/GUser;->job:B

    sget-byte v1, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    sget-object v2, Lcom/t4game/CommonConstants;->DEFAULT_WEAPON_EFFECT_IMAGEID:[Ljava/lang/String;

    aget-object v0, v2, v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GImageData;

    iput-object v0, p0, Lcom/t4game/GUser;->effectImage:Lcom/t4game/GImageData;

    return-void

    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method public setPath(Ljava/lang/String;II)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/t4game/GUser;->initPath()V

    iput-byte v8, p0, Lcom/t4game/GUser;->actionType:B

    const/16 v0, 0x63

    iput-byte v0, p0, Lcom/t4game/GUser;->controlType:B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [I

    move v1, v7

    move v2, v7

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2c

    if-eq v4, v3, :cond_1

    aget v4, v0, v2

    mul-int/lit8 v4, v4, 0xa

    const/16 v5, 0x30

    sub-int/2addr v3, v5

    add-int/2addr v3, v4

    aput v3, v0, v2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v2, 0x1

    const/4 v2, -0x1

    new-array v3, v1, [I

    iput-object v3, p0, Lcom/t4game/GUser;->PathXY:[I

    move v3, v2

    move v4, v7

    move v2, v7

    :goto_3
    if-ge v2, v1, :cond_c

    add-int/lit8 v5, v2, 0x2

    aget v5, v0, v5

    aget v6, v0, v2

    if-ne v5, v6, :cond_5

    add-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v0, v5

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    if-ge v5, v6, :cond_5

    move v4, v7

    :cond_3
    :goto_4
    if-eq v3, v4, :cond_4

    iget-object v3, p0, Lcom/t4game/GUser;->PathXY:[I

    iget v5, p0, Lcom/t4game/GUser;->pathLength:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/t4game/GUser;->pathLength:I

    aget v6, v0, v2

    aput v6, v3, v5

    iget-object v3, p0, Lcom/t4game/GUser;->PathXY:[I

    iget v5, p0, Lcom/t4game/GUser;->pathLength:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/t4game/GUser;->pathLength:I

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    aput v6, v3, v5

    move v3, v4

    :cond_4
    add-int/lit8 v2, v2, 0x2

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v2, 0x2

    aget v5, v0, v5

    aget v6, v0, v2

    if-le v5, v6, :cond_6

    add-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v0, v5

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    if-ge v5, v6, :cond_6

    move v4, v8

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v2, 0x2

    aget v5, v0, v5

    aget v6, v0, v2

    if-le v5, v6, :cond_7

    add-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v0, v5

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    if-ne v5, v6, :cond_7

    move v4, v9

    goto :goto_4

    :cond_7
    add-int/lit8 v5, v2, 0x2

    aget v5, v0, v5

    aget v6, v0, v2

    if-le v5, v6, :cond_8

    add-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v0, v5

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    if-le v5, v6, :cond_8

    const/4 v4, 0x3

    goto :goto_4

    :cond_8
    add-int/lit8 v5, v2, 0x2

    aget v5, v0, v5

    aget v6, v0, v2

    if-ne v5, v6, :cond_9

    add-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v0, v5

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    if-le v5, v6, :cond_9

    const/4 v4, 0x4

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v2, 0x2

    aget v5, v0, v5

    aget v6, v0, v2

    if-ge v5, v6, :cond_a

    add-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v0, v5

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    if-le v5, v6, :cond_a

    const/4 v4, 0x5

    goto/16 :goto_4

    :cond_a
    add-int/lit8 v5, v2, 0x2

    aget v5, v0, v5

    aget v6, v0, v2

    if-ge v5, v6, :cond_b

    add-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v0, v5

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    if-ne v5, v6, :cond_b

    const/4 v4, 0x6

    goto/16 :goto_4

    :cond_b
    add-int/lit8 v5, v2, 0x2

    aget v5, v0, v5

    aget v6, v0, v2

    if-ge v5, v6, :cond_3

    add-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget v5, v0, v5

    add-int/lit8 v6, v2, 0x1

    aget v6, v0, v6

    if-ge v5, v6, :cond_3

    const/4 v4, 0x7

    goto/16 :goto_4

    :cond_c
    move v0, v7

    :goto_5
    iget v2, p0, Lcom/t4game/GUser;->pathLength:I

    if-ge v0, v2, :cond_e

    rem-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/t4game/GUser;->PathXY:[I

    iget-object v3, p0, Lcom/t4game/GUser;->PathXY:[I

    aget v3, v3, v0

    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v3, p3

    aput v3, v2, v0

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    iget-object v2, p0, Lcom/t4game/GUser;->PathXY:[I

    iget-object v3, p0, Lcom/t4game/GUser;->PathXY:[I

    aget v3, v3, v0

    mul-int/lit8 v3, v3, 0x10

    add-int/2addr v3, p2

    aput v3, v2, v0

    goto :goto_6

    :cond_e
    iget-object v0, p0, Lcom/t4game/GUser;->PathXY:[I

    aget v0, v0, v7

    div-int/lit8 v0, v0, 0x10

    iget-short v2, p0, Lcom/t4game/GUser;->gridX:S

    if-ne v0, v2, :cond_f

    iget-object v0, p0, Lcom/t4game/GUser;->PathXY:[I

    aget v0, v0, v8

    div-int/lit8 v0, v0, 0x10

    iget-short v2, p0, Lcom/t4game/GUser;->gridY:S

    if-ne v0, v2, :cond_f

    iput v9, p0, Lcom/t4game/GUser;->pathIndex:I

    :cond_f
    iget-object v0, p0, Lcom/t4game/GUser;->PathXY:[I

    sub-int v2, v1, v9

    sget v3, Lcom/t4game/GameWorld;->tarWinX:I

    aput v3, v0, v2

    iget-object v0, p0, Lcom/t4game/GUser;->PathXY:[I

    sub-int/2addr v1, v8

    sget v2, Lcom/t4game/GameWorld;->tarWinY:I

    aput v2, v0, v1

    goto/16 :goto_0
.end method

.method protected final setPos1(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/t4game/GSprite;->setPos1(II)V

    iget-boolean v0, p0, Lcom/t4game/GUser;->isMainHero:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-short v1, p0, Lcom/t4game/GUser;->mapX:S

    iget-object v2, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget v2, v2, Lcom/t4game/GScene;->WW2:I

    sub-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/GUser;->mapY:S

    iget-object v3, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget v3, v3, Lcom/t4game/GScene;->WH2:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GScene;->setWinPos(II)V

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-byte v0, v0, Lcom/t4game/GScene;->backMapId:B

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->backGScene:Lcom/t4game/GSceneBackLayer;

    iget-short v1, p0, Lcom/t4game/GUser;->mapX:S

    shr-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget v2, v2, Lcom/t4game/GScene;->WW2:I

    sub-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/GUser;->mapY:S

    shr-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget v3, v3, Lcom/t4game/GScene;->WH2:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GSceneBackLayer;->setWinPos(II)V

    :cond_0
    return-void
.end method

.method public setRoleOutfit(ILcom/t4game/RoleOutfit;)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/GUser;->outFitOn:[Lcom/t4game/RoleOutfit;

    aput-object p2, v0, p1

    return-void
.end method

.method public setSpecialShow(Ljava/lang/String;BI)V
    .locals 2

    iput-object p1, p0, Lcom/t4game/GUser;->specialShow:Ljava/lang/String;

    iput-byte p2, p0, Lcom/t4game/GUser;->specialShowColorFlog:B

    iget v0, p0, Lcom/t4game/GUser;->specialShowIconID:I

    if-eq v0, p3, :cond_0

    iput p3, p0, Lcom/t4game/GUser;->specialShowIconID:I

    iget-byte v0, p0, Lcom/t4game/GUser;->specialShowType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p3}, Lcom/t4game/GameWorld;->getChengHaoIcon1(I)V

    :goto_0
    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->ChengHaoImg:Ljava/util/Hashtable;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/GUser;->img:Ljavax/microedition/lcdui/Image;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p3}, Lcom/t4game/GameWorld;->getChengHaoIcon(I)V

    goto :goto_0
.end method

.method public setSpeed(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0}, Lcom/t4game/GSprite;->setSpeed(IZZ)V

    if-eqz p2, :cond_0

    iget v0, p0, Lcom/t4game/GUser;->speed:I

    mul-int/lit8 v0, v0, 0x9

    invoke-static {v0}, Lcom/t4game/GMap;->worldY2SceneY(I)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/t4game/GUser;->FP_speedY225:I

    iget v0, p0, Lcom/t4game/GUser;->speed:I

    mul-int/lit8 v0, v0, 0x12

    invoke-static {v0}, Lcom/t4game/GMap;->worldX2SceneX(I)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/t4game/GUser;->FP_speedX225:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/t4game/GUser;->speed:I

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/t4game/GUser;->FP_speedY225:I

    iget v0, p0, Lcom/t4game/GUser;->speed:I

    mul-int/lit8 v0, v0, 0x12

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/t4game/GUser;->FP_speedX225:I

    goto :goto_0
.end method

.method public update()B
    .locals 8

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/t4game/GUser;->updateBeatBack()V

    iget-byte v0, p0, Lcom/t4game/GUser;->actionType:B

    if-ne v0, v4, :cond_b

    iget-boolean v0, p0, Lcom/t4game/GUser;->isMainHero:Z

    if-eqz v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/GUser;->controlType:B

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/t4game/GUser;->moveByDir()V

    iget v0, p0, Lcom/t4game/GUser;->nowMoveTick:I

    sget v1, Lcom/t4game/GameScreen;->lastFrameTimeTaken:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/GUser;->nowMoveTick:I

    iget v0, p0, Lcom/t4game/GUser;->nowMoveTick:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p0}, Lcom/t4game/GameWorld;->sendSpriteMoveMessage(Lcom/t4game/GUser;)Z

    iput v3, p0, Lcom/t4game/GUser;->nowMoveTick:I

    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/t4game/GSprite;->update()B

    iget-byte v0, p0, Lcom/t4game/GUser;->initState:B

    sget-byte v1, Lcom/t4game/GUser;->INIT_STATE_INITED:B

    if-eq v0, v1, :cond_f

    move v0, v3

    :goto_1
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/t4game/GUser;->moveNPC()V

    iget-boolean v0, p0, Lcom/t4game/GUser;->moved:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-boolean v0, v0, Lcom/t4game/GameWorld;->bArrived:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v3, v0, Lcom/t4game/GameWorld;->bArrived:Z

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget v0, v0, Lcom/t4game/GameWorld;->sNpcId:I

    if-eq v0, v6, :cond_2

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v1, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v1, v1, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget v1, v1, Lcom/t4game/GameWorld;->sNpcId:I

    invoke-virtual {v0, v1, v7}, Lcom/t4game/GScene;->getSpriteFromHash(IB)Lcom/t4game/GSprite;

    move-result-object v0

    iget-byte v1, v0, Lcom/t4game/GSprite;->canHit:B

    if-ne v1, v4, :cond_7

    iget-byte v1, v0, Lcom/t4game/GSprite;->relationState:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_7

    invoke-virtual {p0, v4}, Lcom/t4game/GUser;->setGuaJi(Z)V

    :cond_2
    :goto_2
    invoke-virtual {p0, v3}, Lcom/t4game/GUser;->setActType(B)V

    iget-byte v0, p0, Lcom/t4game/GUser;->dir:B

    invoke-virtual {p0, v3, v0}, Lcom/t4game/GUser;->setAction(BB)V

    iget-boolean v0, p0, Lcom/t4game/GUser;->isMainHero:Z

    if-eqz v0, :cond_3

    const/16 v0, 0x63

    iget-byte v1, p0, Lcom/t4game/GUser;->controlType:B

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/t4game/GUser;->PathXY:[I

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/t4game/GUser;->pathIndex:I

    iget v1, p0, Lcom/t4game/GUser;->pathLength:I

    if-ge v0, v1, :cond_8

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p0}, Lcom/t4game/GameWorld;->sendSpriteMoveMessage(Lcom/t4game/GUser;)Z

    iget-object v0, p0, Lcom/t4game/GUser;->PathXY:[I

    iget v1, p0, Lcom/t4game/GUser;->pathIndex:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/t4game/GUser;->PathXY:[I

    iget v2, p0, Lcom/t4game/GUser;->pathIndex:I

    add-int/lit8 v2, v2, 0x1

    aget v1, v1, v2

    invoke-virtual {p0, v0, v1, v5}, Lcom/t4game/GUser;->setMoveDestPos(IIB)V

    iget v0, p0, Lcom/t4game/GUser;->pathIndex:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/t4game/GUser;->pathIndex:I

    :cond_3
    :goto_3
    iget-byte v0, p0, Lcom/t4game/GUser;->controlType:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/t4game/GUser;->nSpeed:I

    invoke-virtual {p0, v0, v4}, Lcom/t4game/GUser;->setSpeed(IZ)V

    iput-byte v3, p0, Lcom/t4game/GUser;->controlType:B

    :cond_4
    :goto_4
    iget-byte v0, p0, Lcom/t4game/GUser;->controlType:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    iput-byte v3, p0, Lcom/t4game/GUser;->controlType:B

    iget v0, p0, Lcom/t4game/GUser;->crazyMovePosIndex:I

    rem-int/lit8 v0, v0, 0x14

    if-lez v0, :cond_5

    const/16 v0, 0x32

    iput v0, p0, Lcom/t4game/GUser;->crazyStopTick:I

    invoke-virtual {p0}, Lcom/t4game/GUser;->startCrazy()V

    :cond_5
    iget-byte v0, p0, Lcom/t4game/GUser;->controlType:B

    if-eq v0, v4, :cond_6

    iget-boolean v0, p0, Lcom/t4game/GUser;->isMainHero:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/t4game/GUser;->nowMoveTick:I

    sget v1, Lcom/t4game/GameScreen;->lastFrameTimeTaken:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/GUser;->nowMoveTick:I

    iget v0, p0, Lcom/t4game/GUser;->nowMoveTick:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p0}, Lcom/t4game/GameWorld;->sendSpriteMoveMessage(Lcom/t4game/GUser;)Z

    iput v3, p0, Lcom/t4game/GUser;->nowMoveTick:I

    :cond_6
    iget-byte v0, p0, Lcom/t4game/GUser;->controlType:B

    if-ne v0, v5, :cond_0

    iget v0, p0, Lcom/t4game/GUser;->intId:I

    iget-object v1, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v1, v1, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget v1, v1, Lcom/t4game/GUser;->intId:I

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/GUser;->skillPos:B

    if-ne v0, v6, :cond_a

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, v4}, Lcom/t4game/GameWorld;->useQuickNomarlAttack(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/t4game/GUser;->setActType(B)V

    iget-byte v0, p0, Lcom/t4game/GUser;->dir:B

    invoke-virtual {p0, v3, v0}, Lcom/t4game/GUser;->setAction(BB)V

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p0}, Lcom/t4game/GameWorld;->sendSpriteMoveMessage(Lcom/t4game/GUser;)Z

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, v3}, Lcom/t4game/GameWorld;->useQuickNomarlAttack(Z)Z

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v4, v0, Lcom/t4game/GameWorld;->autoAttack:Z

    iput-byte v3, p0, Lcom/t4game/GUser;->controlType:B

    iput v3, p0, Lcom/t4game/GUser;->leftStep:I

    goto/16 :goto_0

    :cond_7
    iget-byte v0, v0, Lcom/t4game/GSprite;->canCaiJi:B

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v1, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v1, v1, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget v1, v1, Lcom/t4game/GameWorld;->sNpcId:I

    iput v1, v0, Lcom/t4game/GScene;->choicedSpriteId:I

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iput-byte v7, v0, Lcom/t4game/GScene;->choicedSpriteType:B

    goto/16 :goto_2

    :cond_8
    invoke-direct {p0}, Lcom/t4game/GUser;->initPath()V

    goto/16 :goto_3

    :cond_9
    iget-byte v0, p0, Lcom/t4game/GUser;->controlType:B

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    iput-byte v3, p0, Lcom/t4game/GUser;->controlType:B

    goto/16 :goto_4

    :cond_a
    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-byte v1, p0, Lcom/t4game/GUser;->skillPos:B

    invoke-virtual {v0, v1, v4}, Lcom/t4game/GameWorld;->useQuickSkill(BZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/t4game/GUser;->setActType(B)V

    iget-byte v0, p0, Lcom/t4game/GUser;->dir:B

    invoke-virtual {p0, v3, v0}, Lcom/t4game/GUser;->setAction(BB)V

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p0}, Lcom/t4game/GameWorld;->sendSpriteMoveMessage(Lcom/t4game/GUser;)Z

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-byte v1, p0, Lcom/t4game/GUser;->skillPos:B

    invoke-virtual {v0, v1, v3}, Lcom/t4game/GameWorld;->useQuickSkill(BZ)Z

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v4, v0, Lcom/t4game/GameWorld;->autoAttack:Z

    iput-byte v3, p0, Lcom/t4game/GUser;->controlType:B

    iput v3, p0, Lcom/t4game/GUser;->leftStep:I

    goto/16 :goto_0

    :cond_b
    iget-byte v0, p0, Lcom/t4game/GUser;->actionType:B

    if-nez v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/GUser;->autoAttackGuaJi:B

    if-ne v0, v4, :cond_0

    iget-boolean v0, p0, Lcom/t4game/GUser;->isMainHero:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget v0, v0, Lcom/t4game/GScene;->choicedSpriteId:I

    iget v1, p0, Lcom/t4game/GUser;->intId:I

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-byte v0, v0, Lcom/t4game/GScene;->choicedSpriteType:B

    if-ne v0, v5, :cond_d

    invoke-direct {p0}, Lcom/t4game/GUser;->chooseEnemyInGuaJiArea()Z

    move-result v0

    if-nez v0, :cond_c

    iget-short v0, p0, Lcom/t4game/GUser;->GuaJiX:S

    iget-short v1, p0, Lcom/t4game/GUser;->GuaJiY:S

    invoke-virtual {p0, v0, v1, v5}, Lcom/t4game/GUser;->setMoveDestPos(IIB)V

    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/t4game/GUser;->controlType:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GUser;->guajiChoice:Lcom/t4game/GSprite;

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0, v3}, Lcom/t4game/GUser;->setGuaJi(Z)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, v4}, Lcom/t4game/GameWorld;->useQuickNomarlAttack(Z)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, v3}, Lcom/t4game/GUser;->setGuaJi(Z)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget v1, p0, Lcom/t4game/GUser;->intId:I

    iput v1, v0, Lcom/t4game/GScene;->choicedSpriteId:I

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iput-byte v5, v0, Lcom/t4game/GScene;->choicedSpriteType:B

    goto/16 :goto_0

    :cond_f
    iget-boolean v0, p0, Lcom/t4game/GUser;->visible:Z

    if-nez v0, :cond_10

    move v0, v3

    goto/16 :goto_1

    :cond_10
    move v0, v4

    goto/16 :goto_1
.end method

.method public updateBeatBack()V
    .locals 8

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x3

    iget-byte v0, p0, Lcom/t4game/GUser;->beatBack:B

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GUser;->someBody:Lcom/t4game/GUser;

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/t4game/GUser;->someBody:Lcom/t4game/GUser;

    if-nez v0, :cond_2

    iget-byte v0, p0, Lcom/t4game/GUser;->beatBack:B

    if-eq v0, v5, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-byte v0, p0, Lcom/t4game/GUser;->state:B

    if-ne v0, v6, :cond_3

    iput-byte v3, p0, Lcom/t4game/GUser;->beatBack:B

    invoke-virtual {p0}, Lcom/t4game/GUser;->clearGuaJi()V

    goto :goto_0

    :cond_3
    iget-byte v0, p0, Lcom/t4game/GUser;->beatBack:B

    if-ne v0, v7, :cond_4

    iget-byte v0, p0, Lcom/t4game/GUser;->autoAttackGuaJi:B

    if-ne v0, v7, :cond_1

    invoke-virtual {p0}, Lcom/t4game/GUser;->clearGuaJi()V

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v2, v0, Lcom/t4game/GameWorld;->autoAttack:Z

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v1, p0, Lcom/t4game/GUser;->someBody:Lcom/t4game/GUser;

    iget v1, v1, Lcom/t4game/GUser;->intId:I

    iput v1, v0, Lcom/t4game/GScene;->choicedSpriteId:I

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v1, p0, Lcom/t4game/GUser;->someBody:Lcom/t4game/GUser;

    iput-object v1, v0, Lcom/t4game/GScene;->choiceSprite:Lcom/t4game/GSprite;

    iput-byte v6, p0, Lcom/t4game/GUser;->beatBack:B

    goto :goto_0

    :cond_4
    iget-byte v0, p0, Lcom/t4game/GUser;->beatBack:B

    if-ne v0, v6, :cond_8

    iget-short v0, p0, Lcom/t4game/GUser;->lockX:S

    iget-short v1, p0, Lcom/t4game/GUser;->lockY:S

    iget-short v2, p0, Lcom/t4game/GUser;->mapX:S

    iget-short v3, p0, Lcom/t4game/GUser;->mapY:S

    const/16 v4, 0x64

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/Util;->testInterRound(IIIII)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/t4game/GUser;->someBody:Lcom/t4game/GUser;

    iget-byte v0, v0, Lcom/t4game/GUser;->state:B

    if-ne v0, v6, :cond_6

    :cond_5
    iput-byte v5, p0, Lcom/t4game/GUser;->beatBack:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GUser;->someBody:Lcom/t4game/GUser;

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget v1, p0, Lcom/t4game/GUser;->intId:I

    iput v1, v0, Lcom/t4game/GScene;->choicedSpriteId:I

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-byte v1, p0, Lcom/t4game/GUser;->type:B

    iput-byte v1, v0, Lcom/t4game/GScene;->choicedSpriteType:B

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iput-object p0, v0, Lcom/t4game/GScene;->choiceSprite:Lcom/t4game/GSprite;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/t4game/GUser;->someBody:Lcom/t4game/GUser;

    iget-short v0, v0, Lcom/t4game/GUser;->mapX:S

    iget-object v1, p0, Lcom/t4game/GUser;->someBody:Lcom/t4game/GUser;

    iget-short v1, v1, Lcom/t4game/GUser;->mapY:S

    iget-short v2, p0, Lcom/t4game/GUser;->mapX:S

    iget-short v3, p0, Lcom/t4game/GUser;->mapY:S

    iget-object v4, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v4, v4, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget v4, v4, Lcom/t4game/GameWorld;->normalAttackHitDistance:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/Util;->testInterRound(IIIII)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/t4game/GUser;->xianZhiFlag:[Z

    aget-boolean v0, v0, v6

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v1, p0, Lcom/t4game/GUser;->someBody:Lcom/t4game/GUser;

    iget v1, v1, Lcom/t4game/GUser;->intId:I

    iput v1, v0, Lcom/t4game/GScene;->choicedSpriteId:I

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v1, p0, Lcom/t4game/GUser;->someBody:Lcom/t4game/GUser;

    iget-byte v1, v1, Lcom/t4game/GUser;->type:B

    iput-byte v1, v0, Lcom/t4game/GScene;->choicedSpriteType:B

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v1, p0, Lcom/t4game/GUser;->someBody:Lcom/t4game/GUser;

    iput-object v1, v0, Lcom/t4game/GScene;->choiceSprite:Lcom/t4game/GSprite;

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v7, v0, Lcom/t4game/GameWorld;->autoAttack:Z

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/t4game/GUser;->someBody:Lcom/t4game/GUser;

    iget-byte v0, v0, Lcom/t4game/GUser;->state:B

    if-eq v0, v6, :cond_1

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, p0, Lcom/t4game/GUser;->someBody:Lcom/t4game/GUser;

    iget-short v1, v1, Lcom/t4game/GUser;->mapX:S

    iget-object v2, p0, Lcom/t4game/GUser;->someBody:Lcom/t4game/GUser;

    iget-short v2, v2, Lcom/t4game/GUser;->mapY:S

    invoke-virtual {v0, v1, v2, v5}, Lcom/t4game/GUser;->setMoveDestPos(IIB)V

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iput-byte v5, v0, Lcom/t4game/GUser;->controlType:B

    goto/16 :goto_0

    :cond_8
    iget-byte v0, p0, Lcom/t4game/GUser;->beatBack:B

    if-ne v0, v5, :cond_1

    iget-short v0, p0, Lcom/t4game/GUser;->lockX:S

    iget-short v1, p0, Lcom/t4game/GUser;->mapX:S

    if-ne v0, v1, :cond_9

    iget-short v0, p0, Lcom/t4game/GUser;->lockY:S

    iget-short v1, p0, Lcom/t4game/GUser;->mapY:S

    if-ne v0, v1, :cond_9

    iput-byte v3, p0, Lcom/t4game/GUser;->beatBack:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GUser;->someBody:Lcom/t4game/GUser;

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v2, v0, Lcom/t4game/GameWorld;->autoAttack:Z

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iput-byte v2, v0, Lcom/t4game/GUser;->controlType:B

    invoke-virtual {p0, v7}, Lcom/t4game/GUser;->setGuaJi(Z)V

    iput-byte v7, p0, Lcom/t4game/GUser;->autoAttackGuaJi:B

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-short v1, p0, Lcom/t4game/GUser;->lockX:S

    iget-short v2, p0, Lcom/t4game/GUser;->lockY:S

    invoke-virtual {v0, v1, v2, v5}, Lcom/t4game/GUser;->setMoveDestPos(IIB)V

    iget-object v0, p0, Lcom/t4game/GUser;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iput-byte v5, v0, Lcom/t4game/GUser;->controlType:B

    goto/16 :goto_0
.end method
