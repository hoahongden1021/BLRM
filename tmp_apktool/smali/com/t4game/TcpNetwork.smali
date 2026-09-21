.class public Lcom/t4game/TcpNetwork;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/t4game/TcpNetwork$_MessageReciever;
    }
.end annotation


# static fields
.field private static final LOOP_TIMES:I = 0x6

.field public static TCP_INPUT_ERR_STATE:B

.field public static TCP_NORMAL_STATE:B

.field public static TCP_NOTCONNECTION_ERR_STATE:B

.field public static TCP_OPEN:B

.field public static TCP_OUTPUT_ERR_STATE:B

.field public static connection:Ljava/lang/String;

.field public static dis:Ljava/io/InputStream;

.field public static dos:Ljava/io/OutputStream;

.field public static gameCon:Ljava/lang/String;

.field public static is:Ljava/io/DataInputStream;

.field private static numFlag:I

.field public static os:Ljava/io/DataOutputStream;

.field public static secneId:S

.field public static sendBlock:Z

.field public static socketHead:Ljava/lang/String;

.field public static tcpOpen:Z


# instance fields
.field private volatile aborting:Z

.field private gameWorld:Lcom/t4game/GameWorld;

.field final getBuffMaxLength:S

.field final getBuffMaxOneTick:B

.field public index:I

.field length:I

.field messageReciever:Lcom/t4game/TcpNetwork$_MessageReciever;

.field private recTemp:[B

.field public recivedBuffer:[B

.field private sc:Ljavax/microedition/io/SocketConnection;

.field private sg:Lcom/t4game/StartGame;

.field public tcpState:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/t4game/TcpNetwork;->sendBlock:Z

    sput-boolean v1, Lcom/t4game/TcpNetwork;->tcpOpen:Z

    const/16 v0, 0x64

    sput-short v0, Lcom/t4game/TcpNetwork;->secneId:S

    sput-byte v2, Lcom/t4game/TcpNetwork;->TCP_NORMAL_STATE:B

    sput-byte v1, Lcom/t4game/TcpNetwork;->TCP_OUTPUT_ERR_STATE:B

    const/4 v0, 0x2

    sput-byte v0, Lcom/t4game/TcpNetwork;->TCP_INPUT_ERR_STATE:B

    const/4 v0, 0x3

    sput-byte v0, Lcom/t4game/TcpNetwork;->TCP_NOTCONNECTION_ERR_STATE:B

    const/4 v0, 0x4

    sput-byte v0, Lcom/t4game/TcpNetwork;->TCP_OPEN:B

    sput v2, Lcom/t4game/TcpNetwork;->numFlag:I

    const-string v0, "socket://"

    sput-object v0, Lcom/t4game/TcpNetwork;->socketHead:Ljava/lang/String;

    const-string v0, "221.179.215.153:1888"

    sput-object v0, Lcom/t4game/TcpNetwork;->gameCon:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/t4game/TcpNetwork;->connection:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/t4game/GameWorld;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/t4game/TcpNetwork;->aborting:Z

    const/16 v0, 0xa

    iput-byte v0, p0, Lcom/t4game/TcpNetwork;->getBuffMaxOneTick:B

    const/16 v0, 0x400

    iput-short v0, p0, Lcom/t4game/TcpNetwork;->getBuffMaxLength:S

    iput-byte v1, p0, Lcom/t4game/TcpNetwork;->tcpState:B

    const/16 v0, 0xc00

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/TcpNetwork;->recivedBuffer:[B

    iput v1, p0, Lcom/t4game/TcpNetwork;->index:I

    iput-object v2, p0, Lcom/t4game/TcpNetwork;->gameWorld:Lcom/t4game/GameWorld;

    iput-object v2, p0, Lcom/t4game/TcpNetwork;->sg:Lcom/t4game/StartGame;

    sget-byte v0, Lcom/t4game/TcpNetwork;->TCP_NORMAL_STATE:B

    iput-byte v0, p0, Lcom/t4game/TcpNetwork;->tcpState:B

    iput-object p1, p0, Lcom/t4game/TcpNetwork;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/TcpNetwork;->aborting:Z

    sget-boolean v0, Lcom/t4game/TcpNetwork;->tcpOpen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/t4game/TcpNetwork;->start()V

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/t4game/StartGame;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/t4game/TcpNetwork;->aborting:Z

    const/16 v0, 0xa

    iput-byte v0, p0, Lcom/t4game/TcpNetwork;->getBuffMaxOneTick:B

    const/16 v0, 0x400

    iput-short v0, p0, Lcom/t4game/TcpNetwork;->getBuffMaxLength:S

    iput-byte v1, p0, Lcom/t4game/TcpNetwork;->tcpState:B

    const/16 v0, 0xc00

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/TcpNetwork;->recivedBuffer:[B

    iput v1, p0, Lcom/t4game/TcpNetwork;->index:I

    iput-object v2, p0, Lcom/t4game/TcpNetwork;->gameWorld:Lcom/t4game/GameWorld;

    iput-object v2, p0, Lcom/t4game/TcpNetwork;->sg:Lcom/t4game/StartGame;

    invoke-direct {p0}, Lcom/t4game/TcpNetwork;->opened()Z

    move-result v0

    sput-boolean v0, Lcom/t4game/TcpNetwork;->tcpOpen:Z

    sget-boolean v0, Lcom/t4game/TcpNetwork;->tcpOpen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/t4game/TcpNetwork;->start(Lcom/t4game/StartGame;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TcpNetwork:\u8ba4\u8bc1\u8f6e\u8be2\u8fde\u63a5\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public constructor <init>(Lcom/t4game/StartGame;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/t4game/TcpNetwork;->aborting:Z

    const/16 v0, 0xa

    iput-byte v0, p0, Lcom/t4game/TcpNetwork;->getBuffMaxOneTick:B

    const/16 v0, 0x400

    iput-short v0, p0, Lcom/t4game/TcpNetwork;->getBuffMaxLength:S

    iput-byte v1, p0, Lcom/t4game/TcpNetwork;->tcpState:B

    const/16 v0, 0xc00

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/TcpNetwork;->recivedBuffer:[B

    iput v1, p0, Lcom/t4game/TcpNetwork;->index:I

    iput-object v2, p0, Lcom/t4game/TcpNetwork;->gameWorld:Lcom/t4game/GameWorld;

    iput-object v2, p0, Lcom/t4game/TcpNetwork;->sg:Lcom/t4game/StartGame;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "socket://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4game/TcpNetwork;->connection:Ljava/lang/String;

    sget-object v0, Lcom/t4game/TcpNetwork;->connection:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/t4game/TcpNetwork;->open(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/t4game/TcpNetwork;->tcpOpen:Z

    sget-boolean v0, Lcom/t4game/TcpNetwork;->tcpOpen:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/t4game/TcpNetwork;->start(Lcom/t4game/StartGame;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "TcpNetwork:\u670d\u52a1\u5668\u76f4\u63a5\u8fde\u63a5\u5931\u8d25"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/t4game/TcpNetwork;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/t4game/TcpNetwork;->recieveData()V

    return-void
.end method

.method private close()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/t4game/TcpNetwork;->is:Ljava/io/DataInputStream;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/t4game/TcpNetwork;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    sget-object v0, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_1

    :try_start_1
    sget-object v0, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/t4game/TcpNetwork;->sc:Ljavax/microedition/io/SocketConnection;

    if-eqz v0, :cond_2

    :try_start_2
    iget-object v0, p0, Lcom/t4game/TcpNetwork;->sc:Ljavax/microedition/io/SocketConnection;

    invoke-interface {v0}, Ljavax/microedition/io/SocketConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_2
    sput-object v1, Lcom/t4game/TcpNetwork;->is:Ljava/io/DataInputStream;

    sput-object v1, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    iput-object v1, p0, Lcom/t4game/TcpNetwork;->sc:Ljavax/microedition/io/SocketConnection;

    iget-object v0, p0, Lcom/t4game/TcpNetwork;->messageReciever:Lcom/t4game/TcpNetwork$_MessageReciever;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/TcpNetwork;->messageReciever:Lcom/t4game/TcpNetwork$_MessageReciever;

    invoke-virtual {v0}, Lcom/t4game/TcpNetwork$_MessageReciever;->release()V

    :cond_3
    iput-object v1, p0, Lcom/t4game/TcpNetwork;->messageReciever:Lcom/t4game/TcpNetwork$_MessageReciever;

    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method

.method private empty(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getAuthUrl(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "zslogin0000.lvh.me:29000"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "zsjump0000.lvh.me:2888"

    goto :goto_0
.end method

.method private open(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x3

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v0, v2}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;IZ)Ljavax/microedition/io/Connection;

    move-result-object v0

    check-cast v0, Ljavax/microedition/io/SocketConnection;

    iput-object v0, p0, Lcom/t4game/TcpNetwork;->sc:Ljavax/microedition/io/SocketConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v3

    goto :goto_0
.end method

.method private opened()Z
    .locals 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "socket://"

    sget-byte v0, Lcom/t4game/Defaults;->NetConnectTypeWap:B

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "socket://"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-byte v1, Lcom/t4game/Defaults;->NetConnectTypeWap:B

    if-ne v1, v4, :cond_0

    move v1, v4

    :goto_0
    invoke-direct {p0, v1}, Lcom/t4game/TcpNetwork;->getAuthUrl(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4game/TcpNetwork;->connection:Ljava/lang/String;

    sget-object v0, Lcom/t4game/TcpNetwork;->connection:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/t4game/TcpNetwork;->open(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    :goto_1
    return v0

    :cond_0
    move v1, v5

    goto :goto_0

    :cond_1
    move v0, v5

    :goto_2
    const/4 v1, 0x6

    if-ge v0, v1, :cond_5

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_2

    move v1, v4

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "socket://"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/t4game/TcpNetwork;->getAuthUrl(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/t4game/TcpNetwork;->connection:Ljava/lang/String;

    sget-object v2, Lcom/t4game/TcpNetwork;->connection:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/t4game/TcpNetwork;->open(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_3

    move v0, v4

    :goto_4
    sput-byte v0, Lcom/t4game/Defaults;->NetConnectTypeWap:B

    move v0, v4

    goto :goto_1

    :cond_2
    move v1, v5

    goto :goto_3

    :cond_3
    move v0, v5

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    sput-object v0, Lcom/t4game/TcpNetwork;->connection:Ljava/lang/String;

    move v0, v5

    goto :goto_1
.end method

.method private final recieveData()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    :cond_0
    sget-object v0, Lcom/t4game/TcpNetwork;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const/16 v1, 0x2425

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/t4game/TcpNetwork;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/TcpNetwork;->length:I

    sget-object v0, Lcom/t4game/TcpNetwork;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    sput-byte v0, Lcom/t4game/Defaults;->HEAD_SERVERID:B

    sget-object v0, Lcom/t4game/TcpNetwork;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    sput v0, Lcom/t4game/Defaults;->MESSAGE_SESSIONID:I

    iget v0, p0, Lcom/t4game/TcpNetwork;->length:I

    const/4 v1, 0x5

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/TcpNetwork;->length:I

    iget v0, p0, Lcom/t4game/TcpNetwork;->length:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/TcpNetwork;->recTemp:[B

    iget v0, p0, Lcom/t4game/TcpNetwork;->length:I

    if-lez v0, :cond_1

    move v1, v2

    :goto_0
    if-eq v1, v0, :cond_1

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/t4game/TcpNetwork;->is:Ljava/io/DataInputStream;

    iget-object v3, p0, Lcom/t4game/TcpNetwork;->recTemp:[B

    sub-int v4, v0, v1

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/t4game/TcpNetwork;->setBuffData()V

    sget v0, Lcom/t4game/Defaults;->tcpBytesPack:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/t4game/Defaults;->tcpBytesPack:I

    sget-boolean v0, Lcom/t4game/TcpNetwork;->sendBlock:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/t4game/TcpNetwork;->sendBlock:Z

    :cond_2
    return-void
.end method

.method private declared-synchronized setBuffData()V
    .locals 5

    monitor-enter p0

    :goto_0
    :try_start_0
    iget v0, p0, Lcom/t4game/TcpNetwork;->index:I

    iget v1, p0, Lcom/t4game/TcpNetwork;->length:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/TcpNetwork;->recivedBuffer:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/TcpNetwork;->recivedBuffer:[B

    array-length v0, v0

    add-int/lit16 v0, v0, 0xc00

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/t4game/TcpNetwork;->recivedBuffer:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/t4game/TcpNetwork;->recivedBuffer:[B

    array-length v4, v4

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/t4game/TcpNetwork;->recivedBuffer:[B
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/t4game/TcpNetwork;->recTemp:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/t4game/TcpNetwork;->recivedBuffer:[B

    iget v3, p0, Lcom/t4game/TcpNetwork;->index:I

    iget v4, p0, Lcom/t4game/TcpNetwork;->length:I

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/t4game/TcpNetwork;->index:I

    iget v1, p0, Lcom/t4game/TcpNetwork;->length:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/TcpNetwork;->index:I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final SendData(I[B)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/t4game/TcpNetwork;->sendBlock:Z

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/t4game/StartGame;->isAuthenticate:Z

    if-nez v0, :cond_2

    if-eq p1, v4, :cond_2

    const/16 v0, 0x8f

    if-eq p1, v0, :cond_2

    const/16 v0, 0x85

    if-eq p1, v0, :cond_2

    const/16 v0, 0x88

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_2

    const/16 v0, 0x120

    if-eq p1, v0, :cond_2

    sget-boolean v0, Lcom/t4game/Defaults;->isHttp:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/TcpNetwork;->gameWorld:Lcom/t4game/GameWorld;

    iput p1, v0, Lcom/t4game/GameWorld;->loadTypeMessageCommand:I

    :cond_2
    :goto_1
    :try_start_0
    sget-object v0, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    const/16 v1, 0x2425

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-boolean v0, Lcom/t4game/Defaults;->isHttp:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    array-length v1, p2

    add-int/lit8 v1, v1, 0x9

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-object v0, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    sget-byte v1, Lcom/t4game/Defaults;->HEAD_SERVERID:B

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_2
    sget-object v0, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    sget v1, Lcom/t4game/Defaults;->MESSAGE_SESSIONID:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    sget-object v0, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    int-to-short v1, p1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-object v0, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p2}, Ljava/io/DataOutputStream;->write([B)V

    sget-object v0, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/t4game/TcpNetwork;->sg:Lcom/t4game/StartGame;

    iget-object v0, v0, Lcom/t4game/StartGame;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iput p1, v0, Lcom/t4game/GameWorld;->loadTypeMessageCommand:I

    goto :goto_1

    :cond_4
    :try_start_1
    array-length v0, p2

    add-int/lit8 v0, v0, 0x9

    int-to-short v0, v0

    sget-boolean v1, Lcom/t4game/StartGame;->isAuthenticate:Z

    if-eqz v1, :cond_6

    sget-byte v1, Lcom/t4game/Defaults;->NetConnectTypeWap:B

    if-nez v1, :cond_5

    const/4 v1, 0x2

    :goto_3
    sget-object v2, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-object v0, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    sget-byte v1, Lcom/t4game/TcpNetwork;->TCP_OUTPUT_ERR_STATE:B

    iput-byte v1, p0, Lcom/t4game/TcpNetwork;->tcpState:B

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v0, v3

    goto/16 :goto_0

    :cond_5
    move v1, v3

    goto :goto_3

    :cond_6
    :try_start_2
    sget-object v1, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    sget-object v0, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    sget-object v0, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    sget-byte v1, Lcom/t4game/Defaults;->HEAD_SERVERID:B

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2
.end method

.method public declared-synchronized getBuffData()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/t4game/TcpNetwork;->index:I

    if-lez v0, :cond_0

    sget-boolean v0, Lcom/t4game/Defaults;->isHttp:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/t4game/StartGame;->isAuthenticate:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/t4game/TcpNetwork;->sg:Lcom/t4game/StartGame;

    iget-object v0, v0, Lcom/t4game/StartGame;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/TcpNetwork;->recivedBuffer:[B

    iget v2, p0, Lcom/t4game/TcpNetwork;->index:I

    invoke-virtual {v0, v1, v2}, Lcom/t4game/IoBuffer;->setBuffer([BI)V

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/TcpNetwork;->index:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/t4game/TcpNetwork;->sg:Lcom/t4game/StartGame;

    iget-object v0, v0, Lcom/t4game/StartGame;->readBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/TcpNetwork;->recivedBuffer:[B

    iget v2, p0, Lcom/t4game/TcpNetwork;->index:I

    invoke-virtual {v0, v1, v2}, Lcom/t4game/IoBuffer;->setBuffer([BI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/t4game/TcpNetwork;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/TcpNetwork;->recivedBuffer:[B

    iget v2, p0, Lcom/t4game/TcpNetwork;->index:I

    invoke-virtual {v0, v1, v2}, Lcom/t4game/IoBuffer;->setBuffer([BI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public isUrlGS(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/t4game/TcpNetwork;->empty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public start()V
    .locals 3

    :try_start_0
    sget-boolean v0, Lcom/t4game/Defaults;->CNL_TENCENT:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/t4game/Defaults;->tencentUrl:Ljava/lang/String;

    sput-object v0, Lcom/t4game/TcpNetwork;->connection:Ljava/lang/String;

    invoke-static {}, Lcom/t4game/ExDate;->getInstance()Lcom/t4game/ExDate;

    move-result-object v0

    sget-object v1, Lcom/t4game/TcpNetwork;->connection:Ljava/lang/String;

    const-string v2, "IP"

    invoke-virtual {v0, v1, v2}, Lcom/t4game/ExDate;->getExParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4game/TcpNetwork;->connection:Ljava/lang/String;

    :cond_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tcp\u8fde\u63a5\u5730\u5740connection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/t4game/TcpNetwork;->connection:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/t4game/TcpNetwork;->connection:Ljava/lang/String;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;IZ)Ljavax/microedition/io/Connection;

    move-result-object v0

    check-cast v0, Ljavax/microedition/io/SocketConnection;

    iput-object v0, p0, Lcom/t4game/TcpNetwork;->sc:Ljavax/microedition/io/SocketConnection;

    iget-object v0, p0, Lcom/t4game/TcpNetwork;->sc:Ljavax/microedition/io/SocketConnection;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/io/SocketConnection;->setSocketOption(BI)V

    iget-object v0, p0, Lcom/t4game/TcpNetwork;->sc:Ljavax/microedition/io/SocketConnection;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/io/SocketConnection;->setSocketOption(BI)V

    iget-object v0, p0, Lcom/t4game/TcpNetwork;->sc:Ljavax/microedition/io/SocketConnection;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Ljavax/microedition/io/SocketConnection;->setSocketOption(BI)V

    iget-object v0, p0, Lcom/t4game/TcpNetwork;->sc:Ljavax/microedition/io/SocketConnection;

    invoke-interface {v0}, Ljavax/microedition/io/SocketConnection;->openDataInputStream()Ljava/io/DataInputStream;

    move-result-object v0

    sput-object v0, Lcom/t4game/TcpNetwork;->is:Ljava/io/DataInputStream;

    iget-object v0, p0, Lcom/t4game/TcpNetwork;->sc:Ljavax/microedition/io/SocketConnection;

    invoke-interface {v0}, Ljavax/microedition/io/SocketConnection;->openDataOutputStream()Ljava/io/DataOutputStream;

    move-result-object v0

    sput-object v0, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    new-instance v0, Lcom/t4game/TcpNetwork$_MessageReciever;

    invoke-direct {v0, p0}, Lcom/t4game/TcpNetwork$_MessageReciever;-><init>(Lcom/t4game/TcpNetwork;)V

    iput-object v0, p0, Lcom/t4game/TcpNetwork;->messageReciever:Lcom/t4game/TcpNetwork$_MessageReciever;

    sget-boolean v0, Lcom/t4game/Defaults;->CNL_TENCENT:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    sget-object v0, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    sget v1, Lcom/t4game/Defaults;->SERVERID:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    sget-object v0, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    sget-object v0, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    sget-object v0, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/TcpNetwork;->aborting:Z

    sget-byte v0, Lcom/t4game/TcpNetwork;->TCP_OPEN:B

    iput-byte v0, p0, Lcom/t4game/TcpNetwork;->tcpState:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/t4game/TcpNetwork;->stop()V

    sget-byte v0, Lcom/t4game/TcpNetwork;->TCP_NOTCONNECTION_ERR_STATE:B

    iput-byte v0, p0, Lcom/t4game/TcpNetwork;->tcpState:B

    goto :goto_0
.end method

.method public start(Lcom/t4game/StartGame;)V
    .locals 3

    :try_start_0
    sget-boolean v0, Lcom/t4game/Defaults;->CNL_TENCENT:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/t4game/GameMIDlet;->getProxyServer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4game/TcpNetwork;->connection:Ljava/lang/String;

    :cond_0
    sget-byte v0, Lcom/t4game/TcpNetwork;->TCP_NORMAL_STATE:B

    iput-byte v0, p0, Lcom/t4game/TcpNetwork;->tcpState:B

    iput-object p1, p0, Lcom/t4game/TcpNetwork;->sg:Lcom/t4game/StartGame;

    iget-object v0, p0, Lcom/t4game/TcpNetwork;->sc:Ljavax/microedition/io/SocketConnection;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/io/SocketConnection;->setSocketOption(BI)V

    iget-object v0, p0, Lcom/t4game/TcpNetwork;->sc:Ljavax/microedition/io/SocketConnection;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/microedition/io/SocketConnection;->setSocketOption(BI)V

    iget-object v0, p0, Lcom/t4game/TcpNetwork;->sc:Ljavax/microedition/io/SocketConnection;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-interface {v0, v1, v2}, Ljavax/microedition/io/SocketConnection;->setSocketOption(BI)V

    iget-object v0, p0, Lcom/t4game/TcpNetwork;->sc:Ljavax/microedition/io/SocketConnection;

    invoke-interface {v0}, Ljavax/microedition/io/SocketConnection;->openDataInputStream()Ljava/io/DataInputStream;

    move-result-object v0

    sput-object v0, Lcom/t4game/TcpNetwork;->is:Ljava/io/DataInputStream;

    iget-object v0, p0, Lcom/t4game/TcpNetwork;->sc:Ljavax/microedition/io/SocketConnection;

    invoke-interface {v0}, Ljavax/microedition/io/SocketConnection;->openDataOutputStream()Ljava/io/DataOutputStream;

    move-result-object v0

    sput-object v0, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    new-instance v0, Lcom/t4game/TcpNetwork$_MessageReciever;

    invoke-direct {v0, p0}, Lcom/t4game/TcpNetwork$_MessageReciever;-><init>(Lcom/t4game/TcpNetwork;)V

    iput-object v0, p0, Lcom/t4game/TcpNetwork;->messageReciever:Lcom/t4game/TcpNetwork$_MessageReciever;

    sget-boolean v0, Lcom/t4game/Defaults;->CNL_TENCENT:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    sget-object v0, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    sget v1, Lcom/t4game/Defaults;->SERVERID:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    sget-object v0, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    sget-object v0, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    sget-object v0, Lcom/t4game/TcpNetwork;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/TcpNetwork;->aborting:Z

    sget-byte v0, Lcom/t4game/TcpNetwork;->TCP_OPEN:B

    iput-byte v0, p0, Lcom/t4game/TcpNetwork;->tcpState:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/t4game/TcpNetwork;->stop()V

    sget-byte v0, Lcom/t4game/TcpNetwork;->TCP_NOTCONNECTION_ERR_STATE:B

    iput-byte v0, p0, Lcom/t4game/TcpNetwork;->tcpState:B

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/TcpNetwork;->aborting:Z

    invoke-direct {p0}, Lcom/t4game/TcpNetwork;->close()V

    return-void
.end method
