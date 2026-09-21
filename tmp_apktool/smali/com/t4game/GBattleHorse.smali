.class public Lcom/t4game/GBattleHorse;
.super Ljava/lang/Object;


# static fields
.field private static BattleHorseLoadingData:Lcom/t4game/GObjectData;


# instance fields
.field private BattleHorseObjectData:Lcom/t4game/GObjectData;

.field private BattleHorseObjectID:S

.field public BattleHorseOutFit:[Lcom/t4game/RoleGoods;

.field public BattleHorseState:Ljava/lang/String;

.field private id:I

.field public name:Ljava/lang/String;

.field private user:Lcom/t4game/GSprite;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/t4game/GBattleHorse;->BattleHorseLoadingData:Lcom/t4game/GObjectData;

    return-void
.end method

.method public constructor <init>(Lcom/t4game/GSprite;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-short v0, p0, Lcom/t4game/GBattleHorse;->BattleHorseObjectID:S

    iput-object v1, p0, Lcom/t4game/GBattleHorse;->user:Lcom/t4game/GSprite;

    iput-object v1, p0, Lcom/t4game/GBattleHorse;->BattleHorseOutFit:[Lcom/t4game/RoleGoods;

    iput-object v1, p0, Lcom/t4game/GBattleHorse;->BattleHorseObjectData:Lcom/t4game/GObjectData;

    iput-object p1, p0, Lcom/t4game/GBattleHorse;->user:Lcom/t4game/GSprite;

    sget-object v0, Lcom/t4game/GBattleHorse;->BattleHorseLoadingData:Lcom/t4game/GObjectData;

    if-nez v0, :cond_0

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    const-string v1, "1104"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object p0

    check-cast p0, Lcom/t4game/GObjectData;

    sput-object p0, Lcom/t4game/GBattleHorse;->BattleHorseLoadingData:Lcom/t4game/GObjectData;

    :cond_0
    return-void
.end method


# virtual methods
.method public InitBattleHorse(SLjava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    const/4 v2, 0x1

    iget-short v0, p0, Lcom/t4game/GBattleHorse;->BattleHorseObjectID:S

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/t4game/GBattleHorse;->id:I

    if-ne v0, p4, :cond_0

    iput-object p3, p0, Lcom/t4game/GBattleHorse;->BattleHorseState:Ljava/lang/String;

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/t4game/GBattleHorse;->Release()V

    iput-short p1, p0, Lcom/t4game/GBattleHorse;->BattleHorseObjectID:S

    iput-object p2, p0, Lcom/t4game/GBattleHorse;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/t4game/GBattleHorse;->BattleHorseState:Ljava/lang/String;

    iput p4, p0, Lcom/t4game/GBattleHorse;->id:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GObjectData;

    iput-object v0, p0, Lcom/t4game/GBattleHorse;->BattleHorseObjectData:Lcom/t4game/GObjectData;

    move v0, v2

    goto :goto_0
.end method

.method public Release()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/t4game/GBattleHorse;->BattleHorseObjectData:Lcom/t4game/GObjectData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GBattleHorse;->BattleHorseObjectData:Lcom/t4game/GObjectData;

    invoke-static {v0}, Lcom/t4game/GDataManager;->releaseObjectData(Lcom/t4game/GBaseData;)Lcom/t4game/GBaseData;

    :cond_0
    iput-object v1, p0, Lcom/t4game/GBattleHorse;->BattleHorseObjectData:Lcom/t4game/GObjectData;

    iput-object v1, p0, Lcom/t4game/GBattleHorse;->BattleHorseOutFit:[Lcom/t4game/RoleGoods;

    return-void
.end method

.method public drawBattleHorse(Ljavax/microedition/lcdui/Graphics;II)V
    .locals 12

    const/4 v3, 0x3

    const/4 v2, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-short v0, p0, Lcom/t4game/GBattleHorse;->BattleHorseObjectID:S

    if-ne v0, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/GBattleHorse;->BattleHorseObjectData:Lcom/t4game/GObjectData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/GBattleHorse;->BattleHorseObjectData:Lcom/t4game/GObjectData;

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->isReady()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_2
    sget-object v0, Lcom/t4game/GBattleHorse;->BattleHorseLoadingData:Lcom/t4game/GObjectData;

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v9, v3, v3}, Lcom/t4game/GObjectData;->getActionAnimDataIndex(III)B

    move-result v1

    if-eq v1, v2, :cond_0

    iput-boolean v8, v0, Lcom/t4game/GObjectData;->isDelayRelease:Z

    iget-object v2, v0, Lcom/t4game/GObjectData;->animDataOffsets:[S

    aget-short v1, v2, v1

    add-int/lit8 v1, v1, 0x2

    iget-object v2, v0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, v2, v1

    iget-object v2, p0, Lcom/t4game/GBattleHorse;->user:Lcom/t4game/GSprite;

    iget-byte v2, v2, Lcom/t4game/GSprite;->nowFrame:B

    if-gez v2, :cond_3

    move v2, v9

    :cond_3
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

    move v5, v8

    :goto_2
    and-int/lit8 v6, v7, 0x1

    if-lez v6, :cond_8

    move v6, v8

    :goto_3
    if-eqz v5, :cond_4

    neg-int v3, v3

    :cond_4
    if-eqz v6, :cond_5

    neg-int v4, v4

    :cond_5
    and-int/lit8 v7, v7, 0x4

    if-lez v7, :cond_9

    iget-object v7, v0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v8, v1, 0x2

    aget-byte v7, v7, v8

    add-int/2addr v7, p2

    iget-object v8, v0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v10, v1, 0x3

    aget-byte v8, v8, v10

    add-int/2addr v8, p3

    iget-object v10, v0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v11, v1, 0x2

    aget-byte v10, v10, v11

    add-int/2addr v3, v10

    iget-object v3, v0, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v1, v1, 0x3

    aget-byte v1, v3, v1

    add-int/2addr v1, v4

    move v4, v8

    move v3, v7

    :goto_4
    move v8, v9

    :goto_5
    const/4 v1, 0x4

    if-ge v8, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/GBattleHorse;->user:Lcom/t4game/GSprite;

    iget-object v1, v1, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    invoke-virtual {v0, v1}, Lcom/t4game/GObjectData;->setClip(Lcom/t4game/GMap;)V

    const/4 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lcom/t4game/GObjectData;->drawClipLayer(Ljavax/microedition/lcdui/Graphics;IIIZZLcom/t4game/GIRenderManager;IB)V

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->resetClip()V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/t4game/GBattleHorse;->BattleHorseObjectData:Lcom/t4game/GObjectData;

    goto/16 :goto_0

    :cond_7
    move v5, v9

    goto :goto_2

    :cond_8
    move v6, v9

    goto :goto_3

    :cond_9
    move v4, p3

    move v3, p2

    goto :goto_4

    :cond_a
    move v1, v2

    goto :goto_1
.end method

.method public getID()I
    .locals 1

    iget v0, p0, Lcom/t4game/GBattleHorse;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/t4game/GBattleHorse;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectID()S
    .locals 1

    iget-short v0, p0, Lcom/t4game/GBattleHorse;->BattleHorseObjectID:S

    return v0
.end method

.method public getOutFit()[Lcom/t4game/RoleGoods;
    .locals 1

    iget-object v0, p0, Lcom/t4game/GBattleHorse;->BattleHorseOutFit:[Lcom/t4game/RoleGoods;

    return-object v0
.end method

.method public getOutFitIconId()[S
    .locals 3

    iget-object v0, p0, Lcom/t4game/GBattleHorse;->BattleHorseOutFit:[Lcom/t4game/RoleGoods;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/t4game/GBattleHorse;->BattleHorseOutFit:[Lcom/t4game/RoleGoods;

    array-length v0, v0

    new-array v0, v0, [S

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/t4game/GBattleHorse;->BattleHorseOutFit:[Lcom/t4game/RoleGoods;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/t4game/GBattleHorse;->BattleHorseOutFit:[Lcom/t4game/RoleGoods;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/t4game/GBattleHorse;->BattleHorseOutFit:[Lcom/t4game/RoleGoods;

    aget-object v2, v2, v1

    iget-short v2, v2, Lcom/t4game/RoleGoods;->iconId:S

    aput-short v2, v0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    aput-short v2, v0, v1

    goto :goto_1
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/t4game/GBattleHorse;->BattleHorseState:Ljava/lang/String;

    return-object v0
.end method
