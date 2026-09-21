.class public Lcom/t4game/CommBulletin;
.super Ljava/lang/Object;


# instance fields
.field public bulletin_title:Ljava/lang/String;

.field cmd:I

.field cmdlist:[B

.field gameworld:Lcom/t4game/GameWorld;

.field h:I

.field left:Ljava/lang/String;

.field lineOfScreen:I

.field loadState:B

.field numFlag:I

.field right:Ljava/lang/String;

.field tag:Lcom/t4game/TagString;

.field tagActionIndex:I

.field tagLineIndex:I

.field tickTime:I

.field timeOn:I

.field type:B

.field w:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILcom/t4game/GameWorld;B)V
    .locals 5

    const/16 v4, 0xc8

    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/t4game/CommBulletin;->timeOn:I

    iput v1, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    iput v4, p0, Lcom/t4game/CommBulletin;->h:I

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    iput v0, p0, Lcom/t4game/CommBulletin;->w:I

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/CommBulletin;->x:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/t4game/CommBulletin;->y:I

    sget-byte v0, Lcom/t4game/Defaults;->linesOfScreen:B

    iput v0, p0, Lcom/t4game/CommBulletin;->lineOfScreen:I

    const-string v0, "\u786e\u5b9a"

    iput-object v0, p0, Lcom/t4game/CommBulletin;->left:Ljava/lang/String;

    const-string v0, "\u8fd4\u56de"

    iput-object v0, p0, Lcom/t4game/CommBulletin;->right:Ljava/lang/String;

    iput-byte v1, p0, Lcom/t4game/CommBulletin;->loadState:B

    iput v1, p0, Lcom/t4game/CommBulletin;->cmd:I

    iput-byte v1, p0, Lcom/t4game/CommBulletin;->type:B

    iput-byte p5, p0, Lcom/t4game/CommBulletin;->type:B

    if-ne p5, v3, :cond_0

    const/16 v0, 0x12c

    iput v0, p0, Lcom/t4game/CommBulletin;->w:I

    iput v4, p0, Lcom/t4game/CommBulletin;->h:I

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v0, v0, 0x1e

    iput v0, p0, Lcom/t4game/CommBulletin;->x:I

    const/16 v0, 0x2a

    iput v0, p0, Lcom/t4game/CommBulletin;->y:I

    sget-byte v0, Lcom/t4game/Defaults;->linesOfScreen:B

    iput v0, p0, Lcom/t4game/CommBulletin;->lineOfScreen:I

    :cond_0
    iput-object p1, p0, Lcom/t4game/CommBulletin;->bulletin_title:Ljava/lang/String;

    iput-object p4, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    new-instance v0, Lcom/t4game/TagString;

    const/16 v1, 0x14a

    invoke-direct {v0, p2, p3, v1}, Lcom/t4game/TagString;-><init>(Ljava/lang/String;IS)V

    iput-object v0, p0, Lcom/t4game/CommBulletin;->tag:Lcom/t4game/TagString;

    iget-object v0, p0, Lcom/t4game/CommBulletin;->tag:Lcom/t4game/TagString;

    iget-object v0, v0, Lcom/t4game/TagString;->actionA:[Ljava/util/Vector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/CommBulletin;->tag:Lcom/t4game/TagString;

    iget-object v0, v0, Lcom/t4game/TagString;->actionA:[Ljava/util/Vector;

    array-length v0, v0

    if-nez v0, :cond_2

    :cond_1
    iput v2, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    :cond_2
    iget v0, p0, Lcom/t4game/CommBulletin;->lineOfScreen:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    return-void
.end method

.method private sendActionMessage(I[Ljava/lang/String;Z)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_7

    aget-object v0, p2, v4

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    if-eqz p3, :cond_2

    shr-int/lit8 v1, v0, 0x4

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    iput-boolean v4, v1, Lcom/t4game/GameWorld;->commBulletinOn:Z

    :cond_0
    shr-int/lit8 v1, v0, 0x2

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_9

    move v1, v3

    :goto_0
    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    sget-byte v2, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v2}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    move v0, v1

    :goto_1
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p3}, Lcom/t4game/IoBuffer;->putBoolean(Z)V

    iget-object v0, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    aget-object v1, p2, v3

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/CommBulletin;->cmdlist:[B

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v4}, Lcom/t4game/IoBuffer;->putByte(B)V

    :cond_1
    iget-object v0, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    iget-object v1, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    :goto_2
    return v0

    :cond_2
    shr-int/lit8 v1, v0, 0x5

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    iput-boolean v4, v1, Lcom/t4game/GameWorld;->commBulletinOn:Z

    :cond_3
    shr-int/lit8 v1, v0, 0x3

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_8

    move v1, v3

    :goto_3
    shr-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    sget-byte v2, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v2}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/CommBulletin;->cmdlist:[B

    array-length v1, v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    move v0, v4

    :goto_4
    iget-object v1, p0, Lcom/t4game/CommBulletin;->cmdlist:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v2, p0, Lcom/t4game/CommBulletin;->cmdlist:[B

    aget-byte v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/t4game/IoBuffer;->putByte(B)V

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_4

    :cond_6
    move v0, v4

    goto :goto_2

    :cond_7
    move v0, v4

    goto :goto_2

    :cond_8
    move v1, v4

    goto :goto_3

    :cond_9
    move v1, v4

    goto/16 :goto_0
.end method

.method private sendMessage(ZZ)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    :goto_0
    iget-object v0, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/CommBulletin;->cmdlist:[B

    array-length v1, v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/t4game/CommBulletin;->cmdlist:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v2, p0, Lcom/t4game/CommBulletin;->cmdlist:[B

    aget-byte v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/t4game/IoBuffer;->putByte(B)V

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v2}, Lcom/t4game/IoBuffer;->putByte(B)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    iget v1, p0, Lcom/t4game/CommBulletin;->cmd:I

    iget-object v2, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public commButtetinCloseDeal(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x7

    const/4 v0, 0x0

    iget v1, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const/4 v1, -0x6

    if-eq p1, v1, :cond_0

    const/4 v1, -0x5

    if-eq p1, v1, :cond_0

    if-ne p1, v3, :cond_1

    :cond_0
    move v0, v4

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    invoke-virtual {v0}, Lcom/t4game/GameWorld;->closeCurCommButtetin()V

    :cond_2
    return-void

    :cond_3
    if-ne p1, v3, :cond_1

    move v0, v4

    goto :goto_0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 8

    const/16 v7, 0xf

    iget-byte v0, p0, Lcom/t4game/CommBulletin;->type:B

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/CommBulletin;->type:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    :cond_0
    iget-object v1, p0, Lcom/t4game/CommBulletin;->bulletin_title:Ljava/lang/String;

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/4 v3, 0x4

    const/16 v4, 0x168

    const/16 v5, 0x104

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintDialog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    iget v0, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const v0, 0xffffff

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/t4game/CommBulletin;->left:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/CommBulletin;->left:Ljava/lang/String;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x1e

    const/16 v2, 0xeb

    const/16 v3, 0x78

    const/16 v4, 0x1e

    const/4 v6, 0x1

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    const/4 v0, 0x1

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x1e

    const/16 v2, 0xeb

    const/16 v3, 0x78

    const/16 v4, 0x1e

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    :cond_2
    iget-object v0, p0, Lcom/t4game/CommBulletin;->right:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/CommBulletin;->right:Ljava/lang/String;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0x168

    const/16 v2, 0x96

    sub-int/2addr v1, v2

    const/16 v2, 0xeb

    const/16 v3, 0x78

    const/16 v4, 0x1e

    const/4 v6, 0x1

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    const/4 v0, 0x2

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0x168

    const/16 v2, 0x96

    sub-int/2addr v1, v2

    const/16 v2, 0xeb

    const/16 v3, 0x78

    const/16 v4, 0x1e

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    :cond_3
    iget v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    iget v1, p0, Lcom/t4game/CommBulletin;->lineOfScreen:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-gez v0, :cond_5

    const/4 v0, 0x0

    move v3, v0

    :goto_0
    iget v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    iget v1, p0, Lcom/t4game/CommBulletin;->lineOfScreen:I

    if-ge v0, v1, :cond_6

    iget v0, p0, Lcom/t4game/CommBulletin;->lineOfScreen:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v4, v0

    :goto_1
    iget-object v0, p0, Lcom/t4game/CommBulletin;->tag:Lcom/t4game/TagString;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x14

    iget v2, p0, Lcom/t4game/CommBulletin;->y:I

    add-int/lit8 v2, v2, 0x1c

    add-int/lit8 v2, v2, 0x5

    iget v6, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/t4game/TagString;->paint(IIIILjavax/microedition/lcdui/Graphics;I)I

    iget-object v0, p0, Lcom/t4game/CommBulletin;->tag:Lcom/t4game/TagString;

    invoke-virtual {v0}, Lcom/t4game/TagString;->getTotalLine()I

    move-result v0

    sub-int v1, v4, v3

    sub-int v1, v0, v1

    const/4 v2, 0x1

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x168

    const/16 v5, 0xe

    sub-int/2addr v0, v5

    sub-int/2addr v0, v7

    iget v5, p0, Lcom/t4game/CommBulletin;->y:I

    add-int/lit8 v5, v5, 0x1c

    add-int/lit8 v5, v5, 0x5

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v6, v4

    move v4, v0

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    iget v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    iget v1, p0, Lcom/t4game/CommBulletin;->lineOfScreen:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    move v3, v0

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    move v4, v0

    goto :goto_1

    :cond_7
    iget-byte v0, p0, Lcom/t4game/CommBulletin;->type:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/t4game/CommBulletin;->bulletin_title:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/t4game/DraftingUtil;->paintFloatingDailog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    iget v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    iget v1, p0, Lcom/t4game/CommBulletin;->lineOfScreen:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-gez v0, :cond_8

    const/4 v0, 0x0

    move v3, v0

    :goto_3
    iget v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    iget v1, p0, Lcom/t4game/CommBulletin;->lineOfScreen:I

    if-ge v0, v1, :cond_9

    iget v0, p0, Lcom/t4game/CommBulletin;->lineOfScreen:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v4, v0

    :goto_4
    iget-object v0, p0, Lcom/t4game/CommBulletin;->tag:Lcom/t4game/TagString;

    iget v1, p0, Lcom/t4game/CommBulletin;->x:I

    iget v2, p0, Lcom/t4game/CommBulletin;->y:I

    iget v6, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/t4game/TagString;->paint(IIIILjavax/microedition/lcdui/Graphics;I)I

    iget-object v0, p0, Lcom/t4game/CommBulletin;->tag:Lcom/t4game/TagString;

    invoke-virtual {v0}, Lcom/t4game/TagString;->getTotalLine()I

    move-result v0

    sub-int v1, v4, v3

    sub-int v1, v0, v1

    const/4 v2, 0x1

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x168

    const/16 v5, 0xe

    sub-int/2addr v0, v5

    sub-int/2addr v0, v7

    iget v5, p0, Lcom/t4game/CommBulletin;->y:I

    add-int/lit8 v5, v5, 0x1c

    add-int/lit8 v5, v5, 0x5

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v6, v4

    move v4, v0

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_2

    :cond_8
    iget v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    iget v1, p0, Lcom/t4game/CommBulletin;->lineOfScreen:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    move v3, v0

    goto :goto_3

    :cond_9
    iget v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    move v4, v0

    goto :goto_4

    :cond_a
    iget-byte v0, p0, Lcom/t4game/CommBulletin;->type:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    iget v1, p0, Lcom/t4game/CommBulletin;->lineOfScreen:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-gez v0, :cond_b

    const/4 v0, 0x0

    move v3, v0

    :goto_5
    iget v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    iget v1, p0, Lcom/t4game/CommBulletin;->lineOfScreen:I

    if-ge v0, v1, :cond_c

    iget v0, p0, Lcom/t4game/CommBulletin;->lineOfScreen:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v4, v0

    :goto_6
    iget-object v0, p0, Lcom/t4game/CommBulletin;->tag:Lcom/t4game/TagString;

    iget v1, p0, Lcom/t4game/CommBulletin;->x:I

    iget v2, p0, Lcom/t4game/CommBulletin;->y:I

    iget v6, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    move-object v5, p1

    invoke-virtual/range {v0 .. v6}, Lcom/t4game/TagString;->paint(IIIILjavax/microedition/lcdui/Graphics;I)I

    iget-object v0, p0, Lcom/t4game/CommBulletin;->tag:Lcom/t4game/TagString;

    invoke-virtual {v0}, Lcom/t4game/TagString;->getTotalLine()I

    move-result v0

    sub-int v1, v4, v3

    sub-int v1, v0, v1

    const/4 v2, 0x1

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x168

    const/16 v5, 0xe

    sub-int/2addr v0, v5

    sub-int/2addr v0, v7

    iget v5, p0, Lcom/t4game/CommBulletin;->y:I

    add-int/lit8 v5, v5, 0x1c

    add-int/lit8 v5, v5, 0x5

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v6, v4

    move v4, v0

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_2

    :cond_b
    iget v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    iget v1, p0, Lcom/t4game/CommBulletin;->lineOfScreen:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    move v3, v0

    goto :goto_5

    :cond_c
    iget v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    move v4, v0

    goto :goto_6
.end method

.method public keyEvent(I)V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    if-eq p1, v4, :cond_0

    const/4 v0, -0x3

    if-ne p1, v0, :cond_9

    :cond_0
    iget v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    iget v1, p0, Lcom/t4game/CommBulletin;->lineOfScreen:I

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_8

    iget v0, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    if-eq v0, v4, :cond_7

    iget v0, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/t4game/CommBulletin;->tag:Lcom/t4game/TagString;

    iget-object v0, v0, Lcom/t4game/TagString;->actionA:[Ljava/util/Vector;

    iget v1, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    sub-int/2addr v1, v3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/t4game/CommBulletin;->tag:Lcom/t4game/TagString;

    iget-object v1, v1, Lcom/t4game/TagString;->xyV:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    aget v0, v0, v6

    iget v1, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    iget v2, p0, Lcom/t4game/CommBulletin;->lineOfScreen:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_4

    iget v1, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    iget v2, p0, Lcom/t4game/CommBulletin;->lineOfScreen:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    if-le v0, v7, :cond_3

    :goto_1
    iput v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/t4game/CommBulletin;->lineOfScreen:I

    sub-int/2addr v0, v3

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    if-le v0, v7, :cond_5

    :goto_2
    iput v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/t4game/CommBulletin;->lineOfScreen:I

    sub-int/2addr v0, v3

    goto :goto_2

    :cond_6
    iget v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    goto :goto_0

    :cond_7
    iget v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    goto :goto_0

    :cond_8
    iget v0, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    goto :goto_0

    :cond_9
    const/4 v0, -0x2

    if-eq p1, v0, :cond_a

    const/4 v0, -0x4

    if-ne p1, v0, :cond_11

    :cond_a
    iget v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    iget-object v1, p0, Lcom/t4game/CommBulletin;->tag:Lcom/t4game/TagString;

    invoke-virtual {v1}, Lcom/t4game/TagString;->getTotalLine()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_10

    iget v0, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    if-eq v0, v4, :cond_f

    iget v0, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    iget-object v1, p0, Lcom/t4game/CommBulletin;->tag:Lcom/t4game/TagString;

    iget-object v1, v1, Lcom/t4game/TagString;->actionA:[Ljava/util/Vector;

    array-length v1, v1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_e

    iget-object v0, p0, Lcom/t4game/CommBulletin;->tag:Lcom/t4game/TagString;

    iget-object v0, v0, Lcom/t4game/TagString;->actionA:[Ljava/util/Vector;

    iget v1, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/t4game/CommBulletin;->tag:Lcom/t4game/TagString;

    iget-object v1, v1, Lcom/t4game/TagString;->xyV:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    aget v0, v0, v6

    iget v1, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    iget v2, p0, Lcom/t4game/CommBulletin;->lineOfScreen:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_c

    iget v1, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    add-int/lit8 v1, v1, 0x1

    if-le v0, v1, :cond_b

    iget v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    goto/16 :goto_0

    :cond_b
    iget v0, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    iget-object v0, p0, Lcom/t4game/CommBulletin;->tag:Lcom/t4game/TagString;

    iget-object v1, v0, Lcom/t4game/TagString;->xyV:Ljava/util/Vector;

    iget-object v0, p0, Lcom/t4game/CommBulletin;->tag:Lcom/t4game/TagString;

    iget-object v0, v0, Lcom/t4game/TagString;->actionA:[Ljava/util/Vector;

    iget v2, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    aget v0, v0, v6

    iput v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    goto/16 :goto_0

    :cond_c
    iget v1, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    if-gt v0, v1, :cond_d

    iget v1, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    iget v1, p0, Lcom/t4game/CommBulletin;->lineOfScreen:I

    sub-int/2addr v1, v3

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/CommBulletin;->tag:Lcom/t4game/TagString;

    iget-object v1, v0, Lcom/t4game/TagString;->xyV:Ljava/util/Vector;

    iget-object v0, p0, Lcom/t4game/CommBulletin;->tag:Lcom/t4game/TagString;

    iget-object v0, v0, Lcom/t4game/TagString;->actionA:[Ljava/util/Vector;

    iget v2, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    aget v0, v0, v6

    iput v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    goto/16 :goto_0

    :cond_d
    iget v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    goto/16 :goto_0

    :cond_e
    iget v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    goto/16 :goto_0

    :cond_f
    iget v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/CommBulletin;->tagLineIndex:I

    goto/16 :goto_0

    :cond_10
    iget v0, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    iget-object v1, p0, Lcom/t4game/CommBulletin;->tag:Lcom/t4game/TagString;

    iget-object v1, v1, Lcom/t4game/TagString;->actionA:[Ljava/util/Vector;

    array-length v1, v1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    goto/16 :goto_0

    :cond_11
    const/4 v0, -0x6

    if-eq p1, v0, :cond_12

    const/4 v0, -0x5

    if-ne p1, v0, :cond_16

    :cond_12
    iget v0, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    if-eq v0, v4, :cond_13

    iget-object v0, p0, Lcom/t4game/CommBulletin;->tag:Lcom/t4game/TagString;

    iget-object v0, v0, Lcom/t4game/TagString;->actionStor:Ljava/util/Vector;

    iget v1, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    aget-short v1, v0, v3

    iget-object v0, p0, Lcom/t4game/CommBulletin;->tag:Lcom/t4game/TagString;

    iget-object v0, v0, Lcom/t4game/TagString;->actionParam:Ljava/util/Vector;

    iget v2, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v1, v0, v3}, Lcom/t4game/CommBulletin;->sendActionMessage(I[Ljava/lang/String;Z)Z

    goto/16 :goto_0

    :cond_13
    iget-byte v0, p0, Lcom/t4game/CommBulletin;->type:B

    if-eq v0, v6, :cond_1

    iget-object v0, p0, Lcom/t4game/CommBulletin;->left:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/CommBulletin;->loadState:B

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_14

    iget-object v0, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    iput-boolean v5, v0, Lcom/t4game/GameWorld;->commBulletinOn:Z

    :cond_14
    iget-byte v0, p0, Lcom/t4game/CommBulletin;->loadState:B

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_1

    iget-byte v0, p0, Lcom/t4game/CommBulletin;->loadState:B

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_15

    move v0, v3

    :goto_3
    invoke-direct {p0, v3, v0}, Lcom/t4game/CommBulletin;->sendMessage(ZZ)Z

    goto/16 :goto_0

    :cond_15
    move v0, v5

    goto :goto_3

    :cond_16
    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    if-eq v0, v4, :cond_18

    iget-object v0, p0, Lcom/t4game/CommBulletin;->tag:Lcom/t4game/TagString;

    iget-object v0, v0, Lcom/t4game/TagString;->actionStor:Ljava/util/Vector;

    iget v1, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    aget-short v1, v0, v3

    iget-object v0, p0, Lcom/t4game/CommBulletin;->tag:Lcom/t4game/TagString;

    iget-object v0, v0, Lcom/t4game/TagString;->actionParam:Ljava/util/Vector;

    iget v2, p0, Lcom/t4game/CommBulletin;->tagActionIndex:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v1, v0, v5}, Lcom/t4game/CommBulletin;->sendActionMessage(I[Ljava/lang/String;Z)Z

    :cond_17
    :goto_4
    iget-object v0, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iget-boolean v0, v0, Lcom/t4game/GameScreen;->gotoCommbulletinFromMenu1v:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, v4}, Lcom/t4game/GameWorld;->sendDailyLotteryMessage(B)Z

    goto/16 :goto_0

    :cond_18
    iget-byte v0, p0, Lcom/t4game/CommBulletin;->type:B

    if-eq v0, v6, :cond_1

    iget-object v0, p0, Lcom/t4game/CommBulletin;->right:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-byte v0, p0, Lcom/t4game/CommBulletin;->loadState:B

    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_19

    iget-object v0, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    iput-boolean v5, v0, Lcom/t4game/GameWorld;->commBulletinOn:Z

    :cond_19
    iget-byte v0, p0, Lcom/t4game/CommBulletin;->loadState:B

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_17

    iget-byte v0, p0, Lcom/t4game/CommBulletin;->loadState:B

    shr-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v3, :cond_1a

    move v0, v3

    :goto_5
    invoke-direct {p0, v5, v0}, Lcom/t4game/CommBulletin;->sendMessage(ZZ)Z

    goto :goto_4

    :cond_1a
    move v0, v5

    goto :goto_5
.end method

.method public pointerEvent()Z
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/t4game/PointerUtil;->isPointerOnButton(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    const/4 v1, -0x7

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->keyPressed(I)V

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v2}, Lcom/t4game/PointerUtil;->isPointerOnButton(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/t4game/CommBulletin;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    const/4 v1, -0x6

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->keyPressed(I)V

    move v0, v2

    goto :goto_0
.end method
