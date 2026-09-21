.class public Lcom/t4game/GSEData;
.super Ljava/lang/Object;


# instance fields
.field public frameNum:S

.field public frameTypeList:[B

.field public headOffset:Z

.field public itemDataList:[[[B

.field public objectData:Lcom/t4game/GObjectData;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/t4game/GSEData;->frameNum:S

    return-void
.end method


# virtual methods
.method public init(Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/t4game/GSEData;->headOffset:Z

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-short v1, v0

    iput-short v1, p0, Lcom/t4game/GSEData;->frameNum:S

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/t4game/GSEData;->frameTypeList:[B

    new-array v1, v0, [[[B

    iput-object v1, p0, Lcom/t4game/GSEData;->itemDataList:[[[B

    move v1, v7

    :goto_1
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/t4game/GSEData;->frameTypeList:[B

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    new-array v3, v2, [[B

    move v4, v7

    :goto_2
    if-ge v4, v2, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    new-array v6, v5, [B

    invoke-static {p1, v6, v5}, Lcom/t4game/Util;->read(Ljava/io/InputStream;[BI)V

    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    move v0, v7

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/t4game/GSEData;->itemDataList:[[[B

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GSEData;->frameTypeList:[B

    check-cast v0, [[[B

    iput-object v0, p0, Lcom/t4game/GSEData;->itemDataList:[[[B

    return-void
.end method
