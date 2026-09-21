.class public Lcom/t4game/HttpPos;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static TYPE_FINISH:S

.field public static TYPE_GET:S

.field public static TYPE_POST:S


# instance fields
.field private NetConnectTypeWap:B

.field private PostData:Ljava/lang/String;

.field private categoryType:Ljava/lang/String;

.field data:[B

.field getOrPost:Z

.field hcon:Ljavax/microedition/io/HttpConnection;

.field private headString:[[Ljava/lang/String;

.field private httpstaus:I

.field is:Ljava/io/DataInputStream;

.field isResult:Z

.field private jadData:Ljava/lang/String;

.field private netstaus:S

.field os:Ljava/io/DataOutputStream;

.field private outHeadString:Ljava/util/Vector;

.field recive:Lcom/t4game/IoBuffer;

.field private runflag:Z

.field private sessionId:I

.field private thread:Ljava/lang/Thread;

.field public tick:I

.field private url:[[Ljava/lang/String;

.field url1:Ljava/lang/String;

.field url2:Ljava/lang/String;

.field private waitingTime:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-short v0, Lcom/t4game/HttpPos;->TYPE_GET:S

    const/4 v0, 0x2

    sput-short v0, Lcom/t4game/HttpPos;->TYPE_POST:S

    const/16 v0, 0x64

    sput-short v0, Lcom/t4game/HttpPos;->TYPE_FINISH:S

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/t4game/HttpPos;->tick:I

    const-string v1, ""

    iput-object v4, p0, Lcom/t4game/HttpPos;->jadData:Ljava/lang/String;

    new-instance v1, Lcom/t4game/IoBuffer;

    invoke-direct {v1}, Lcom/t4game/IoBuffer;-><init>()V

    iput-object v1, p0, Lcom/t4game/HttpPos;->recive:Lcom/t4game/IoBuffer;

    iput-boolean v5, p0, Lcom/t4game/HttpPos;->runflag:Z

    iput-byte v3, p0, Lcom/t4game/HttpPos;->NetConnectTypeWap:B

    iput v3, p0, Lcom/t4game/HttpPos;->waitingTime:I

    iput v3, p0, Lcom/t4game/HttpPos;->sessionId:I

    const-string v1, ""

    iput-object v4, p0, Lcom/t4game/HttpPos;->PostData:Ljava/lang/String;

    iput-short v5, p0, Lcom/t4game/HttpPos;->netstaus:S

    iput v3, p0, Lcom/t4game/HttpPos;->httpstaus:I

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/HttpPos;->headString:[[Ljava/lang/String;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/t4game/HttpPos;->outHeadString:Ljava/util/Vector;

    const-string v1, "221.179.215.156:8089"

    iput-object v1, p0, Lcom/t4game/HttpPos;->url1:Ljava/lang/String;

    const-string v1, "/fee_portal/StrategyServlet"

    iput-object v1, p0, Lcom/t4game/HttpPos;->url2:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/t4game/HttpPos;->isResult:Z

    const-string v1, ""

    iput-object v4, p0, Lcom/t4game/HttpPos;->categoryType:Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;

    iput-object v2, p0, Lcom/t4game/HttpPos;->is:Ljava/io/DataInputStream;

    iput-object v2, p0, Lcom/t4game/HttpPos;->os:Ljava/io/DataOutputStream;

    iput-boolean v3, p0, Lcom/t4game/HttpPos;->getOrPost:Z

    invoke-virtual {p0}, Lcom/t4game/HttpPos;->start()V

    return-void
.end method


# virtual methods
.method public SendQeqRecvRep(B)Z
    .locals 11

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-ltz p1, :cond_5

    :try_start_0
    iget-byte v0, p0, Lcom/t4game/HttpPos;->NetConnectTypeWap:B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://10.0.0.172:80"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/HttpPos;->url:[[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;I)Ljavax/microedition/io/Connection;

    move-result-object v0

    check-cast v0, Ljavax/microedition/io/HttpConnection;

    iput-object v0, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;

    iget-object v0, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;

    const-string v1, "X-Online-Host"

    iget-object v2, p0, Lcom/t4game/HttpPos;->url:[[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-interface {v0, v1, v2}, Ljavax/microedition/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;

    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-interface {v0, v1, v2}, Ljavax/microedition/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;

    iget-boolean v1, p0, Lcom/t4game/HttpPos;->getOrPost:Z

    if-eqz v1, :cond_a

    const-string v1, "GET"

    :goto_1
    invoke-interface {v0, v1}, Ljavax/microedition/io/HttpConnection;->setRequestMethod(Ljava/lang/String;)V

    if-eq p1, v9, :cond_b

    iget-object v0, p0, Lcom/t4game/HttpPos;->headString:[[Ljava/lang/String;

    if-eqz v0, :cond_b

    move v0, v7

    :goto_2
    iget-object v1, p0, Lcom/t4game/HttpPos;->headString:[[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_b

    iget-object v1, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;

    iget-object v2, p0, Lcom/t4game/HttpPos;->headString:[[Ljava/lang/String;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/t4game/HttpPos;->headString:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-interface {v1, v2, v3}, Ljavax/microedition/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/HttpPos;->url:[[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/HttpPos;->url:[[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;I)Ljavax/microedition/io/Connection;

    move-result-object v0

    check-cast v0, Ljavax/microedition/io/HttpConnection;

    iput-object v0, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v7

    :goto_3
    if-eq p1, v9, :cond_1

    const/4 v1, 0x0

    :try_start_1
    iput-short v1, p0, Lcom/t4game/HttpPos;->netstaus:S
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/t4game/HttpPos;->is:Ljava/io/DataInputStream;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/t4game/HttpPos;->is:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    :cond_2
    iget-object v1, p0, Lcom/t4game/HttpPos;->os:Ljava/io/DataOutputStream;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/t4game/HttpPos;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    :cond_3
    iget-object v1, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;

    invoke-interface {v1}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    :try_start_3
    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/HttpPos;->headString:[[Ljava/lang/String;

    iget-byte v0, p0, Lcom/t4game/HttpPos;->NetConnectTypeWap:B

    if-nez v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://10.0.0.172:80"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/HttpPos;->url2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;I)Ljavax/microedition/io/Connection;

    move-result-object v0

    check-cast v0, Ljavax/microedition/io/HttpConnection;

    iput-object v0, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;

    iget-object v0, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;

    const-string v1, "X-Online-Host"

    iget-object v2, p0, Lcom/t4game/HttpPos;->url1:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;

    const-string v1, "Accept"

    const-string v2, "*/*"

    invoke-interface {v0, v1, v2}, Ljavax/microedition/io/HttpConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move v1, v7

    :goto_5
    :try_start_4
    iget-object v2, p0, Lcom/t4game/HttpPos;->is:Ljava/io/DataInputStream;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/t4game/HttpPos;->is:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    :cond_6
    iget-object v2, p0, Lcom/t4game/HttpPos;->os:Ljava/io/DataOutputStream;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/t4game/HttpPos;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    :cond_7
    iget-object v2, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;

    invoke-interface {v2}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_8
    throw v0

    :cond_9
    :try_start_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/HttpPos;->url1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/HttpPos;->url2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;I)Ljavax/microedition/io/Connection;

    move-result-object v0

    check-cast v0, Ljavax/microedition/io/HttpConnection;

    iput-object v0, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;

    goto/16 :goto_0

    :cond_a
    const-string v1, "POST"

    goto/16 :goto_1

    :cond_b
    iget-boolean v0, p0, Lcom/t4game/HttpPos;->getOrPost:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/t4game/HttpPos;->outHeadString:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;

    invoke-interface {v0}, Ljavax/microedition/io/HttpConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/t4game/HttpPos;->httpstaus:I

    move v0, v7

    :goto_6
    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_c

    iget-object v1, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;

    invoke-interface {v1, v0}, Ljavax/microedition/io/HttpConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_c

    iget-object v2, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;

    invoke-interface {v2, v0}, Ljavax/microedition/io/HttpConnection;->getHeaderField(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    iget-object v1, p0, Lcom/t4game/HttpPos;->outHeadString:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_c
    if-ne p1, v9, :cond_18

    iget-object v0, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;

    invoke-interface {v0}, Ljavax/microedition/io/HttpConnection;->openDataOutputStream()Ljava/io/DataOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/HttpPos;->os:Ljava/io/DataOutputStream;

    new-instance v1, Lcom/t4game/IoBuffer;

    invoke-direct {v1}, Lcom/t4game/IoBuffer;-><init>()V

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-short v0, p0, Lcom/t4game/HttpPos;->netstaus:S

    invoke-virtual {v1, v0}, Lcom/t4game/IoBuffer;->putShort(S)V

    iget v0, p0, Lcom/t4game/HttpPos;->httpstaus:I

    invoke-virtual {v1, v0}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/HttpPos;->categoryType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget v0, p0, Lcom/t4game/HttpPos;->sessionId:I

    invoke-virtual {v1, v0}, Lcom/t4game/IoBuffer;->putInt(I)V

    const-string v0, "a"

    invoke-virtual {v1, v0}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/t4game/HttpPos;->isResult:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/t4game/HttpPos;->jadData:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    :goto_7
    iget-object v0, p0, Lcom/t4game/HttpPos;->outHeadString:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_e

    iget-object v0, p0, Lcom/t4game/HttpPos;->outHeadString:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/t4game/IoBuffer;->putInt(I)V

    move v2, v7

    :goto_8
    iget-object v0, p0, Lcom/t4game/HttpPos;->outHeadString:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_f

    iget-object v0, p0, Lcom/t4game/HttpPos;->outHeadString:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v1, v0}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_8

    :cond_d
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/t4game/IoBuffer;->putInt(I)V

    :cond_f
    iget-object v0, p0, Lcom/t4game/HttpPos;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    array-length v2, v2

    int-to-short v2, v2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/t4game/HttpPos;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v0, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;

    invoke-interface {v0}, Ljavax/microedition/io/HttpConnection;->openDataInputStream()Ljava/io/DataInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/HttpPos;->is:Ljava/io/DataInputStream;

    iget-object v0, p0, Lcom/t4game/HttpPos;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/t4game/HttpPos;->data:[B

    iget-object v1, p0, Lcom/t4game/HttpPos;->is:Ljava/io/DataInputStream;

    iget-object v2, p0, Lcom/t4game/HttpPos;->data:[B

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/DataInputStream;->readFully([BII)V

    new-instance v1, Lcom/t4game/IoBuffer;

    invoke-direct {v1}, Lcom/t4game/IoBuffer;-><init>()V

    iget-object v0, p0, Lcom/t4game/HttpPos;->data:[B

    invoke-virtual {v1, v0}, Lcom/t4game/IoBuffer;->setBuffer([B)V

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/HttpPos;->tick:I

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/HttpPos;->waitingTime:I

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v0

    sget-short v4, Lcom/t4game/HttpPos;->TYPE_GET:S

    if-ne v0, v4, :cond_10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/HttpPos;->getOrPost:Z

    :goto_9
    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/HttpPos;->sessionId:I

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/HttpPos;->categoryType:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/HttpPos;->PostData:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/t4game/HttpPos;->isResult:Z

    iget v0, p0, Lcom/t4game/HttpPos;->tick:I

    if-lez v0, :cond_12

    const-string v4, ""

    iget v0, p0, Lcom/t4game/HttpPos;->tick:I

    const/4 v5, 0x2

    filled-new-array {v0, v5}, [I

    move-result-object v0

    const-class v5, Ljava/lang/String;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/HttpPos;->url:[[Ljava/lang/String;

    move v0, v7

    :goto_a
    iget v5, p0, Lcom/t4game/HttpPos;->tick:I

    if-ge v0, v5, :cond_12

    iget-object v5, p0, Lcom/t4game/HttpPos;->url:[[Ljava/lang/String;

    aget-object v5, v5, v0

    const/4 v6, 0x0

    aput-object v2, v5, v6

    iget-object v5, p0, Lcom/t4game/HttpPos;->url:[[Ljava/lang/String;

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aput-object v3, v5, v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/t4game/HttpPos;->url:[[Ljava/lang/String;

    aget-object v5, v5, v0

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/t4game/HttpPos;->url:[[Ljava/lang/String;

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_10
    sget-short v4, Lcom/t4game/HttpPos;->TYPE_POST:S

    if-ne v0, v4, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/HttpPos;->getOrPost:Z

    goto :goto_9

    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/HttpPos;->runflag:Z

    goto :goto_9

    :cond_12
    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v2

    if-lez v2, :cond_13

    const/4 v0, 0x2

    filled-new-array {v2, v0}, [I

    move-result-object v0

    const-class v3, Ljava/lang/String;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/HttpPos;->headString:[[Ljava/lang/String;

    move v0, v7

    :goto_b
    if-ge v0, v2, :cond_14

    iget-object v3, p0, Lcom/t4game/HttpPos;->headString:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x0

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v3, p0, Lcom/t4game/HttpPos;->headString:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_13
    const/4 v0, 0x0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/HttpPos;->headString:[[Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_14
    :goto_c
    const/4 v0, 0x1

    :try_start_6
    iput-short v0, p0, Lcom/t4game/HttpPos;->netstaus:S
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v0, p0, Lcom/t4game/HttpPos;->is:Ljava/io/DataInputStream;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/t4game/HttpPos;->is:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V

    :cond_15
    iget-object v0, p0, Lcom/t4game/HttpPos;->os:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/t4game/HttpPos;->os:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    :cond_16
    iget-object v0, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;

    invoke-interface {v0}, Ljavax/microedition/io/HttpConnection;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_17
    move v0, v8

    goto/16 :goto_4

    :cond_18
    :try_start_8
    iget-boolean v0, p0, Lcom/t4game/HttpPos;->getOrPost:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;

    invoke-interface {v0}, Ljavax/microedition/io/HttpConnection;->openDataOutputStream()Ljava/io/DataOutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/HttpPos;->os:Ljava/io/DataOutputStream;

    iget-object v0, p0, Lcom/t4game/HttpPos;->os:Ljava/io/DataOutputStream;

    iget-object v1, p0, Lcom/t4game/HttpPos;->PostData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_19
    iget-object v0, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;

    invoke-interface {v0}, Ljavax/microedition/io/HttpConnection;->openDataInputStream()Ljava/io/DataInputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/HttpPos;->is:Ljava/io/DataInputStream;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_d
    iget-object v1, p0, Lcom/t4game/HttpPos;->is:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v1

    if-eq v1, v9, :cond_1a

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_d

    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/HttpPos;->jadData:Ljava/lang/String;

    iget v0, p0, Lcom/t4game/HttpPos;->httpstaus:I

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_1b

    iget v0, p0, Lcom/t4game/HttpPos;->httpstaus:I

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_1b

    iget v0, p0, Lcom/t4game/HttpPos;->httpstaus:I

    const/16 v1, 0x12c

    if-ne v0, v1, :cond_14

    :cond_1b
    iget-object v0, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;

    const-string v1, "location"

    invoke-interface {v0, v1}, Ljavax/microedition/io/HttpConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/t4game/HttpPos;->hcon:Ljavax/microedition/io/HttpConnection;

    const-string v1, "Location"

    invoke-interface {v0, v1}, Ljavax/microedition/io/HttpConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_e
    if-eqz v1, :cond_14

    iget v0, p0, Lcom/t4game/HttpPos;->tick:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/HttpPos;->tick:I

    iget v0, p0, Lcom/t4game/HttpPos;->tick:I

    const/4 v2, 0x2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/HttpPos;->url:[[Ljava/lang/String;

    const-string v0, "/"

    const/4 v2, 0x7

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v9, :cond_1c

    iget-object v0, p0, Lcom/t4game/HttpPos;->url:[[Ljava/lang/String;

    iget v2, p0, Lcom/t4game/HttpPos;->tick:I

    sub-int/2addr v2, v8

    aget-object v0, v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x7

    const-string v4, "/"

    const/4 v5, 0x7

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v0, p0, Lcom/t4game/HttpPos;->url:[[Ljava/lang/String;

    iget v2, p0, Lcom/t4game/HttpPos;->tick:I

    sub-int/2addr v2, v8

    aget-object v0, v0, v2

    const/4 v2, 0x1

    const-string v3, "/"

    const/4 v4, 0x7

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    :cond_1c
    const/4 v0, 0x1

    iput-short v0, p0, Lcom/t4game/HttpPos;->netstaus:S
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_c

    :catch_1
    move-exception v0

    if-eq p1, v9, :cond_1d

    iput-short v7, p0, Lcom/t4game/HttpPos;->netstaus:S

    :cond_1d
    move v0, v8

    goto/16 :goto_4

    :catch_2
    move-exception v1

    if-eq p1, v9, :cond_4

    iput-short v7, p0, Lcom/t4game/HttpPos;->netstaus:S

    goto/16 :goto_4

    :catch_3
    move-exception v0

    if-eq p1, v9, :cond_1e

    iput-short v7, p0, Lcom/t4game/HttpPos;->netstaus:S

    :cond_1e
    move v0, v1

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move v1, v8

    goto/16 :goto_5

    :catchall_2
    move-exception v1

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    goto/16 :goto_5

    :catch_4
    move-exception v0

    move v0, v8

    goto/16 :goto_3

    :cond_1f
    move-object v1, v0

    goto :goto_e
.end method

.method public run()V
    .locals 4

    const/4 v3, 0x0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/t4game/HttpPos;->runflag:Z

    if-eqz v0, :cond_3

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    :goto_1
    :try_start_1
    iget v1, p0, Lcom/t4game/HttpPos;->tick:I

    if-ge v0, v1, :cond_2

    const-wide/16 v1, 0x5

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    invoke-virtual {p0, v0}, Lcom/t4game/HttpPos;->SendQeqRecvRep(B)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_0
    iget v1, p0, Lcom/t4game/HttpPos;->waitingTime:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/t4game/HttpPos;->waitingTime:I

    int-to-long v1, v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/HttpPos;->getOrPost:Z

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/t4game/HttpPos;->SendQeqRecvRep(B)Z

    const-wide/16 v0, 0x5

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_3
    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/HttpPos;->runflag:Z

    iget-object v0, p0, Lcom/t4game/HttpPos;->thread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/t4game/HttpPos;->thread:Ljava/lang/Thread;

    :cond_0
    iget-object v0, p0, Lcom/t4game/HttpPos;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
