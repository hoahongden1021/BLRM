.class public Lcom/t4game/MainMenu;
.super Ljavax/microedition/lcdui/game/GameCanvas;

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/t4game/SoftKeyBoardHolder;


# static fields
.field public static final AlertState_None:B = 0x0t

.field public static final AlertState_Pressed:B = 0x2t

.field public static final AlertState_Show:B = 0x1t

.field private static isNotExpired:Z

.field public static verInRms:[[S

.field public static verInRmsId:[I

.field public static versionData:[[S


# instance fields
.field private AlertMsg:Ljava/lang/String;

.field private AntiIndulged:[Ljava/lang/String;

.field public AttctManager:Lcom/t4game/Authenticate;

.field private CommonMenuIndex:B

.field private Point_X:I

.field private Point_Y:I

.field private WaitingMsg:Ljava/lang/String;

.field private bConError:Z

.field private bConSuccess:Z

.field private currentTick:B

.field public dataRs:Ljavax/microedition/rms/RecordStore;

.field private fromScreenId:B

.field public g:Ljavax/microedition/lcdui/Graphics;

.field public getPhoneNum:Z

.field private getWhiteNameList:Z

.field private img_Sound_Image:Ljavax/microedition/lcdui/Image;

.field private volatile keyCode:I

.field private loginGameSendCommandCnt:I

.field private netContent:Ljava/lang/String;

.field private volatile pressed:Z

.field private reminder:Lcom/t4game/CommBulletin;

.field private volatile running:Z

.field private screenId:B

.field private serverList:[[Ljava/lang/String;

.field private sg:Lcom/t4game/StartGame;

.field private showAlert:B

.field private showTickTime:B

.field private soundStop:Z

.field private stateWithoutKey:[I

.field private timer:I

.field private ui:Lcom/t4game/GameUi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/t4game/MainMenu;->isNotExpired:Z

    return-void
.end method

.method public constructor <init>(Lcom/t4game/StartGame;)V
    .locals 7

    const/16 v6, -0x9

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v5, ""

    invoke-direct {p0, v3}, Ljavax/microedition/lcdui/game/GameCanvas;-><init>(Z)V

    iput-boolean v3, p0, Lcom/t4game/MainMenu;->soundStop:Z

    iput-byte v3, p0, Lcom/t4game/MainMenu;->currentTick:B

    const/16 v1, -0x3e8

    iput v1, p0, Lcom/t4game/MainMenu;->keyCode:I

    iput-boolean v3, p0, Lcom/t4game/MainMenu;->pressed:Z

    iput-boolean v4, p0, Lcom/t4game/MainMenu;->running:Z

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/MainMenu;->serverList:[[Ljava/lang/String;

    iput v3, p0, Lcom/t4game/MainMenu;->loginGameSendCommandCnt:I

    const-string v1, ""

    iput-object v5, p0, Lcom/t4game/MainMenu;->netContent:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/t4game/MainMenu;->getWhiteNameList:Z

    const-string v1, ""

    iput-object v5, p0, Lcom/t4game/MainMenu;->WaitingMsg:Ljava/lang/String;

    const-string v1, ""

    iput-object v5, p0, Lcom/t4game/MainMenu;->AlertMsg:Ljava/lang/String;

    iput-byte v3, p0, Lcom/t4game/MainMenu;->showAlert:B

    const/16 v1, 0xa

    iput-byte v1, p0, Lcom/t4game/MainMenu;->showTickTime:B

    iput-byte v3, p0, Lcom/t4game/MainMenu;->CommonMenuIndex:B

    iput-object v2, p0, Lcom/t4game/MainMenu;->AntiIndulged:[Ljava/lang/String;

    const/4 v1, -0x1

    iput-byte v1, p0, Lcom/t4game/MainMenu;->screenId:B

    const/4 v1, -0x1

    iput-byte v1, p0, Lcom/t4game/MainMenu;->fromScreenId:B

    iput-object v2, p0, Lcom/t4game/MainMenu;->img_Sound_Image:Ljavax/microedition/lcdui/Image;

    iput-boolean v3, p0, Lcom/t4game/MainMenu;->getPhoneNum:Z

    iput-object v2, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    iput-object v2, p0, Lcom/t4game/MainMenu;->reminder:Lcom/t4game/CommBulletin;

    iput-object v2, p0, Lcom/t4game/MainMenu;->AttctManager:Lcom/t4game/Authenticate;

    iput-boolean v3, p0, Lcom/t4game/MainMenu;->bConSuccess:Z

    iput-boolean v3, p0, Lcom/t4game/MainMenu;->bConError:Z

    iput v3, p0, Lcom/t4game/MainMenu;->timer:I

    const/4 v1, 0x4

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/t4game/MainMenu;->stateWithoutKey:[I

    iput-object v2, p0, Lcom/t4game/MainMenu;->dataRs:Ljavax/microedition/rms/RecordStore;

    invoke-virtual {p0, v4}, Lcom/t4game/MainMenu;->setFullScreenMode(Z)V

    invoke-virtual {p0}, Lcom/t4game/MainMenu;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/t4game/MainMenu;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/t4game/Defaults;->setResolutionRatio(II)V

    invoke-virtual {p0}, Lcom/t4game/MainMenu;->getGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v1

    iput-object v1, p0, Lcom/t4game/MainMenu;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/MainMenu;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v1, v2}, Lcom/t4game/UIPainter;->setGraphics(Ljavax/microedition/lcdui/Graphics;)V

    iput-object p1, p0, Lcom/t4game/MainMenu;->sg:Lcom/t4game/StartGame;

    sget-boolean v1, Lcom/t4game/Defaults;->isHttp:Z

    if-nez v1, :cond_0

    sput-byte v4, Lcom/t4game/Defaults;->HEAD_SERVERID:B

    :cond_0
    new-instance v1, Lcom/t4game/Authenticate;

    invoke-direct {v1, p0}, Lcom/t4game/Authenticate;-><init>(Lcom/t4game/MainMenu;)V

    iput-object v1, p0, Lcom/t4game/MainMenu;->AttctManager:Lcom/t4game/Authenticate;

    sget-boolean v1, Lcom/t4game/Defaults;->isHttp:Z

    if-eqz v1, :cond_2

    const/4 v1, -0x8

    invoke-virtual {p0, v1, v6}, Lcom/t4game/MainMenu;->setViewScreen(BB)V

    sget-boolean v1, Lcom/t4game/Defaults;->FromGameServer:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/t4game/MainMenu;->AttctManager:Lcom/t4game/Authenticate;

    invoke-virtual {v1}, Lcom/t4game/Authenticate;->BackToServerList()V

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_2
    sget-boolean v1, Lcom/t4game/Defaults;->FromGameServer:Z

    if-nez v1, :cond_3

    invoke-direct {p0}, Lcom/t4game/MainMenu;->authConnect()V

    :cond_3
    invoke-static {}, Lcom/t4game/Util;->getTime()J

    move-result-wide v1

    sput-wide v1, Lcom/t4game/Defaults;->lastRecvedTime:J

    const/4 v1, -0x8

    invoke-virtual {p0, v1, v6}, Lcom/t4game/MainMenu;->setViewScreen(BB)V

    sget-boolean v1, Lcom/t4game/Defaults;->FromGameServer:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/t4game/MainMenu;->getTcpLink()Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v4, p0, Lcom/t4game/MainMenu;->bConSuccess:Z

    iput-boolean v3, p0, Lcom/t4game/MainMenu;->bConError:Z

    iget-object v1, p0, Lcom/t4game/MainMenu;->AttctManager:Lcom/t4game/Authenticate;

    invoke-virtual {v1}, Lcom/t4game/Authenticate;->BackToServerList()V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        -0xb
        -0x3
        -0x2
        -0x1
    .end array-data
.end method

.method private InitSoundQuestion()V
    .locals 1

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/MainMenu;->CommonMenuIndex:B

    iget-object v0, p0, Lcom/t4game/MainMenu;->img_Sound_Image:Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_0

    const-string v0, "/loading1.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/MainMenu;->img_Sound_Image:Ljavax/microedition/lcdui/Image;

    :cond_0
    sget-boolean v0, Lcom/t4game/Defaults;->CurrentNetwork:Z

    if-eqz v0, :cond_1

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/t4game/MainMenu;)Z
    .locals 1

    invoke-direct {p0}, Lcom/t4game/MainMenu;->getTcpLink()Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/t4game/MainMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/t4game/MainMenu;->bConSuccess:Z

    return p1
.end method

.method static synthetic access$202(Lcom/t4game/MainMenu;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/t4game/MainMenu;->bConError:Z

    return p1
.end method

.method private authConnect()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/t4game/MainMenu$1;

    invoke-direct {v1, p0}, Lcom/t4game/MainMenu$1;-><init>(Lcom/t4game/MainMenu;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private conErrorEvent()Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/t4game/MainMenu;->bConError:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/t4game/MainMenu;->keyCode:I

    const/4 v1, -0x5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/t4game/MainMenu;->keyCode:I

    const/4 v1, -0x6

    if-ne v0, v1, :cond_2

    :cond_0
    iput-boolean v2, p0, Lcom/t4game/MainMenu;->bConSuccess:Z

    iput-boolean v2, p0, Lcom/t4game/MainMenu;->bConError:Z

    invoke-direct {p0}, Lcom/t4game/MainMenu;->authConnect()V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    iget v0, p0, Lcom/t4game/MainMenu;->keyCode:I

    const/4 v1, -0x7

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/t4game/GameMIDlet;->getInstance()Lcom/t4game/GameMIDlet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/t4game/GameMIDlet;->quitApp()V

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1
.end method

.method private drawAntiIndulgence(Ljavax/microedition/lcdui/Graphics;)V
    .locals 10

    const/4 v2, 0x0

    sget-boolean v0, Lcom/t4game/MainMenu;->isNotExpired:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/4 v1, 0x6

    sget v4, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v5, Lcom/t4game/Defaults;->CANVAS_H:I

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    iget-object v1, p0, Lcom/t4game/MainMenu;->AntiIndulged:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/t4game/MainMenu;->getParagraphHeight([Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    move v1, v2

    :goto_0
    iget-object v3, p0, Lcom/t4game/MainMenu;->AntiIndulged:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/t4game/MainMenu;->AntiIndulged:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget v4, Lcom/t4game/Defaults;->CANVAS_W:I

    div-int/lit8 v4, v4, 0x2

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v0

    sget v6, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v8, 0xffcc3e

    move v7, v2

    move-object v9, p1

    invoke-static/range {v3 .. v9}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/t4game/MainMenu;->timer:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/t4game/MainMenu;->timer:I

    shl-int/lit8 v1, v0, 0x18

    sget v4, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v5, Lcom/t4game/Defaults;->CANVAS_H:I

    move v3, v2

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/t4game/DraftingUtil;->drawAlphaImage(IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_1
    iget v0, p0, Lcom/t4game/MainMenu;->timer:I

    const/16 v1, 0xf5

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/t4game/MainMenu;->timer:I

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/t4game/MainMenu;->timer:I

    :goto_1
    const/4 v0, 0x1

    sget v1, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v3, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-static {v0, v2, v2, v1, v3}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    :goto_2
    return-void

    :cond_2
    sput-boolean v2, Lcom/t4game/MainMenu;->isNotExpired:Z

    goto :goto_1

    :cond_3
    const/4 v0, -0x1

    const/4 v1, -0x8

    invoke-virtual {p0, v0, v1}, Lcom/t4game/MainMenu;->setViewScreen(BB)V

    goto :goto_2
.end method

.method private drawGameServerListWindow(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2

    const-string v0, "\u9009\u62e9\u670d\u52a1\u5668"

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintDialog(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    const-string v0, "\u8fdb\u5165"

    const-string v1, "\u8fd4\u56de"

    invoke-static {v0, v1, p1}, Lcom/t4game/DraftingUtil;->paintCommand_FullScreen(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1}, Lcom/t4game/GameUi;->draw(Ljavax/microedition/lcdui/Graphics;)V

    :cond_0
    sget-boolean v0, Lcom/t4game/Defaults;->showMsg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/MainMenu;->serverList:[[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/MainMenu;->CommonMenuIndex:B

    aget-object v0, v0, v1

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/t4game/DraftingUtil;->PaintMsg(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private drawNetAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V
    .locals 3

    const/4 v2, 0x0

    const v0, 0x1f4253

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual {p1, v2, v2, v0, v1}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    invoke-static {p1}, Lcom/t4game/MainMenu;->paintMainMenuFrame(Ljavax/microedition/lcdui/Graphics;)V

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    return-void
.end method

.method private drawNetQuestionWindow(Ljavax/microedition/lcdui/Graphics;)V
    .locals 12

    sget-boolean v0, Lcom/t4game/Defaults;->CurrentNetwork:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v5, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    iget-object v0, p0, Lcom/t4game/MainMenu;->img_Sound_Image:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v8

    iget-object v0, p0, Lcom/t4game/MainMenu;->netContent:Ljava/lang/String;

    const/16 v1, 0x17c

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->sfh:I

    array-length v0, v0

    mul-int v9, v1, v0

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    add-int/lit8 v1, v8, 0x11

    add-int/2addr v1, v9

    add-int/lit8 v1, v1, 0x14

    add-int/lit8 v1, v1, 0x1e

    sub-int/2addr v0, v1

    shr-int/lit8 v10, v0, 0x1

    iget-object v0, p0, Lcom/t4game/MainMenu;->img_Sound_Image:Ljavax/microedition/lcdui/Image;

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget v2, Lcom/t4game/Defaults;->TOP_HCENTER:I

    invoke-virtual {p1, v0, v1, v10, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v0, p0, Lcom/t4game/MainMenu;->netContent:Ljava/lang/String;

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/16 v2, 0xbe

    sub-int/2addr v1, v2

    add-int v2, v10, v8

    add-int/lit8 v2, v2, 0x11

    const/16 v3, 0x17c

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v5, -0x1

    const v6, 0xffffff

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->paintString(Ljava/lang/String;IIIIIILjavax/microedition/lcdui/Graphics;)V

    const-string v0, "\u79fb\u52a8\u7f51"

    const-string v11, "\u8054\u901a\u7f51"

    add-int v1, v10, v8

    add-int/lit8 v1, v1, 0x11

    add-int/2addr v1, v9

    add-int/lit8 v2, v1, 0x14

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/16 v3, 0x12

    sub-int/2addr v1, v3

    const/16 v3, 0x78

    sub-int/2addr v1, v3

    const/16 v3, 0x78

    const/16 v4, 0x1e

    const/4 v6, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    add-int/lit8 v0, v1, 0x78

    add-int/lit8 v4, v0, 0x24

    const/16 v6, 0x78

    const/16 v7, 0x1e

    const/4 v9, 0x0

    move-object v3, v11

    move v5, v2

    move-object v8, p1

    invoke-static/range {v3 .. v9}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    const/4 v0, 0x1

    const/16 v3, 0x78

    const/16 v4, 0x1e

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    const/4 v0, 0x2

    add-int/lit8 v1, v1, 0x78

    add-int/lit8 v1, v1, 0x24

    const/16 v3, 0x78

    const/16 v4, 0x1e

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "\u4eb2\u7231\u7684\u73a9\u5bb6\u63d0\u9192\u60a8:\u6e38\u620f\u8fdb\u884c\u65f6\u9700\u4f7f\u7528\u4f20\u8f93\u91cf\u82e5\u60a8\u5c1a\u672a\u7533\u8bf7\u4f20\u8f93\u8d44\u8d39\u6216\u662f\u7533\u8bf7\u4e86\u4f4e\u4f20\u8f93\u8d44\u8d39\u5efa\u8bae\u60a8\u4f9d\u7167\u81ea\u8eab\u6e38\u620f\u4e60\u60ef\u7533\u8bf7\u5408\u9002\u7684\u4f20\u8f93\u8d44\u8d39\u82e5\u6b32\u6539\u53d8\u4f20\u8f93\u8d44\u8d39\u53ef\u7528\u624b\u673a\u76f4\u62e8\u53f0\u54e5\u5927\u5ba2\u670d\u4e13\u7ebf188"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    goto :goto_0
.end method

.method private drawQuitCheckWindows(Ljavax/microedition/lcdui/Graphics;)V
    .locals 12

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v5, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v1, v1, 0x50

    add-int/lit8 v1, v1, 0x1e

    sub-int/2addr v0, v1

    div-int/lit8 v2, v0, 0x2

    const-string v0, "\u786e\u8ba4\u9000\u51fa\uff1f"

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v4, -0x1

    const v5, 0xffffff

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    const-string v3, "\u662f"

    const-string v0, "\u5426"

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/16 v4, 0x12

    sub-int/2addr v1, v4

    const/16 v4, 0x78

    sub-int v4, v1, v4

    add-int/lit8 v5, v2, 0x50

    const/16 v6, 0x78

    const/16 v7, 0x1e

    const/4 v9, 0x0

    move-object v8, p1

    invoke-static/range {v3 .. v9}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    add-int/lit8 v1, v4, 0x78

    add-int/lit8 v6, v1, 0x24

    add-int/lit8 v7, v2, 0x50

    const/16 v8, 0x78

    const/16 v9, 0x1e

    const/4 v11, 0x0

    move-object v5, v0

    move-object v10, p1

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    const/4 v0, 0x1

    add-int/lit8 v1, v2, 0x50

    const/16 v3, 0x78

    const/16 v5, 0x1e

    invoke-static {v0, v4, v1, v3, v5}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    const/4 v0, 0x2

    add-int/lit8 v1, v4, 0x78

    add-int/lit8 v1, v1, 0x24

    add-int/lit8 v2, v2, 0x50

    const/16 v3, 0x78

    const/16 v4, 0x1e

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    return-void
.end method

.method private drawQuitWindows(Ljavax/microedition/lcdui/Graphics;)V
    .locals 10

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v5, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_HH:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    add-int v2, v0, v1

    const-string v0, "\u786e\u8ba4"

    const-string v8, "\u9000\u51fa"

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/16 v3, 0x12

    sub-int/2addr v1, v3

    const/16 v3, 0x78

    sub-int/2addr v1, v3

    const/16 v3, 0x78

    const/16 v4, 0x1e

    const/4 v6, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    add-int/lit8 v0, v1, 0x78

    add-int/lit8 v4, v0, 0x24

    const/16 v6, 0x78

    const/16 v7, 0x1e

    const/4 v9, 0x0

    move-object v3, v8

    move v5, v2

    move-object v8, p1

    invoke-static/range {v3 .. v9}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    const/4 v0, 0x1

    const/16 v3, 0x78

    const/16 v4, 0x1e

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    const/4 v0, 0x2

    add-int/lit8 v1, v1, 0x78

    add-int/lit8 v1, v1, 0x24

    const/16 v3, 0x78

    const/16 v4, 0x1e

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    iget-object v0, p0, Lcom/t4game/MainMenu;->reminder:Lcom/t4game/CommBulletin;

    invoke-virtual {v0, p1}, Lcom/t4game/CommBulletin;->draw(Ljavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method private drawSoundQuestionWindow(Ljavax/microedition/lcdui/Graphics;)V
    .locals 10

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget v4, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v5, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    iget-object v0, p0, Lcom/t4game/MainMenu;->img_Sound_Image:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    add-int/lit8 v2, v0, 0x11

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x14

    add-int/lit8 v2, v2, 0x1e

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/t4game/MainMenu;->img_Sound_Image:Ljavax/microedition/lcdui/Image;

    sget v3, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget v4, Lcom/t4game/Defaults;->TOP_HCENTER:I

    invoke-virtual {p1, v2, v3, v1, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    add-int/2addr v0, v1

    add-int/lit8 v2, v0, 0x11

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    const-string v0, "\u662f\u5426\u6253\u5f00\u58f0\u97f3\uff1f"

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v4, -0x1

    const v5, 0xffffff

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v0, v0, 0x14

    add-int/2addr v2, v0

    const-string v0, "\u662f"

    const-string v8, "\u5426"

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/16 v3, 0x12

    sub-int/2addr v1, v3

    const/16 v3, 0x78

    sub-int/2addr v1, v3

    const/16 v3, 0x78

    const/16 v4, 0x1e

    const/4 v6, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    add-int/lit8 v0, v1, 0x78

    add-int/lit8 v4, v0, 0x24

    const/16 v6, 0x78

    const/16 v7, 0x1e

    const/4 v9, 0x0

    move-object v3, v8

    move v5, v2

    move-object v8, p1

    invoke-static/range {v3 .. v9}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    const/4 v0, 0x1

    sget v3, Lcom/t4game/Defaults;->sfh:I

    sub-int v3, v2, v3

    const/16 v4, 0x78

    sget v5, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v5, v5, 0x1

    add-int/lit8 v5, v5, 0x1e

    invoke-static {v0, v1, v3, v4, v5}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    const/4 v0, 0x2

    add-int/lit8 v1, v1, 0x78

    add-int/lit8 v1, v1, 0x24

    sget v3, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v2, v3

    const/16 v3, 0x78

    sget v4, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x1e

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    iget-byte v0, p0, Lcom/t4game/MainMenu;->showTickTime:B

    if-ltz v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/MainMenu;->showTickTime:B

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/MainMenu;->showTickTime:B

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x8

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/t4game/MainMenu;->setViewScreen(BB)V

    goto :goto_0
.end method

.method private drawTcpWating(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2

    const/4 v1, 0x2

    iget-boolean v0, p0, Lcom/t4game/MainMenu;->bConSuccess:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/t4game/MainMenu;->bConError:Z

    if-eqz v0, :cond_1

    const-string v0, "\u7f51\u7edc\u6545\u969c\uff0c\u70b9\u51fb\u786e\u5b9a\u91cd\u65b0\u8fde\u63a5"

    invoke-direct {p0, p1, v0, v1}, Lcom/t4game/MainMenu;->drawNetAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    const-string v0, "\u786e\u5b9a"

    const-string v1, "\u9000\u51fa"

    invoke-static {v0, v1, p1}, Lcom/t4game/DraftingUtil;->paintCommand_FullScreen(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    :goto_1
    invoke-virtual {p0}, Lcom/t4game/MainMenu;->flushGraphics()V

    goto :goto_0

    :cond_1
    const-string v0, "\u8fde\u63a5\u4e2d\u8bf7\u7a0d\u5019..."

    invoke-direct {p0, p1, v0, v1}, Lcom/t4game/MainMenu;->drawNetAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    goto :goto_1
.end method

.method private drawTest()V
    .locals 0

    return-void
.end method

.method private getDataVersionInRms()V
    .locals 5

    const/4 v4, 0x0

    :try_start_0
    const-string v0, "dataRs"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/MainMenu;->dataRs:Ljavax/microedition/rms/RecordStore;

    iget-object v0, p0, Lcom/t4game/MainMenu;->dataRs:Ljavax/microedition/rms/RecordStore;

    invoke-virtual {v0}, Ljavax/microedition/rms/RecordStore;->getNumRecords()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/t4game/MainMenu;->dataRs:Ljavax/microedition/rms/RecordStore;

    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStore;->getNumRecords()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    sput-object v0, Lcom/t4game/MainMenu;->verInRms:[[S

    iget-object v0, p0, Lcom/t4game/MainMenu;->dataRs:Ljavax/microedition/rms/RecordStore;

    invoke-virtual {v0}, Ljavax/microedition/rms/RecordStore;->getNumRecords()I

    move-result v0

    new-array v0, v0, [I

    sput-object v0, Lcom/t4game/MainMenu;->verInRmsId:[I

    iget-object v0, p0, Lcom/t4game/MainMenu;->dataRs:Ljavax/microedition/rms/RecordStore;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/microedition/rms/RecordStore;->enumerateRecords(Ljavax/microedition/rms/RecordFilter;Ljavax/microedition/rms/RecordComparator;Z)Ljavax/microedition/rms/RecordEnumeration;

    move-result-object v0

    move v1, v4

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljavax/microedition/rms/RecordEnumeration;->hasNextElement()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/t4game/MainMenu;->verInRmsId:[I

    invoke-interface {v0}, Ljavax/microedition/rms/RecordEnumeration;->nextRecordId()I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lcom/t4game/MainMenu;->dataRs:Ljavax/microedition/rms/RecordStore;

    sget-object v3, Lcom/t4game/MainMenu;->verInRmsId:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljavax/microedition/rms/RecordStore;->getRecord(I)[B

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/t4game/IoBuffer;

    invoke-direct {v3}, Lcom/t4game/IoBuffer;-><init>()V

    array-length v4, v2

    invoke-virtual {v3, v2, v4}, Lcom/t4game/IoBuffer;->setBuffer([BI)V

    sget-object v2, Lcom/t4game/MainMenu;->verInRms:[[S

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v4

    int-to-short v4, v4

    aput-short v4, v2, v1

    sget-object v2, Lcom/t4game/MainMenu;->verInRms:[[S

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v4

    aput-short v4, v2, v1

    sget-object v2, Lcom/t4game/MainMenu;->verInRms:[[S

    const/4 v4, 0x2

    aget-object v2, v2, v4

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v3

    aput-short v3, v2, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    return-void
.end method

.method private getParagraphHeight([Ljava/lang/String;)I
    .locals 2

    array-length v0, p1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v0, v1

    return v0
.end method

.method private getPointerPadKey()I
    .locals 5

    const/4 v4, -0x6

    const/4 v3, -0x7

    const/16 v2, -0x3e8

    iget-byte v0, p0, Lcom/t4game/MainMenu;->screenId:B

    const/4 v1, -0x8

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/t4game/MainMenu;->bConError:Z

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iput v2, p0, Lcom/t4game/MainMenu;->keyCode:I

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftSoftKey()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-byte v0, p0, Lcom/t4game/MainMenu;->screenId:B

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->isBelongWithoutKey(I)Z

    move-result v0

    if-nez v0, :cond_2

    iput v4, p0, Lcom/t4game/MainMenu;->keyCode:I

    :cond_1
    :goto_1
    iget v0, p0, Lcom/t4game/MainMenu;->keyCode:I

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightSoftKey()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-byte v0, p0, Lcom/t4game/MainMenu;->screenId:B

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->isBelongWithoutKey(I)Z

    move-result v0

    if-nez v0, :cond_3

    iput v3, p0, Lcom/t4game/MainMenu;->keyCode:I

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightAlertKey()Z

    move-result v0

    if-eqz v0, :cond_4

    iput v3, p0, Lcom/t4game/MainMenu;->keyCode:I

    :cond_4
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftAlertKey()Z

    move-result v0

    if-eqz v0, :cond_1

    iput v4, p0, Lcom/t4game/MainMenu;->keyCode:I

    goto :goto_1
.end method

.method private getTcpLink()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/t4game/MainMenu;->bConError:Z

    invoke-virtual {p0}, Lcom/t4game/MainMenu;->linkAuthByTcp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/MainMenu;->AttctManager:Lcom/t4game/Authenticate;

    iget-object v1, p0, Lcom/t4game/MainMenu;->sg:Lcom/t4game/StartGame;

    iget-object v1, v1, Lcom/t4game/StartGame;->network:Lcom/t4game/TcpNetwork;

    iget-object v2, p0, Lcom/t4game/MainMenu;->sg:Lcom/t4game/StartGame;

    iget-object v2, v2, Lcom/t4game/StartGame;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v3, p0, Lcom/t4game/MainMenu;->sg:Lcom/t4game/StartGame;

    iget-object v3, v3, Lcom/t4game/StartGame;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/Authenticate;->getInto(Lcom/t4game/TcpNetwork;Lcom/t4game/IoBuffer;Lcom/t4game/IoBuffer;)V

    :goto_0
    iget-boolean v0, p0, Lcom/t4game/MainMenu;->bConError:Z

    if-nez v0, :cond_1

    move v0, v5

    :goto_1
    return v0

    :cond_0
    iput-boolean v5, p0, Lcom/t4game/MainMenu;->bConError:Z

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1
.end method

.method private getVerInfo()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/data/version.09.v"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    new-instance v2, Lcom/t4game/IoBuffer;

    invoke-direct {v2}, Lcom/t4game/IoBuffer;-><init>()V

    array-length v0, v1

    invoke-virtual {v2, v1, v0}, Lcom/t4game/IoBuffer;->setBuffer([BI)V

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v1

    const/4 v0, 0x3

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    sput-object v0, Lcom/t4game/MainMenu;->versionData:[[S

    move v0, v4

    :goto_0
    if-ge v0, v1, :cond_0

    sget-object v3, Lcom/t4game/MainMenu;->versionData:[[S

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v4

    int-to-short v4, v4

    aput-short v4, v3, v0

    sget-object v3, Lcom/t4game/MainMenu;->versionData:[[S

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v4

    aput-short v4, v3, v0

    sget-object v3, Lcom/t4game/MainMenu;->versionData:[[S

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v4

    aput-short v4, v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    invoke-direct {p0}, Lcom/t4game/MainMenu;->getDataVersionInRms()V

    return-void
.end method

.method private initAntiIndulgence()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u5065 \u5eb7 \u6e38 \u620f \u5fe0 \u544a"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u62b5\u5236\u4e0d\u826f\u6e38\u620f,\u62d2\u7edd\u76d7\u7248\u6e38\u620f."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u6ce8\u610f\u81ea\u6211\u4fdd\u62a4,\u8c28\u9632\u53d7\u9a97\u4e0a\u5f53"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u9002\u5ea6\u6e38\u620f\u76ca\u8111,\u6c89\u8ff7\u6e38\u620f\u4f24\u8eab."

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u5408\u7406\u5b89\u6392\u65f6\u95f4,\u4eab\u53d7\u5065\u5eb7\u751f\u6d3b."

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/t4game/MainMenu;->AntiIndulged:[Ljava/lang/String;

    return-void
.end method

.method private isBelongWithoutKey(I)Z
    .locals 3

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/t4game/MainMenu;->stateWithoutKey:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/t4game/MainMenu;->stateWithoutKey:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private isKeyNULL()Z
    .locals 2

    iget v0, p0, Lcom/t4game/MainMenu;->keyCode:I

    const/16 v1, -0x3e8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onPointerGameServerListWindow()V
    .locals 3

    const/16 v0, -0x3e8

    iput v0, p0, Lcom/t4game/MainMenu;->keyCode:I

    iget-object v0, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    sget v2, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameUi;->pointEvent(II)B

    sget-byte v0, Lcom/t4game/GameUi;->actionType:B

    const/4 v1, -0x1

    if-ne v0, v0, :cond_0

    const/4 v0, -0x5

    iput v0, p0, Lcom/t4game/MainMenu;->keyCode:I

    :cond_0
    return-void
.end method

.method private onPointerOfAlertBox()V
    .locals 1

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftAlertKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x6

    iput v0, p0, Lcom/t4game/MainMenu;->keyCode:I

    :cond_0
    return-void
.end method

.method private onPressOfQuitCheck(I)V
    .locals 3

    const/4 v2, -0x7

    const/4 v1, -0x6

    if-eq p1, v1, :cond_0

    const/4 v0, -0x5

    if-ne p1, v0, :cond_2

    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/t4game/MainMenu;->setViewScreen(BB)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    if-ne p1, v2, :cond_1

    const/4 v0, -0x8

    invoke-virtual {p0, v0, v1}, Lcom/t4game/MainMenu;->setViewScreen(BB)V

    goto :goto_0
.end method

.method private onPressOfQuitWindow(I)V
    .locals 2

    const/4 v0, -0x6

    if-eq p1, v0, :cond_0

    const/4 v0, -0x5

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/t4game/MainMenu;->sg:Lcom/t4game/StartGame;

    iget-object v0, v0, Lcom/t4game/StartGame;->midlet:Lcom/t4game/GameMIDlet;

    sget-object v1, Lcom/t4game/Defaults;->wapGotoUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/t4game/Util;->OpenIE(Ljavax/microedition/midlet/MIDlet;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/MainMenu;->sg:Lcom/t4game/StartGame;

    invoke-virtual {v0}, Lcom/t4game/StartGame;->quitApp()V

    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x7

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/t4game/MainMenu;->quite()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/MainMenu;->reminder:Lcom/t4game/CommBulletin;

    invoke-virtual {v0, p1}, Lcom/t4game/CommBulletin;->keyEvent(I)V

    goto :goto_0
.end method

.method private onPressedGameServerListWindow(I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x3

    const/4 v4, 0x2

    const/4 v3, -0x5

    iget-object v0, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1}, Lcom/t4game/GameUi;->keyEvent(I)V

    iget-object v0, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    sget-byte v0, Lcom/t4game/GameUi;->actionType:B

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->getAction()Lcom/t4game/UI_Super;

    move-result-object v0

    check-cast v0, Lcom/t4game/UI_List;

    check-cast v0, Lcom/t4game/UI_List;

    invoke-virtual {v0}, Lcom/t4game/UI_List;->GetCommand()S

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/MainMenu;->CommonMenuIndex:B

    :cond_2
    const/4 v0, -0x6

    if-eq p1, v0, :cond_3

    if-ne p1, v3, :cond_7

    :cond_3
    iget-object v0, p0, Lcom/t4game/MainMenu;->serverList:[[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/MainMenu;->CommonMenuIndex:B

    aget-object v0, v0, v1

    const/4 v1, 0x5

    aget-object v0, v0, v1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/t4game/Defaults;->showMsg:Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/t4game/MainMenu;->serverList:[[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/MainMenu;->CommonMenuIndex:B

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-byte v0, v0

    sput-byte v0, Lcom/t4game/Defaults;->HEAD_SERVERID:B

    sget-boolean v0, Lcom/t4game/Defaults;->CNL_TENCENT:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/t4game/MainMenu;->serverList:[[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/MainMenu;->CommonMenuIndex:B

    aget-object v0, v0, v1

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/t4game/Defaults;->SERVERID:I

    invoke-virtual {p0, v5, v3}, Lcom/t4game/MainMenu;->setViewScreen(BB)V

    :goto_1
    iget-object v0, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->release()V

    iput-object v6, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    goto :goto_0

    :cond_5
    sget-boolean v0, Lcom/t4game/Defaults;->isHttp:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "socket://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/MainMenu;->serverList:[[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/MainMenu;->CommonMenuIndex:B

    aget-object v1, v1, v2

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4game/TcpNetwork;->connection:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0, v5, v3}, Lcom/t4game/MainMenu;->setViewScreen(BB)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/t4game/MainMenu;->serverList:[[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/MainMenu;->CommonMenuIndex:B

    aget-object v0, v0, v1

    aget-object v0, v0, v4

    invoke-static {}, Lcom/t4game/StartGame;->getInstance()Lcom/t4game/StartGame;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/t4game/StartGame;->relink(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const/4 v0, -0x7

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->release()V

    iput-object v6, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    :cond_8
    const/4 v0, -0x8

    invoke-virtual {p0, v0, v3}, Lcom/t4game/MainMenu;->setViewScreen(BB)V

    goto/16 :goto_0
.end method

.method private onPressedNetQuestionWindow(I)V
    .locals 6

    const/4 v5, -0x2

    const/4 v4, -0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x5

    sget-boolean v0, Lcom/t4game/Defaults;->CurrentNetwork:Z

    if-nez v0, :cond_1

    if-ne p1, v1, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v4, v0}, Lcom/t4game/MainMenu;->setViewScreen(BB)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x6

    if-ne p1, v0, :cond_2

    iput-byte v2, p0, Lcom/t4game/MainMenu;->CommonMenuIndex:B

    invoke-direct {p0, v1}, Lcom/t4game/MainMenu;->onPressedNetQuestionWindow(I)V

    goto :goto_0

    :cond_2
    const/4 v0, -0x7

    if-ne p1, v0, :cond_3

    iput-byte v3, p0, Lcom/t4game/MainMenu;->CommonMenuIndex:B

    invoke-direct {p0, v1}, Lcom/t4game/MainMenu;->onPressedNetQuestionWindow(I)V

    goto :goto_0

    :cond_3
    const/4 v0, -0x3

    if-eq p1, v0, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    const/4 v0, -0x4

    if-eq p1, v0, :cond_4

    if-ne p1, v5, :cond_6

    :cond_4
    iget-byte v0, p0, Lcom/t4game/MainMenu;->CommonMenuIndex:B

    if-nez v0, :cond_5

    move v0, v3

    :goto_1
    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/MainMenu;->CommonMenuIndex:B

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    if-ne p1, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/MainMenu;->CommonMenuIndex:B

    if-nez v0, :cond_7

    move v0, v2

    :goto_2
    int-to-byte v0, v0

    sput-byte v0, Lcom/t4game/Defaults;->NetConnectTypeWap:B

    iget-object v0, p0, Lcom/t4game/MainMenu;->AttctManager:Lcom/t4game/Authenticate;

    invoke-static {}, Lcom/t4game/Authenticate;->setChinaMoblieOrChinaUni()V

    invoke-virtual {p0, v4, v5}, Lcom/t4game/MainMenu;->setViewScreen(BB)V

    goto :goto_0

    :cond_7
    move v0, v3

    goto :goto_2
.end method

.method private onPressedOfAlertBox(I)V
    .locals 2

    const/4 v0, -0x6

    if-eq p1, v0, :cond_0

    const/4 v0, -0x5

    if-ne p1, v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/t4game/Defaults;->isHttp:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/t4game/HttpNetwork;->getInstance()Lcom/t4game/HttpNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/t4game/HttpNetwork;->isNetError()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x8

    const/16 v1, -0xa

    invoke-virtual {p0, v0, v1}, Lcom/t4game/MainMenu;->setViewScreen(BB)V

    invoke-static {}, Lcom/t4game/HttpNetwork;->getInstance()Lcom/t4game/HttpNetwork;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/t4game/HttpNetwork;->isNotNetSteady:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/t4game/MainMenu;->quite()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/t4game/MainMenu;->quite()V

    goto :goto_0
.end method

.method private onPressedOfAntiIndulgence(I)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, -0x8

    invoke-virtual {p0, v0, v1}, Lcom/t4game/MainMenu;->setViewScreen(BB)V

    return-void
.end method

.method private onPressedSoundQuestionWindow(I)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x5

    const/16 v0, 0x28

    iput-byte v0, p0, Lcom/t4game/MainMenu;->showTickTime:B

    const/4 v0, -0x3

    if-eq p1, v0, :cond_0

    if-eq p1, v4, :cond_0

    const/4 v0, -0x4

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_3

    :cond_0
    iget-byte v0, p0, Lcom/t4game/MainMenu;->CommonMenuIndex:B

    if-nez v0, :cond_2

    move v0, v3

    :goto_0
    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/MainMenu;->CommonMenuIndex:B

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    const/4 v0, -0x6

    if-ne p1, v0, :cond_4

    iput-byte v2, p0, Lcom/t4game/MainMenu;->CommonMenuIndex:B

    invoke-direct {p0, v1}, Lcom/t4game/MainMenu;->onPressedSoundQuestionWindow(I)V

    goto :goto_1

    :cond_4
    const/4 v0, -0x7

    if-ne p1, v0, :cond_5

    iput-byte v3, p0, Lcom/t4game/MainMenu;->CommonMenuIndex:B

    invoke-direct {p0, v1}, Lcom/t4game/MainMenu;->onPressedSoundQuestionWindow(I)V

    goto :goto_1

    :cond_5
    if-ne p1, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/MainMenu;->CommonMenuIndex:B

    if-nez v0, :cond_6

    sput-boolean v3, Lcom/t4game/SoundPlayer;->sSoundSwitch:Z

    :goto_2
    iget-object v0, p0, Lcom/t4game/MainMenu;->AttctManager:Lcom/t4game/Authenticate;

    invoke-static {}, Lcom/t4game/Authenticate;->setChinaMoblieOrChinaUni()V

    const/4 v0, -0x8

    invoke-virtual {p0, v0, v4}, Lcom/t4game/MainMenu;->setViewScreen(BB)V

    goto :goto_1

    :cond_6
    sput-boolean v2, Lcom/t4game/SoundPlayer;->sSoundSwitch:Z

    goto :goto_2
.end method

.method private onPressedWaitingWindow(I)V
    .locals 0

    return-void
.end method

.method public static paintMainMenuFrame(Ljavax/microedition/lcdui/Graphics;)V
    .locals 4

    const/16 v3, 0x24

    const/4 v2, 0x0

    const v0, 0x2f2c39

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    sub-int/2addr v0, v3

    sget v1, Lcom/t4game/Defaults;->CANVAS_W:I

    invoke-virtual {p0, v2, v0, v1, v3}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    invoke-virtual {p0, v2, v2, v0, v3}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    return-void
.end method

.method private paintWaitingWindow(Ljavax/microedition/lcdui/Graphics;)V
    .locals 7

    invoke-static {p1}, Lcom/t4game/DraftingUtil;->paintLoading(Ljavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/MainMenu;->WaitingMsg:Ljava/lang/String;

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget v2, Lcom/t4game/Defaults;->CANVAS_HH:I

    add-int/lit8 v2, v2, 0xa

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    iget-byte v0, p0, Lcom/t4game/MainMenu;->fromScreenId:B

    const/4 v1, -0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    iget v1, p0, Lcom/t4game/MainMenu;->loginGameSendCommandCnt:I

    if-ge v1, v0, :cond_1

    iget v1, p0, Lcom/t4game/MainMenu;->loginGameSendCommandCnt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/t4game/MainMenu;->loginGameSendCommandCnt:I

    iget v1, p0, Lcom/t4game/MainMenu;->loginGameSendCommandCnt:I

    if-ne v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/t4game/MainMenu;->done()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/MainMenu;->loginGameSendCommandCnt:I

    goto :goto_0
.end method

.method private processMessage()V
    .locals 2

    iget-boolean v0, p0, Lcom/t4game/MainMenu;->bConSuccess:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/MainMenu;->sg:Lcom/t4game/StartGame;

    iget-object v0, v0, Lcom/t4game/StartGame;->network:Lcom/t4game/TcpNetwork;

    invoke-virtual {v0}, Lcom/t4game/TcpNetwork;->getBuffData()V

    iget-object v0, p0, Lcom/t4game/MainMenu;->sg:Lcom/t4game/StartGame;

    iget-object v0, v0, Lcom/t4game/StartGame;->readBuffer:Lcom/t4game/IoBuffer;

    iget v0, v0, Lcom/t4game/IoBuffer;->length:I

    if-lez v0, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/t4game/MainMenu;->sg:Lcom/t4game/StartGame;

    iget-object v0, v0, Lcom/t4game/StartGame;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getIndex()I

    move-result v0

    iget-object v1, p0, Lcom/t4game/MainMenu;->sg:Lcom/t4game/StartGame;

    iget-object v1, v1, Lcom/t4game/StartGame;->readBuffer:Lcom/t4game/IoBuffer;

    iget v1, v1, Lcom/t4game/IoBuffer;->length:I

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/MainMenu;->sg:Lcom/t4game/StartGame;

    iget-object v0, v0, Lcom/t4game/StartGame;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v0

    int-to-byte v0, v0

    iget-object v1, p0, Lcom/t4game/MainMenu;->AttctManager:Lcom/t4game/Authenticate;

    invoke-virtual {v1, v0}, Lcom/t4game/Authenticate;->processMessage(B)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/t4game/MainMenu;->sg:Lcom/t4game/StartGame;

    iget-object v0, v0, Lcom/t4game/StartGame;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearRecived()V

    goto :goto_0
.end method

.method private processUIKeyEvent()V
    .locals 2

    sget-boolean v0, Lcom/t4game/Defaults;->isHttp:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/t4game/MainMenu;->conErrorEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/MainMenu;->showAlert:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Lcom/t4game/MainMenu;->keyCode:I

    const/4 v1, -0x5

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/t4game/MainMenu;->keyCode:I

    const/4 v1, -0x6

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/t4game/MainMenu;->keyCode:I

    const/4 v1, -0x7

    if-ne v0, v1, :cond_0

    :cond_2
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/t4game/MainMenu;->showAlert:B

    :cond_3
    iget-byte v0, p0, Lcom/t4game/MainMenu;->screenId:B

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/t4game/MainMenu;->keyCode:I

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->onPressedOfAntiIndulgence(I)V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/t4game/MainMenu;->keyCode:I

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->onPressedNetQuestionWindow(I)V

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/t4game/MainMenu;->keyCode:I

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->onPressedSoundQuestionWindow(I)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/t4game/MainMenu;->AttctManager:Lcom/t4game/Authenticate;

    iget v1, p0, Lcom/t4game/MainMenu;->keyCode:I

    invoke-virtual {v0, v1}, Lcom/t4game/Authenticate;->keyPressed(I)V

    goto :goto_0

    :pswitch_5
    iget v0, p0, Lcom/t4game/MainMenu;->keyCode:I

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->onPressedGameServerListWindow(I)V

    goto :goto_0

    :pswitch_6
    iget v0, p0, Lcom/t4game/MainMenu;->keyCode:I

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->onPressedWaitingWindow(I)V

    goto :goto_0

    :pswitch_7
    iget v0, p0, Lcom/t4game/MainMenu;->keyCode:I

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->onPressedOfAlertBox(I)V

    goto :goto_0

    :pswitch_8
    iget v0, p0, Lcom/t4game/MainMenu;->keyCode:I

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->onPressOfQuitCheck(I)V

    goto :goto_0

    :pswitch_9
    iget v0, p0, Lcom/t4game/MainMenu;->keyCode:I

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->onPressOfQuitWindow(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0xb
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private processUIPointerEvent()V
    .locals 3

    invoke-direct {p0}, Lcom/t4game/MainMenu;->getPointerPadKey()I

    invoke-direct {p0}, Lcom/t4game/MainMenu;->isKeyNULL()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/t4game/MainMenu;->keyCode:I

    invoke-virtual {p0, v0}, Lcom/t4game/MainMenu;->keyPressed(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/MainMenu;->screenId:B

    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    invoke-direct {p0}, Lcom/t4game/MainMenu;->isKeyNULL()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/t4game/MainMenu;->keyCode:I

    invoke-virtual {p0, v0}, Lcom/t4game/MainMenu;->keyPressed(I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/t4game/MainMenu;->onPointSoundQuestionKey()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/t4game/MainMenu;->onPointNetQuestionKey()V

    goto :goto_1

    :pswitch_3
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerUpArrow_FullScreen()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Lcom/t4game/MainMenu;->keyCode:I

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerDownArrow_FullScreen()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x2

    iput v0, p0, Lcom/t4game/MainMenu;->keyCode:I

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/t4game/MainMenu;->onPointerGameServerListWindow()V

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/t4game/MainMenu;->AttctManager:Lcom/t4game/Authenticate;

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    sget v2, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    invoke-virtual {v0, v1, v2}, Lcom/t4game/Authenticate;->pointer(II)V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0}, Lcom/t4game/MainMenu;->onPointerOfAlertBox()V

    goto :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/t4game/MainMenu;->AttctManager:Lcom/t4game/Authenticate;

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    sget v2, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    invoke-virtual {v0, v1, v2}, Lcom/t4game/Authenticate;->pointer(II)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p0}, Lcom/t4game/MainMenu;->onPointerOfQuitCheckWindow()V

    goto :goto_1

    :pswitch_8
    invoke-virtual {p0}, Lcom/t4game/MainMenu;->onPointerOfQuitWindow()V

    goto :goto_1

    :pswitch_9
    invoke-virtual {p0}, Lcom/t4game/MainMenu;->onPointerOfAntiIndulgence()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0xb
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private tick()V
    .locals 6

    const/4 v5, 0x1

    const/16 v1, -0x3e8

    const/4 v4, -0x4

    iget-byte v0, p0, Lcom/t4game/MainMenu;->screenId:B

    const/4 v2, -0x5

    if-ne v0, v2, :cond_0

    const/4 v0, -0x5

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->onPressedGameServerListWindow(I)V

    return-void

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    nop

    :cond_0
    invoke-static {}, Lcom/t4game/PointerUtil;->isAnyPointerReleased()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/t4game/MainMenu;->processUIPointerEvent()V

    :cond_1
    iget v0, p0, Lcom/t4game/MainMenu;->keyCode:I

    if-eq v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/t4game/MainMenu;->pressed:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/t4game/Defaults;->lockKeyPress:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/t4game/MainMenu;->processUIKeyEvent()V

    :cond_2
    iput v1, p0, Lcom/t4game/MainMenu;->keyCode:I

    sget-boolean v0, Lcom/t4game/TcpNetwork;->sendBlock:Z

    if-nez v0, :cond_8

    sget-boolean v0, Lcom/t4game/TcpNetwork;->tcpOpen:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/MainMenu;->sg:Lcom/t4game/StartGame;

    iget-object v0, v0, Lcom/t4game/StartGame;->network:Lcom/t4game/TcpNetwork;

    if-nez v0, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v0, p0, Lcom/t4game/MainMenu;->sg:Lcom/t4game/StartGame;

    iget-object v0, v0, Lcom/t4game/StartGame;->network:Lcom/t4game/TcpNetwork;

    iget-byte v0, v0, Lcom/t4game/TcpNetwork;->tcpState:B

    sget-byte v1, Lcom/t4game/TcpNetwork;->TCP_OPEN:B

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/t4game/MainMenu;->sg:Lcom/t4game/StartGame;

    iget-object v0, v0, Lcom/t4game/StartGame;->network:Lcom/t4game/TcpNetwork;

    iget-byte v0, v0, Lcom/t4game/TcpNetwork;->tcpState:B

    sget-byte v1, Lcom/t4game/TcpNetwork;->TCP_NORMAL_STATE:B

    if-ne v0, v1, :cond_7

    :cond_5
    invoke-static {}, Lcom/t4game/Util;->getTime()J

    move-result-wide v0

    sget-wide v2, Lcom/t4game/Defaults;->lastRecvedTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x11170

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6

    iget-byte v0, p0, Lcom/t4game/MainMenu;->screenId:B

    invoke-virtual {p0, v4, v0}, Lcom/t4game/MainMenu;->setViewScreen(BB)V

    sput-boolean v5, Lcom/t4game/TcpNetwork;->sendBlock:Z

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/t4game/Util;->getTime()J

    move-result-wide v0

    sget-wide v2, Lcom/t4game/Defaults;->lastRecvedTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x9c40

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/t4game/TcpNetwork;->sendBlock:Z

    goto :goto_0

    :cond_7
    iget-byte v0, p0, Lcom/t4game/MainMenu;->screenId:B

    invoke-virtual {p0, v4, v0}, Lcom/t4game/MainMenu;->setViewScreen(BB)V

    sput-boolean v5, Lcom/t4game/TcpNetwork;->sendBlock:Z

    goto :goto_0

    :cond_8
    sget-boolean v0, Lcom/t4game/Defaults;->isHttp:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/t4game/MainMenu;->processMessage()V

    goto :goto_0
.end method


# virtual methods
.method public InitGameServerList([[Ljava/lang/String;[[Ljava/lang/String;)V
    .locals 12

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/t4game/MainMenu;->serverList:[[Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->release()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    new-instance v0, Lcom/t4game/GameUi;

    invoke-direct {v0}, Lcom/t4game/GameUi;-><init>()V

    iput-object v0, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    iget-object v0, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    const-string v1, "/data/ui/server_List.bin"

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->init(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object p1

    check-cast p1, Lcom/t4game/UI_List;

    check-cast p1, Lcom/t4game/UI_List;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u670d\u52a1\u5668"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u89d2\u8272"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u72b6\u6001"

    aput-object v2, v0, v1

    const v1, 0x2a252a

    const v2, 0xffc700

    invoke-virtual {p1, v0, v1, v2}, Lcom/t4game/UI_List;->setTitle([Ljava/lang/String;II)V

    const v0, 0x8d661b

    iput v0, p1, Lcom/t4game/UI_List;->Focus_ServerList_Color:I

    const/4 v0, 0x0

    move v9, v0

    :goto_1
    array-length v0, p2

    if-ge v9, v0, :cond_4

    invoke-virtual {p1}, Lcom/t4game/UI_List;->getColumn()B

    move-result v0

    new-array v10, v0, [Lcom/t4game/ListItem;

    const/4 v0, 0x0

    move v11, v0

    :goto_2
    invoke-virtual {p1}, Lcom/t4game/UI_List;->getColumn()B

    move-result v0

    if-ge v11, v0, :cond_3

    new-instance v0, Lcom/t4game/ListItem;

    invoke-direct {v0}, Lcom/t4game/ListItem;-><init>()V

    aput-object v0, v10, v11

    aget-object v0, v10, v11

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    const/4 v3, 0x0

    sget v4, Lcom/t4game/Defaults;->C_BROWN_NORMAL:I

    aput v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v5, p2, v9

    aget-object v5, v5, v11

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-nez v11, :cond_2

    const/4 v8, 0x0

    :goto_3
    invoke-virtual/range {v0 .. v8}, Lcom/t4game/ListItem;->Init(Ljavax/microedition/lcdui/Image;[I[Ljava/lang/String;Ljava/lang/String;[II[Ljava/lang/String;Z)V

    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_2

    :cond_2
    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {p1, v10}, Lcom/t4game/UI_List;->addChoice([Lcom/t4game/ListItem;)V

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p1, Lcom/t4game/UI_List;->id:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->setFocus(B)V

    iget-object v0, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/t4game/GameUi;->commandType:B

    iget-object v0, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->autoLayout()V

    goto/16 :goto_0
.end method

.method public done()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/t4game/MainMenu;->stop()V

    iget-object v1, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v1}, Lcom/t4game/GameUi;->release()V

    :cond_0
    iput-object v2, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    iput-object v2, p0, Lcom/t4game/MainMenu;->reminder:Lcom/t4game/CommBulletin;

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/MainMenu;->serverList:[[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/MainMenu;->img_Sound_Image:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/MainMenu;->AntiIndulged:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/MainMenu;->g:Ljavax/microedition/lcdui/Graphics;

    iput-object v2, p0, Lcom/t4game/MainMenu;->netContent:Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/MainMenu;->WaitingMsg:Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/MainMenu;->AlertMsg:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/MainMenu;->AttctManager:Lcom/t4game/Authenticate;

    invoke-virtual {v1}, Lcom/t4game/Authenticate;->release()V

    iput-object v2, p0, Lcom/t4game/MainMenu;->AttctManager:Lcom/t4game/Authenticate;

    iget-object v1, p0, Lcom/t4game/MainMenu;->sg:Lcom/t4game/StartGame;

    invoke-virtual {v1}, Lcom/t4game/StartGame;->doneMainMenuScreen()V

    iput-object v2, p0, Lcom/t4game/MainMenu;->sg:Lcom/t4game/StartGame;

    return-void
.end method

.method public draw()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/t4game/MainMenu;->g:Ljavax/microedition/lcdui/Graphics;

    sget-object v1, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    iget-byte v0, p0, Lcom/t4game/MainMenu;->screenId:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    sget-boolean v0, Lcom/t4game/Defaults;->isHttp:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/MainMenu;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->drawTcpWating(Ljavax/microedition/lcdui/Graphics;)V

    :cond_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/t4game/MainMenu;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->drawNetQuestionWindow(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/t4game/MainMenu;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->drawSoundQuestionWindow(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/t4game/MainMenu;->AttctManager:Lcom/t4game/Authenticate;

    iget-object v1, p0, Lcom/t4game/MainMenu;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v0, v1}, Lcom/t4game/Authenticate;->draw(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/t4game/MainMenu;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->drawGameServerListWindow(Ljavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/MainMenu;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-static {v0}, Lcom/t4game/DraftingUtil;->paintFullScreenUPDNarrow(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/t4game/MainMenu;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->paintWaitingWindow(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_6
    sget-boolean v0, Lcom/t4game/Defaults;->isHttp:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/t4game/MainMenu;->g:Ljavax/microedition/lcdui/Graphics;

    iget-object v1, p0, Lcom/t4game/MainMenu;->AlertMsg:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/t4game/MainMenu;->g:Ljavax/microedition/lcdui/Graphics;

    const-string v1, "\u7f51\u7edc\u6545\u969c\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    invoke-static {v0, v1, v2}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/t4game/MainMenu;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->drawQuitCheckWindows(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/t4game/MainMenu;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->drawQuitWindows(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/t4game/MainMenu;->g:Ljavax/microedition/lcdui/Graphics;

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->drawAntiIndulgence(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0xb
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected hideNotify()V
    .locals 2

    sget-boolean v0, Lcom/t4game/SoundPlayer;->sSoundSwitch:Z

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/MainMenu;->screenId:B

    const/4 v1, -0x8

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/t4game/Defaults;->soundPlayer:Lcom/t4game/SoundPlayer;

    invoke-virtual {v0}, Lcom/t4game/SoundPlayer;->destroy()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/MainMenu;->soundStop:Z

    :cond_0
    return-void
.end method

.method public invokeKeyPressed(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/t4game/MainMenu;->keyPressed(I)V

    return-void
.end method

.method public invokeKeyReleased(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/t4game/MainMenu;->keyReleased(I)V

    return-void
.end method

.method public keyPressed(I)V
    .locals 1

    iput p1, p0, Lcom/t4game/MainMenu;->keyCode:I

    const/4 v0, 0x0

    sput-byte v0, Lcom/t4game/Defaults;->ShowArrowType:B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/MainMenu;->pressed:Z

    return-void
.end method

.method public keyReleased(I)V
    .locals 1

    iput p1, p0, Lcom/t4game/MainMenu;->keyCode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/MainMenu;->pressed:Z

    return-void
.end method

.method public linkAuthByTcp()Z
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/t4game/MainMenu;->sg:Lcom/t4game/StartGame;

    iget-object v0, v0, Lcom/t4game/StartGame;->network:Lcom/t4game/TcpNetwork;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/MainMenu;->sg:Lcom/t4game/StartGame;

    iget-object v0, v0, Lcom/t4game/StartGame;->network:Lcom/t4game/TcpNetwork;

    invoke-virtual {v0}, Lcom/t4game/TcpNetwork;->stop()V

    iget-object v0, p0, Lcom/t4game/MainMenu;->sg:Lcom/t4game/StartGame;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/t4game/StartGame;->network:Lcom/t4game/TcpNetwork;

    :cond_0
    new-instance v0, Lcom/t4game/TcpNetwork;

    iget-object v1, p0, Lcom/t4game/MainMenu;->sg:Lcom/t4game/StartGame;

    invoke-direct {v0, v1}, Lcom/t4game/TcpNetwork;-><init>(Lcom/t4game/StartGame;)V

    sget-boolean v1, Lcom/t4game/TcpNetwork;->tcpOpen:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/t4game/MainMenu;->sg:Lcom/t4game/StartGame;

    iput-object v0, v1, Lcom/t4game/StartGame;->network:Lcom/t4game/TcpNetwork;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    iget-object v0, p0, Lcom/t4game/MainMenu;->sg:Lcom/t4game/StartGame;

    iget-object v0, v0, Lcom/t4game/StartGame;->network:Lcom/t4game/TcpNetwork;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public onPointKey(II)V
    .locals 0

    return-void
.end method

.method public onPointNetQuestionKey()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/t4game/PointerUtil;->isPointerOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/t4game/PointerUtil;->isreleasedOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x6

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->onPressedNetQuestionWindow(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v2}, Lcom/t4game/PointerUtil;->isPointerOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/t4game/PointerUtil;->isreleasedOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x7

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->onPressedNetQuestionWindow(I)V

    goto :goto_0
.end method

.method public onPointSoundQuestionKey()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/t4game/PointerUtil;->isPointerOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/t4game/PointerUtil;->isreleasedOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x6

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->onPressedSoundQuestionWindow(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v2}, Lcom/t4game/PointerUtil;->isPointerOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/t4game/PointerUtil;->isreleasedOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x7

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->onPressedSoundQuestionWindow(I)V

    goto :goto_0
.end method

.method public onPointerOfAntiIndulgence()V
    .locals 2

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/t4game/PointerUtil;->isPointerOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/t4game/PointerUtil;->isreleasedOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x6

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->onPressedOfAntiIndulgence(I)V

    :cond_0
    return-void
.end method

.method public onPointerOfQuitCheckWindow()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/t4game/PointerUtil;->isPointerOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/t4game/PointerUtil;->isreleasedOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x6

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->onPressOfQuitCheck(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v2}, Lcom/t4game/PointerUtil;->isPointerOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/t4game/PointerUtil;->isreleasedOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x7

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->onPressOfQuitCheck(I)V

    goto :goto_0
.end method

.method public onPointerOfQuitWindow()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/t4game/PointerUtil;->isPointerOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/t4game/PointerUtil;->isreleasedOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x6

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->onPressOfQuitWindow(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v2}, Lcom/t4game/PointerUtil;->isPointerOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/t4game/PointerUtil;->isreleasedOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x7

    invoke-direct {p0, v0}, Lcom/t4game/MainMenu;->onPressOfQuitWindow(I)V

    goto :goto_0
.end method

.method public onPointerWaiting_Window()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/t4game/PointerUtil;->isPointerOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x6

    invoke-virtual {p0, v0}, Lcom/t4game/MainMenu;->keyPressed(I)V

    :cond_0
    return-void
.end method

.method protected pointerDragged(II)V
    .locals 0

    return-void
.end method

.method protected pointerPressed(II)V
    .locals 0

    sput p1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    sput p2, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    return-void
.end method

.method protected pointerReleased(II)V
    .locals 0

    sput p1, Lcom/t4game/PointerUtil;->s_iPointerAnyReleasedX:I

    sput p1, Lcom/t4game/PointerUtil;->s_iPointerReleasedInputX:I

    sput p1, Lcom/t4game/PointerUtil;->s_iPointerSoftKeyX:I

    sput p1, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    sput p2, Lcom/t4game/PointerUtil;->s_iPointerAnyReleasedY:I

    sput p2, Lcom/t4game/PointerUtil;->s_iPointerReleasedInputY:I

    sput p2, Lcom/t4game/PointerUtil;->s_iPointerSoftKeyY:I

    sput p2, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    return-void
.end method

.method public quite()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/MainMenu;->running:Z

    iget-object v0, p0, Lcom/t4game/MainMenu;->sg:Lcom/t4game/StartGame;

    invoke-virtual {v0}, Lcom/t4game/StartGame;->quitApp()V

    return-void
.end method

.method public run()V
    .locals 6

    const-wide/16 v4, 0x64

    :goto_0
    iget-boolean v0, p0, Lcom/t4game/MainMenu;->running:Z

    if-eqz v0, :cond_3

    iget-byte v0, p0, Lcom/t4game/MainMenu;->currentTick:B

    const/16 v1, 0x4f

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/MainMenu;->currentTick:B

    :goto_1
    invoke-static {}, Lcom/t4game/Util;->getTime()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/t4game/MainMenu;->tick()V

    iget-boolean v2, p0, Lcom/t4game/MainMenu;->running:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/t4game/MainMenu;->draw()V

    invoke-virtual {p0}, Lcom/t4game/MainMenu;->flushGraphics()V

    :cond_0
    invoke-static {}, Lcom/t4game/Util;->getTime()J

    move-result-wide v2

    sub-long v0, v2, v0

    cmp-long v2, v0, v4

    if-gez v2, :cond_2

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    sub-long v0, v4, v0

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-byte v0, p0, Lcom/t4game/MainMenu;->currentTick:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/MainMenu;->currentTick:B

    goto :goto_1

    :cond_2
    :try_start_3
    invoke-static {}, Ljava/lang/Thread;->yield()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setConnectType(B)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/MainMenu;->AttctManager:Lcom/t4game/Authenticate;

    invoke-virtual {v0, p1}, Lcom/t4game/Authenticate;->setConnectType(B)V

    return-void
.end method

.method public setViewScreen(BB)V
    .locals 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-byte p1, p0, Lcom/t4game/MainMenu;->screenId:B

    iput-byte p2, p0, Lcom/t4game/MainMenu;->fromScreenId:B

    sput v0, Lcom/t4game/DraftingUtil;->loading_leng_cur:I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/t4game/MainMenu;->InitSoundQuestion()V

    goto :goto_0

    :pswitch_2
    iput-byte v0, p0, Lcom/t4game/MainMenu;->CommonMenuIndex:B

    const-string v0, "\u79fb\u52a8\u7528\u6237\u8bf7\u9009\u62e9\u79fb\u52a8\u7f51\uff0c\u8054\u901a\u7528\u6237\u8bf7\u9009\u62e9\u8054\u901a\u7f51\uff0c\u201c\u8054\u7f51\u65b9\u5f0f\u201d\u53ef\u5728\u201c\u5f00\u59cb\u6e38\u620f\u201d\u9009\u9879\u4e2d\u8fdb\u884c\u624b\u52a8\u66f4\u6539\uff01"

    iput-object v0, p0, Lcom/t4game/MainMenu;->netContent:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    iput-byte v0, p0, Lcom/t4game/MainMenu;->currentTick:B

    iget-byte v0, p0, Lcom/t4game/MainMenu;->fromScreenId:B

    const/16 v1, -0x9

    if-ne v0, v1, :cond_0

    const-string v0, "\u8fde\u63a5\u4e2d\u8bf7\u7a0d\u5019..."

    iput-object v0, p0, Lcom/t4game/MainMenu;->WaitingMsg:Ljava/lang/String;

    sget-boolean v0, Lcom/t4game/Defaults;->isHttp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/MainMenu;->AttctManager:Lcom/t4game/Authenticate;

    invoke-virtual {v0}, Lcom/t4game/Authenticate;->BackToServerList()V

    goto :goto_0

    :pswitch_4
    sget-boolean v0, Lcom/t4game/Defaults;->isHttp:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/t4game/HttpNetwork;->getInstance()Lcom/t4game/HttpNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/t4game/HttpNetwork;->isNetError()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u7f51\u7edc\u72b6\u51b5\u4e0d\u597d\u6b63\u5728\u5bfb\u627e\u7f51\u7edc\u8bf7\u7b49\u5019"

    iput-object v0, p0, Lcom/t4game/MainMenu;->AlertMsg:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/t4game/HttpNetwork;->getInstance()Lcom/t4game/HttpNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/t4game/HttpNetwork;->isNetWork()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "\u7f51\u7edc\u6545\u969c\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55"

    iput-object v0, p0, Lcom/t4game/MainMenu;->AlertMsg:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string v0, "\u7f51\u7edc\u9519\u8bef\uff0c\u8bf7\u60a8\u5728\u8054\u7f51\u65b9\u5f0f\u4e2d\u66f4\u6539\u60a8\u7684\u7f51\u7edc\u8fde\u63a5\u8bbe\u7f6e\uff0cCMWAP\u7528\u6237\u63a8\u8350\u9009\u62e9WAP\u8054\u7f51\uff0cUNINET\u7528\u6237\u8bf7\u9009\u62e9NET\u8054\u7f51"

    iput-object v0, p0, Lcom/t4game/MainMenu;->AlertMsg:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    iput-byte v0, p0, Lcom/t4game/MainMenu;->CommonMenuIndex:B

    iget-object v0, p0, Lcom/t4game/MainMenu;->ui:Lcom/t4game/GameUi;

    if-nez v0, :cond_0

    const/4 v0, -0x3

    const/4 v1, -0x5

    invoke-virtual {p0, v0, v1}, Lcom/t4game/MainMenu;->setViewScreen(BB)V

    goto :goto_0

    :pswitch_6
    new-instance v0, Lcom/t4game/CommBulletin;

    sget-object v2, Lcom/t4game/Defaults;->default_remind:Ljava/lang/String;

    const v3, 0xffffff

    const/4 v5, 0x2

    move-object v4, v1

    invoke-direct/range {v0 .. v5}, Lcom/t4game/CommBulletin;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/t4game/GameWorld;B)V

    iput-object v0, p0, Lcom/t4game/MainMenu;->reminder:Lcom/t4game/CommBulletin;

    iget-object v0, p0, Lcom/t4game/MainMenu;->reminder:Lcom/t4game/CommBulletin;

    iget v1, v0, Lcom/t4game/CommBulletin;->y:I

    sget v2, Lcom/t4game/Defaults;->sfh:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Lcom/t4game/CommBulletin;->y:I

    goto :goto_0

    :pswitch_7
    sget-boolean v0, Lcom/t4game/Authenticate;->ReturnBackFromOuterWindow:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/t4game/MainMenu;->showCanvas()V

    goto :goto_0

    :cond_3
    iput-object v1, p0, Lcom/t4game/MainMenu;->img_Sound_Image:Ljavax/microedition/lcdui/Image;

    iput-object v1, p0, Lcom/t4game/MainMenu;->AntiIndulged:[Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/MainMenu;->AttctManager:Lcom/t4game/Authenticate;

    invoke-virtual {v0}, Lcom/t4game/Authenticate;->InitDefaultState()V

    goto/16 :goto_0

    :pswitch_8
    invoke-direct {p0}, Lcom/t4game/MainMenu;->initAntiIndulgence()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0xb
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public showCanvas()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/MainMenu;->sg:Lcom/t4game/StartGame;

    iget-object v0, v0, Lcom/t4game/StartGame;->midlet:Lcom/t4game/GameMIDlet;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    return-void
.end method

.method protected showNotify()V
    .locals 2

    sget-boolean v0, Lcom/t4game/SoundPlayer;->sSoundSwitch:Z

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/MainMenu;->screenId:B

    const/4 v1, -0x8

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/t4game/MainMenu;->soundStop:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/t4game/Defaults;->soundPlayer:Lcom/t4game/SoundPlayer;

    const-string v1, "/mid/0.mid"

    invoke-virtual {v0, v1}, Lcom/t4game/SoundPlayer;->playMIDI(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/MainMenu;->soundStop:Z

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    sget-boolean v0, Lcom/t4game/Defaults;->isHttp:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/t4game/HttpNetwork;->getInstance()Lcom/t4game/HttpNetwork;

    move-result-object v0

    invoke-virtual {v0}, Lcom/t4game/HttpNetwork;->Stop()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/MainMenu;->running:Z

    return-void
.end method
