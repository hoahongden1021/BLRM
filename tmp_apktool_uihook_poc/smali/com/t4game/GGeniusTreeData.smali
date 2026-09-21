.class public Lcom/t4game/GGeniusTreeData;
.super Lcom/t4game/GBaseData;


# instance fields
.field public geniusDataList:[Lcom/t4game/GGeniusData;

.field public geniusDatas:Ljava/util/Hashtable;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/t4game/GBaseData;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GGeniusTreeData;->geniusDatas:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public getGeniusData(Ljava/lang/String;)Lcom/t4game/GGeniusData;
    .locals 1

    iget-object v0, p0, Lcom/t4game/GGeniusTreeData;->geniusDatas:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/GGeniusData;

    return-object p0
.end method

.method public final init(Ljava/io/InputStream;)Z
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    new-array v1, v0, [Lcom/t4game/GGeniusData;

    iput-object v1, p0, Lcom/t4game/GGeniusTreeData;->geniusDataList:[Lcom/t4game/GGeniusData;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/t4game/GGeniusTreeData;->geniusDatas:Ljava/util/Hashtable;

    move v1, v5

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v2, Lcom/t4game/GGeniusData;

    invoke-direct {v2, p0}, Lcom/t4game/GGeniusData;-><init>(Lcom/t4game/GGeniusTreeData;)V

    invoke-virtual {v2, p1}, Lcom/t4game/GGeniusData;->init(Ljava/io/InputStream;)V

    iget-object v3, p0, Lcom/t4game/GGeniusTreeData;->geniusDataList:[Lcom/t4game/GGeniusData;

    aput-object v2, v3, v1

    iget-object v3, p0, Lcom/t4game/GGeniusTreeData;->geniusDatas:Ljava/util/Hashtable;

    iget-object v4, v2, Lcom/t4game/GGeniusData;->id:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/t4game/GGeniusTreeData;->geniusDataList:[Lcom/t4game/GGeniusData;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/t4game/GGeniusData;->updateRelation()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_2
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v5

    goto :goto_2
.end method

.method public release()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/GGeniusTreeData;->geniusDataList:[Lcom/t4game/GGeniusData;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/t4game/GGeniusTreeData;->geniusDataList:[Lcom/t4game/GGeniusData;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/t4game/GGeniusData;->release()V

    iget-object v2, p0, Lcom/t4game/GGeniusTreeData;->geniusDataList:[Lcom/t4game/GGeniusData;

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lcom/t4game/GGeniusTreeData;->geniusDataList:[Lcom/t4game/GGeniusData;

    iget-object v0, p0, Lcom/t4game/GGeniusTreeData;->geniusDatas:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    iput-object v3, p0, Lcom/t4game/GGeniusTreeData;->geniusDatas:Ljava/util/Hashtable;

    iput-object v3, p0, Lcom/t4game/GGeniusTreeData;->name:Ljava/lang/String;

    return-void
.end method
