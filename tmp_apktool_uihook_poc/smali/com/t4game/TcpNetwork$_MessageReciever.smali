.class Lcom/t4game/TcpNetwork$_MessageReciever;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4game/TcpNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "_MessageReciever"
.end annotation


# instance fields
.field private recieveThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/t4game/TcpNetwork;


# direct methods
.method public constructor <init>(Lcom/t4game/TcpNetwork;)V
    .locals 1

    iput-object p1, p0, Lcom/t4game/TcpNetwork$_MessageReciever;->this$0:Lcom/t4game/TcpNetwork;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/t4game/TcpNetwork$_MessageReciever;->recieveThread:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/t4game/TcpNetwork$_MessageReciever;->recieveThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/TcpNetwork$_MessageReciever;->recieveThread:Ljava/lang/Thread;

    return-void
.end method

.method public final run()V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/t4game/TcpNetwork$_MessageReciever;->recieveThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_1

    :try_start_0
    invoke-static {}, Lcom/t4game/Util;->getTime()J

    sget-object v1, Lcom/t4game/TcpNetwork;->is:Ljava/io/DataInputStream;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/t4game/TcpNetwork;->is:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->available()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/t4game/TcpNetwork$_MessageReciever;->this$0:Lcom/t4game/TcpNetwork;

    invoke-static {v1}, Lcom/t4game/TcpNetwork;->access$000(Lcom/t4game/TcpNetwork;)V

    :cond_0
    invoke-static {}, Lcom/t4game/Util;->getTime()J

    move-result-wide v1

    sput-wide v1, Lcom/t4game/Defaults;->lastRecvedTime:J

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, 0x64

    :try_start_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "[FATAL ERROR]:\u6d88\u606f\u63a5\u6536\u7ebf\u7a0b\u6302\u4e86!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/t4game/TcpNetwork$_MessageReciever;->this$0:Lcom/t4game/TcpNetwork;

    sget-byte v2, Lcom/t4game/TcpNetwork;->TCP_INPUT_ERR_STATE:B

    iput-byte v2, v1, Lcom/t4game/TcpNetwork;->tcpState:B

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/t4game/TcpNetwork$_MessageReciever;->recieveThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/t4game/TcpNetwork$_MessageReciever;->this$0:Lcom/t4game/TcpNetwork;

    invoke-virtual {v1}, Lcom/t4game/TcpNetwork;->stop()V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    return-void
.end method
