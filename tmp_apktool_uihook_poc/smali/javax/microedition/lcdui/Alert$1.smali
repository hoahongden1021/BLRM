.class Ljavax/microedition/lcdui/Alert$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/microedition/lcdui/Alert;->initDisplayable(Ljavax/microedition/midlet/MIDlet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/microedition/lcdui/Alert;

.field final synthetic val$midlet:Ljavax/microedition/midlet/MIDlet;


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/Alert;Ljavax/microedition/midlet/MIDlet;)V
    .locals 0

    iput-object p1, p0, Ljavax/microedition/lcdui/Alert$1;->this$0:Ljavax/microedition/lcdui/Alert;

    iput-object p2, p0, Ljavax/microedition/lcdui/Alert$1;->val$midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->prepare()V

    iget-object v0, p0, Ljavax/microedition/lcdui/Alert$1;->this$0:Ljavax/microedition/lcdui/Alert;

    iget-object v1, p0, Ljavax/microedition/lcdui/Alert$1;->val$midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v1}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Ljavax/microedition/lcdui/Alert$1;->this$0:Ljavax/microedition/lcdui/Alert;

    invoke-static {v2}, Ljavax/microedition/lcdui/Alert;->access$100(Ljavax/microedition/lcdui/Alert;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/microedition/lcdui/Alert;->access$002(Ljavax/microedition/lcdui/Alert;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v0, p0, Ljavax/microedition/lcdui/Alert$1;->this$0:Ljavax/microedition/lcdui/Alert;

    invoke-static {v0}, Ljavax/microedition/lcdui/Alert;->access$000(Ljavax/microedition/lcdui/Alert;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
