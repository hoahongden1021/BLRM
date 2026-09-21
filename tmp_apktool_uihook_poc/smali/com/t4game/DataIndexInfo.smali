.class Lcom/t4game/DataIndexInfo;
.super Ljava/lang/Object;


# static fields
.field public static INFODATA_SIZE:B = 0x0t

.field public static MoveTime:I = 0x0

.field public static final STATE_ERROR:B = 0x2t

.field public static final STATE_LOADING:B = 0x1t

.field public static final STATE_NULL:B = 0x0t

.field public static final STATE_READY:B = 0x3t


# instance fields
.field public bufferedData:[B

.field public dataSize:S

.field public flag:B

.field public id:Ljava/lang/String;

.field public index:I

.field public infoIndex:I

.field public lastDate:I

.field public next:Lcom/t4game/DataIndexInfo;

.field public pre:Lcom/t4game/DataIndexInfo;

.field public state:B

.field public version:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    sput-byte v0, Lcom/t4game/DataIndexInfo;->INFODATA_SIZE:B

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v1, p0, Lcom/t4game/DataIndexInfo;->flag:B

    iput v0, p0, Lcom/t4game/DataIndexInfo;->index:I

    iput v0, p0, Lcom/t4game/DataIndexInfo;->infoIndex:I

    iput-byte v1, p0, Lcom/t4game/DataIndexInfo;->state:B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIBZI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v0, p0, Lcom/t4game/DataIndexInfo;->flag:B

    iput v1, p0, Lcom/t4game/DataIndexInfo;->index:I

    iput v1, p0, Lcom/t4game/DataIndexInfo;->infoIndex:I

    iput-byte v0, p0, Lcom/t4game/DataIndexInfo;->state:B

    iput-object p1, p0, Lcom/t4game/DataIndexInfo;->id:Ljava/lang/String;

    int-to-short v0, p2

    iput-short v0, p0, Lcom/t4game/DataIndexInfo;->version:S

    iput p3, p0, Lcom/t4game/DataIndexInfo;->lastDate:I

    if-ne p3, v1, :cond_0

    invoke-virtual {p0}, Lcom/t4game/DataIndexInfo;->updateDate()V

    :cond_0
    int-to-short v0, p4

    iput-short v0, p0, Lcom/t4game/DataIndexInfo;->dataSize:S

    if-eqz p6, :cond_1

    iget-byte v0, p0, Lcom/t4game/DataIndexInfo;->flag:B

    or-int/lit16 v0, v0, 0x80

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DataIndexInfo;->flag:B

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/t4game/DataIndexInfo;->state:B

    :cond_1
    iget-byte v0, p0, Lcom/t4game/DataIndexInfo;->flag:B

    add-int/2addr v0, p5

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/DataIndexInfo;->flag:B

    iput p7, p0, Lcom/t4game/DataIndexInfo;->index:I

    return-void
.end method


# virtual methods
.method public final getDataType()B
    .locals 1

    iget-byte v0, p0, Lcom/t4game/DataIndexInfo;->flag:B

    and-int/lit8 v0, v0, 0xf

    int-to-byte v0, v0

    return v0
.end method

.method public init([B)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    sget-byte v1, Lcom/t4game/DataIndexInfo;->INFODATA_SIZE:B

    if-eq v0, v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lcom/t4game/GUtil;->readShort([BI)S

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/DataIndexInfo;->id:Ljava/lang/String;

    add-int/lit8 v0, v2, 0x2

    invoke-static {p1, v0}, Lcom/t4game/GUtil;->readShort([BI)S

    move-result v1

    iput-short v1, p0, Lcom/t4game/DataIndexInfo;->version:S

    add-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Lcom/t4game/GUtil;->readInt([BI)I

    move-result v1

    iput v1, p0, Lcom/t4game/DataIndexInfo;->lastDate:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Lcom/t4game/GUtil;->readShort([BI)S

    move-result v1

    iput-short v1, p0, Lcom/t4game/DataIndexInfo;->dataSize:S

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/t4game/DataIndexInfo;->flag:B

    invoke-static {p1, v1}, Lcom/t4game/GUtil;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/t4game/DataIndexInfo;->index:I

    add-int/lit8 v0, v1, 0x4

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    iput-byte v0, p0, Lcom/t4game/DataIndexInfo;->state:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method

.method public final isFile()Z
    .locals 1

    iget-byte v0, p0, Lcom/t4game/DataIndexInfo;->flag:B

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public save()[B
    .locals 4

    sget-byte v0, Lcom/t4game/DataIndexInfo;->INFODATA_SIZE:B

    new-array v0, v0, [B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/t4game/DataIndexInfo;->id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/t4game/GUtil;->writeShort([BII)V

    add-int/lit8 v1, v1, 0x2

    iget-short v2, p0, Lcom/t4game/DataIndexInfo;->version:S

    invoke-static {v0, v1, v2}, Lcom/t4game/GUtil;->writeShort([BII)V

    add-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/t4game/DataIndexInfo;->lastDate:I

    invoke-static {v0, v1, v2}, Lcom/t4game/GUtil;->writeInt([BII)V

    add-int/lit8 v1, v1, 0x4

    iget-short v2, p0, Lcom/t4game/DataIndexInfo;->dataSize:S

    invoke-static {v0, v1, v2}, Lcom/t4game/GUtil;->writeShort([BII)V

    add-int/lit8 v1, v1, 0x2

    add-int/lit8 v2, v1, 0x1

    iget-byte v3, p0, Lcom/t4game/DataIndexInfo;->flag:B

    aput-byte v3, v0, v1

    iget v1, p0, Lcom/t4game/DataIndexInfo;->index:I

    invoke-static {v0, v2, v1}, Lcom/t4game/GUtil;->writeInt([BII)V

    add-int/lit8 v1, v2, 0x4

    add-int/lit8 v2, v1, 0x1

    iget-byte v2, p0, Lcom/t4game/DataIndexInfo;->state:B

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/t4game/DataIndexInfo;->flag:B

    and-int/lit8 v1, v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",dataId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/DataIndexInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/t4game/DataIndexInfo;->version:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",lastDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/t4game/DataIndexInfo;->lastDate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",dataSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/t4game/DataIndexInfo;->dataSize:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",isFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/t4game/DataIndexInfo;->isFile()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/t4game/DataIndexInfo;->state:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",infoIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/t4game/DataIndexInfo;->infoIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateDate()V
    .locals 4

    invoke-static {}, Lcom/t4game/Util;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    const v1, 0x5f5e100

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/DataIndexInfo;->lastDate:I

    return-void
.end method
