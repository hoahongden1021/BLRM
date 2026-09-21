.class public Lcom/t4game/UI_PageLable;
.super Lcom/t4game/UI_Super;


# instance fields
.field gu:Lcom/t4game/GameUi;

.field guFocus:B

.field isFocus:Z

.field lable:Ljava/lang/String;

.field selfFocus:Z

.field showInside:Z

.field public ui:Lcom/t4game/GameUi;


# direct methods
.method public constructor <init>(Lcom/t4game/GameUi;Lcom/t4game/GameUi;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/t4game/UI_Super;-><init>(Lcom/t4game/UI_Super;)V

    iput-boolean v0, p0, Lcom/t4game/UI_PageLable;->showInside:Z

    iput-boolean v0, p0, Lcom/t4game/UI_PageLable;->isFocus:Z

    iput-object p1, p0, Lcom/t4game/UI_PageLable;->ui:Lcom/t4game/GameUi;

    iput-object p2, p0, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    const/16 v0, 0xa

    iput-byte v0, p0, Lcom/t4game/UI_PageLable;->type:B

    return-void
.end method


# virtual methods
.method public clone()Lcom/t4game/UI_Super;
    .locals 3

    new-instance v1, Lcom/t4game/UI_PageLable;

    iget-object v0, p0, Lcom/t4game/UI_PageLable;->ui:Lcom/t4game/GameUi;

    iget-object v2, p0, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    invoke-direct {v1, v0, v2}, Lcom/t4game/UI_PageLable;-><init>(Lcom/t4game/GameUi;Lcom/t4game/GameUi;)V

    invoke-super {p0, v1}, Lcom/t4game/UI_Super;->clone(Lcom/t4game/UI_Super;)V

    iget-object v0, p0, Lcom/t4game/UI_PageLable;->ui:Lcom/t4game/GameUi;

    iput-object v0, v1, Lcom/t4game/UI_PageLable;->ui:Lcom/t4game/GameUi;

    iget-object v0, p0, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->clone()Lcom/t4game/UI_Super;

    move-result-object v0

    check-cast v0, Lcom/t4game/GameUi;

    iput-object v0, v1, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    iget-boolean v0, p0, Lcom/t4game/UI_PageLable;->isFocus:Z

    iput-boolean v0, v1, Lcom/t4game/UI_PageLable;->isFocus:Z

    iget-boolean v0, p0, Lcom/t4game/UI_PageLable;->showInside:Z

    iput-boolean v0, v1, Lcom/t4game/UI_PageLable;->showInside:Z

    iget-boolean v0, p0, Lcom/t4game/UI_PageLable;->selfFocus:Z

    iput-boolean v0, v1, Lcom/t4game/UI_PageLable;->selfFocus:Z

    iget-byte v0, p0, Lcom/t4game/UI_PageLable;->guFocus:B

    iput-byte v0, v1, Lcom/t4game/UI_PageLable;->guFocus:B

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/t4game/UI_PageLable;->clone()Lcom/t4game/UI_Super;

    move-result-object v0

    return-object v0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;S)V
    .locals 11

    iget-short v0, p0, Lcom/t4game/UI_PageLable;->y:S

    sub-int/2addr v0, p2

    int-to-short v10, v0

    const/4 v6, 0x2

    iget-boolean v0, p0, Lcom/t4game/UI_PageLable;->isFocus:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x13

    iget-short v2, p0, Lcom/t4game/UI_PageLable;->x:S

    add-int/lit8 v3, v10, 0x2

    iget-short v4, p0, Lcom/t4game/UI_PageLable;->w:S

    iget-short v5, p0, Lcom/t4game/UI_PageLable;->h:S

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    iget-object v1, p0, Lcom/t4game/UI_PageLable;->lable:Ljava/lang/String;

    iget-short v2, p0, Lcom/t4game/UI_PageLable;->x:S

    add-int/lit8 v3, v10, 0x2

    iget-short v4, p0, Lcom/t4game/UI_PageLable;->w:S

    iget-short v5, p0, Lcom/t4game/UI_PageLable;->h:S

    const/4 v7, -0x1

    const v8, 0xffc700

    const/4 v9, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/t4game/DraftingUtil;->paintStringInScrollTypeInMiddle(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIIIZ)V

    iget-boolean v0, p0, Lcom/t4game/UI_PageLable;->selfFocus:Z

    if-eqz v0, :cond_0

    const v0, 0xffff00

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-object v0, p0, Lcom/t4game/UI_PageLable;->ui:Lcom/t4game/GameUi;

    sget v0, Lcom/t4game/GameUi;->tick:I

    rem-int/lit8 v0, v0, 0x4

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    iget-short v0, p0, Lcom/t4game/UI_PageLable;->x:S

    add-int/lit8 v0, v0, 0x1

    iget-short v1, p0, Lcom/t4game/UI_PageLable;->w:S

    const/4 v2, 0x2

    sub-int v2, v1, v2

    iget-short v3, p0, Lcom/t4game/UI_PageLable;->h:S

    const/4 v4, 0x3

    move v1, v10

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1}, Lcom/t4game/GameUi;->draw(Ljavax/microedition/lcdui/Graphics;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-short v0, p0, Lcom/t4game/UI_PageLable;->x:S

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v10, 0x1

    iget-short v2, p0, Lcom/t4game/UI_PageLable;->w:S

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    iget-short v3, p0, Lcom/t4game/UI_PageLable;->h:S

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    const/4 v4, 0x3

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x12

    iget-short v2, p0, Lcom/t4game/UI_PageLable;->x:S

    add-int/lit8 v3, v10, 0x2

    iget-short v4, p0, Lcom/t4game/UI_PageLable;->w:S

    iget-short v5, p0, Lcom/t4game/UI_PageLable;->h:S

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    iget-object v1, p0, Lcom/t4game/UI_PageLable;->lable:Ljava/lang/String;

    iget-short v2, p0, Lcom/t4game/UI_PageLable;->x:S

    add-int/lit8 v3, v10, 0x2

    iget-short v4, p0, Lcom/t4game/UI_PageLable;->w:S

    iget-short v5, p0, Lcom/t4game/UI_PageLable;->h:S

    const/4 v7, -0x1

    const v8, 0xffffff

    const/4 v9, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/t4game/DraftingUtil;->paintStringInScrollTypeInMiddle(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIIIZ)V

    iget-boolean v0, p0, Lcom/t4game/UI_PageLable;->showInside:Z

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/t4game/UI_PageLable;->lable:Ljava/lang/String;

    iget-short v2, p0, Lcom/t4game/UI_PageLable;->x:S

    add-int/lit8 v3, v10, 0x2

    iget-short v4, p0, Lcom/t4game/UI_PageLable;->w:S

    iget-short v5, p0, Lcom/t4game/UI_PageLable;->h:S

    const/4 v7, -0x1

    const v8, 0xffc700

    const/4 v9, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/t4game/DraftingUtil;->paintStringInScrollTypeInMiddle(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIIIZ)V

    iget-object v0, p0, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1}, Lcom/t4game/GameUi;->draw(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_1
.end method

.method public getUI_Goods(I)Lcom/t4game/UI_GoodsBox;
    .locals 2

    iget-object v0, p0, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object p0

    check-cast p0, Lcom/t4game/UI_GoodsBox;

    check-cast p0, Lcom/t4game/UI_GoodsBox;

    return-object p0
.end method

.method public init(Ljava/io/DataInputStream;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lcom/t4game/UI_Super;->init(Ljava/io/DataInputStream;)V

    const/16 v0, 0x18

    iput-short v0, p0, Lcom/t4game/UI_PageLable;->h:S

    iget-object v0, p0, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1}, Lcom/t4game/GameUi;->init(Ljava/io/DataInputStream;)V

    iget-object v0, p0, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->autoLayout()V
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
    .locals 3

    const/4 v1, -0x2

    const/16 v2, -0x3e8

    iget-boolean v0, p0, Lcom/t4game/UI_PageLable;->selfFocus:Z

    if-eqz v0, :cond_2

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/UI_PageLable;->selfFocus:Z

    iget-object v0, p0, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_PageLable;->guFocus:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->setFocus(B)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    iput v2, v0, Lcom/t4game/GameUi;->lose_focus:I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/UI_PageLable;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_PageLable;->id:B

    invoke-virtual {v0, v1, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1}, Lcom/t4game/GameUi;->keyEvent(I)V

    iget-object v0, p0, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    iget v0, v0, Lcom/t4game/GameUi;->lose_focus:I

    if-eq v0, v2, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/UI_PageLable;->selfFocus:Z

    iget-object v0, p0, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->clearFocus()V

    goto :goto_0

    :cond_3
    if-ne p1, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_PageLable;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_PageLable;->id:B

    invoke-virtual {v0, v1, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    goto :goto_0
.end method

.method public pointEvent(II)B
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v1, 0x24

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    iget-short v1, p0, Lcom/t4game/UI_PageLable;->x:S

    aput v1, v0, v5

    iget-short v1, p0, Lcom/t4game/UI_PageLable;->y:S

    aput v1, v0, v4

    iget-short v1, p0, Lcom/t4game/UI_PageLable;->x:S

    iget-short v2, p0, Lcom/t4game/UI_PageLable;->w:S

    add-int/2addr v1, v2

    aput v1, v0, v7

    iget-short v1, p0, Lcom/t4game/UI_PageLable;->y:S

    iget-short v2, p0, Lcom/t4game/UI_PageLable;->h:S

    add-int/2addr v1, v2

    aput v1, v0, v8

    const/4 v1, 0x4

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    iget-short v2, v2, Lcom/t4game/GameUi;->x:S

    aput v2, v1, v5

    iget-object v2, p0, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    iget-short v2, v2, Lcom/t4game/GameUi;->y:S

    aput v2, v1, v4

    iget-object v2, p0, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    iget-short v2, v2, Lcom/t4game/GameUi;->x:S

    iget-object v3, p0, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    iget-short v3, v3, Lcom/t4game/GameUi;->w:S

    add-int/2addr v2, v3

    aput v2, v1, v7

    iget-object v2, p0, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    iget-short v2, v2, Lcom/t4game/GameUi;->y:S

    iget-object v3, p0, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    iget-short v3, v3, Lcom/t4game/GameUi;->h:S

    add-int/2addr v2, v3

    aput v2, v1, v8

    invoke-static {p1, p2, v0}, Lcom/t4game/PointerUtil;->isPointerInArea(II[I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/t4game/UI_PageLable;->selfFocus:Z

    if-nez v0, :cond_a

    iget-byte v0, p0, Lcom/t4game/UI_PageLable;->id:B

    move v1, v0

    :goto_1
    iput-boolean v4, p0, Lcom/t4game/UI_PageLable;->isFocus:Z

    iput-boolean v4, p0, Lcom/t4game/UI_PageLable;->selfFocus:Z

    iput-boolean v4, p0, Lcom/t4game/UI_PageLable;->showInside:Z

    iget-object v0, p0, Lcom/t4game/UI_PageLable;->ui:Lcom/t4game/GameUi;

    iget-byte v2, p0, Lcom/t4game/UI_PageLable;->id:B

    invoke-virtual {v0, v2}, Lcom/t4game/GameUi;->setFocus(B)V

    iget-object v0, p0, Lcom/t4game/UI_PageLable;->ui:Lcom/t4game/GameUi;

    iget-object v0, v0, Lcom/t4game/GameUi;->UIHash:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :cond_1
    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/UI_Super;

    iget-byte v3, v0, Lcom/t4game/UI_Super;->type:B

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    iget-byte v3, v0, Lcom/t4game/UI_Super;->id:B

    iget-byte v4, p0, Lcom/t4game/UI_PageLable;->id:B

    if-eq v3, v4, :cond_1

    check-cast v0, Lcom/t4game/UI_PageLable;

    iput-boolean v5, v0, Lcom/t4game/UI_PageLable;->showInside:Z

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/t4game/PointerUtil;->clearReleasePointer()V

    move v0, v1

    goto/16 :goto_0

    :cond_3
    invoke-static {p1, p2, v1}, Lcom/t4game/PointerUtil;->isPointerInArea(II[I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/t4game/UI_PageLable;->showInside:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/t4game/UI_PageLable;->selfFocus:Z

    if-eqz v0, :cond_6

    iput-boolean v4, p0, Lcom/t4game/UI_PageLable;->isFocus:Z

    iget-object v0, p0, Lcom/t4game/UI_PageLable;->ui:Lcom/t4game/GameUi;

    iget-byte v0, v0, Lcom/t4game/GameUi;->focus:B

    iget-byte v1, p0, Lcom/t4game/UI_PageLable;->id:B

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/t4game/UI_PageLable;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_PageLable;->id:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->setFocus(B)V

    :cond_4
    iget-object v0, p0, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1, p2}, Lcom/t4game/GameUi;->pointEvent(II)B

    move-result v0

    :cond_5
    :goto_3
    iput-boolean v5, p0, Lcom/t4game/UI_PageLable;->selfFocus:Z

    goto/16 :goto_0

    :cond_6
    iput-boolean v4, p0, Lcom/t4game/UI_PageLable;->isFocus:Z

    iget-object v0, p0, Lcom/t4game/UI_PageLable;->ui:Lcom/t4game/GameUi;

    iget-byte v0, v0, Lcom/t4game/GameUi;->focus:B

    iget-byte v1, p0, Lcom/t4game/UI_PageLable;->id:B

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/t4game/UI_PageLable;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_PageLable;->id:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->setFocus(B)V

    :cond_7
    iget-object v0, p0, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1, p2}, Lcom/t4game/GameUi;->pointEvent(II)B

    move-result v0

    if-gez v0, :cond_5

    move v0, v6

    goto :goto_3

    :cond_8
    move v0, v6

    goto :goto_3

    :cond_9
    move v0, v6

    goto/16 :goto_0

    :cond_a
    move v1, v6

    goto/16 :goto_1
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/t4game/UI_PageLable;->lable:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->release()V

    iput-object v1, p0, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    return-void
.end method

.method public setFocus(Z)V
    .locals 2

    const/4 v1, 0x1

    iput-boolean p1, p0, Lcom/t4game/UI_PageLable;->isFocus:Z

    iget-boolean v0, p0, Lcom/t4game/UI_PageLable;->isFocus:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/t4game/UI_PageLable;->showInside:Z

    iput-boolean v1, p0, Lcom/t4game/UI_PageLable;->selfFocus:Z

    :cond_0
    iget-object v0, p0, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_PageLable;->guFocus:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/UI_PageLable;->gu:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_PageLable;->guFocus:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/t4game/UI_Super;->setFocus(Z)V

    :cond_1
    return-void
.end method
