.class Lj2ab/android/app/J2ABMIDletActivity$3;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj2ab/android/app/J2ABMIDletActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lj2ab/android/app/J2ABMIDletActivity;


# direct methods
.method constructor <init>(Lj2ab/android/app/J2ABMIDletActivity;)V
    .locals 0

    iput-object p1, p0, Lj2ab/android/app/J2ABMIDletActivity$3;->this$0:Lj2ab/android/app/J2ABMIDletActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v6, 0x1

    const-string v1, "\u63d0\u793a"

    const-string v1, "resultStatus="

    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    sget-object v1, Lj2ab/android/app/J2ABMIDletActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :goto_1
    return-void

    :pswitch_0
    invoke-static {}, Lj2ab/android/app/J2ABMIDletActivity;->closeProgress()V

    sget-object v1, Lj2ab/android/app/J2ABMIDletActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v7}, Lj2ab/android/alipay/BaseHelper;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "resultStatus="

    const-string v2, "resultStatus="

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    const-string v2, ";memo="

    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    sub-int/2addr v2, v6

    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lj2ab/android/alipay/ResultChecker;

    invoke-direct {v1, v7}, Lj2ab/android/alipay/ResultChecker;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lj2ab/android/alipay/ResultChecker;->checkSign()I

    move-result v1

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "J2ABMIDletActivity- mHandler--------->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-ne v1, v6, :cond_1

    sget-object v1, Lj2ab/android/app/J2ABMIDletActivity;->DEFAULT_ACTIVITY:Lj2ab/android/app/J2ABMIDletActivity;

    const-string v2, "\u63d0\u793a"

    iget-object v3, p0, Lj2ab/android/app/J2ABMIDletActivity$3;->this$0:Lj2ab/android/app/J2ABMIDletActivity;

    invoke-virtual {v3}, Lj2ab/android/app/J2ABMIDletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x1080027

    invoke-static {v1, v2, v3, v4}, Lj2ab/android/alipay/BaseHelper;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lj2ab/android/app/J2ABMIDletActivity;->DEFAULT_ACTIVITY:Lj2ab/android/app/J2ABMIDletActivity;

    const-string v2, "\u63d0\u793a"

    const v3, 0x7f020003

    invoke-static {v1, v2, v7, v3}, Lj2ab/android/alipay/BaseHelper;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    :try_start_3
    iget-object v1, p0, Lj2ab/android/app/J2ABMIDletActivity$3;->this$0:Lj2ab/android/app/J2ABMIDletActivity;

    invoke-static {v1, v7}, Lj2ab/android/app/J2ABMIDletActivity;->access$400(Lj2ab/android/app/J2ABMIDletActivity;Ljava/lang/String;)V

    invoke-static {}, Lj2ab/android/app/J2ABMIDletActivity;->access$500()Lcom/t4game/zhushen/alipay/IAliPayMessage;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lj2ab/android/app/J2ABMIDletActivity;->access$500()Lcom/t4game/zhushen/alipay/IAliPayMessage;

    move-result-object v1

    iget-object v3, p0, Lj2ab/android/app/J2ABMIDletActivity$3;->this$0:Lj2ab/android/app/J2ABMIDletActivity;

    invoke-static {v3}, Lj2ab/android/app/J2ABMIDletActivity;->access$600(Lj2ab/android/app/J2ABMIDletActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lj2ab/android/app/J2ABMIDletActivity$3;->this$0:Lj2ab/android/app/J2ABMIDletActivity;

    invoke-static {v4}, Lj2ab/android/app/J2ABMIDletActivity;->access$700(Lj2ab/android/app/J2ABMIDletActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lj2ab/android/app/J2ABMIDletActivity$3;->this$0:Lj2ab/android/app/J2ABMIDletActivity;

    invoke-static {v5}, Lj2ab/android/app/J2ABMIDletActivity;->access$800(Lj2ab/android/app/J2ABMIDletActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lj2ab/android/app/J2ABMIDletActivity$3;->this$0:Lj2ab/android/app/J2ABMIDletActivity;

    invoke-static {v6}, Lj2ab/android/app/J2ABMIDletActivity;->access$900(Lj2ab/android/app/J2ABMIDletActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/t4game/zhushen/alipay/IAliPayMessage;->sendAliPay_MessageAuthenticat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
