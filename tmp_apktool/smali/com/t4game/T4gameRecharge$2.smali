.class Lcom/t4game/T4gameRecharge$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4game/T4gameRecharge;->processToastValue(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4game/T4gameRecharge;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/t4game/T4gameRecharge;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/T4gameRecharge$2;->this$0:Lcom/t4game/T4gameRecharge;

    iput-object p2, p0, Lcom/t4game/T4gameRecharge$2;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lj2ab/android/app/J2ABMIDletActivity;->DEFAULT_ACTIVITY:Lj2ab/android/app/J2ABMIDletActivity;

    iget-object v1, p0, Lcom/t4game/T4gameRecharge$2;->val$str:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
