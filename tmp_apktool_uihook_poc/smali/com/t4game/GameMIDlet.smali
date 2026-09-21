.class public Lcom/t4game/GameMIDlet;
.super Ljavax/microedition/midlet/MIDlet;


# static fields
.field private static midlet:Lcom/t4game/GameMIDlet;


# instance fields
.field private before:Lcom/t4game/BeforeGame;

.field private sg:Lcom/t4game/StartGame;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/microedition/midlet/MIDlet;-><init>()V

    sput-object p0, Lcom/t4game/GameMIDlet;->midlet:Lcom/t4game/GameMIDlet;

    invoke-direct {p0}, Lcom/t4game/GameMIDlet;->before()V

    return-void
.end method

.method private before()V
    .locals 2

    new-instance v0, Lcom/t4game/BeforeGame;

    iget-object v1, p0, Lcom/t4game/GameMIDlet;->sg:Lcom/t4game/StartGame;

    invoke-direct {v0, p0, v1}, Lcom/t4game/BeforeGame;-><init>(Lcom/t4game/GameMIDlet;Lcom/t4game/StartGame;)V

    iput-object v0, p0, Lcom/t4game/GameMIDlet;->before:Lcom/t4game/BeforeGame;

    invoke-static {p0}, Ljavax/microedition/lcdui/Display;->getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/GameMIDlet;->before:Lcom/t4game/BeforeGame;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    return-void
.end method

.method public static getInst()Lcom/t4game/GameMIDlet;
    .locals 1

    sget-object v0, Lcom/t4game/GameMIDlet;->midlet:Lcom/t4game/GameMIDlet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/t4game/GameMIDlet;

    invoke-direct {v0}, Lcom/t4game/GameMIDlet;-><init>()V

    sput-object v0, Lcom/t4game/GameMIDlet;->midlet:Lcom/t4game/GameMIDlet;

    :cond_0
    sget-object v0, Lcom/t4game/GameMIDlet;->midlet:Lcom/t4game/GameMIDlet;

    return-object v0
.end method

.method public static final getInstance()Lcom/t4game/GameMIDlet;
    .locals 1

    sget-object v0, Lcom/t4game/GameMIDlet;->midlet:Lcom/t4game/GameMIDlet;

    return-object v0
.end method

.method public static getProxyServer()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getSid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getUid()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static qbBuyGoods(Ljavax/microedition/lcdui/Displayable;Ljava/lang/String;SI)V
    .locals 0

    return-void
.end method

.method public static shenZhouFuBuyGoods(Ljavax/microedition/lcdui/Displayable;Ljava/lang/String;S)V
    .locals 0

    return-void
.end method

.method public static smsBuyGoods(Ljavax/microedition/lcdui/Displayable;Ljava/lang/String;S)V
    .locals 0

    return-void
.end method


# virtual methods
.method public RepairGame()B
    .locals 1

    iget-object v0, p0, Lcom/t4game/GameMIDlet;->sg:Lcom/t4game/StartGame;

    invoke-virtual {v0}, Lcom/t4game/StartGame;->RepairGame()B

    move-result v0

    return v0
.end method

.method public ReturnBack(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/GameMIDlet;->sg:Lcom/t4game/StartGame;

    invoke-virtual {v0, p1}, Lcom/t4game/StartGame;->ReturnBack(Ljava/lang/String;)V

    return-void
.end method

.method protected destroyApp(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation

    return-void
.end method

.method public getSessionID()V
    .locals 0

    return-void
.end method

.method public normalStart()V
    .locals 1

    new-instance v0, Lcom/t4game/StartGame;

    invoke-direct {v0}, Lcom/t4game/StartGame;-><init>()V

    iput-object v0, p0, Lcom/t4game/GameMIDlet;->sg:Lcom/t4game/StartGame;

    return-void
.end method

.method protected pauseApp()V
    .locals 0

    return-void
.end method

.method protected quitApp()V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/t4game/GDataManager;->release()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/t4game/GameMIDlet;->destroyApp(Z)V

    invoke-virtual {p0}, Lcom/t4game/GameMIDlet;->notifyDestroyed()V
    :try_end_0
    .catch Ljavax/microedition/midlet/MIDletStateChangeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setConnectType(B)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/GameMIDlet;->sg:Lcom/t4game/StartGame;

    invoke-virtual {v0, p1}, Lcom/t4game/StartGame;->setConnectType(B)V

    return-void
.end method

.method public startApp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/midlet/MIDletStateChangeException;
        }
    .end annotation

    sget-boolean v0, Lcom/t4game/Defaults;->CNL_TW:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/t4game/StartGame;

    invoke-direct {v0}, Lcom/t4game/StartGame;-><init>()V

    iput-object v0, p0, Lcom/t4game/GameMIDlet;->sg:Lcom/t4game/StartGame;

    :cond_0
    return-void
.end method
