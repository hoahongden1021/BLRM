.class public Lcom/t4game/GGeniusData;
.super Ljava/lang/Object;


# instance fields
.field public childList:[Ljava/lang/String;

.field public columnIndex:B

.field public geniusTree:Lcom/t4game/GGeniusTreeData;

.field public iconImageId:S

.field public id:Ljava/lang/String;

.field public levelInterval:B

.field public levelLimit:S

.field public maxPoint:B

.field public name:Ljava/lang/String;

.field public nextGeniusIdList:[S

.field public parentList:Ljava/util/Vector;

.field public rowIndex:B


# direct methods
.method public constructor <init>(Lcom/t4game/GGeniusTreeData;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\u5929\u8d4b"

    iput-object v0, p0, Lcom/t4game/GGeniusData;->name:Ljava/lang/String;

    iput-short v1, p0, Lcom/t4game/GGeniusData;->levelLimit:S

    iput-byte v1, p0, Lcom/t4game/GGeniusData;->levelInterval:B

    iput-byte v3, p0, Lcom/t4game/GGeniusData;->columnIndex:B

    iput-byte v3, p0, Lcom/t4game/GGeniusData;->rowIndex:B

    iput-byte v1, p0, Lcom/t4game/GGeniusData;->maxPoint:B

    iput-object v2, p0, Lcom/t4game/GGeniusData;->nextGeniusIdList:[S

    iput-object v2, p0, Lcom/t4game/GGeniusData;->childList:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/GGeniusData;->parentList:Ljava/util/Vector;

    iput-object p1, p0, Lcom/t4game/GGeniusData;->geniusTree:Lcom/t4game/GGeniusTreeData;

    return-void
.end method

.method private final addParent(Lcom/t4game/GGeniusData;)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/GGeniusData;->parentList:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/GGeniusData;->parentList:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/t4game/GGeniusData;->parentList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public init(Ljava/io/InputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v4, 0x4

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/GGeniusData;->id:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GGeniusData;->columnIndex:B

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GGeniusData;->rowIndex:B

    new-array v0, v4, [S

    iput-object v0, p0, Lcom/t4game/GGeniusData;->nextGeniusIdList:[S

    move v0, v3

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lcom/t4game/GGeniusData;->nextGeniusIdList:[S

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/GGeniusData;->childList:[Ljava/lang/String;

    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/t4game/GGeniusData;->childList:[Ljava/lang/String;

    invoke-static {p1}, Lcom/t4game/GUtil;->readShort(Ljava/io/InputStream;)S

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GGeniusData;->nextGeniusIdList:[S

    iput-object v0, p0, Lcom/t4game/GGeniusData;->childList:[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/GGeniusData;->id:Ljava/lang/String;

    return-void
.end method

.method public updateRelation()V
    .locals 3

    iget-object v0, p0, Lcom/t4game/GGeniusData;->childList:[Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/t4game/GGeniusData;->childList:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/GGeniusData;->geniusTree:Lcom/t4game/GGeniusTreeData;

    iget-object v2, p0, Lcom/t4game/GGeniusData;->childList:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/t4game/GGeniusTreeData;->getGeniusData(Ljava/lang/String;)Lcom/t4game/GGeniusData;

    move-result-object v1

    if-nez v1, :cond_2

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {v1, p0}, Lcom/t4game/GGeniusData;->addParent(Lcom/t4game/GGeniusData;)V

    goto :goto_1
.end method
