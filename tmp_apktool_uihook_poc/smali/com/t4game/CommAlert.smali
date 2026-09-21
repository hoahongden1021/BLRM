.class public Lcom/t4game/CommAlert;
.super Ljava/lang/Object;


# instance fields
.field cmd:I

.field cmdlist:[B

.field content:Ljava/lang/String;

.field gameworld:Lcom/t4game/GameWorld;

.field left:Ljava/lang/String;

.field loadState:B

.field numFlag:I

.field right:Ljava/lang/String;

.field tickTime:I

.field timeOn:I

.field private tishichuansong:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/t4game/GameWorld;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\u786e\u5b9a"

    iput-object v0, p0, Lcom/t4game/CommAlert;->left:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/CommAlert;->right:Ljava/lang/String;

    iput-byte v1, p0, Lcom/t4game/CommAlert;->loadState:B

    iput v1, p0, Lcom/t4game/CommAlert;->cmd:I

    iput-boolean v1, p0, Lcom/t4game/CommAlert;->tishichuansong:Z

    iput-object p1, p0, Lcom/t4game/CommAlert;->content:Ljava/lang/String;

    iput-object p2, p0, Lcom/t4game/CommAlert;->gameworld:Lcom/t4game/GameWorld;

    return-void
.end method

.method private sendMessage(ZZ)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/t4game/CommAlert;->gameworld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/CommAlert;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/t4game/CommAlert;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    :goto_0
    iget-object v0, p0, Lcom/t4game/CommAlert;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/CommAlert;->cmdlist:[B

    array-length v1, v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/t4game/CommAlert;->cmdlist:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/t4game/CommAlert;->gameworld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v2, p0, Lcom/t4game/CommAlert;->cmdlist:[B

    aget-byte v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/t4game/IoBuffer;->putByte(B)V

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/t4game/CommAlert;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v2}, Lcom/t4game/IoBuffer;->putByte(B)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/CommAlert;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    iget v1, p0, Lcom/t4game/CommAlert;->cmd:I

    iget-object v2, p0, Lcom/t4game/CommAlert;->gameworld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public KeyEvent(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, -0x6

    if-eq p1, v0, :cond_0

    const/4 v0, -0x5

    if-ne p1, v0, :cond_6

    :cond_0
    iget-object v0, p0, Lcom/t4game/CommAlert;->left:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/CommAlert;->loadState:B

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/t4game/CommAlert;->tishichuansong:Z

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/t4game/CommAlert;->tishichuansong:Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput-boolean v2, p0, Lcom/t4game/CommAlert;->tishichuansong:Z

    goto :goto_0

    :cond_3
    iget-byte v0, p0, Lcom/t4game/CommAlert;->loadState:B

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/t4game/CommAlert;->gameworld:Lcom/t4game/GameWorld;

    iput-boolean v2, v0, Lcom/t4game/GameWorld;->commAlertOn:Z

    :cond_4
    iget-byte v0, p0, Lcom/t4game/CommAlert;->loadState:B

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/CommAlert;->loadState:B

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_5

    move v0, v1

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/t4game/CommAlert;->sendMessage(ZZ)Z

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1

    :cond_6
    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/CommAlert;->right:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/CommAlert;->loadState:B

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_c

    iget-boolean v0, p0, Lcom/t4game/CommAlert;->tishichuansong:Z

    if-nez v0, :cond_9

    iget-byte v0, p0, Lcom/t4game/CommAlert;->loadState:B

    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/t4game/CommAlert;->gameworld:Lcom/t4game/GameWorld;

    iput-boolean v2, v0, Lcom/t4game/GameWorld;->commAlertOn:Z

    :cond_7
    iget-byte v0, p0, Lcom/t4game/CommAlert;->loadState:B

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/CommAlert;->loadState:B

    shr-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_8

    move v0, v1

    :goto_2
    invoke-direct {p0, v2, v0}, Lcom/t4game/CommAlert;->sendMessage(ZZ)Z

    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    iget-byte v0, p0, Lcom/t4game/CommAlert;->loadState:B

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/t4game/CommAlert;->gameworld:Lcom/t4game/GameWorld;

    iput-boolean v2, v0, Lcom/t4game/GameWorld;->commAlertOn:Z

    :cond_a
    iget-byte v0, p0, Lcom/t4game/CommAlert;->loadState:B

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/CommAlert;->loadState:B

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_b

    move v0, v1

    :goto_3
    invoke-direct {p0, v1, v0}, Lcom/t4game/CommAlert;->sendMessage(ZZ)Z

    goto :goto_0

    :cond_b
    move v0, v2

    goto :goto_3

    :cond_c
    iget-byte v0, p0, Lcom/t4game/CommAlert;->loadState:B

    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/t4game/CommAlert;->gameworld:Lcom/t4game/GameWorld;

    iput-boolean v2, v0, Lcom/t4game/GameWorld;->commAlertOn:Z

    :cond_d
    iget-byte v0, p0, Lcom/t4game/CommAlert;->loadState:B

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/CommAlert;->loadState:B

    shr-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_e

    move v0, v1

    :goto_4
    invoke-direct {p0, v2, v0}, Lcom/t4game/CommAlert;->sendMessage(ZZ)Z

    goto/16 :goto_0

    :cond_e
    move v0, v2

    goto :goto_4
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 3

    iget-boolean v0, p0, Lcom/t4game/CommAlert;->tishichuansong:Z

    if-eqz v0, :cond_0

    const-string v0, "\u786e\u5b9a\u8981\u4f20\u9001\u5417\uff1f"

    const-string v1, "\u8fd4\u56de"

    const-string v2, "\u786e\u5b9a"

    invoke-static {p1, v0, v1, v2}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/CommAlert;->content:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/CommAlert;->left:Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/CommAlert;->right:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public pointerEvent()V
    .locals 3

    const/16 v2, -0x3e8

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightSoftKey()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightAlertKey()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, -0x7

    :goto_0
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftAlertKey()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftAlertKey()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, -0x6

    :cond_2
    if-eq v0, v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/t4game/CommAlert;->KeyEvent(I)V

    :cond_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0
.end method
