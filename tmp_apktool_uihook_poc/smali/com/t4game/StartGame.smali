.class public Lcom/t4game/StartGame;
.super Ljava/lang/Object;


# static fields
.field private static RepairState:B

.field public static inputText:Lcom/t4game/Texter;

.field public static isAuthenticate:Z

.field private static startGame:Lcom/t4game/StartGame;

.field static uiPainter:Lcom/t4game/UIPainter;


# instance fields
.field public gameScreen:Lcom/t4game/GameScreen;

.field public mainMenu:Lcom/t4game/MainMenu;

.field public midlet:Lcom/t4game/GameMIDlet;

.field network:Lcom/t4game/TcpNetwork;

.field public readBuffer:Lcom/t4game/IoBuffer;

.field public sendBuffer:Lcom/t4game/IoBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput-byte v0, Lcom/t4game/StartGame;->RepairState:B

    const/4 v0, 0x0

    sput-boolean v0, Lcom/t4game/StartGame;->isAuthenticate:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/StartGame;->mainMenu:Lcom/t4game/MainMenu;

    new-instance v0, Lcom/t4game/IoBuffer;

    invoke-direct {v0}, Lcom/t4game/IoBuffer;-><init>()V

    iput-object v0, p0, Lcom/t4game/StartGame;->readBuffer:Lcom/t4game/IoBuffer;

    new-instance v0, Lcom/t4game/IoBuffer;

    invoke-direct {v0}, Lcom/t4game/IoBuffer;-><init>()V

    iput-object v0, p0, Lcom/t4game/StartGame;->sendBuffer:Lcom/t4game/IoBuffer;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/t4game/StartGame;->isAuthenticate:Z

    sput-object p0, Lcom/t4game/StartGame;->startGame:Lcom/t4game/StartGame;

    invoke-static {}, Lcom/t4game/GDataManager;->startReadThread()V

    invoke-direct {p0}, Lcom/t4game/StartGame;->initSomeThing()V

    invoke-static {}, Lcom/t4game/GameMIDlet;->getInstance()Lcom/t4game/GameMIDlet;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/StartGame;->midlet:Lcom/t4game/GameMIDlet;

    invoke-virtual {p0}, Lcom/t4game/StartGame;->doneFlash()V

    return-void
.end method

.method static synthetic access$002(B)B
    .locals 0

    sput-byte p0, Lcom/t4game/StartGame;->RepairState:B

    return p0
.end method

.method private deBug()V
    .locals 0

    return-void
.end method

.method public static getInstance()Lcom/t4game/StartGame;
    .locals 1

    sget-object v0, Lcom/t4game/StartGame;->startGame:Lcom/t4game/StartGame;

    return-object v0
.end method

.method private initSomeThing()V
    .locals 2

    const-string v1, "2009-12-18-00"

    invoke-static {}, Lcom/t4game/Defaults;->getCommonUIImage()V

    invoke-static {}, Lcom/t4game/Defaults;->setImgData()V

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    sput-object v0, Lcom/t4game/StartGame;->uiPainter:Lcom/t4game/UIPainter;

    new-instance v0, Lcom/t4game/Texter;

    invoke-direct {v0}, Lcom/t4game/Texter;-><init>()V

    sput-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    const-string v0, "/Channels.bin"

    invoke-virtual {p0, v0}, Lcom/t4game/StartGame;->getChannelsFromFile(Ljava/lang/String;)V

    invoke-static {}, Lcom/t4game/GDataManager;->readUserDataFromRMS()Z

    move-result v0

    sput-boolean v0, Lcom/t4game/Defaults;->NotFirstInGame:Z

    sget-boolean v0, Lcom/t4game/Defaults;->NotFirstInGame:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/t4game/GDataManager;->cleanRMSData()V

    const-string v0, "2009-12-18-00"

    sput-object v1, Lcom/t4game/Defaults;->ResVer:Ljava/lang/String;

    invoke-static {}, Lcom/t4game/GDataManager;->init()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "2009-12-18-00"

    invoke-static {v1}, Lcom/t4game/GDataManager;->isVersionOlder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/t4game/GDataManager;->cleanRMSData()V

    const-string v0, "2009-12-18-00"

    sput-object v1, Lcom/t4game/Defaults;->ResVer:Ljava/lang/String;

    invoke-static {}, Lcom/t4game/GDataManager;->writeUserDataToRMS()V

    invoke-static {}, Lcom/t4game/GDataManager;->init()V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/t4game/GDataManager;->init()V

    goto :goto_0
.end method

.method private linkTcpNet(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lcom/t4game/StartGame;->isAuthenticate:Z

    iget-object v0, p0, Lcom/t4game/StartGame;->network:Lcom/t4game/TcpNetwork;

    invoke-virtual {v0}, Lcom/t4game/TcpNetwork;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/StartGame;->network:Lcom/t4game/TcpNetwork;

    new-instance v0, Lcom/t4game/TcpNetwork;

    invoke-direct {v0, p0, p1}, Lcom/t4game/TcpNetwork;-><init>(Lcom/t4game/StartGame;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/t4game/StartGame;->network:Lcom/t4game/TcpNetwork;

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TCP\u91cd\u8fde\u63a5\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public RepairGame()B
    .locals 3

    const/4 v2, 0x1

    const/4 v1, -0x1

    sget-byte v0, Lcom/t4game/StartGame;->RepairState:B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    sput-byte v0, Lcom/t4game/StartGame;->RepairState:B

    new-instance v0, Lcom/t4game/StartGame$1;

    invoke-direct {v0, p0}, Lcom/t4game/StartGame$1;-><init>(Lcom/t4game/StartGame;)V

    invoke-virtual {v0}, Lcom/t4game/StartGame$1;->start()V

    sget-byte v0, Lcom/t4game/StartGame;->RepairState:B

    :goto_0
    return v0

    :cond_0
    sget-byte v0, Lcom/t4game/StartGame;->RepairState:B

    if-ne v0, v2, :cond_1

    sput-byte v1, Lcom/t4game/StartGame;->RepairState:B

    move v0, v2

    goto :goto_0

    :cond_1
    sget-byte v0, Lcom/t4game/StartGame;->RepairState:B

    goto :goto_0
.end method

.method public ReturnBack(Ljava/lang/String;)V
    .locals 3

    sput-object p1, Lcom/t4game/Authenticate;->SessionID:Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/t4game/Authenticate;->ReturnBackFromOuterWindow:Z

    iget-object v0, p0, Lcom/t4game/StartGame;->mainMenu:Lcom/t4game/MainMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/StartGame;->mainMenu:Lcom/t4game/MainMenu;

    const/4 v1, -0x8

    const/16 v2, -0xa

    invoke-virtual {v0, v1, v2}, Lcom/t4game/MainMenu;->setViewScreen(BB)V

    :cond_0
    return-void
.end method

.method public doneFlash()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/StartGame;->mainMenu:Lcom/t4game/MainMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/t4game/MainMenu;

    invoke-direct {v0, p0}, Lcom/t4game/MainMenu;-><init>(Lcom/t4game/StartGame;)V

    iput-object v0, p0, Lcom/t4game/StartGame;->mainMenu:Lcom/t4game/MainMenu;

    :cond_0
    iget-object v0, p0, Lcom/t4game/StartGame;->mainMenu:Lcom/t4game/MainMenu;

    invoke-virtual {p0, v0}, Lcom/t4game/StartGame;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    return-void
.end method

.method public doneGameScreen()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/t4game/StartGame;->isAuthenticate:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/StartGame;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, p0, Lcom/t4game/StartGame;->mainMenu:Lcom/t4game/MainMenu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/t4game/MainMenu;

    invoke-direct {v0, p0}, Lcom/t4game/MainMenu;-><init>(Lcom/t4game/StartGame;)V

    iput-object v0, p0, Lcom/t4game/StartGame;->mainMenu:Lcom/t4game/MainMenu;

    :cond_0
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method public doneMainMenuScreen()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/StartGame;->mainMenu:Lcom/t4game/MainMenu;

    iget-object v0, p0, Lcom/t4game/StartGame;->gameScreen:Lcom/t4game/GameScreen;

    if-nez v0, :cond_0

    new-instance v0, Lcom/t4game/GameScreen;

    invoke-direct {v0, p0}, Lcom/t4game/GameScreen;-><init>(Lcom/t4game/StartGame;)V

    iput-object v0, p0, Lcom/t4game/StartGame;->gameScreen:Lcom/t4game/GameScreen;

    :cond_0
    iget-object v0, p0, Lcom/t4game/StartGame;->gameScreen:Lcom/t4game/GameScreen;

    invoke-virtual {p0, v0}, Lcom/t4game/StartGame;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/t4game/Defaults;->FromGameServer:Z

    invoke-static {}, Lcom/t4game/GDataManager;->SystemGC()V

    return-void
.end method

.method public getChannelsFromFile(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/t4game/Defaults;->CHANNELS:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/t4game/Defaults;->GameID:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/t4game/Defaults;->wapGotoUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4game/Defaults;->default_remind:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public quitApp()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/StartGame;->midlet:Lcom/t4game/GameMIDlet;

    invoke-virtual {v0}, Lcom/t4game/GameMIDlet;->quitApp()V

    return-void
.end method

.method public relink(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/StartGame;->network:Lcom/t4game/TcpNetwork;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/StartGame;->network:Lcom/t4game/TcpNetwork;

    invoke-virtual {v0, p1}, Lcom/t4game/TcpNetwork;->isUrlGS(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/t4game/StartGame;->linkTcpNet(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setConnectType(B)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/StartGame;->mainMenu:Lcom/t4game/MainMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/StartGame;->mainMenu:Lcom/t4game/MainMenu;

    invoke-virtual {v0, p1}, Lcom/t4game/MainMenu;->setConnectType(B)V

    :cond_0
    return-void
.end method

.method public setCurrent(Ljavax/microedition/lcdui/Displayable;)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/StartGame;->midlet:Lcom/t4game/GameMIDlet;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    return-void
.end method
