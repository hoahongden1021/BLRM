.class public abstract Ljavax/microedition/midlet/MIDlet;
.super Ljava/lang/Object;


# static fields
.field public static DEFAULT_ACTIVITY:Landroid/app/Activity; = null

.field public static DEFAULT_APPLICATION_PROPERTIES:Ljava/util/Properties; = null

.field public static DEFAULT_MIDLET:Ljavax/microedition/midlet/MIDlet; = null

.field public static DEFAULT_TOOLKIT:Lj2ab/android/lcdui/Toolkit; = null

.field public static final PROTOCOL_EMAIL:Ljava/lang/String; = "email:"

.field public static final PROTOCOL_HTTP:Ljava/lang/String; = "http://"

.field public static final PROTOCOL_HTTPS:Ljava/lang/String; = "https://"

.field public static final PROTOCOL_PHONE:Ljava/lang/String; = "tel:"

.field public static final PROTOCOL_SMS:Ljava/lang/String; = "sms:"


# instance fields
.field private activity:Landroid/app/Activity;

.field private applicationProperties:Ljava/util/Properties;

.field private menu:Landroid/view/Menu;

.field private toolkit:Lj2ab/android/lcdui/Toolkit;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    iput-object v0, p0, Ljavax/microedition/midlet/MIDlet;->activity:Landroid/app/Activity;

    sget-object v0, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lj2ab/android/lcdui/Toolkit;

    iput-object v0, p0, Ljavax/microedition/midlet/MIDlet;->toolkit:Lj2ab/android/lcdui/Toolkit;

    sget-object v0, Ljavax/microedition/midlet/MIDlet;->DEFAULT_APPLICATION_PROPERTIES:Ljava/util/Properties;

    iput-object v0, p0, Ljavax/microedition/midlet/MIDlet;->applicationProperties:Ljava/util/Properties;

    sput-object p0, Ljavax/microedition/midlet/MIDlet;->DEFAULT_MIDLET:Ljavax/microedition/midlet/MIDlet;

    return-void
.end method


# virtual methods
.method protected abstract destroyApp(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation
.end method

.method public final doDestroyApp(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljavax/microedition/midlet/MIDlet;->destroyApp(Z)V

    return-void
.end method

.method public final doPauseApp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/microedition/midlet/MIDlet;->pauseApp()V

    return-void
.end method

.method public final doStartApp()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/microedition/midlet/MIDlet;->startApp()V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/midlet/MIDlet;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public getAppProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/midlet/MIDlet;->applicationProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationProperties()Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/midlet/MIDlet;->applicationProperties:Ljava/util/Properties;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/midlet/MIDlet;->toolkit:Lj2ab/android/lcdui/Toolkit;

    invoke-interface {v0}, Lj2ab/android/lcdui/Toolkit;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/midlet/MIDlet;->menu:Landroid/view/Menu;

    return-object v0
.end method

.method public getToolkit()Lj2ab/android/lcdui/Toolkit;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/midlet/MIDlet;->toolkit:Lj2ab/android/lcdui/Toolkit;

    return-object v0
.end method

.method public invokeAndWait(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Ljavax/microedition/midlet/MIDlet;->toolkit:Lj2ab/android/lcdui/Toolkit;

    invoke-interface {v0, p1}, Lj2ab/android/lcdui/Toolkit;->invokeAndWait(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final notifyDestroyed()V
    .locals 1

    iget-object v0, p0, Ljavax/microedition/midlet/MIDlet;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected abstract pauseApp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation
.end method

.method public platformRequest(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/io/ConnectionNotFoundException;
        }
    .end annotation

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "tel:"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.DIAL"

    :goto_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const-string v1, "android.intent.action.VIEW"

    goto :goto_0
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Ljavax/microedition/midlet/MIDlet;->activity:Landroid/app/Activity;

    return-void
.end method

.method public setApplicationProperties(Ljava/util/Properties;)V
    .locals 0

    iput-object p1, p0, Ljavax/microedition/midlet/MIDlet;->applicationProperties:Ljava/util/Properties;

    return-void
.end method

.method public setMenu(Landroid/view/Menu;)V
    .locals 2

    iput-object p1, p0, Ljavax/microedition/midlet/MIDlet;->menu:Landroid/view/Menu;

    invoke-static {p0}, Ljavax/microedition/lcdui/Display;->getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Display;->getCurrent()Ljavax/microedition/lcdui/Displayable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljavax/microedition/lcdui/Displayable;->addCommandsToDisplay(Ljavax/microedition/lcdui/Display;)V

    :cond_0
    return-void
.end method

.method public setToolkit(Lj2ab/android/lcdui/Toolkit;)V
    .locals 0

    iput-object p1, p0, Ljavax/microedition/midlet/MIDlet;->toolkit:Lj2ab/android/lcdui/Toolkit;

    return-void
.end method

.method protected abstract startApp()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation
.end method
