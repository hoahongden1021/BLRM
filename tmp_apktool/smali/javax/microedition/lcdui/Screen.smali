.class public abstract Ljavax/microedition/lcdui/Screen;
.super Ljavax/microedition/lcdui/Displayable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/microedition/lcdui/Displayable;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()Z
    .locals 2

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Screen;->getCancelCommond()Ljavax/microedition/lcdui/Command;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Screen;->getCommandListener()Ljavax/microedition/lcdui/CommandListener;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljavax/microedition/lcdui/CommandListener;->commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V

    const/4 v0, 0x0

    goto :goto_0
.end method
