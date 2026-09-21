.class Ljavax/microedition/lcdui/Displayable$CallbackOnMenuItemClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/microedition/lcdui/Displayable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackOnMenuItemClickListener"
.end annotation


# instance fields
.field private source:Ljavax/microedition/lcdui/Command;

.field final synthetic this$0:Ljavax/microedition/lcdui/Displayable;


# direct methods
.method public constructor <init>(Ljavax/microedition/lcdui/Displayable;Ljavax/microedition/lcdui/Command;)V
    .locals 0

    iput-object p1, p0, Ljavax/microedition/lcdui/Displayable$CallbackOnMenuItemClickListener;->this$0:Ljavax/microedition/lcdui/Displayable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljavax/microedition/lcdui/Displayable$CallbackOnMenuItemClickListener;->source:Ljavax/microedition/lcdui/Command;

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable$CallbackOnMenuItemClickListener;->this$0:Ljavax/microedition/lcdui/Displayable;

    iget-object v0, v0, Ljavax/microedition/lcdui/Displayable;->commandListener:Ljavax/microedition/lcdui/CommandListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable$CallbackOnMenuItemClickListener;->this$0:Ljavax/microedition/lcdui/Displayable;

    iget-object v0, v0, Ljavax/microedition/lcdui/Displayable;->commandListener:Ljavax/microedition/lcdui/CommandListener;

    iget-object v1, p0, Ljavax/microedition/lcdui/Displayable$CallbackOnMenuItemClickListener;->source:Ljavax/microedition/lcdui/Command;

    iget-object v2, p0, Ljavax/microedition/lcdui/Displayable$CallbackOnMenuItemClickListener;->this$0:Ljavax/microedition/lcdui/Displayable;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/lcdui/CommandListener;->commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
