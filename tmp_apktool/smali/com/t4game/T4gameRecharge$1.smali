.class Lcom/t4game/T4gameRecharge$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4game/T4gameRecharge;->onPressed_ALi_Recharge()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4game/T4gameRecharge;

.field final synthetic val$amount:I

.field final synthetic val$desc:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/t4game/T4gameRecharge;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/T4gameRecharge$1;->this$0:Lcom/t4game/T4gameRecharge;

    iput-object p2, p0, Lcom/t4game/T4gameRecharge$1;->val$name:Ljava/lang/String;

    iput-object p3, p0, Lcom/t4game/T4gameRecharge$1;->val$desc:Ljava/lang/String;

    iput p4, p0, Lcom/t4game/T4gameRecharge$1;->val$amount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Lj2ab/android/alipay/MobileSecurePayHelper;

    sget-object v1, Lj2ab/android/app/J2ABMIDletActivity;->DEFAULT_ACTIVITY:Lj2ab/android/app/J2ABMIDletActivity;

    invoke-direct {v0, v1}, Lj2ab/android/alipay/MobileSecurePayHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lj2ab/android/alipay/MobileSecurePayHelper;->detectMobile_sp()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMobile_spExist----:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lj2ab/android/app/J2ABMIDletActivity;->checkInfo()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lj2ab/android/app/J2ABMIDletActivity;->DEFAULT_ACTIVITY:Lj2ab/android/app/J2ABMIDletActivity;

    const-string v1, "\u63d0\u793a"

    const-string v2, "\u7f3a\u5c11partner\u6216\u8005seller\uff0c\u8bf7\u5728src/j2ab/android/app/PartnerConfig.java\u4e2d\u589e\u52a0\u3002"

    const v3, 0x7f020003

    invoke-static {v0, v1, v2, v3}, Lj2ab/android/alipay/BaseHelper;->showDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "J2ABMIDletActivity.DEFAULT_ACTIVITY"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lj2ab/android/app/J2ABMIDletActivity;->getOutTradeNo()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/T4gameRecharge$1;->this$0:Lcom/t4game/T4gameRecharge;

    iget-object v2, p0, Lcom/t4game/T4gameRecharge$1;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/T4gameRecharge$1;->val$desc:Ljava/lang/String;

    iget v4, p0, Lcom/t4game/T4gameRecharge$1;->val$amount:I

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/t4game/T4gameRecharge;->sendSecretKey_AliPay_Message(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0
.end method
