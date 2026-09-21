.class public final Lcom/t4game/Authenticate;
.super Ljava/lang/Object;


# static fields
.field public static ReturnBackFromOuterWindow:Z

.field public static SessionID:Ljava/lang/String;


# instance fields
.field public attct:Lcom/t4game/IAuthenticate;

.field private mm:Lcom/t4game/MainMenu;

.field public network:Lcom/t4game/TcpNetwork;

.field public readBuffer:Lcom/t4game/IoBuffer;

.field public sendBuffer:Lcom/t4game/IoBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lcom/t4game/Authenticate;->SessionID:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/t4game/Authenticate;->ReturnBackFromOuterWindow:Z

    return-void
.end method

.method public constructor <init>(Lcom/t4game/MainMenu;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/t4game/Authenticate;->attct:Lcom/t4game/IAuthenticate;

    iput-object v0, p0, Lcom/t4game/Authenticate;->mm:Lcom/t4game/MainMenu;

    iput-object p1, p0, Lcom/t4game/Authenticate;->mm:Lcom/t4game/MainMenu;

    new-instance v0, Lcom/t4game/T4game;

    invoke-direct {v0, p0}, Lcom/t4game/T4game;-><init>(Lcom/t4game/Authenticate;)V

    iput-object v0, p0, Lcom/t4game/Authenticate;->attct:Lcom/t4game/IAuthenticate;

    sget-boolean v0, Lcom/t4game/Defaults;->isHttp:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/t4game/HttpNetwork;->getInstance()Lcom/t4game/HttpNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/t4game/HttpNetwork;->Start()V

    invoke-static {}, Lcom/t4game/HttpNetwork;->getInstance()Lcom/t4game/HttpNetwork;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/Authenticate;->attct:Lcom/t4game/IAuthenticate;

    invoke-virtual {v0, v1}, Lcom/t4game/HttpNetwork;->setListener(Lcom/t4game/IAuthenticate;)V

    :cond_0
    invoke-virtual {p0}, Lcom/t4game/Authenticate;->showCanvas()V

    return-void
.end method

.method public static setChinaMoblieOrChinaUni()V
    .locals 2

    sget-byte v0, Lcom/t4game/Defaults;->NetConnectTypeWap:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-byte v0, Lcom/t4game/Defaults;->NetConnectTypeWap:B

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/t4game/Defaults;->ChinaMoblie1:Ljava/lang/String;

    sput-object v0, Lcom/t4game/Defaults;->httpCon1:Ljava/lang/String;

    sget-object v0, Lcom/t4game/Defaults;->ChinaMoblie2:Ljava/lang/String;

    sput-object v0, Lcom/t4game/Defaults;->httpCon2:Ljava/lang/String;

    :cond_1
    :goto_0
    invoke-static {}, Lcom/t4game/GDataManager;->writeUserDataToRMS()V

    return-void

    :cond_2
    sget-byte v0, Lcom/t4game/Defaults;->NetConnectTypeWap:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "172.18.1.60:8080"

    sput-object v0, Lcom/t4game/Defaults;->httpCon1:Ljava/lang/String;

    const-string v0, "/LoginServer1_01_05_clone/T4GamePowerServlet"

    sput-object v0, Lcom/t4game/Defaults;->httpCon2:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public BackRole([[Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 4

    const/4 v2, 0x2

    const/4 v3, 0x0

    aget-object v0, p1, v3

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-byte v0, v0

    sput-byte v0, Lcom/t4game/Defaults;->HEAD_SERVERID:B

    sget-boolean v0, Lcom/t4game/Defaults;->isHttp:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "socket://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4game/TcpNetwork;->connection:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/t4game/Authenticate;->mm:Lcom/t4game/MainMenu;

    const/4 v1, -0x3

    const/4 v2, -0x5

    invoke-virtual {v0, v1, v2}, Lcom/t4game/MainMenu;->setViewScreen(BB)V

    sput-boolean v3, Lcom/t4game/Defaults;->lockKeyPress:Z

    return-void

    :cond_0
    aget-object v0, p1, v3

    aget-object v0, v0, v2

    invoke-static {}, Lcom/t4game/StartGame;->getInstance()Lcom/t4game/StartGame;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/t4game/StartGame;->relink(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public BackToServerList()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Authenticate;->attct:Lcom/t4game/IAuthenticate;

    invoke-interface {v0}, Lcom/t4game/IAuthenticate;->LoginGame()V

    return-void
.end method

.method public FlushScreen()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Authenticate;->mm:Lcom/t4game/MainMenu;

    invoke-virtual {v0}, Lcom/t4game/MainMenu;->flushGraphics()V

    return-void
.end method

.method public InitDefaultState()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Authenticate;->attct:Lcom/t4game/IAuthenticate;

    invoke-interface {v0}, Lcom/t4game/IAuthenticate;->InitDefaultState()V

    return-void
.end method

.method public ReturnBack([[Ljava/lang/String;[[Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, -0x8

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/t4game/Authenticate;->mm:Lcom/t4game/MainMenu;

    const/4 v1, -0x6

    invoke-virtual {v0, v1, v2}, Lcom/t4game/MainMenu;->setViewScreen(BB)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/Authenticate;->mm:Lcom/t4game/MainMenu;

    invoke-virtual {v0, p1, p2}, Lcom/t4game/MainMenu;->InitGameServerList([[Ljava/lang/String;[[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/Authenticate;->mm:Lcom/t4game/MainMenu;

    const/4 v1, -0x5

    invoke-virtual {v0, v1, v2}, Lcom/t4game/MainMenu;->setViewScreen(BB)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/t4game/Defaults;->lockKeyPress:Z

    goto :goto_0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Authenticate;->attct:Lcom/t4game/IAuthenticate;

    invoke-interface {v0, p1}, Lcom/t4game/IAuthenticate;->draw(Ljavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public getInto(Lcom/t4game/TcpNetwork;Lcom/t4game/IoBuffer;Lcom/t4game/IoBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/Authenticate;->network:Lcom/t4game/TcpNetwork;

    iput-object p2, p0, Lcom/t4game/Authenticate;->sendBuffer:Lcom/t4game/IoBuffer;

    iput-object p3, p0, Lcom/t4game/Authenticate;->readBuffer:Lcom/t4game/IoBuffer;

    return-void
.end method

.method public isNoTimeOut()Z
    .locals 1

    iget-object v0, p0, Lcom/t4game/Authenticate;->attct:Lcom/t4game/IAuthenticate;

    invoke-interface {v0}, Lcom/t4game/IAuthenticate;->isNoTimeOut()Z

    move-result v0

    return v0
.end method

.method public keyPressed(I)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Authenticate;->attct:Lcom/t4game/IAuthenticate;

    invoke-interface {v0, p1}, Lcom/t4game/IAuthenticate;->keyPressed(I)V

    return-void
.end method

.method public pointer(II)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Authenticate;->attct:Lcom/t4game/IAuthenticate;

    invoke-interface {v0, p1, p2}, Lcom/t4game/IAuthenticate;->pointer(II)V

    return-void
.end method

.method public processMessage(B)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Authenticate;->attct:Lcom/t4game/IAuthenticate;

    invoke-interface {v0, p1}, Lcom/t4game/IAuthenticate;->processMessage(B)V

    return-void
.end method

.method public quit()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Authenticate;->mm:Lcom/t4game/MainMenu;

    invoke-virtual {v0}, Lcom/t4game/MainMenu;->quite()V

    return-void
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/t4game/Authenticate;->attct:Lcom/t4game/IAuthenticate;

    invoke-interface {v0}, Lcom/t4game/IAuthenticate;->release()V

    iput-object v1, p0, Lcom/t4game/Authenticate;->attct:Lcom/t4game/IAuthenticate;

    iput-object v1, p0, Lcom/t4game/Authenticate;->mm:Lcom/t4game/MainMenu;

    return-void
.end method

.method public setConnectType(B)V
    .locals 0

    sput-byte p1, Lcom/t4game/Defaults;->NetConnectTypeWap:B

    invoke-static {}, Lcom/t4game/Authenticate;->setChinaMoblieOrChinaUni()V

    return-void
.end method

.method public showCanvas()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Authenticate;->mm:Lcom/t4game/MainMenu;

    invoke-virtual {v0}, Lcom/t4game/MainMenu;->showCanvas()V

    return-void
.end method

.method public showForm(Lcom/t4game/IAuthenticateForm;Lcom/t4game/AuthenticateCommon;BLjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/t4game/GameMIDlet;->getInstance()Lcom/t4game/GameMIDlet;

    move-result-object v0

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;

    move-result-object v0

    new-instance v1, Lcom/t4game/AuthenticateForm;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/t4game/AuthenticateForm;-><init>(Lcom/t4game/IAuthenticateForm;Lcom/t4game/AuthenticateCommon;BLjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    return-void
.end method
