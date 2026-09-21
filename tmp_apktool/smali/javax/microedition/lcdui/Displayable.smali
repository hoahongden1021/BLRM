.class public abstract Ljavax/microedition/lcdui/Displayable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/microedition/lcdui/Displayable$CallbackOnMenuItemClickListener;
    }
.end annotation


# instance fields
.field protected commandListener:Ljavax/microedition/lcdui/CommandListener;

.field protected commands:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljavax/microedition/lcdui/Command;",
            ">;"
        }
    .end annotation
.end field

.field private currentDisplay:Ljavax/microedition/lcdui/Display;

.field private menuItemIds:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/microedition/lcdui/Displayable;->commands:Ljava/util/Vector;

    return-void
.end method

.method static synthetic access$008(Ljavax/microedition/lcdui/Displayable;)I
    .locals 2

    iget v0, p0, Ljavax/microedition/lcdui/Displayable;->menuItemIds:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Ljavax/microedition/lcdui/Displayable;->menuItemIds:I

    return v0
.end method

.method private addCommandToDisplay(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Display;)V
    .locals 3

    invoke-virtual {p2}, Ljavax/microedition/lcdui/Display;->getMIDlet()Ljavax/microedition/midlet/MIDlet;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDlet;->getMenu()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljavax/microedition/lcdui/Display;->getMIDlet()Ljavax/microedition/midlet/MIDlet;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/microedition/midlet/MIDlet;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Ljavax/microedition/lcdui/Displayable$1;

    invoke-direct {v2, p0, v0, p1}, Ljavax/microedition/lcdui/Displayable$1;-><init>(Ljavax/microedition/lcdui/Displayable;Landroid/view/Menu;Ljavax/microedition/lcdui/Command;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeCommandFromDisplay(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Display;)V
    .locals 2

    invoke-virtual {p2}, Ljavax/microedition/lcdui/Display;->getMIDlet()Ljavax/microedition/midlet/MIDlet;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDlet;->getMenu()Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Command;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/Menu;->removeItem(I)V

    :cond_0
    return-void
.end method

.method private removeCommandsFromDisplay(Ljavax/microedition/lcdui/Display;)V
    .locals 2

    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->commands:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Command;

    invoke-direct {p0, v0, p1}, Ljavax/microedition/lcdui/Displayable;->removeCommandFromDisplay(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Display;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addCommand(Ljavax/microedition/lcdui/Command;)V
    .locals 4

    const/4 v3, 0x0

    move v1, v3

    :goto_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->commands:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->commands:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Command;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Command;->getPriority()I

    move-result v0

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Command;->getPriority()I

    move-result v2

    if-le v0, v2, :cond_2

    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->commands:Ljava/util/Vector;

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->commands:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->currentDisplay:Ljavax/microedition/lcdui/Display;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->currentDisplay:Ljavax/microedition/lcdui/Display;

    invoke-direct {p0, p1, v0}, Ljavax/microedition/lcdui/Displayable;->addCommandToDisplay(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Display;)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method public addCommandsToDisplay(Ljavax/microedition/lcdui/Display;)V
    .locals 2

    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->commands:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Command;

    invoke-direct {p0, v0, p1}, Ljavax/microedition/lcdui/Displayable;->addCommandToDisplay(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Display;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract disposeDisplayable()V
.end method

.method getCancelCommond()Ljavax/microedition/lcdui/Command;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Ljavax/microedition/lcdui/Displayable;->commands:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Ljavax/microedition/lcdui/Displayable;->commands:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Command;->getCommandType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "has commond back"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v0, p0

    :cond_1
    return-object v0
.end method

.method public getCommandListener()Ljavax/microedition/lcdui/CommandListener;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->commandListener:Ljavax/microedition/lcdui/CommandListener;

    return-object v0
.end method

.method public getCommands()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljavax/microedition/lcdui/Command;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->commands:Ljava/util/Vector;

    return-object v0
.end method

.method public getCurrentDisplay()Ljavax/microedition/lcdui/Display;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->currentDisplay:Ljavax/microedition/lcdui/Display;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Displayable;->getView()Landroid/view/View;

    const/4 v0, 0x0

    if-nez v0, :cond_0

    sget-object v0, Ljavax/microedition/midlet/MIDlet;->DEFAULT_MIDLET:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDlet;->getToolkit()Lj2ab/android/lcdui/Toolkit;

    move-result-object v0

    invoke-interface {v0}, Lj2ab/android/lcdui/Toolkit;->getScreenHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_0
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public getWidth()I
    .locals 1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Displayable;->getView()Landroid/view/View;

    const/4 v0, 0x0

    if-nez v0, :cond_0

    sget-object v0, Ljavax/microedition/midlet/MIDlet;->DEFAULT_MIDLET:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDlet;->getToolkit()Lj2ab/android/lcdui/Toolkit;

    move-result-object v0

    invoke-interface {v0}, Lj2ab/android/lcdui/Toolkit;->getScreenWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_0
.end method

.method protected hideNotify()V
    .locals 0

    return-void
.end method

.method public abstract initDisplayable(Ljavax/microedition/midlet/MIDlet;)V
.end method

.method public abstract onCancel()Z
.end method

.method public removeCommand(Ljavax/microedition/lcdui/Command;)V
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->commands:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->currentDisplay:Ljavax/microedition/lcdui/Display;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->currentDisplay:Ljavax/microedition/lcdui/Display;

    invoke-direct {p0, p1, v0}, Ljavax/microedition/lcdui/Displayable;->removeCommandFromDisplay(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Display;)V

    :cond_0
    return-void
.end method

.method public setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V
    .locals 0

    iput-object p1, p0, Ljavax/microedition/lcdui/Displayable;->commandListener:Ljavax/microedition/lcdui/CommandListener;

    return-void
.end method

.method public setCurrentDisplay(Ljavax/microedition/lcdui/Display;)V
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->currentDisplay:Ljavax/microedition/lcdui/Display;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Displayable;->currentDisplay:Ljavax/microedition/lcdui/Display;

    invoke-direct {p0, v0}, Ljavax/microedition/lcdui/Displayable;->removeCommandsFromDisplay(Ljavax/microedition/lcdui/Display;)V

    :cond_0
    iput-object p1, p0, Ljavax/microedition/lcdui/Displayable;->currentDisplay:Ljavax/microedition/lcdui/Display;

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Ljavax/microedition/lcdui/Displayable;->addCommandsToDisplay(Ljavax/microedition/lcdui/Display;)V

    :cond_1
    return-void
.end method

.method protected showNotify()V
    .locals 0

    return-void
.end method
