.class public Ljavax/wireless/messaging/MessageConnectionImpl;
.super Landroid/content/BroadcastReceiver;

# interfaces
.implements Ljavax/wireless/messaging/MessageConnection;


# static fields
.field private static final ACTION:Ljava/lang/String; = "android.provider.Telephony.SMS_RECEIVED"


# instance fields
.field private isListeningForMessages:Z

.field private messageListener:Ljavax/wireless/messaging/MessageListener;

.field private port:S

.field private final receiveLock:Ljava/lang/Object;

.field private final receivedMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljavax/wireless/messaging/Message;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const-string v0, "sms://"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->url:Ljava/lang/String;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receiveLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receivedMessages:Ljava/util/ArrayList;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move v1, v4

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->port:S

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private setupMessageReceiver()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->isListeningForMessages:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v1, p0, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receiveLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receiveLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->isListeningForMessages:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->isListeningForMessages:Z

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public newMessage(Ljava/lang/String;)Ljavax/wireless/messaging/Message;
    .locals 1

    iget-object v0, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->url:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Ljavax/wireless/messaging/MessageConnectionImpl;->newMessage(Ljava/lang/String;Ljava/lang/String;)Ljavax/wireless/messaging/Message;

    move-result-object v0

    return-object v0
.end method

.method public newMessage(Ljava/lang/String;Ljava/lang/String;)Ljavax/wireless/messaging/Message;
    .locals 1

    const-string v0, "text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/wireless/messaging/TextMessageImpl;

    invoke-direct {v0, p2}, Ljavax/wireless/messaging/TextMessageImpl;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "binary"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljavax/wireless/messaging/BinaryMessageImpl;

    invoke-direct {v0, p2}, Ljavax/wireless/messaging/BinaryMessageImpl;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public numberOfSegments(Ljavax/wireless/messaging/Message;)I
    .locals 2

    const/4 v1, 0x1

    instance-of v0, p1, Ljavax/wireless/messaging/TextMessage;

    if-eqz v0, :cond_1

    check-cast p1, Ljavax/wireless/messaging/TextMessage;

    invoke-interface {p1}, Ljavax/wireless/messaging/TextMessage;->getPayloadText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit16 v0, v0, 0xa0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljavax/wireless/messaging/BinaryMessage;

    if-eqz v0, :cond_3

    check-cast p1, Ljavax/wireless/messaging/BinaryMessage;

    invoke-interface {p1}, Ljavax/wireless/messaging/BinaryMessage;->getPayloadData()[B

    move-result-object v0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    array-length v0, v0

    div-int/lit16 v0, v0, 0x8c

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "SMS:onReceive."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pdus"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_1

    aget-object v1, v0, v2

    check-cast v1, [B

    check-cast v1, [B

    invoke-static {v1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v1

    new-instance v3, Ljavax/wireless/messaging/TextMessageImpl;

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v3, v4, v5}, Ljavax/wireless/messaging/TextMessageImpl;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    iget-object v1, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receiveLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v3, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receiveLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->messageListener:Ljavax/wireless/messaging/MessageListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->messageListener:Ljavax/wireless/messaging/MessageListener;

    invoke-interface {v1, p0}, Ljavax/wireless/messaging/MessageListener;->notifyIncomingMessage(Ljavax/wireless/messaging/MessageConnection;)V

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    return-void
.end method

.method public receive()Ljavax/wireless/messaging/Message;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->isListeningForMessages:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljavax/wireless/messaging/MessageConnectionImpl;->setupMessageReceiver()V

    :cond_0
    iget-object v0, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receiveLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receivedMessages:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/wireless/messaging/Message;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receiveLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->receivedMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/wireless/messaging/Message;

    move-object v0, p0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_2
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public send(Ljavax/wireless/messaging/Message;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p1}, Ljavax/wireless/messaging/Message;->getAddress()Ljava/lang/String;

    move-result-object v1

    instance-of v0, p1, Ljavax/wireless/messaging/TextMessage;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/wireless/messaging/TextMessage;

    invoke-interface {p1}, Ljavax/wireless/messaging/TextMessage;->getPayloadText()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Ljavax/wireless/messaging/BinaryMessage;

    if-eqz v0, :cond_1

    check-cast p1, Ljavax/wireless/messaging/BinaryMessage;

    invoke-interface {p1}, Ljavax/wireless/messaging/BinaryMessage;->getPayloadData()[B

    move-result-object v4

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iget-short v3, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->port:S

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/telephony/SmsManager;->sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMessageListener(Ljavax/wireless/messaging/MessageListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->isListeningForMessages:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Ljavax/wireless/messaging/MessageConnectionImpl;->setupMessageReceiver()V

    :cond_0
    iput-object p1, p0, Ljavax/wireless/messaging/MessageConnectionImpl;->messageListener:Ljavax/wireless/messaging/MessageListener;

    return-void
.end method
