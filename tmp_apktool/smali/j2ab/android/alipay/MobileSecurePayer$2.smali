.class Lj2ab/android/alipay/MobileSecurePayer$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2ab/android/alipay/MobileSecurePayer;->pay(Ljava/lang/String;Landroid/os/Handler;ILandroid/app/Activity;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lj2ab/android/alipay/MobileSecurePayer;

.field final synthetic val$callback:Landroid/os/Handler;

.field final synthetic val$myWhat:I

.field final synthetic val$strOrderInfo:Ljava/lang/String;


# direct methods
.method constructor <init>(Lj2ab/android/alipay/MobileSecurePayer;Ljava/lang/String;ILandroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lj2ab/android/alipay/MobileSecurePayer$2;->this$0:Lj2ab/android/alipay/MobileSecurePayer;

    iput-object p2, p0, Lj2ab/android/alipay/MobileSecurePayer$2;->val$strOrderInfo:Ljava/lang/String;

    iput p3, p0, Lj2ab/android/alipay/MobileSecurePayer$2;->val$myWhat:I

    iput-object p4, p0, Lj2ab/android/alipay/MobileSecurePayer$2;->val$callback:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "synchronized"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lj2ab/android/alipay/MobileSecurePayer$2;->this$0:Lj2ab/android/alipay/MobileSecurePayer;

    iget-object v0, v0, Lj2ab/android/alipay/MobileSecurePayer;->lock:Ljava/lang/Integer;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lj2ab/android/alipay/MobileSecurePayer$2;->this$0:Lj2ab/android/alipay/MobileSecurePayer;

    iget-object v1, v1, Lj2ab/android/alipay/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    if-nez v1, :cond_0

    iget-object v1, p0, Lj2ab/android/alipay/MobileSecurePayer$2;->this$0:Lj2ab/android/alipay/MobileSecurePayer;

    iget-object v1, v1, Lj2ab/android/alipay/MobileSecurePayer;->lock:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lj2ab/android/alipay/MobileSecurePayer$2;->this$0:Lj2ab/android/alipay/MobileSecurePayer;

    iget-object v0, v0, Lj2ab/android/alipay/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    iget-object v1, p0, Lj2ab/android/alipay/MobileSecurePayer$2;->this$0:Lj2ab/android/alipay/MobileSecurePayer;

    invoke-static {v1}, Lj2ab/android/alipay/MobileSecurePayer;->access$000(Lj2ab/android/alipay/MobileSecurePayer;)Lcom/alipay/android/app/IRemoteServiceCallback;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/android/app/IAlixPay;->registerCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    iget-object v0, p0, Lj2ab/android/alipay/MobileSecurePayer$2;->this$0:Lj2ab/android/alipay/MobileSecurePayer;

    iget-object v0, v0, Lj2ab/android/alipay/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    iget-object v1, p0, Lj2ab/android/alipay/MobileSecurePayer$2;->val$strOrderInfo:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/android/app/IAlixPay;->Pay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lj2ab/android/alipay/MobileSecurePayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After Pay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lj2ab/android/alipay/BaseHelper;->log(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lj2ab/android/alipay/MobileSecurePayer$2;->this$0:Lj2ab/android/alipay/MobileSecurePayer;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lj2ab/android/alipay/MobileSecurePayer;->mbPaying:Z

    iget-object v1, p0, Lj2ab/android/alipay/MobileSecurePayer$2;->this$0:Lj2ab/android/alipay/MobileSecurePayer;

    iget-object v1, v1, Lj2ab/android/alipay/MobileSecurePayer;->mAlixPay:Lcom/alipay/android/app/IAlixPay;

    iget-object v2, p0, Lj2ab/android/alipay/MobileSecurePayer$2;->this$0:Lj2ab/android/alipay/MobileSecurePayer;

    invoke-static {v2}, Lj2ab/android/alipay/MobileSecurePayer;->access$000(Lj2ab/android/alipay/MobileSecurePayer;)Lcom/alipay/android/app/IRemoteServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/android/app/IAlixPay;->unregisterCallback(Lcom/alipay/android/app/IRemoteServiceCallback;)V

    iget-object v1, p0, Lj2ab/android/alipay/MobileSecurePayer$2;->this$0:Lj2ab/android/alipay/MobileSecurePayer;

    iget-object v1, v1, Lj2ab/android/alipay/MobileSecurePayer;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lj2ab/android/alipay/MobileSecurePayer$2;->this$0:Lj2ab/android/alipay/MobileSecurePayer;

    invoke-static {v2}, Lj2ab/android/alipay/MobileSecurePayer;->access$100(Lj2ab/android/alipay/MobileSecurePayer;)Landroid/content/ServiceConnection;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iget v2, p0, Lj2ab/android/alipay/MobileSecurePayer$2;->val$myWhat:I

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lj2ab/android/alipay/MobileSecurePayer$2;->val$callback:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    iget v2, p0, Lj2ab/android/alipay/MobileSecurePayer$2;->val$myWhat:I

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lj2ab/android/alipay/MobileSecurePayer$2;->val$callback:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
