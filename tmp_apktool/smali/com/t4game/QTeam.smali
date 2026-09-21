.class public Lcom/t4game/QTeam;
.super Ljava/lang/Object;


# static fields
.field private static qTeam:Lcom/t4game/QTeam;


# instance fields
.field private gameWorld:Lcom/t4game/GameWorld;

.field private list:Lcom/t4game/UList;

.field public mapID:[I

.field public mapInfo:[Ljava/lang/String;

.field private readBuffer:Lcom/t4game/IoBuffer;

.field private screen:Lcom/t4game/GameScreen;

.field private sendBuffer:Lcom/t4game/IoBuffer;

.field private showWait:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/t4game/QTeam;->qTeam:Lcom/t4game/QTeam;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/t4game/QTeam;->gameWorld:Lcom/t4game/GameWorld;

    iput-object v0, p0, Lcom/t4game/QTeam;->screen:Lcom/t4game/GameScreen;

    iput-object v0, p0, Lcom/t4game/QTeam;->sendBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/QTeam;->readBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/QTeam;->mapID:[I

    iput-object v0, p0, Lcom/t4game/QTeam;->mapInfo:[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/QTeam;->list:Lcom/t4game/UList;

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/QTeam;->showWait:B

    return-void
.end method

.method public static getInstance()Lcom/t4game/QTeam;
    .locals 1

    sget-object v0, Lcom/t4game/QTeam;->qTeam:Lcom/t4game/QTeam;

    if-nez v0, :cond_0

    new-instance v0, Lcom/t4game/QTeam;

    invoke-direct {v0}, Lcom/t4game/QTeam;-><init>()V

    sput-object v0, Lcom/t4game/QTeam;->qTeam:Lcom/t4game/QTeam;

    :cond_0
    sget-object v0, Lcom/t4game/QTeam;->qTeam:Lcom/t4game/QTeam;

    return-object v0
.end method

.method private getStrWidth(Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move v2, v1

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_1

    sget-object v3, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    aget-char v4, v0, v1

    invoke-virtual {v3, v4}, Ljavax/microedition/lcdui/Font;->charWidth(C)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method private release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/QTeam;->list:Lcom/t4game/UList;

    iput-object v0, p0, Lcom/t4game/QTeam;->mapID:[I

    iput-object v0, p0, Lcom/t4game/QTeam;->mapInfo:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 7

    const/4 v4, -0x1

    iget-object v0, p0, Lcom/t4game/QTeam;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    const/16 v1, -0x20

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "\u4fbf\u6377\u7ec4\u961f"

    invoke-static {p1, v0}, Lcom/t4game/DraftingUtil;->paintFloatingDailog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/QTeam;->list:Lcom/t4game/UList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/QTeam;->list:Lcom/t4game/UList;

    invoke-virtual {v0, p1}, Lcom/t4game/UList;->draw(Ljavax/microedition/lcdui/Graphics;)V

    iget-byte v0, p0, Lcom/t4game/QTeam;->showWait:B

    iget-object v1, p0, Lcom/t4game/QTeam;->list:Lcom/t4game/UList;

    iget v1, v1, Lcom/t4game/UList;->rowY:I

    if-lt v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/QTeam;->showWait:B

    iget-object v1, p0, Lcom/t4game/QTeam;->list:Lcom/t4game/UList;

    iget v1, v1, Lcom/t4game/UList;->rowY:I

    iget-object v2, p0, Lcom/t4game/QTeam;->list:Lcom/t4game/UList;

    iget v2, v2, Lcom/t4game/UList;->rowNum:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_0

    const-string v0, "  \uff08\u7b49\u5f85\u4e2d\uff09"

    iget-object v1, p0, Lcom/t4game/QTeam;->list:Lcom/t4game/UList;

    iget v1, v1, Lcom/t4game/UList;->x:I

    iget-object v2, p0, Lcom/t4game/QTeam;->list:Lcom/t4game/UList;

    iget-object v2, v2, Lcom/t4game/UList;->str:[Ljava/lang/String;

    iget-byte v3, p0, Lcom/t4game/QTeam;->showWait:B

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/t4game/QTeam;->getStrWidth(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/QTeam;->list:Lcom/t4game/UList;

    iget v2, v2, Lcom/t4game/UList;->y:I

    iget-byte v3, p0, Lcom/t4game/QTeam;->showWait:B

    iget-object v5, p0, Lcom/t4game/QTeam;->list:Lcom/t4game/UList;

    iget v5, v5, Lcom/t4game/UList;->rowY:I

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/t4game/QTeam;->list:Lcom/t4game/UList;

    iget v5, v5, Lcom/t4game/UList;->rowH:I

    mul-int/2addr v3, v5

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/t4game/QTeam;->list:Lcom/t4game/UList;

    iget v3, v3, Lcom/t4game/UList;->rowStrOffy:I

    add-int/2addr v2, v3

    const/16 v3, 0x14

    move v5, v4

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0
.end method

.method public init()V
    .locals 6

    new-instance v0, Lcom/t4game/UList;

    invoke-direct {v0}, Lcom/t4game/UList;-><init>()V

    iput-object v0, p0, Lcom/t4game/QTeam;->list:Lcom/t4game/UList;

    iget-object v0, p0, Lcom/t4game/QTeam;->mapInfo:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    const/4 v2, -0x1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/t4game/QTeam;->list:Lcom/t4game/UList;

    iget-object v2, p0, Lcom/t4game/QTeam;->mapInfo:[Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/t4game/UList;->init([Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/t4game/QTeam;->list:Lcom/t4game/UList;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0xe

    const/16 v2, 0x25

    const/16 v3, 0x14c

    const/16 v4, 0xa8

    sget v5, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v5, v5, 0x5

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UList;->setPos(IIIII)V

    iget-object v0, p0, Lcom/t4game/QTeam;->list:Lcom/t4game/UList;

    invoke-virtual {v0}, Lcom/t4game/UList;->autoLayout()V

    return-void
.end method

.method public keyEvent(I)V
    .locals 3

    iget-object v0, p0, Lcom/t4game/QTeam;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    const/16 v1, -0x20

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x7

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/QTeam;->screen:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/QTeam;->screen:Lcom/t4game/GameScreen;

    iget-byte v1, v1, Lcom/t4game/GameScreen;->PreState:B

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->setState(BZ)V

    invoke-direct {p0}, Lcom/t4game/QTeam;->release()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/QTeam;->list:Lcom/t4game/UList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/QTeam;->list:Lcom/t4game/UList;

    invoke-virtual {v0, p1}, Lcom/t4game/UList;->keyEvent(I)I

    move-result v0

    const/4 v1, -0x5

    if-eq v0, v1, :cond_3

    const/4 v1, -0x6

    if-ne v0, v1, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/t4game/QTeam;->sendListMsg()V

    goto :goto_0
.end method

.method public pointerEvent()V
    .locals 2

    iget-object v0, p0, Lcom/t4game/QTeam;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    const/16 v1, -0x20

    if-eq v0, v1, :cond_0

    :cond_0
    return-void
.end method

.method public processMsg(I)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/t4game/QTeam;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/QTeam;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-eqz v0, :cond_1

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/t4game/QTeam;->mapID:[I

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/QTeam;->mapInfo:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/t4game/QTeam;->mapID:[I

    iget-object v3, p0, Lcom/t4game/QTeam;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lcom/t4game/QTeam;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/QTeam;->mapInfo:[Ljava/lang/String;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/t4game/QTeam;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/QTeam;->showWait:B

    invoke-virtual {p0}, Lcom/t4game/QTeam;->init()V

    iget-object v0, p0, Lcom/t4game/QTeam;->screen:Lcom/t4game/GameScreen;

    const/16 v1, -0x20

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->setDialog(B)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/t4game/QTeam;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/QTeam;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v1, v0}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/t4game/QTeam;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/QTeam;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/QTeam;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/t4game/QTeam;->showWait:B

    iget-object v1, p0, Lcom/t4game/QTeam;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v1, v0}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x262
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sendListDialogMsg()V
    .locals 3

    iget-object v0, p0, Lcom/t4game/QTeam;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/QTeam;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/QTeam;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x262

    iget-object v2, p0, Lcom/t4game/QTeam;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    return-void
.end method

.method public sendListMsg()V
    .locals 3

    iget-object v0, p0, Lcom/t4game/QTeam;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/QTeam;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/QTeam;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/QTeam;->mapID:[I

    iget-object v2, p0, Lcom/t4game/QTeam;->list:Lcom/t4game/UList;

    invoke-virtual {v2}, Lcom/t4game/UList;->getCmd()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/QTeam;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/QTeam;->list:Lcom/t4game/UList;

    invoke-virtual {v1}, Lcom/t4game/UList;->getCmd()I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/QTeam;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x263

    iget-object v2, p0, Lcom/t4game/QTeam;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    return-void
.end method

.method public setContext(Lcom/t4game/GameScreen;)V
    .locals 1

    iget-object v0, p1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iput-object v0, p0, Lcom/t4game/QTeam;->gameWorld:Lcom/t4game/GameWorld;

    iput-object p1, p0, Lcom/t4game/QTeam;->screen:Lcom/t4game/GameScreen;

    iget-object v0, p0, Lcom/t4game/QTeam;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/QTeam;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v0, p0, Lcom/t4game/QTeam;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/QTeam;->readBuffer:Lcom/t4game/IoBuffer;

    return-void
.end method
