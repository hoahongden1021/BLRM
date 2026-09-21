.class public Lcom/t4game/SendSms;
.super Ljava/lang/Object;


# instance fields
.field public SEND_FAIL:B

.field public SEND_NOREC:B

.field public SEND_SUCCESS:B

.field public SEND_USERCANCLE:B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/SendSms;->SEND_SUCCESS:B

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/SendSms;->SEND_USERCANCLE:B

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/t4game/SendSms;->SEND_FAIL:B

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/SendSms;->SEND_NOREC:B

    return-void
.end method


# virtual methods
.method public sendMessage(Ljava/lang/String;Ljava/lang/String;I)B
    .locals 5

    iget-byte v0, p0, Lcom/t4game/SendSms;->SEND_FAIL:B

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sms://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;)Ljavax/microedition/io/Connection;

    move-result-object v0

    check-cast v0, Ljavax/wireless/messaging/MessageConnection;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, p3, :cond_0

    :try_start_1
    const-string v1, "text"

    invoke-interface {v0, v1}, Ljavax/wireless/messaging/MessageConnection;->newMessage(Ljava/lang/String;)Ljavax/wireless/messaging/Message;

    move-result-object v1

    check-cast v1, Ljavax/wireless/messaging/TextMessage;

    invoke-interface {v1, v2}, Ljavax/wireless/messaging/TextMessage;->setAddress(Ljava/lang/String;)V

    invoke-interface {v1, p2}, Ljavax/wireless/messaging/TextMessage;->setPayloadText(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljavax/wireless/messaging/MessageConnection;->send(Ljavax/wireless/messaging/Message;)V

    add-int/lit8 v1, v3, 0x1

    int-to-byte v1, v1

    move v3, v1

    goto :goto_0

    :cond_0
    iget-byte v1, p0, Lcom/t4game/SendSms;->SEND_SUCCESS:B
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_1

    :try_start_2
    invoke-interface {v0}, Ljavax/wireless/messaging/MessageConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_1
    move v0, v1

    :goto_2
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    :goto_3
    :try_start_3
    iget-byte v1, p0, Lcom/t4game/SendSms;->SEND_USERCANCLE:B
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_2

    :try_start_4
    invoke-interface {v0}, Ljavax/wireless/messaging/MessageConnection;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    :goto_4
    move v0, v1

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v0, v1

    :goto_5
    :try_start_5
    iget-byte v1, p0, Lcom/t4game/SendSms;->SEND_FAIL:B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_3

    :try_start_6
    invoke-interface {v0}, Ljavax/wireless/messaging/MessageConnection;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_6
    move v0, v1

    goto :goto_2

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v0, v1

    :goto_7
    :try_start_7
    iget-byte v1, p0, Lcom/t4game/SendSms;->SEND_FAIL:B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v0, :cond_4

    :try_start_8
    invoke-interface {v0}, Ljavax/wireless/messaging/MessageConnection;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_4
    :goto_8
    move v0, v1

    goto :goto_2

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catch_7
    move-exception v0

    move-object v0, v1

    :goto_9
    :try_start_9
    iget-byte v1, p0, Lcom/t4game/SendSms;->SEND_NOREC:B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v0, :cond_5

    :try_start_a
    invoke-interface {v0}, Ljavax/wireless/messaging/MessageConnection;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    :cond_5
    :goto_a
    move v0, v1

    goto :goto_2

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    :catchall_0
    move-exception v0

    :goto_b
    if-eqz v1, :cond_6

    :try_start_b
    invoke-interface {v1}, Ljavax/wireless/messaging/MessageConnection;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    :cond_6
    :goto_c
    throw v0

    :catch_9
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_b

    :catch_a
    move-exception v1

    goto :goto_9

    :catch_b
    move-exception v1

    goto :goto_7

    :catch_c
    move-exception v1

    goto :goto_5

    :catch_d
    move-exception v1

    goto :goto_3
.end method
