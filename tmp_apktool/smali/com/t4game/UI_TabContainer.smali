.class public Lcom/t4game/UI_TabContainer;
.super Lcom/t4game/UI_Super;


# direct methods
.method public constructor <init>(Lcom/t4game/GameUi;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/t4game/UI_Super;-><init>(Lcom/t4game/UI_Super;)V

    const/4 v0, -0x2

    iput-byte v0, p0, Lcom/t4game/UI_TabContainer;->type:B

    return-void
.end method


# virtual methods
.method public addChild(Lcom/t4game/UI_Super;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/t4game/UI_Super;->addChild(Lcom/t4game/UI_Super;)V

    check-cast p1, Lcom/t4game/UI_PageLable;

    iget-object v0, p1, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    invoke-super {p0, v0}, Lcom/t4game/UI_Super;->addChild(Lcom/t4game/UI_Super;)V

    iget-short v0, p0, Lcom/t4game/UI_TabContainer;->w:S

    iget-object v1, p1, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    iget-short v1, v1, Lcom/t4game/GameUi;->w:S

    if-le v0, v1, :cond_1

    iget-short v0, p0, Lcom/t4game/UI_TabContainer;->w:S

    :goto_0
    iput-short v0, p0, Lcom/t4game/UI_TabContainer;->w:S

    iget-short v0, p1, Lcom/t4game/UI_PageLable;->h:S

    iget-object v1, p1, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    iget-short v1, v1, Lcom/t4game/GameUi;->h:S

    add-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_TabContainer;->h:S

    if-le v1, v0, :cond_0

    iget-short v0, p0, Lcom/t4game/UI_TabContainer;->h:S

    :cond_0
    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_TabContainer;->h:S

    return-void

    :cond_1
    iget-object v0, p1, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    iget-short v0, v0, Lcom/t4game/GameUi;->w:S

    goto :goto_0
.end method

.method public autoLayout()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/t4game/UI_TabContainer;->childList:Ljava/util/Vector;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/UI_TabContainer;->childList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    shr-int/lit8 v1, v0, 0x1

    new-array v2, v1, [Lcom/t4game/UI_Super;

    new-array v3, v1, [Lcom/t4game/UI_Super;

    move v4, v6

    :goto_1
    if-ge v4, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/UI_TabContainer;->childList:Ljava/util/Vector;

    shl-int/lit8 v5, v4, 0x1

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/UI_Super;

    aput-object v0, v2, v4

    iget-object v0, p0, Lcom/t4game/UI_TabContainer;->childList:Ljava/util/Vector;

    shl-int/lit8 v5, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/UI_Super;

    aput-object v0, v3, v4

    add-int/lit8 v0, v4, 0x1

    int-to-byte v0, v0

    move v4, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    aget-object v1, v2, v6

    invoke-virtual {p0, v0, v1, v2, v6}, Lcom/t4game/UI_TabContainer;->setAlignment(BLcom/t4game/UI_Super;[Lcom/t4game/UI_Super;S)V

    const/4 v0, 0x4

    aget-object v1, v2, v6

    invoke-virtual {p0, v0, v1, v2, v6}, Lcom/t4game/UI_TabContainer;->setAlignment(BLcom/t4game/UI_Super;[Lcom/t4game/UI_Super;S)V

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p0, v2, v6}, Lcom/t4game/UI_TabContainer;->setAlignment(BLcom/t4game/UI_Super;[Lcom/t4game/UI_Super;S)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p0, v2, v6}, Lcom/t4game/UI_TabContainer;->setAlignment(BLcom/t4game/UI_Super;[Lcom/t4game/UI_Super;S)V

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p0, v3, v6}, Lcom/t4game/UI_TabContainer;->setAlignment(BLcom/t4game/UI_Super;[Lcom/t4game/UI_Super;S)V

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p0, v3, v6}, Lcom/t4game/UI_TabContainer;->setAlignment(BLcom/t4game/UI_Super;[Lcom/t4game/UI_Super;S)V

    invoke-super {p0}, Lcom/t4game/UI_Super;->autoLayout()V

    goto :goto_0
.end method

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

    invoke-virtual {p0}, Lcom/t4game/UI_TabContainer;->clone()Lcom/t4game/UI_Super;

    move-result-object v0

    return-object v0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;S)V
    .locals 7

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/4 v1, 0x7

    iget-short v2, p0, Lcom/t4game/UI_TabContainer;->x:S

    iget-short v3, p0, Lcom/t4game/UI_Super;->y:S

    add-int/lit8 v3, v3, 0x18

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    iget-short v4, p0, Lcom/t4game/UI_TabContainer;->w:S

    iget-short v5, p0, Lcom/t4game/UI_TabContainer;->h:S

    const/16 v6, 0x18

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x2

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/t4game/UI_TabContainer;->childList:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_TabContainer;->childList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_TabContainer;->childList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/UI_Super;

    iget-short v2, p0, Lcom/t4game/UI_TabContainer;->focusY:S

    invoke-virtual {v0, p1, v2}, Lcom/t4game/UI_Super;->draw(Ljavax/microedition/lcdui/Graphics;S)V

    add-int/lit8 v0, v1, 0x2

    int-to-byte v0, v0

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public keyEvent(I)V
    .locals 0

    return-void
.end method

.method public pointEvent(II)B
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x4

    new-array v0, v0, [I

    iget-short v1, p0, Lcom/t4game/UI_TabContainer;->x:S

    aput v1, v0, v4

    const/4 v1, 0x1

    iget-short v2, p0, Lcom/t4game/UI_TabContainer;->y:S

    aput v2, v0, v1

    const/4 v1, 0x2

    iget-short v2, p0, Lcom/t4game/UI_TabContainer;->x:S

    iget-short v3, p0, Lcom/t4game/UI_TabContainer;->w:S

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-short v2, p0, Lcom/t4game/UI_TabContainer;->y:S

    iget-short v3, p0, Lcom/t4game/UI_TabContainer;->h:S

    add-int/2addr v2, v3

    aput v2, v0, v1

    invoke-static {p1, p2, v0}, Lcom/t4game/PointerUtil;->isPointerInArea(II[I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setFocus(Z)V
    .locals 0

    return-void
.end method
