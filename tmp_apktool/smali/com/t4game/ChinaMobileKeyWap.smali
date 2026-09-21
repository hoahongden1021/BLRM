.class public Lcom/t4game/ChinaMobileKeyWap;
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

    iput-object v2, p0, Lcom/t4game/ChinaMobileKeyWap;->ChinaMoblileHttpCon2:Ljava/lang/String;

    const-string v0, ""

    iput-object v2, p0, Lcom/t4game/ChinaMobileKeyWap;->ChinaMoblileHttpCon1:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/ChinaMobileKeyWap;->thread:Ljava/lang/Thread;

    iput-byte v1, p0, Lcom/t4game/ChinaMobileKeyWap;->tick:B

    iput-object p1, p0, Lcom/t4game/ChinaMobileKeyWap;->gw:Lcom/t4game/GameWorld;

    iput-object p2, p0, Lcom/t4game/ChinaMobileKeyWap;->ChinaMoblileHttpCon1:Ljava/lang/String;

    iput-object p3, p0, Lcom/t4game/ChinaMobileKeyWap;->ChinaMoblileHttpCon2:Ljava/lang/String;

    iput-byte v1, p0, Lcom/t4game/ChinaMobileKeyWap;->tick:B

    invoke-virtual {p0}, Lcom/t4game/ChinaMobileKeyWap;->start()V

    return-void
.end method

.method private sendChinaMoblieLogin()V
    .locals 7

    const/4 v5, -0x1

    const-string v0, "userId="

    const-string v0, "1"

    const/4 v1, 0x0

    :try_start_0
    sget-byte v0, Lcom/t4game/Defaults;->NetConnectTypeWap:B

    if-nez v0, :cond_6

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

    iget-object v2, p0, Lcom/t4game/ChinaMobileKeyWap;->ChinaMoblileHttpCon2:Ljava/lang/String;

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
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v1, "X-Online-Host"

    iget-object v2, p0, Lcom/t4game/ChinaMobileKeyWap;->ChinaMoblileHttpCon1:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-interface {v0, v1, v2}, Ljavax/microedition/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "GET"

    invoke-interface {v0, v1}, Ljavax/microedition/io/HttpConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-interface {v0}, Ljavax/microedition/io/HttpConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_0

    const/16 v2, 0x12d

    if-eq v1, v2, :cond_0

    const/16 v2, 0x12c

    if-ne v1, v2, :cond_4

    :cond_0
    const-string v1, "location"

    invoke-interface {v0, v1}, Ljavax/microedition/io/HttpConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "Location"

    invoke-interface {v0, v1}, Ljavax/microedition/io/HttpConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    const-string v2, "userId="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v5, :cond_2

    const-string v2, "userId="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v3, "&key="

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "&cpId="

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v2, v5, :cond_2

    if-eq v3, v5, :cond_2

    if-eq v4, v5, :cond_2

    add-int/lit8 v2, v2, 0x7

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/t4game/Defaults;->userIdChinaMoblie:Ljava/lang/String;

    add-int/lit8 v2, v3, 0x5

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/t4game/Defaults;->keyChinaMoblie:Ljava/lang/String;

    :cond_2
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

    if-eqz v1, :cond_7

    :cond_3
    const/4 v1, 0x2

    iput-byte v1, p0, Lcom/t4game/ChinaMobileKeyWap;->tick:B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    :goto_1
    if-eqz v0, :cond_5

    :try_start_2
    invoke-interface {v0}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_5
    :goto_2
    return-void

    :cond_6
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/t4game/Defaults;->httpHead:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/t4game/ChinaMobileKeyWap;->ChinaMoblileHttpCon1:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/t4game/ChinaMobileKeyWap;->ChinaMoblileHttpCon2:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    invoke-static {v0, v2}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;I)Ljavax/microedition/io/Connection;

    move-result-object v0

    check-cast v0, Ljavax/microedition/io/HttpConnection;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_7
    :try_start_4
    iget-object v1, p0, Lcom/t4game/ChinaMobileKeyWap;->gw:Lcom/t4game/GameWorld;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/t4game/GameWorld;->getChinaMoblieKey:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_3
    const/4 v1, 0x2

    :try_start_5
    iput-byte v1, p0, Lcom/t4game/ChinaMobileKeyWap;->tick:B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_5

    :try_start_6
    invoke-interface {v0}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_8

    :try_start_7
    invoke-interface {v1}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_8
    :goto_5
    throw v0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_3
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-byte v1, p0, Lcom/t4game/ChinaMobileKeyWap;->tick:B

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/t4game/ChinaMobileKeyWap;->sendChinaMoblieLogin()V

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    const-string v1, "1"

    iget-object v0, p0, Lcom/t4game/ChinaMobileKeyWap;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/t4game/ChinaMobileKeyWap;->thread:Ljava/lang/Thread;

    :cond_0
    const-string v0, "1"

    sput-object v1, Lcom/t4game/Defaults;->userIdChinaMoblie:Ljava/lang/String;

    const-string v0, "1"

    sput-object v1, Lcom/t4game/Defaults;->keyChinaMoblie:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/ChinaMobileKeyWap;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
