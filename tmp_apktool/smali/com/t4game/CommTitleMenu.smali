.class public Lcom/t4game/CommTitleMenu;
.super Ljava/lang/Object;


# static fields
.field static final w:I


# instance fields
.field IndexEnd:I

.field IndexStart:I

.field cmd:I

.field cmdlist:[B

.field content:[Ljava/lang/String;

.field fouce:I

.field gameworld:Lcom/t4game/GameWorld;

.field hight:I

.field isConfirmed:Z

.field lableL:I

.field left:Ljava/lang/String;

.field leng:I

.field linesOfScreen:I

.field loadState:B

.field menu:[Ljava/lang/String;

.field numFlag:I

.field right:Ljava/lang/String;

.field tickTime:I

.field timeOn:I

.field x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    sput v0, Lcom/t4game/CommTitleMenu;->w:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/t4game/GameWorld;[Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\u786e\u5b9a"

    iput-object v0, p0, Lcom/t4game/CommTitleMenu;->left:Ljava/lang/String;

    const-string v0, "\u8fd4\u56de"

    iput-object v0, p0, Lcom/t4game/CommTitleMenu;->right:Ljava/lang/String;

    iput-byte v2, p0, Lcom/t4game/CommTitleMenu;->loadState:B

    iput v2, p0, Lcom/t4game/CommTitleMenu;->cmd:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/CommTitleMenu;->menu:[Ljava/lang/String;

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget v1, Lcom/t4game/CommTitleMenu;->w:I

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/CommTitleMenu;->x:I

    iput v2, p0, Lcom/t4game/CommTitleMenu;->fouce:I

    iput v2, p0, Lcom/t4game/CommTitleMenu;->lableL:I

    iput-boolean v2, p0, Lcom/t4game/CommTitleMenu;->isConfirmed:Z

    iput-object p2, p0, Lcom/t4game/CommTitleMenu;->gameworld:Lcom/t4game/GameWorld;

    iput-object p3, p0, Lcom/t4game/CommTitleMenu;->menu:[Ljava/lang/String;

    array-length v0, p3

    iput v0, p0, Lcom/t4game/CommTitleMenu;->leng:I

    sget v0, Lcom/t4game/CommTitleMenu;->w:I

    const/16 v1, 0xa

    sub-int/2addr v0, v1

    sget-object v1, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {p1, v0, v1}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/CommTitleMenu;->content:[Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/CommTitleMenu;->content:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/t4game/CommTitleMenu;->lableL:I

    sget-byte v0, Lcom/t4game/Defaults;->linesOfScreen:B

    iget v1, p0, Lcom/t4game/CommTitleMenu;->lableL:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/CommTitleMenu;->linesOfScreen:I

    iget v0, p0, Lcom/t4game/CommTitleMenu;->leng:I

    iget v1, p0, Lcom/t4game/CommTitleMenu;->lableL:I

    add-int/2addr v0, v1

    sget-byte v1, Lcom/t4game/Defaults;->linesOfScreen:B

    if-lt v0, v1, :cond_0

    sget-byte v0, Lcom/t4game/Defaults;->linesOfScreen:B

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/CommTitleMenu;->hight:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/t4game/CommTitleMenu;->leng:I

    iget v1, p0, Lcom/t4game/CommTitleMenu;->lableL:I

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/CommTitleMenu;->hight:I

    goto :goto_0
.end method

.method private sendMessage(ZZ)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/t4game/CommTitleMenu;->gameworld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/CommTitleMenu;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/t4game/CommTitleMenu;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    :goto_0
    iget-object v0, p0, Lcom/t4game/CommTitleMenu;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget v1, p0, Lcom/t4game/CommTitleMenu;->fouce:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/CommTitleMenu;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/CommTitleMenu;->cmdlist:[B

    array-length v1, v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/t4game/CommTitleMenu;->cmdlist:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/t4game/CommTitleMenu;->gameworld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v2, p0, Lcom/t4game/CommTitleMenu;->cmdlist:[B

    aget-byte v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/t4game/IoBuffer;->putByte(B)V

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/t4game/CommTitleMenu;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v2}, Lcom/t4game/IoBuffer;->putByte(B)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/CommTitleMenu;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    iget v1, p0, Lcom/t4game/CommTitleMenu;->cmd:I

    iget-object v2, p0, Lcom/t4game/CommTitleMenu;->gameworld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 11

    iget v0, p0, Lcom/t4game/CommTitleMenu;->leng:I

    iget v1, p0, Lcom/t4game/CommTitleMenu;->linesOfScreen:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/t4game/CommTitleMenu;->fouce:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/t4game/CommTitleMenu;->linesOfScreen:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/t4game/CommTitleMenu;->fouce:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/t4game/CommTitleMenu;->linesOfScreen:I

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput v0, p0, Lcom/t4game/CommTitleMenu;->IndexStart:I

    iget v0, p0, Lcom/t4game/CommTitleMenu;->IndexStart:I

    iget v1, p0, Lcom/t4game/CommTitleMenu;->linesOfScreen:I

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput v0, p0, Lcom/t4game/CommTitleMenu;->IndexEnd:I

    :goto_0
    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    iget v1, p0, Lcom/t4game/CommTitleMenu;->hight:I

    sub-int/2addr v0, v1

    div-int/lit8 v3, v0, 0x2

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/4 v1, 0x6

    iget v2, p0, Lcom/t4game/CommTitleMenu;->x:I

    sget v4, Lcom/t4game/CommTitleMenu;->w:I

    iget v5, p0, Lcom/t4game/CommTitleMenu;->hight:I

    add-int/lit8 v5, v5, 0xa

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/t4game/CommTitleMenu;->content:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/t4game/CommTitleMenu;->content:[Ljava/lang/String;

    aget-object v4, v1, v0

    iget v1, p0, Lcom/t4game/CommTitleMenu;->x:I

    add-int/lit8 v5, v1, 0x5

    add-int/lit8 v1, v3, 0x5

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v2, v0

    add-int v6, v1, v2

    sget v7, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v8, 0x0

    const v9, 0xffc700

    move-object v10, p1

    invoke-static/range {v4 .. v10}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/CommTitleMenu;->IndexStart:I

    iget v0, p0, Lcom/t4game/CommTitleMenu;->linesOfScreen:I

    iput v0, p0, Lcom/t4game/CommTitleMenu;->IndexEnd:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/CommTitleMenu;->IndexStart:I

    iget v0, p0, Lcom/t4game/CommTitleMenu;->leng:I

    iput v0, p0, Lcom/t4game/CommTitleMenu;->IndexEnd:I

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/t4game/CommTitleMenu;->IndexStart:I

    :goto_2
    iget v1, p0, Lcom/t4game/CommTitleMenu;->IndexEnd:I

    if-ge v0, v1, :cond_4

    iget v1, p0, Lcom/t4game/CommTitleMenu;->fouce:I

    if-ne v1, v0, :cond_3

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v4

    const/16 v5, 0xa

    iget v1, p0, Lcom/t4game/CommTitleMenu;->x:I

    add-int/lit8 v6, v1, 0x5

    add-int/lit8 v1, v3, 0x5

    iget v2, p0, Lcom/t4game/CommTitleMenu;->IndexStart:I

    sub-int v2, v0, v2

    iget v7, p0, Lcom/t4game/CommTitleMenu;->lableL:I

    add-int/2addr v2, v7

    sget v7, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v2, v7

    add-int v7, v1, v2

    sget v1, Lcom/t4game/CommTitleMenu;->w:I

    const/16 v2, 0xa

    sub-int v8, v1, v2

    sget v9, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v4 .. v9}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/t4game/CommTitleMenu;->IndexStart:I

    sub-int v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/CommTitleMenu;->menu:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v1, p0, Lcom/t4game/CommTitleMenu;->x:I

    add-int/lit8 v5, v1, 0x5

    add-int/lit8 v1, v3, 0x5

    iget v2, p0, Lcom/t4game/CommTitleMenu;->IndexStart:I

    sub-int v2, v0, v2

    iget v6, p0, Lcom/t4game/CommTitleMenu;->lableL:I

    add-int/2addr v2, v6

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v2, v6

    add-int v6, v1, v2

    sget v7, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v8, 0x0

    const v9, 0xf9df00

    move-object v10, p1

    invoke-static/range {v4 .. v10}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/t4game/CommTitleMenu;->IndexStart:I

    sub-int v2, v0, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/CommTitleMenu;->menu:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget v1, p0, Lcom/t4game/CommTitleMenu;->x:I

    add-int/lit8 v5, v1, 0x5

    add-int/lit8 v1, v3, 0x5

    iget v2, p0, Lcom/t4game/CommTitleMenu;->IndexStart:I

    sub-int v2, v0, v2

    iget v6, p0, Lcom/t4game/CommTitleMenu;->lableL:I

    add-int/2addr v2, v6

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v2, v6

    add-int v6, v1, v2

    sget v7, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v8, 0x0

    const v9, 0xffffff

    move-object v10, p1

    invoke-static/range {v4 .. v10}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_3

    :cond_4
    return-void
.end method

.method public keyEvent(I)V
    .locals 5

    const/16 v1, 0x31

    const/4 v4, -0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-lt p1, v1, :cond_b

    const/16 v0, 0x39

    if-gt p1, v0, :cond_b

    sub-int v0, p1, v1

    iget v1, p0, Lcom/t4game/CommTitleMenu;->leng:I

    if-ge v0, v1, :cond_b

    iget v1, p0, Lcom/t4game/CommTitleMenu;->linesOfScreen:I

    if-ge v0, v1, :cond_b

    iget v1, p0, Lcom/t4game/CommTitleMenu;->IndexStart:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/CommTitleMenu;->fouce:I

    move v0, v4

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/t4game/CommTitleMenu;->fouce:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/t4game/CommTitleMenu;->fouce:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/t4game/CommTitleMenu;->fouce:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lcom/t4game/CommTitleMenu;->leng:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/t4game/CommTitleMenu;->fouce:I

    goto :goto_1

    :cond_2
    const/4 v1, -0x2

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/t4game/CommTitleMenu;->fouce:I

    iget v1, p0, Lcom/t4game/CommTitleMenu;->leng:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/t4game/CommTitleMenu;->fouce:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/CommTitleMenu;->fouce:I

    goto :goto_1

    :cond_3
    iput v3, p0, Lcom/t4game/CommTitleMenu;->fouce:I

    goto :goto_1

    :cond_4
    const/4 v1, -0x6

    if-eq v0, v1, :cond_5

    if-ne v0, v4, :cond_8

    :cond_5
    iget-object v0, p0, Lcom/t4game/CommTitleMenu;->left:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/CommTitleMenu;->loadState:B

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/t4game/CommTitleMenu;->gameworld:Lcom/t4game/GameWorld;

    iput-boolean v3, v0, Lcom/t4game/GameWorld;->commTitleMenuOn:Z

    iget-object v0, p0, Lcom/t4game/CommTitleMenu;->gameworld:Lcom/t4game/GameWorld;

    iget v1, v0, Lcom/t4game/GameWorld;->numFlag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/t4game/GameWorld;->numFlag:I

    :cond_6
    iget-byte v0, p0, Lcom/t4game/CommTitleMenu;->loadState:B

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-byte v0, p0, Lcom/t4game/CommTitleMenu;->loadState:B

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_7

    move v0, v2

    :goto_2
    invoke-direct {p0, v2, v0}, Lcom/t4game/CommTitleMenu;->sendMessage(ZZ)Z

    goto :goto_1

    :cond_7
    move v0, v3

    goto :goto_2

    :cond_8
    const/4 v1, -0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/CommTitleMenu;->right:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/CommTitleMenu;->loadState:B

    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/t4game/CommTitleMenu;->gameworld:Lcom/t4game/GameWorld;

    iput-boolean v3, v0, Lcom/t4game/GameWorld;->commTitleMenuOn:Z

    iget-object v0, p0, Lcom/t4game/CommTitleMenu;->gameworld:Lcom/t4game/GameWorld;

    iget v1, v0, Lcom/t4game/GameWorld;->numFlag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/t4game/GameWorld;->numFlag:I

    :cond_9
    iget-byte v0, p0, Lcom/t4game/CommTitleMenu;->loadState:B

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_0

    iget-byte v0, p0, Lcom/t4game/CommTitleMenu;->loadState:B

    shr-int/lit8 v0, v0, 0x1

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v2, :cond_a

    move v0, v2

    :goto_3
    invoke-direct {p0, v3, v0}, Lcom/t4game/CommTitleMenu;->sendMessage(ZZ)Z

    goto :goto_1

    :cond_a
    move v0, v3

    goto :goto_3

    :cond_b
    move v0, p1

    goto/16 :goto_0
.end method

.method public pointerEvent()V
    .locals 4

    const/4 v3, 0x1

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    iget v1, p0, Lcom/t4game/CommTitleMenu;->hight:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/t4game/CommTitleMenu;->leng:I

    sub-int/2addr v1, v3

    int-to-byte v1, v1

    iget v1, p0, Lcom/t4game/CommTitleMenu;->x:I

    add-int/lit8 v1, v1, 0x5

    sput v1, Lcom/t4game/PointerUtil;->s_iMenuX:I

    iget v1, p0, Lcom/t4game/CommTitleMenu;->lableL:I

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    sput v0, Lcom/t4game/PointerUtil;->s_iMenuY:I

    sget v0, Lcom/t4game/CommTitleMenu;->w:I

    sput v0, Lcom/t4game/PointerUtil;->s_iMenuWidth:I

    sget v0, Lcom/t4game/Defaults;->sfh:I

    sput v0, Lcom/t4game/PointerUtil;->s_iMenuSpace:I

    iget v0, p0, Lcom/t4game/CommTitleMenu;->IndexEnd:I

    iget v1, p0, Lcom/t4game/CommTitleMenu;->IndexStart:I

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v0, v1

    sput v0, Lcom/t4game/PointerUtil;->s_iMenuHeight:I

    iget v0, p0, Lcom/t4game/CommTitleMenu;->IndexStart:I

    sput v0, Lcom/t4game/PointerUtil;->s_iMenuScrollIndex:I

    invoke-static {v3}, Lcom/t4game/PointerUtil;->getMenuIndex(Z)B

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    int-to-byte v1, v0

    iput v1, p0, Lcom/t4game/CommTitleMenu;->fouce:I

    :cond_0
    if-ltz v0, :cond_1

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerConfirmInMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/t4game/CommTitleMenu;->isConfirmed:Z

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/CommTitleMenu;->isConfirmed:Z

    goto :goto_0
.end method
