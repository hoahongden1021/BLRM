.class public Lcom/t4game/LoginPlayerData;
.super Ljava/lang/Object;


# instance fields
.field private createMiniPlayer:[Lcom/t4game/MiniPlayer;

.field private hadMiniPlayer:[Lcom/t4game/MiniPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCreateMiniPlayer()[Lcom/t4game/MiniPlayer;
    .locals 1

    iget-object v0, p0, Lcom/t4game/LoginPlayerData;->createMiniPlayer:[Lcom/t4game/MiniPlayer;

    return-object v0
.end method

.method public getHadMiniPlayer()[Lcom/t4game/MiniPlayer;
    .locals 1

    iget-object v0, p0, Lcom/t4game/LoginPlayerData;->hadMiniPlayer:[Lcom/t4game/MiniPlayer;

    return-object v0
.end method

.method public initCreateMiniPlayer(Lcom/t4game/IoBuffer;)V
    .locals 9

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [Lcom/t4game/MiniPlayer;

    iput-object v1, p0, Lcom/t4game/LoginPlayerData;->createMiniPlayer:[Lcom/t4game/MiniPlayer;

    move v1, v8

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getBoolean()Z

    move-result v2

    move v3, v8

    :goto_1
    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    new-instance v4, Lcom/t4game/MiniPlayer;

    invoke-direct {v4}, Lcom/t4game/MiniPlayer;-><init>()V

    int-to-byte v5, v1

    invoke-virtual {v4, v5}, Lcom/t4game/MiniPlayer;->setJob(B)V

    iput-boolean v2, v4, Lcom/t4game/MiniPlayer;->supportChangeImage:Z

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v5

    invoke-virtual {v4, v5}, Lcom/t4game/MiniPlayer;->setObjectDataId(S)V

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v5

    invoke-virtual {v4, v5}, Lcom/t4game/MiniPlayer;->initImageDataList(I)V

    move v6, v8

    :goto_2
    if-ge v6, v5, :cond_0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v7

    invoke-virtual {v4, v7, v6}, Lcom/t4game/MiniPlayer;->setImageData(SI)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_0
    const/4 v5, 0x1

    iput-short v5, v4, Lcom/t4game/MiniPlayer;->grade:S

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/t4game/MiniPlayer;->setHair(I)V

    iget-object v5, p0, Lcom/t4game/LoginPlayerData;->createMiniPlayer:[Lcom/t4game/MiniPlayer;

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v6, v3

    aput-object v4, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public initHadMiniPlayer(Lcom/t4game/IoBuffer;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    new-array v1, v0, [Lcom/t4game/MiniPlayer;

    iput-object v1, p0, Lcom/t4game/LoginPlayerData;->hadMiniPlayer:[Lcom/t4game/MiniPlayer;

    move v1, v6

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/t4game/LoginPlayerData;->hadMiniPlayer:[Lcom/t4game/MiniPlayer;

    new-instance v3, Lcom/t4game/MiniPlayer;

    invoke-direct {v3}, Lcom/t4game/MiniPlayer;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/t4game/LoginPlayerData;->hadMiniPlayer:[Lcom/t4game/MiniPlayer;

    aget-object v2, v2, v1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v3

    iput v3, v2, Lcom/t4game/MiniPlayer;->intId:I

    iget-object v2, p0, Lcom/t4game/LoginPlayerData;->hadMiniPlayer:[Lcom/t4game/MiniPlayer;

    aget-object v2, v2, v1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/t4game/MiniPlayer;->mapName:Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/LoginPlayerData;->hadMiniPlayer:[Lcom/t4game/MiniPlayer;

    aget-object v2, v2, v1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/t4game/MiniPlayer;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/LoginPlayerData;->hadMiniPlayer:[Lcom/t4game/MiniPlayer;

    aget-object v2, v2, v1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    invoke-virtual {v2, v3}, Lcom/t4game/MiniPlayer;->setJob(B)V

    iget-object v2, p0, Lcom/t4game/LoginPlayerData;->hadMiniPlayer:[Lcom/t4game/MiniPlayer;

    aget-object v2, v2, v1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    iput-byte v3, v2, Lcom/t4game/MiniPlayer;->sex:B

    iget-object v2, p0, Lcom/t4game/LoginPlayerData;->hadMiniPlayer:[Lcom/t4game/MiniPlayer;

    aget-object v2, v2, v1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    iput-byte v3, v2, Lcom/t4game/MiniPlayer;->countryId:B

    iget-object v2, p0, Lcom/t4game/LoginPlayerData;->hadMiniPlayer:[Lcom/t4game/MiniPlayer;

    aget-object v2, v2, v1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v3

    iput-short v3, v2, Lcom/t4game/MiniPlayer;->grade:S

    iget-object v2, p0, Lcom/t4game/LoginPlayerData;->hadMiniPlayer:[Lcom/t4game/MiniPlayer;

    aget-object v2, v2, v1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getBoolean()Z

    move-result v3

    iput-boolean v3, v2, Lcom/t4game/MiniPlayer;->supportChangeImage:Z

    iget-object v2, p0, Lcom/t4game/LoginPlayerData;->hadMiniPlayer:[Lcom/t4game/MiniPlayer;

    aget-object v2, v2, v1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v3

    invoke-virtual {v2, v3}, Lcom/t4game/MiniPlayer;->setObjectDataId(S)V

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    iget-object v3, p0, Lcom/t4game/LoginPlayerData;->hadMiniPlayer:[Lcom/t4game/MiniPlayer;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Lcom/t4game/MiniPlayer;->initImageDataList(I)V

    move v3, v6

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/t4game/LoginPlayerData;->hadMiniPlayer:[Lcom/t4game/MiniPlayer;

    aget-object v4, v4, v1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/t4game/MiniPlayer;->setImageData(SI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/t4game/LoginPlayerData;->hadMiniPlayer:[Lcom/t4game/MiniPlayer;

    aget-object v2, v2, v1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getBoolean()Z

    move-result v3

    iput-boolean v3, v2, Lcom/t4game/MiniPlayer;->is_roll_name_illegal:Z

    iget-object v2, p0, Lcom/t4game/LoginPlayerData;->hadMiniPlayer:[Lcom/t4game/MiniPlayer;

    aget-object v2, v2, v1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/t4game/MiniPlayer;->setHair(I)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method public initLoginPlayerData(Lcom/t4game/IoBuffer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/t4game/LoginPlayerData;->initCreateMiniPlayer(Lcom/t4game/IoBuffer;)V

    invoke-virtual {p0, p1}, Lcom/t4game/LoginPlayerData;->initHadMiniPlayer(Lcom/t4game/IoBuffer;)V

    return-void
.end method
