.class public Lcom/t4game/GBaseData;
.super Lcom/t4game/AbstractPoolObject;


# static fields
.field public static final REFTYPE_NOUSE:B = 0x0t

.field public static final REFTYPE_NOUSETIME:B = 0x2t

.field public static final REFTYPE_SCENEREF:B = 0x3t

.field public static final REFTYPE_STATIC:B = 0x1t

.field public static final STATE_ERROR:B = 0x2t

.field public static final STATE_LOADING:B = 0x1t

.field public static final STATE_NULL:B = 0x0t

.field public static final STATE_READY:B = 0x3t


# instance fields
.field public id:Ljava/lang/String;

.field public intId:S

.field public isDelayRelease:Z

.field public next:Lcom/t4game/GBaseData;

.field public pre:Lcom/t4game/GBaseData;

.field public refCount:S

.field public refType:B

.field public state:B

.field public type:B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/t4game/AbstractPoolObject;-><init>()V

    iput-boolean v0, p0, Lcom/t4game/GBaseData;->isDelayRelease:Z

    iput-byte v0, p0, Lcom/t4game/GBaseData;->state:B

    iput-short v0, p0, Lcom/t4game/GBaseData;->refCount:S

    iput-byte v0, p0, Lcom/t4game/GBaseData;->refType:B

    return-void
.end method


# virtual methods
.method public final getIntId()I
    .locals 1

    iget-object v0, p0, Lcom/t4game/GBaseData;->id:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/GBaseData;->id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public init(Ljava/io/InputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public initFromBytes([B)Z
    .locals 1

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/t4game/GBaseData;->init(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/t4game/GBaseData;->state:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/t4game/GBaseData;->state:B

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initFromJar()Z
    .locals 4

    const-string v0, "/"

    const-string v0, "."

    :try_start_0
    sget-object v0, Lcom/t4game/GDataManager;->DATATYPE_NAMES:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/GBaseData;->type:B

    aget-object v0, v0, v1

    const-class v1, Lcom/t4game/GBaseData;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/t4game/GUtil;->dataPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/GBaseData;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/t4game/GUtil;->dataPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/GBaseData;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/t4game/GBaseData;->init(Ljava/io/InputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/t4game/GBaseData;->state:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/t4game/GBaseData;->state:B

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 2

    iget-byte v0, p0, Lcom/t4game/GBaseData;->state:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GBaseData;->next:Lcom/t4game/GBaseData;

    iput-object v0, p0, Lcom/t4game/GBaseData;->pre:Lcom/t4game/GBaseData;

    iput-byte v1, p0, Lcom/t4game/GBaseData;->refType:B

    iput-boolean v1, p0, Lcom/t4game/GBaseData;->isDelayRelease:Z

    iput-byte v1, p0, Lcom/t4game/GBaseData;->state:B

    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/t4game/GBaseData;->id:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GBaseData;->intId:S

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public final setId(S)V
    .locals 1

    iput-short p1, p0, Lcom/t4game/GBaseData;->intId:S

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/GBaseData;->id:Ljava/lang/String;

    return-void
.end method
