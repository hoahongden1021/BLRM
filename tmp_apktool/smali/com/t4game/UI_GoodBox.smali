.class public Lcom/t4game/UI_GoodBox;
.super Lcom/t4game/UI_Super;


# static fields
.field static final topAletIntroMaxTick:B = 0x28t

.field static final topAletIntroMinTick:B = 0x1t


# instance fields
.field GoodItem:Lcom/t4game/RoleGoods;

.field gs:Lcom/t4game/GameScreen;

.field isFocus:Z

.field isOpen:Z

.field subType:B

.field private topAletIntroTick:B

.field private ui:Lcom/t4game/GameUi;


# direct methods
.method public constructor <init>(Lcom/t4game/GameUi;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/t4game/UI_Super;-><init>(Lcom/t4game/UI_Super;)V

    iput-object v1, p0, Lcom/t4game/UI_GoodBox;->GoodItem:Lcom/t4game/RoleGoods;

    iput-boolean v0, p0, Lcom/t4game/UI_GoodBox;->isFocus:Z

    iput-boolean v0, p0, Lcom/t4game/UI_GoodBox;->isOpen:Z

    iput-byte v0, p0, Lcom/t4game/UI_GoodBox;->subType:B

    iput-object v1, p0, Lcom/t4game/UI_GoodBox;->gs:Lcom/t4game/GameScreen;

    iput-byte v0, p0, Lcom/t4game/UI_GoodBox;->topAletIntroTick:B

    iput-object p1, p0, Lcom/t4game/UI_GoodBox;->ui:Lcom/t4game/GameUi;

    const/4 v0, 0x7

    iput-byte v0, p0, Lcom/t4game/UI_GoodBox;->type:B

    return-void
.end method

.method private testShowTopAletIntro()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-byte v1, p0, Lcom/t4game/UI_GoodBox;->topAletIntroTick:B

    if-lt v1, v3, :cond_0

    iget-byte v1, p0, Lcom/t4game/UI_GoodBox;->topAletIntroTick:B

    const/16 v2, 0x28

    if-gt v1, v2, :cond_0

    move v0, v3

    :cond_0
    return v0
.end method

.method private topAletIntroTick()V
    .locals 2

    iget-byte v0, p0, Lcom/t4game/UI_GoodBox;->topAletIntroTick:B

    const/16 v1, 0x2a

    if-ge v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/UI_GoodBox;->topAletIntroTick:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_GoodBox;->topAletIntroTick:B

    :cond_0
    return-void
.end method


# virtual methods
.method protected clone()Lcom/t4game/UI_Super;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/t4game/UI_GoodBox;->clone()Lcom/t4game/UI_Super;

    move-result-object v0

    return-object v0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;S)V
    .locals 4

    invoke-direct {p0}, Lcom/t4game/UI_GoodBox;->topAletIntroTick()V

    iget-boolean v0, p0, Lcom/t4game/UI_GoodBox;->isOpen:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/UI_GoodBox;->GoodItem:Lcom/t4game/RoleGoods;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/UI_GoodBox;->gs:Lcom/t4game/GameScreen;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_GoodBox;->gs:Lcom/t4game/GameScreen;

    iget-short v1, p0, Lcom/t4game/UI_GoodBox;->x:S

    add-int/lit8 v1, v1, 0x2

    iget-short v2, p0, Lcom/t4game/UI_GoodBox;->y:S

    sub-int/2addr v2, p2

    iget-object v3, p0, Lcom/t4game/UI_GoodBox;->GoodItem:Lcom/t4game/RoleGoods;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/t4game/GameScreen;->paintGoodsIcon(IILjavax/microedition/lcdui/Graphics;Lcom/t4game/RoleGoods;)V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/t4game/UI_GoodBox;->isFocus:Z

    if-eqz v0, :cond_1

    iget-short v0, p0, Lcom/t4game/UI_GoodBox;->x:S

    add-int/lit8 v0, v0, 0x1

    iget-short v1, p0, Lcom/t4game/UI_GoodBox;->y:S

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/t4game/DraftingUtil;->paintFunctionBlockSelect(IILjavax/microedition/lcdui/Graphics;)V

    invoke-direct {p0}, Lcom/t4game/UI_GoodBox;->testShowTopAletIntro()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/UI_GoodBox;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/UI_GoodBox;->GoodItem:Lcom/t4game/RoleGoods;

    iget-short v2, p0, Lcom/t4game/UI_GoodBox;->x:S

    add-int/lit8 v2, v2, 0x14

    iget-short v3, p0, Lcom/t4game/UI_GoodBox;->y:S

    sub-int/2addr v3, p2

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/t4game/GameScreen;->paintGoodsName(Lcom/t4game/RoleGoods;IILjavax/microedition/lcdui/Graphics;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/t4game/UI_GoodBox;->gs:Lcom/t4game/GameScreen;

    if-eqz v0, :cond_0

    iget-short v0, p0, Lcom/t4game/UI_GoodBox;->x:S

    iget-short v1, p0, Lcom/t4game/UI_GoodBox;->y:S

    sub-int/2addr v1, p2

    invoke-static {v0, v1, p1}, Lcom/t4game/DraftingUtil;->paintIconBlock(IILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/t4game/UI_GoodBox;->gs:Lcom/t4game/GameScreen;

    if-eqz v0, :cond_0

    iget-short v0, p0, Lcom/t4game/UI_GoodBox;->x:S

    iget-short v1, p0, Lcom/t4game/UI_GoodBox;->y:S

    sub-int/2addr v1, p2

    invoke-static {v0, v1, p1}, Lcom/t4game/DraftingUtil;->paintIconBlockNoOpen(IILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0
.end method

.method public init(Ljava/io/DataInputStream;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lcom/t4game/UI_Super;->init(Ljava/io/DataInputStream;)V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/t4game/UI_GoodBox;->isFocus:Z

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/t4game/UI_GoodBox;->isOpen:Z

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_GoodBox;->subType:B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public keyEvent(I)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/UI_GoodBox;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_GoodBox;->id:B

    invoke-virtual {v0, v1, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    return-void
.end method

.method public pointEvent(II)B
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-short v3, p0, Lcom/t4game/UI_GoodBox;->x:S

    aput v3, v1, v2

    const/4 v2, 0x1

    iget-short v3, p0, Lcom/t4game/UI_GoodBox;->y:S

    iget-object v4, p0, Lcom/t4game/UI_GoodBox;->ui:Lcom/t4game/GameUi;

    iget-short v4, v4, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x2

    iget-short v3, p0, Lcom/t4game/UI_GoodBox;->x:S

    iget-short v4, p0, Lcom/t4game/UI_GoodBox;->w:S

    add-int/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x3

    iget-short v3, p0, Lcom/t4game/UI_GoodBox;->y:S

    iget-short v4, p0, Lcom/t4game/UI_GoodBox;->h:S

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/t4game/UI_GoodBox;->ui:Lcom/t4game/GameUi;

    iget-short v4, v4, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v3, v4

    aput v3, v1, v2

    invoke-static {p1, p2, v1}, Lcom/t4game/PointerUtil;->isPointerInArea(II[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_GoodBox;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_GoodBox;->id:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->setFocus(B)V

    iget-byte v0, p0, Lcom/t4game/UI_GoodBox;->id:B

    invoke-static {}, Lcom/t4game/PointerUtil;->clearReleasePointer()V

    :cond_0
    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/UI_GoodBox;->GoodItem:Lcom/t4game/RoleGoods;

    return-void
.end method

.method public setFocus(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/t4game/UI_GoodBox;->isFocus:Z

    iget-boolean v0, p0, Lcom/t4game/UI_GoodBox;->isFocus:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/UI_GoodBox;->topAletIntroTick:B

    :cond_0
    return-void
.end method

.method public setGameScreen(Lcom/t4game/GameScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/UI_GoodBox;->gs:Lcom/t4game/GameScreen;

    return-void
.end method
