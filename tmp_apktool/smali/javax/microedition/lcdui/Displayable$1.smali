.class Ljavax/microedition/lcdui/Displayable$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/microedition/lcdui/Displayable;->addCommandToDisplay(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Display;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/microedition/lcdui/Displayable;

.field final synthetic val$command:Ljavax/microedition/lcdui/Command;

.field final synthetic val$menu:Landroid/view/Menu;


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/Displayable;Landroid/view/Menu;Ljavax/microedition/lcdui/Command;)V
    .locals 0

    iput-object p1, p0, Ljavax/microedition/lcdui/Displayable$1;->this$0:Ljavax/microedition/lcdui/Displayable;

    iput-object p2, p0, Ljavax/microedition/lcdui/Displayable$1;->val$menu:Landroid/view/Menu;

    iput-object p3, p0, Ljavax/microedition/lcdui/Displayable$1;->val$command:Ljavax/microedition/lcdui/Command;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable$1;->this$0:Ljavax/microedition/lcdui/Displayable;

    invoke-static {v0}, Ljavax/microedition/lcdui/Displayable;->access$008(Ljavax/microedition/lcdui/Displayable;)I

    move-result v0

    iget-object v1, p0, Ljavax/microedition/lcdui/Displayable$1;->val$menu:Landroid/view/Menu;

    const/4 v2, 0x0

    iget-object v3, p0, Ljavax/microedition/lcdui/Displayable$1;->val$command:Ljavax/microedition/lcdui/Command;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Command;->getPriority()I

    move-result v3

    iget-object v4, p0, Ljavax/microedition/lcdui/Displayable$1;->val$command:Ljavax/microedition/lcdui/Command;

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Command;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Ljavax/microedition/lcdui/Displayable$CallbackOnMenuItemClickListener;

    iget-object v2, p0, Ljavax/microedition/lcdui/Displayable$1;->this$0:Ljavax/microedition/lcdui/Displayable;

    iget-object v3, p0, Ljavax/microedition/lcdui/Displayable$1;->val$command:Ljavax/microedition/lcdui/Command;

    invoke-direct {v1, v2, v3}, Ljavax/microedition/lcdui/Displayable$CallbackOnMenuItemClickListener;-><init>(Ljavax/microedition/lcdui/Displayable;Ljavax/microedition/lcdui/Command;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    iget-object v1, p0, Ljavax/microedition/lcdui/Displayable$1;->val$command:Ljavax/microedition/lcdui/Command;

    invoke-virtual {v1, v0}, Ljavax/microedition/lcdui/Command;->setItem(Landroid/view/MenuItem;)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable$1;->val$command:Ljavax/microedition/lcdui/Command;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Command;->getCommandType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_0
    return-void
.end method
