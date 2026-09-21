.class public Lcom/t4game/RoleTradeObject;
.super Ljava/lang/Object;


# instance fields
.field private gameworld:Lcom/t4game/GameWorld;

.field public tradeGoods:[Lcom/t4game/RoleGoods;

.field tradeGoodsIcon:Ljava/util/Hashtable;

.field public tradeGoodsMoney:J

.field public tradeGoodsPos:[B

.field public final tradeSize:B

.field public tradedGoods:[Lcom/t4game/RoleGoods;

.field tradedGoodsIcon:Ljava/util/Hashtable;

.field public tradedGoodsMoney:J

.field public tradedGoodsPos:[B

.field public tradedGrade:S

.field public tradedName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/t4game/GameWorld;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lcom/t4game/RoleTradeObject;->tradeSize:B

    new-array v0, v2, [Lcom/t4game/RoleGoods;

    iput-object v0, p0, Lcom/t4game/RoleTradeObject;->tradeGoods:[Lcom/t4game/RoleGoods;

    new-array v0, v2, [Lcom/t4game/RoleGoods;

    iput-object v0, p0, Lcom/t4game/RoleTradeObject;->tradedGoods:[Lcom/t4game/RoleGoods;

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/t4game/RoleTradeObject;->tradeGoodsPos:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/t4game/RoleTradeObject;->tradedGoodsPos:[B

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/t4game/RoleTradeObject;->tradeGoodsIcon:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/t4game/RoleTradeObject;->tradedGoodsIcon:Ljava/util/Hashtable;

    iput-object p1, p0, Lcom/t4game/RoleTradeObject;->gameworld:Lcom/t4game/GameWorld;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v1, p0, Lcom/t4game/RoleTradeObject;->tradeGoods:[Lcom/t4game/RoleGoods;

    aput-object v3, v1, v0

    iget-object v1, p0, Lcom/t4game/RoleTradeObject;->tradedGoods:[Lcom/t4game/RoleGoods;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private checkIcon(S)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    move v1, v3

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/t4game/RoleTradeObject;->tradeGoods:[Lcom/t4game/RoleGoods;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/t4game/RoleTradeObject;->tradeGoods:[Lcom/t4game/RoleGoods;

    aget-object v2, v2, v1

    iget-short v2, v2, Lcom/t4game/RoleGoods;->iconId:S

    if-ne v2, p1, :cond_1

    move v0, v3

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0
.end method

.method private getOneGoodIcon(Lcom/t4game/RoleGoods;)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v1, v0, [S

    iget-short v0, p1, Lcom/t4game/RoleGoods;->iconId:S

    aput-short v0, v1, v4

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_PNGGROUP:B

    sget-object v2, Lcom/t4game/CommonConstants;->GOOGS_PNG:[B

    iget-byte v3, p1, Lcom/t4game/RoleGoods;->type:B

    aget-byte v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GPNGGroupData;

    invoke-static {v1}, Lcom/t4game/Util;->getTaxisId([S)[S

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/RoleTradeObject;->tradedGoodsIcon:Ljava/util/Hashtable;

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GPNGGroupData;->getImageMap([SLjava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/RoleTradeObject;->tradedGoodsIcon:Ljava/util/Hashtable;

    :cond_0
    return-void
.end method


# virtual methods
.method public addTradeGood(Lcom/t4game/RoleGoods;B)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/t4game/RoleTradeObject;->tradeGoods:[Lcom/t4game/RoleGoods;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/t4game/RoleTradeObject;->tradeGoods:[Lcom/t4game/RoleGoods;

    aput-object p1, v1, v0

    iget-object v1, p0, Lcom/t4game/RoleTradeObject;->tradeGoodsPos:[B

    aput-byte p2, v1, v0

    iget-object v1, p0, Lcom/t4game/RoleTradeObject;->tradeGoods:[Lcom/t4game/RoleGoods;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    move v0, v3

    :goto_1
    return v0

    :cond_0
    iget-object v1, p0, Lcom/t4game/RoleTradeObject;->tradeGoods:[Lcom/t4game/RoleGoods;

    aget-object v0, v1, v0

    iget-short v0, v0, Lcom/t4game/RoleGoods;->iconId:S

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/t4game/RoleTradeObject;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/t4game/RoleTradeObject;->tradeGoodsIcon:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method public addTradedGood(Lcom/t4game/RoleGoods;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/t4game/RoleTradeObject;->tradedGoods:[Lcom/t4game/RoleGoods;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/RoleTradeObject;->tradedGoods:[Lcom/t4game/RoleGoods;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/t4game/RoleTradeObject;->tradedGoods:[Lcom/t4game/RoleGoods;

    aput-object p1, v1, v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/t4game/RoleTradeObject;->getOneGoodIcon(Lcom/t4game/RoleGoods;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0
.end method

.method public clearTradeAll()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/t4game/RoleTradeObject;->clearTradeOne(B)V

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearTradeOne(B)V
    .locals 3

    iget-object v0, p0, Lcom/t4game/RoleTradeObject;->tradeGoods:[Lcom/t4game/RoleGoods;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/RoleTradeObject;->tradeGoods:[Lcom/t4game/RoleGoods;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/t4game/RoleGoods;->canOperate:Z

    iget-object v0, p0, Lcom/t4game/RoleTradeObject;->tradeGoods:[Lcom/t4game/RoleGoods;

    aget-object v0, v0, p1

    iget-short v0, v0, Lcom/t4game/RoleGoods;->iconId:S

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/RoleTradeObject;->gameworld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/t4game/RoleTradeObject;->gameworld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/t4game/RoleTradeObject;->tradeGoodsIcon:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/t4game/RoleTradeObject;->tradeGoods:[Lcom/t4game/RoleGoods;

    aget-object v1, v1, p1

    iget-short v1, v1, Lcom/t4game/RoleGoods;->iconId:S

    invoke-direct {p0, v1}, Lcom/t4game/RoleTradeObject;->checkIcon(S)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/t4game/RoleTradeObject;->tradeGoodsIcon:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/RoleTradeObject;->tradeGoodsIcon:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/t4game/RoleTradeObject;->tradeGoods:[Lcom/t4game/RoleGoods;

    aget-object v1, v1, p1

    iget-short v1, v1, Lcom/t4game/RoleGoods;->iconId:S

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/t4game/RoleTradeObject;->tradeGoods:[Lcom/t4game/RoleGoods;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :cond_2
    return-void
.end method

.method public clearTradedAll()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/t4game/RoleTradeObject;->tradedGoods:[Lcom/t4game/RoleGoods;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/t4game/RoleTradeObject;->clearTradedOne(B)V

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public clearTradedOne(B)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/RoleTradeObject;->tradedGoods:[Lcom/t4game/RoleGoods;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    return-void
.end method

.method public deleteAllTradedGoodsFromPack()V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/t4game/RoleTradeObject;->tradeGoods:[Lcom/t4game/RoleGoods;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/t4game/RoleTradeObject;->gameworld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->pack:Lcom/t4game/Pack;

    iget-object v2, p0, Lcom/t4game/RoleTradeObject;->tradeGoods:[Lcom/t4game/RoleGoods;

    aget-object v2, v2, v0

    iget-byte v2, v2, Lcom/t4game/RoleGoods;->type:B

    iget-object v3, p0, Lcom/t4game/RoleTradeObject;->tradeGoodsPos:[B

    aget-byte v3, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/t4game/Pack;->delGoodsFromPack(BB)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public release()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/RoleTradeObject;->tradeGoods:[Lcom/t4game/RoleGoods;

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/t4game/RoleTradeObject;->tradedGoods:[Lcom/t4game/RoleGoods;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/t4game/RoleTradeObject;->tradeGoodsPos:[B

    iput-object v2, p0, Lcom/t4game/RoleTradeObject;->tradedGoodsPos:[B

    iget-object v0, p0, Lcom/t4game/RoleTradeObject;->tradeGoodsIcon:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iget-object v0, p0, Lcom/t4game/RoleTradeObject;->tradedGoodsIcon:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iput-object v2, p0, Lcom/t4game/RoleTradeObject;->tradedName:Ljava/lang/String;

    return-void
.end method

.method public testAddTradeGood()B
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/t4game/RoleTradeObject;->tradeGoods:[Lcom/t4game/RoleGoods;

    aget-object v2, v2, v1

    if-nez v2, :cond_1

    move v0, v1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0
.end method
