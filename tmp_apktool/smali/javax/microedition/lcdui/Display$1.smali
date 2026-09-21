.class Ljavax/microedition/lcdui/Display$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/microedition/lcdui/Display;

.field final synthetic val$current:Ljavax/microedition/lcdui/Displayable;

.field final synthetic val$old:Ljavax/microedition/lcdui/Displayable;


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/Display;Ljavax/microedition/lcdui/Displayable;Ljavax/microedition/lcdui/Displayable;)V
    .locals 0

    iput-object p1, p0, Ljavax/microedition/lcdui/Display$1;->this$0:Ljavax/microedition/lcdui/Display;

    iput-object p2, p0, Ljavax/microedition/lcdui/Display$1;->val$old:Ljavax/microedition/lcdui/Displayable;

    iput-object p3, p0, Ljavax/microedition/lcdui/Display$1;->val$current:Ljavax/microedition/lcdui/Displayable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Ljavax/microedition/lcdui/Display$1;->val$old:Ljavax/microedition/lcdui/Displayable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Display$1;->val$old:Ljavax/microedition/lcdui/Displayable;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Displayable;->setCurrentDisplay(Ljavax/microedition/lcdui/Display;)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Display$1;->val$old:Ljavax/microedition/lcdui/Displayable;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Displayable;->disposeDisplayable()V

    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Display$1;->val$current:Ljavax/microedition/lcdui/Displayable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljavax/microedition/lcdui/Display$1;->val$current:Ljavax/microedition/lcdui/Displayable;

    iget-object v1, p0, Ljavax/microedition/lcdui/Display$1;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Displayable;->setCurrentDisplay(Ljavax/microedition/lcdui/Display;)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Display$1;->val$current:Ljavax/microedition/lcdui/Displayable;

    iget-object v1, p0, Ljavax/microedition/lcdui/Display$1;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v1}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/midlet/MIDlet;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Displayable;->initDisplayable(Ljavax/microedition/midlet/MIDlet;)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Display$1;->val$current:Ljavax/microedition/lcdui/Displayable;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Displayable;->getView()Landroid/view/View;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Ljavax/microedition/lcdui/Display$1;->this$0:Ljavax/microedition/lcdui/Display;

    invoke-static {v1}, Ljavax/microedition/lcdui/Display;->access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/midlet/MIDlet;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_2
    return-void

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method
