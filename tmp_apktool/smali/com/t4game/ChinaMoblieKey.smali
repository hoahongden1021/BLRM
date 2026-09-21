.class public Lcom/t4game/ChinaMoblieKey;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private ChinaMoblileHttpCon1:Ljava/lang/String;

.field private ChinaMoblileHttpCon2:Ljava/lang/String;

.field private gw:Lcom/t4game/GameWorld;

.field private thread:Ljava/lang/Thread;

.field tick:B


# direct methods
.method public constructor <init>(Lcom/t4game/GameWorld;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x1

    const-string v2, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v2, p0, Lcom/t4game/ChinaMoblieKey;->ChinaMoblileHttpCon2:Ljava/lang/String;

    const-string v0, ""

    iput-object v2, p0, Lcom/t4game/ChinaMoblieKey;->ChinaMoblileHttpCon1:Ljava/lang/String;

    iput-byte v1, p0, Lcom/t4game/ChinaMoblieKey;->tick:B

    iput-object p1, p0, Lcom/t4game/ChinaMoblieKey;->gw:Lcom/t4game/GameWorld;

    iput-object p2, p0, Lcom/t4game/ChinaMoblieKey;->ChinaMoblileHttpCon1:Ljava/lang/String;

    iput-object p3, p0, Lcom/t4game/ChinaMoblieKey;->ChinaMoblileHttpCon2:Ljava/lang/String;

    iput-byte v1, p0, Lcom/t4game/ChinaMoblieKey;->tick:B

    invoke-virtual {p0}, Lcom/t4game/ChinaMoblieKey;->start()V

    return-void
.end method

.method private sendChinaMoblieLogin()V
    .locals 8

    const/4 v5, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-byte v0, Lcom/t4game/Defaults;->NetConnectTypeWap:B

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/t4game/Defaults;->httpHead:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/t4game/Defaults;->TW_Wap_URL:[Ljava/lang/String;

    sget-byte v3, Lcom/t4game/Defaults;->TW_OP_ID:B

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/t4game/ChinaMoblieKey;->ChinaMoblileHttpCon2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v0, v2}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;I)Ljavax/microedition/io/Connection;

    move-result-object v0

    check-cast v0, Ljavax/microedition/io/HttpConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "X-Online-Host"

    iget-object v2, p0, Lcom/t4game/ChinaMoblieKey;->ChinaMoblileHttpCon1:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-interface {v0, v1, v2}, Ljavax/microedition/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "GET"

    invoke-interface {v0, v1}, Ljavax/microedition/io/HttpConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-interface {v0}, Ljavax/microedition/io/HttpConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    iput-byte v2, p0, Lcom/t4game/ChinaMoblieKey;->tick:B

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HTTP response code: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    move-exception v1

    :goto_1
    const/4 v1, 0x2

    :try_start_2
    iput-byte v1, p0, Lcom/t4game/ChinaMoblieKey;->tick:B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_0

    :try_start_3
    invoke-interface {v0}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_0
    :goto_2
    return-void

    :cond_1
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/t4game/Defaults;->httpHead:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/t4game/ChinaMoblieKey;->ChinaMoblileHttpCon1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/t4game/ChinaMoblieKey;->ChinaMoblileHttpCon2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v0, v2}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;I)Ljavax/microedition/io/Connection;

    move-result-object v0

    check-cast v0, Ljavax/microedition/io/HttpConnection;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :cond_2
    :try_start_5
    const-string v1, "hRet"

    invoke-interface {v0, v1}, Ljavax/microedition/io/HttpConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "status"

    invoke-interface {v0, v2}, Ljavax/microedition/io/HttpConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "userId"

    invoke-interface {v0, v2}, Ljavax/microedition/io/HttpConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/t4game/Defaults;->userIdChinaMoblie:Ljava/lang/String;

    const-string v2, "key"

    invoke-interface {v0, v2}, Ljavax/microedition/io/HttpConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/t4game/Defaults;->keyChinaMoblie:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    iput-byte v1, p0, Lcom/t4game/ChinaMoblieKey;->tick:B

    :goto_3
    sget-object v1, Lcom/t4game/Defaults;->userIdChinaMoblie:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/t4game/Defaults;->userIdChinaMoblie:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/t4game/Defaults;->keyChinaMoblie:Ljava/lang/String;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/t4game/Defaults;->keyChinaMoblie:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :cond_3
    const/4 v1, 0x2

    iput-byte v1, p0, Lcom/t4game/ChinaMoblieKey;->tick:B
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_4
    if-eqz v0, :cond_0

    :try_start_6
    invoke-interface {v0}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_4
    :try_start_7
    invoke-interface {v0}, Ljavax/microedition/io/HttpConnection;->openDataInputStream()Ljava/io/DataInputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0}, Ljavax/microedition/io/HttpConnection;->getLength()J

    move-result-wide v3

    long-to-int v3, v3

    if-lez v3, :cond_8

    new-array v2, v3, [B

    invoke-virtual {v1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "UTF-8"

    invoke-direct {v4, v2, v5, v3, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    move-object v2, v4

    :cond_5
    :goto_5
    if-eqz v2, :cond_6

    const-string v3, "\r\n"

    invoke-static {v2, v3}, Lcom/t4game/Util;->removeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/t4game/Defaults;->printR:Ljava/lang/String;

    const/16 v3, 0x8

    new-array v3, v3, [I

    const/4 v4, 0x0

    const-string v5, "hRet="

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x5

    aput v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "status="

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x1

    aget v5, v3, v5

    add-int/lit8 v5, v5, 0x7

    aput v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "userId="

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x4

    const/4 v5, 0x3

    aget v5, v3, v5

    add-int/lit8 v5, v5, 0x7

    aput v5, v3, v4

    const/4 v4, 0x5

    const-string v5, "key="

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x6

    const/4 v5, 0x5

    aget v5, v3, v5

    add-int/lit8 v5, v5, 0x4

    aput v5, v3, v4

    const/4 v4, 0x7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v5, v3, v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    const/4 v4, 0x2

    aget v4, v3, v4

    const/4 v5, 0x3

    aget v5, v3, v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    const/4 v4, 0x4

    aget v4, v3, v4

    const/4 v5, 0x5

    aget v5, v3, v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/t4game/Defaults;->userIdChinaMoblie:Ljava/lang/String;

    const/4 v4, 0x6

    aget v4, v3, v4

    const/4 v5, 0x7

    aget v3, v3, v5

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/t4game/Defaults;->keyChinaMoblie:Ljava/lang/String;

    :cond_6
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_6
    if-eqz v1, :cond_7

    :try_start_8
    invoke-interface {v1}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    :cond_7
    :goto_7
    throw v0

    :cond_8
    const/16 v3, 0x400

    :try_start_9
    new-array v3, v3, [B

    move v4, v5

    :goto_8
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_9

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_9
    if-lez v4, :cond_5

    new-instance v2, Ljava/lang/String;

    const/4 v5, 0x0

    add-int/lit8 v4, v4, 0x1

    const-string v6, "UTF-8"

    invoke-direct {v2, v3, v5, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto/16 :goto_5

    :cond_a
    iget-object v1, p0, Lcom/t4game/ChinaMoblieKey;->gw:Lcom/t4game/GameWorld;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/t4game/GameWorld;->getChinaMoblieKey:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_4

    :catch_2
    move-exception v0

    goto/16 :goto_2

    :catch_3
    move-exception v1

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v0

    move-object v0, v1

    goto/16 :goto_1
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-byte v1, p0, Lcom/t4game/ChinaMoblieKey;->tick:B

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/t4game/ChinaMoblieKey;->sendChinaMoblieLogin()V

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    const-string v1, "1"

    iget-object v0, p0, Lcom/t4game/ChinaMoblieKey;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/t4game/ChinaMoblieKey;->thread:Ljava/lang/Thread;

    :cond_0
    const-string v0, "1"

    sput-object v1, Lcom/t4game/Defaults;->userIdChinaMoblie:Ljava/lang/String;

    const-string v0, "1"

    sput-object v1, Lcom/t4game/Defaults;->keyChinaMoblie:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/ChinaMoblieKey;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
