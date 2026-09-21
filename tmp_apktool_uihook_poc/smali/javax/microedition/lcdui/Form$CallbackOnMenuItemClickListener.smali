.class Ljavax/microedition/lcdui/Form$CallbackOnMenuItemClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/microedition/lcdui/Form;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackOnMenuItemClickListener"
.end annotation


# instance fields
.field private source:Ljavax/microedition/lcdui/Command;

.field final synthetic this$0:Ljavax/microedition/lcdui/Form;


# direct methods
.method public constructor <init>(Ljavax/microedition/lcdui/Form;Ljavax/microedition/lcdui/Command;)V
    .locals 0

    iput-object p1, p0, Ljavax/microedition/lcdui/Form$CallbackOnMenuItemClickListener;->this$0:Ljavax/microedition/lcdui/Form;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljavax/microedition/lcdui/Form$CallbackOnMenuItemClickListener;->source:Ljavax/microedition/lcdui/Command;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Ljavax/microedition/lcdui/Form$CallbackOnMenuItemClickListener;->this$0:Ljavax/microedition/lcdui/Form;

    iget-object v0, v0, Ljavax/microedition/lcdui/Form;->commandListener:Ljavax/microedition/lcdui/CommandListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Form$CallbackOnMenuItemClickListener;->this$0:Ljavax/microedition/lcdui/Form;

    iget-object v0, v0, Ljavax/microedition/lcdui/Form;->commandListener:Ljavax/microedition/lcdui/CommandListener;

    iget-object v1, p0, Ljavax/microedition/lcdui/Form$CallbackOnMenuItemClickListener;->source:Ljavax/microedition/lcdui/Command;

    iget-object v2, p0, Ljavax/microedition/lcdui/Form$CallbackOnMenuItemClickListener;->this$0:Ljavax/microedition/lcdui/Form;

    invoke-interface {v0, v1, v2}, Ljavax/microedition/lcdui/CommandListener;->commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V

    :cond_0
    return-void
.end method
