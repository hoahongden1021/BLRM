.class public Lcom/t4game/HttpNetwork;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final NetType_Get:B = 0x0t

.field public static final NetType_Post:B = 0x1t

.field private static TimeOutMax:I

.field private static attct:Lcom/t4game/IAuthenticate;

.field private static cmdSend:B

.field private static http:Lcom/t4game/HttpNetwork;


# instance fields
.field private AutoConnection:Z

.field private MessageBody:Ljava/util/Vector;

.field private MessageCMD:Ljava/util/Vector;

.field private NetError:Z

.field private SendMessageNum:I

.field private volatile ThreadState:B

.field private TimeOut:I

.field private bodySend:[B

.field private hcon:Ljavax/microedition/io/HttpConnection;

.field private is:Ljava/io/DataInputStream;

.field private isNetWork:Z

.field public isNotNetSteady:Z

.field private os:Ljava/io/DataOutputStream;

.field private running:Z

.field private testTime:B

.field private thread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/t4game/HttpNetwork;->attct:Lcom/t4game/IAuthenticate;

    const/4 v0, 0x0

    sput-byte v0, Lcom/t4game/HttpNetwork;->cmdSend:B

    const/16 v0, 0x4b0

    sput v0, Lcom/t4game/HttpNetwork;->TimeOutMax:I

    sput-object v1, Lcom/t4game/HttpNetwork;->http:Lcom/t4game/HttpNetwork;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/t4game/HttpNetwork;->thread:Ljava/lang/Thread;

    iput-boolean v0, p0, Lcom/t4game/HttpNetwork;->running:Z

    iput-object v2, p0, Lcom/t4game/HttpNetwork;->hcon:Ljavax/microedition/io/HttpConnection;

    iput-object v2, p0, Lcom/t4game/HttpNetwork;->is:Ljava/io/DataInputStream;

    iput-object v2, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;

    iput-object v2, p0, Lcom/t4game/HttpNetwork;->bodySend:[B

    iput v1, p0, Lcom/t4game/HttpNetwork;->SendMessageNum:I

    iput-byte v1, p0, Lcom/t4game/HttpNetwork;->ThreadState:B

    iput v1, p0, Lcom/t4game/HttpNetwork;->TimeOut:I

    iput-boolean v0, p0, Lcom/t4game/HttpNetwork;->AutoConnection:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/HttpNetwork;->MessageCMD:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/HttpNetwork;->MessageBody:Ljava/util/Vector;

    iput-boolean v1, p0, Lcom/t4game/HttpNetwork;->NetError:Z

    iput-boolean v1, p0, Lcom/t4game/HttpNetwork;->isNotNetSteady:Z

    iput-boolean v1, p0, Lcom/t4game/HttpNetwork;->isNetWork:Z

    iput-byte v1, p0, Lcom/t4game/HttpNetwork;->testTime:B

    iput-object v2, p0, Lcom/t4game/HttpNetwork;->thread:Ljava/lang/Thread;

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/t4game/HttpNetwork;->thread:Ljava/lang/Thread;

    return-void
.end method

.method public static final getAcctcServerURL()Ljava/lang/String;
    .locals 3

    sget-byte v0, Lcom/t4game/Defaults;->NetConnectTypeWap:B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/t4game/Defaults;->httpHead:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/t4game/Defaults;->TW_Wap_URL:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Defaults;->TW_OP_ID:B

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/t4game/Defaults;->httpCon2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/t4game/Defaults;->httpHead:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/t4game/Defaults;->httpCon1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/t4game/Defaults;->httpCon2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getInstance()Lcom/t4game/HttpNetwork;
    .locals 1

    sget-object v0, Lcom/t4game/HttpNetwork;->http:Lcom/t4game/HttpNetwork;

    if-nez v0, :cond_0

    new-instance v0, Lcom/t4game/HttpNetwork;

    invoke-direct {v0}, Lcom/t4game/HttpNetwork;-><init>()V

    sput-object v0, Lcom/t4game/HttpNetwork;->http:Lcom/t4game/HttpNetwork;

    :cond_0
    sget-object v0, Lcom/t4game/HttpNetwork;->http:Lcom/t4game/HttpNetwork;

    return-object v0
.end method

.method private static final resetInstance()V
    .locals 2

    const/4 v0, 0x0

    sput-object v0, Lcom/t4game/HttpNetwork;->http:Lcom/t4game/HttpNetwork;

    invoke-static {}, Lcom/t4game/HttpNetwork;->getInstance()Lcom/t4game/HttpNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/t4game/HttpNetwork;->Start()V

    sget-object v0, Lcom/t4game/HttpNetwork;->http:Lcom/t4game/HttpNetwork;

    sget-byte v1, Lcom/t4game/HttpNetwork;->cmdSend:B

    invoke-virtual {v0, v1}, Lcom/t4game/HttpNetwork;->sendCMD(B)V

    sget-object v0, Lcom/t4game/HttpNetwork;->http:Lcom/t4game/HttpNetwork;

    invoke-virtual {v0}, Lcom/t4game/HttpNetwork;->ClearTimeOut()V

    return-void
.end method

.method private resetSendState()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/t4game/HttpNetwork;->NetError:Z

    if-eqz v0, :cond_1

    sput-byte v1, Lcom/t4game/HttpNetwork;->cmdSend:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/HttpNetwork;->bodySend:[B

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->MessageCMD:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->MessageBody:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-boolean v0, p0, Lcom/t4game/HttpNetwork;->running:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/t4game/HttpNetwork;->waiting()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/HttpNetwork;->MessageCMD:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-byte v0, v0

    sput-byte v0, Lcom/t4game/HttpNetwork;->cmdSend:B

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->MessageBody:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    iput-object v0, p0, Lcom/t4game/HttpNetwork;->bodySend:[B

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->MessageCMD:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->MessageBody:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0
.end method

.method private setSendState()V
    .locals 1

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/HttpNetwork;->ThreadState:B

    return-void
.end method

.method private waiting()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public ClearSendState()V
    .locals 1

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/HttpNetwork;->ThreadState:B

    return-void
.end method

.method public ClearTimeOut()V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x4b0

    sput v0, Lcom/t4game/HttpNetwork;->TimeOutMax:I

    iput v1, p0, Lcom/t4game/HttpNetwork;->TimeOut:I

    iput-boolean v1, p0, Lcom/t4game/HttpNetwork;->AutoConnection:Z

    return-void
.end method

.method public OpenHttp(Ljava/lang/String;BZLjava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->hcon:Ljavax/microedition/io/HttpConnection;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/t4game/HttpNetwork;->close()V

    :cond_0
    const/4 v0, 0x3

    :try_start_0
    invoke-static {p1, v0}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;I)Ljavax/microedition/io/Connection;

    move-result-object v0

    check-cast v0, Ljavax/microedition/io/HttpConnection;

    iput-object v0, p0, Lcom/t4game/HttpNetwork;->hcon:Ljavax/microedition/io/HttpConnection;

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->hcon:Ljavax/microedition/io/HttpConnection;

    const-string v1, "X-Online-Host"

    invoke-interface {v0, v1, p4}, Ljavax/microedition/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->hcon:Ljavax/microedition/io/HttpConnection;

    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-interface {v0, v1, v2}, Ljavax/microedition/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->hcon:Ljavax/microedition/io/HttpConnection;

    const-string v1, "GET"

    invoke-interface {v0, v1}, Ljavax/microedition/io/HttpConnection;->setRequestMethod(Ljava/lang/String;)V

    :cond_2
    :goto_0
    move v0, v3

    :goto_1
    return v0

    :cond_3
    if-ne p2, v3, :cond_2

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->hcon:Ljavax/microedition/io/HttpConnection;

    const-string v1, "POST"

    invoke-interface {v0, v1}, Ljavax/microedition/io/HttpConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/HttpNetwork;->hcon:Ljavax/microedition/io/HttpConnection;

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public ReplaceIP()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->hcon:Ljavax/microedition/io/HttpConnection;

    if-nez v0, :cond_1

    move-object v0, v2

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/t4game/HttpNetwork;->hcon:Ljavax/microedition/io/HttpConnection;

    invoke-interface {v0}, Ljavax/microedition/io/HttpConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->hcon:Ljavax/microedition/io/HttpConnection;

    const-string v1, "location"

    invoke-interface {v0, v1}, Ljavax/microedition/io/HttpConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->hcon:Ljavax/microedition/io/HttpConnection;

    const-string v1, "Location"

    invoke-interface {v0, v1}, Ljavax/microedition/io/HttpConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0
.end method

.method public Start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/HttpNetwork;->running:Z

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public Stop()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-boolean v1, p0, Lcom/t4game/HttpNetwork;->running:Z

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sput-object v0, Lcom/t4game/HttpNetwork;->http:Lcom/t4game/HttpNetwork;

    sput-object v0, Lcom/t4game/HttpNetwork;->attct:Lcom/t4game/IAuthenticate;

    iput-object v0, p0, Lcom/t4game/HttpNetwork;->thread:Ljava/lang/Thread;

    sput-byte v1, Lcom/t4game/HttpNetwork;->cmdSend:B

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/t4game/HttpNetwork;->is:Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/HttpNetwork;->is:Ljava/io/DataInputStream;

    :cond_0
    iget-object v0, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;

    :cond_1
    iget-object v0, p0, Lcom/t4game/HttpNetwork;->hcon:Ljavax/microedition/io/HttpConnection;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->hcon:Ljavax/microedition/io/HttpConnection;

    invoke-interface {v0}, Ljavax/microedition/io/HttpConnection;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/HttpNetwork;->hcon:Ljavax/microedition/io/HttpConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isNetError()Z
    .locals 1

    iget-boolean v0, p0, Lcom/t4game/HttpNetwork;->isNotNetSteady:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetWork()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/t4game/HttpNetwork;->isNetWork:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/t4game/HttpNetwork;->isNetWork:Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isTimeOut()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/t4game/HttpNetwork;->NetError:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/t4game/HttpNetwork;->NetError:Z

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-byte v0, p0, Lcom/t4game/HttpNetwork;->ThreadState:B

    if-ne v0, v3, :cond_4

    iget v0, p0, Lcom/t4game/HttpNetwork;->TimeOut:I

    sget v1, Lcom/t4game/HttpNetwork;->TimeOutMax:I

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/t4game/HttpNetwork;->TimeOut:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/HttpNetwork;->TimeOut:I

    move v0, v2

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/t4game/HttpNetwork;->AutoConnection:Z

    if-eqz v0, :cond_3

    sget-byte v0, Lcom/t4game/Defaults;->NetConnectTypeWap:B

    if-nez v0, :cond_2

    move v0, v3

    :goto_1
    int-to-byte v0, v0

    sput-byte v0, Lcom/t4game/Defaults;->NetConnectTypeWap:B

    invoke-static {}, Lcom/t4game/Authenticate;->setChinaMoblieOrChinaUni()V

    invoke-static {}, Lcom/t4game/HttpNetwork;->resetInstance()V

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public readData()[B
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/t4game/HttpNetwork;->is:Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/HttpNetwork;->is:Ljava/io/DataInputStream;

    :cond_0
    iget-object v0, p0, Lcom/t4game/HttpNetwork;->hcon:Ljavax/microedition/io/HttpConnection;

    invoke-interface {v0}, Ljavax/microedition/io/HttpConnection;->openDataInputStream()Ljava/io/DataInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/HttpNetwork;->is:Ljava/io/DataInputStream;

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/t4game/HttpNetwork;->is:Ljava/io/DataInputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/DataInputStream;->readFully([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/t4game/HttpNetwork;->is:Ljava/io/DataInputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/t4game/HttpNetwork;->is:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/t4game/HttpNetwork;->is:Ljava/io/DataInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/t4game/HttpNetwork;->NetError:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/HttpNetwork;->isNotNetSteady:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v4

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    :try_start_3
    iput-boolean v0, p0, Lcom/t4game/HttpNetwork;->NetError:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/HttpNetwork;->isNotNetSteady:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-object v0, p0, Lcom/t4game/HttpNetwork;->is:Ljava/io/DataInputStream;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/HttpNetwork;->is:Ljava/io/DataInputStream;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    move-object v0, v4

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v4

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, p0, Lcom/t4game/HttpNetwork;->is:Ljava/io/DataInputStream;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/t4game/HttpNetwork;->is:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/t4game/HttpNetwork;->is:Ljava/io/DataInputStream;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_4
    :goto_2
    throw v0

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public resetTimeOut()V
    .locals 1

    invoke-direct {p0}, Lcom/t4game/HttpNetwork;->setSendState()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/HttpNetwork;->TimeOut:I

    return-void
.end method

.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/t4game/HttpNetwork;->SendMessageNum:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/t4game/HttpNetwork;->waiting()V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/t4game/HttpNetwork;->running:Z

    if-eqz v0, :cond_4

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lcom/t4game/HttpNetwork;->resetTimeOut()V

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->bodySend:[B

    invoke-virtual {p0, v0}, Lcom/t4game/HttpNetwork;->sendMessage([B)V

    iget v0, p0, Lcom/t4game/HttpNetwork;->SendMessageNum:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/t4game/HttpNetwork;->SendMessageNum:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/t4game/HttpNetwork;->SendMessageNum:I

    :cond_1
    iget-object v0, p0, Lcom/t4game/HttpNetwork;->MessageCMD:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/t4game/HttpNetwork;->running:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/t4game/HttpNetwork;->waiting()V

    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/t4game/HttpNetwork;->close()V

    goto :goto_0

    :cond_3
    :try_start_2
    invoke-direct {p0}, Lcom/t4game/HttpNetwork;->resetSendState()V

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    :try_start_4
    iput-boolean v1, p0, Lcom/t4game/HttpNetwork;->NetError:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/t4game/HttpNetwork;->isNetWork:Z

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {p0}, Lcom/t4game/HttpNetwork;->close()V

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0}, Lcom/t4game/HttpNetwork;->close()V

    throw v0

    :cond_4
    return-void
.end method

.method public sendCMD(B)V
    .locals 2

    iget v0, p0, Lcom/t4game/HttpNetwork;->SendMessageNum:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/t4game/HttpNetwork;->SendMessageNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/HttpNetwork;->SendMessageNum:I

    sput-byte p1, Lcom/t4game/HttpNetwork;->cmdSend:B

    sget-object v0, Lcom/t4game/HttpNetwork;->attct:Lcom/t4game/IAuthenticate;

    invoke-interface {v0}, Lcom/t4game/IAuthenticate;->getSendBuffer()[B

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/HttpNetwork;->bodySend:[B

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    iget v0, p0, Lcom/t4game/HttpNetwork;->SendMessageNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/HttpNetwork;->SendMessageNum:I

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->MessageCMD:Ljava/util/Vector;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->MessageBody:Ljava/util/Vector;

    sget-object v1, Lcom/t4game/HttpNetwork;->attct:Lcom/t4game/IAuthenticate;

    invoke-interface {v1}, Lcom/t4game/IAuthenticate;->getSendBuffer()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public sendData(B[B)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;

    :cond_0
    iget-object v0, p0, Lcom/t4game/HttpNetwork;->hcon:Ljavax/microedition/io/HttpConnection;

    invoke-interface {v0}, Ljavax/microedition/io/HttpConnection;->openDataOutputStream()Ljava/io/DataOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;

    array-length v1, p2

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    :cond_1
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_2
    iget-object v1, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_1
    throw v0

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public sendMessage([B)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/t4game/HttpNetwork;->setAcctcServer()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/t4game/HttpNetwork;->hcon:Ljavax/microedition/io/HttpConnection;

    invoke-interface {v0}, Ljavax/microedition/io/HttpConnection;->openDataOutputStream()Ljava/io/DataOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;

    sget-byte v1, Lcom/t4game/HttpNetwork;->cmdSend:B

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    sget-boolean v0, Lcom/t4game/Defaults;->isHttp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    :cond_0
    iget-object v0, p0, Lcom/t4game/HttpNetwork;->hcon:Ljavax/microedition/io/HttpConnection;

    invoke-interface {v0}, Ljavax/microedition/io/HttpConnection;->openDataInputStream()Ljava/io/DataInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/HttpNetwork;->is:Ljava/io/DataInputStream;

    iget-object v0, p0, Lcom/t4game/HttpNetwork;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/t4game/HttpNetwork;->is:Ljava/io/DataInputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    invoke-virtual {p0}, Lcom/t4game/HttpNetwork;->ClearSendState()V

    sget-boolean v0, Lcom/t4game/Defaults;->lockKeyPress:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/t4game/Defaults;->lockKeyPress:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-byte v1, p0, Lcom/t4game/HttpNetwork;->testTime:B

    if-nez v1, :cond_2

    sget v1, Lcom/t4game/HttpNetwork;->TimeOutMax:I

    iput v1, p0, Lcom/t4game/HttpNetwork;->TimeOut:I

    iget-byte v1, p0, Lcom/t4game/HttpNetwork;->testTime:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/t4game/HttpNetwork;->testTime:B

    invoke-virtual {p0}, Lcom/t4game/HttpNetwork;->close()V

    :goto_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_2
    iput-boolean v4, p0, Lcom/t4game/HttpNetwork;->NetError:Z

    iput-boolean v4, p0, Lcom/t4game/HttpNetwork;->isNotNetSteady:Z

    goto :goto_1
.end method

.method public setAcctcServer()Z
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/t4game/HttpNetwork;->getAcctcServerURL()Ljava/lang/String;

    move-result-object v0

    sget-byte v1, Lcom/t4game/Defaults;->NetConnectTypeWap:B

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    sget-object v2, Lcom/t4game/Defaults;->httpCon1:Ljava/lang/String;

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/t4game/HttpNetwork;->OpenHttp(Ljava/lang/String;BZLjava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setListener(Lcom/t4game/IAuthenticate;)V
    .locals 0

    sput-object p1, Lcom/t4game/HttpNetwork;->attct:Lcom/t4game/IAuthenticate;

    return-void
.end method

.method public setTimeOut(IZ)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/HttpNetwork;->TimeOut:I

    sput p1, Lcom/t4game/HttpNetwork;->TimeOutMax:I

    iput-boolean p2, p0, Lcom/t4game/HttpNetwork;->AutoConnection:Z

    return-void
.end method
