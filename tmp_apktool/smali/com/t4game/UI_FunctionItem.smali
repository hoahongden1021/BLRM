.class public Lcom/t4game/UI_FunctionItem;
.super Lcom/t4game/UI_Super;


# instance fields
.field fouceBack:Z

.field fouceBound:Z

.field fouceFont:Z

.field isFocus:Z

.field showFocusBackColor:B

.field showImageIndex:B

.field showText:Ljava/lang/String;

.field showTextColor:B

.field showTextFocusBoxColor:B

.field showTextFocusColor:B

.field showType:B

.field private ui:Lcom/t4game/GameUi;


# direct methods
.method public constructor <init>(Lcom/t4game/GameUi;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/t4game/UI_Super;-><init>(Lcom/t4game/UI_Super;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/UI_FunctionItem;->isFocus:Z

    iput-object p1, p0, Lcom/t4game/UI_FunctionItem;->ui:Lcom/t4game/GameUi;

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/UI_FunctionItem;->type:B

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

    invoke-virtual {p0}, Lcom/t4game/UI_FunctionItem;->clone()Lcom/t4game/UI_Super;

    move-result-object v0

    return-object v0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;S)V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x1

    iget-byte v0, p0, Lcom/t4game/UI_FunctionItem;->showType:B

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/t4game/UI_FunctionItem;->isFocus:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/t4game/UI_FunctionItem;->fouceBack:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/t4game/Data;->color:[I

    iget-byte v1, p0, Lcom/t4game/UI_FunctionItem;->showFocusBackColor:B

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-short v0, p0, Lcom/t4game/UI_FunctionItem;->x:S

    iget-short v1, p0, Lcom/t4game/UI_FunctionItem;->y:S

    sub-int/2addr v1, p2

    iget-short v2, p0, Lcom/t4game/UI_FunctionItem;->w:S

    iget-short v3, p0, Lcom/t4game/UI_FunctionItem;->h:S

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_0
    iget-boolean v0, p0, Lcom/t4game/UI_FunctionItem;->fouceBound:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/t4game/Data;->color:[I

    iget-byte v1, p0, Lcom/t4game/UI_FunctionItem;->showTextFocusBoxColor:B

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-short v0, p0, Lcom/t4game/UI_FunctionItem;->x:S

    iget-short v1, p0, Lcom/t4game/UI_FunctionItem;->y:S

    sub-int/2addr v1, p2

    iget-short v2, p0, Lcom/t4game/UI_FunctionItem;->w:S

    iget-short v3, p0, Lcom/t4game/UI_FunctionItem;->h:S

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    iget-object v1, p0, Lcom/t4game/UI_FunctionItem;->showText:Ljava/lang/String;

    iget-short v2, p0, Lcom/t4game/UI_FunctionItem;->x:S

    iget-short v0, p0, Lcom/t4game/UI_FunctionItem;->y:S

    sub-int v3, v0, p2

    iget-short v4, p0, Lcom/t4game/UI_FunctionItem;->w:S

    iget-short v5, p0, Lcom/t4game/UI_FunctionItem;->h:S

    sget-object v0, Lcom/t4game/Data;->color:[I

    iget-byte v8, p0, Lcom/t4game/UI_FunctionItem;->showTextColor:B

    aget v8, v0, v8

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/t4game/DraftingUtil;->paintStringInScrollType(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIIIZ)V

    :cond_1
    iget-boolean v0, p0, Lcom/t4game/UI_FunctionItem;->fouceFont:Z

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/t4game/UI_FunctionItem;->showText:Ljava/lang/String;

    iget-short v2, p0, Lcom/t4game/UI_FunctionItem;->x:S

    iget-short v0, p0, Lcom/t4game/UI_FunctionItem;->y:S

    sub-int v3, v0, p2

    iget-short v4, p0, Lcom/t4game/UI_FunctionItem;->w:S

    iget-short v5, p0, Lcom/t4game/UI_FunctionItem;->h:S

    sget-object v0, Lcom/t4game/Data;->color:[I

    iget-byte v8, p0, Lcom/t4game/UI_FunctionItem;->showTextFocusColor:B

    aget v8, v0, v8

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/t4game/DraftingUtil;->paintStringInScrollType(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIIIZ)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/t4game/UI_FunctionItem;->showText:Ljava/lang/String;

    iget-short v2, p0, Lcom/t4game/UI_FunctionItem;->x:S

    iget-short v0, p0, Lcom/t4game/UI_FunctionItem;->y:S

    sub-int v3, v0, p2

    iget-short v4, p0, Lcom/t4game/UI_FunctionItem;->w:S

    iget-short v5, p0, Lcom/t4game/UI_FunctionItem;->h:S

    sget-object v0, Lcom/t4game/Data;->color:[I

    iget-byte v8, p0, Lcom/t4game/UI_FunctionItem;->showTextColor:B

    aget v8, v0, v8

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/t4game/DraftingUtil;->paintStringInScrollType(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIIIZ)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/t4game/UI_FunctionItem;->showText:Ljava/lang/String;

    iget-short v2, p0, Lcom/t4game/UI_FunctionItem;->x:S

    iget-short v0, p0, Lcom/t4game/UI_FunctionItem;->y:S

    sub-int v3, v0, p2

    iget-short v4, p0, Lcom/t4game/UI_FunctionItem;->w:S

    iget-short v5, p0, Lcom/t4game/UI_FunctionItem;->h:S

    sget-object v0, Lcom/t4game/Data;->color:[I

    iget-byte v8, p0, Lcom/t4game/UI_FunctionItem;->showTextColor:B

    aget v8, v0, v8

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/t4game/DraftingUtil;->paintStringInScrollType(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIIIZ)V

    goto :goto_0

    :cond_5
    iget-byte v0, p0, Lcom/t4game/UI_FunctionItem;->showType:B

    if-ne v0, v9, :cond_2

    sget-object v0, Lcom/t4game/Data;->UIImage:[Ljavax/microedition/lcdui/Image;

    iget-byte v1, p0, Lcom/t4game/UI_FunctionItem;->showImageIndex:B

    aget-object v0, v0, v1

    iget-short v1, p0, Lcom/t4game/UI_FunctionItem;->x:S

    iget-short v2, p0, Lcom/t4game/UI_FunctionItem;->y:S

    sub-int/2addr v2, p2

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-boolean v0, p0, Lcom/t4game/UI_FunctionItem;->isFocus:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/t4game/Data;->color:[I

    iget-byte v1, p0, Lcom/t4game/UI_FunctionItem;->showTextFocusBoxColor:B

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-short v0, p0, Lcom/t4game/UI_FunctionItem;->x:S

    iget-short v1, p0, Lcom/t4game/UI_FunctionItem;->y:S

    sub-int/2addr v1, p2

    iget-short v2, p0, Lcom/t4game/UI_FunctionItem;->w:S

    iget-short v3, p0, Lcom/t4game/UI_FunctionItem;->h:S

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    goto :goto_0
.end method

.method public init(Ljava/io/DataInputStream;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lcom/t4game/UI_Super;->init(Ljava/io/DataInputStream;)V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_FunctionItem;->showType:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_FunctionItem;->showImageIndex:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/t4game/UI_FunctionItem;->fouceBound:Z

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/t4game/UI_FunctionItem;->fouceFont:Z

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/t4game/UI_FunctionItem;->fouceBack:Z

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_FunctionItem;->showTextColor:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_FunctionItem;->showTextFocusColor:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_FunctionItem;->showFocusBackColor:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_FunctionItem;->showTextFocusBoxColor:B
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

    iget-object v0, p0, Lcom/t4game/UI_FunctionItem;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_FunctionItem;->id:B

    invoke-virtual {v0, v1, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    return-void
.end method

.method public pointEvent(II)B
    .locals 6

    const/4 v5, 0x1

    const/4 v0, -0x1

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-short v3, p0, Lcom/t4game/UI_FunctionItem;->x:S

    aput v3, v1, v2

    iget-short v2, p0, Lcom/t4game/UI_FunctionItem;->y:S

    iget-object v3, p0, Lcom/t4game/UI_FunctionItem;->ui:Lcom/t4game/GameUi;

    iget-short v3, v3, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v2, v3

    aput v2, v1, v5

    const/4 v2, 0x2

    iget-short v3, p0, Lcom/t4game/UI_FunctionItem;->x:S

    iget-short v4, p0, Lcom/t4game/UI_FunctionItem;->w:S

    add-int/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x3

    iget-short v3, p0, Lcom/t4game/UI_FunctionItem;->y:S

    iget-short v4, p0, Lcom/t4game/UI_FunctionItem;->h:S

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/t4game/UI_FunctionItem;->ui:Lcom/t4game/GameUi;

    iget-short v4, v4, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v3, v4

    aput v3, v1, v2

    invoke-static {p1, p2, v1}, Lcom/t4game/PointerUtil;->isPointerInArea(II[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/t4game/UI_FunctionItem;->focus:Z

    if-eqz v1, :cond_1

    iget-byte v1, p0, Lcom/t4game/UI_FunctionItem;->id:B

    iput-boolean v5, p0, Lcom/t4game/UI_FunctionItem;->isFocus:Z

    iget-object v0, p0, Lcom/t4game/UI_FunctionItem;->ui:Lcom/t4game/GameUi;

    iget-object v2, p0, Lcom/t4game/UI_FunctionItem;->ui:Lcom/t4game/GameUi;

    iget-byte v2, v2, Lcom/t4game/GameUi;->focus:B

    invoke-virtual {v0, v2}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    iget-object v2, p0, Lcom/t4game/UI_FunctionItem;->ui:Lcom/t4game/GameUi;

    iget-byte v3, p0, Lcom/t4game/UI_FunctionItem;->id:B

    invoke-virtual {v2, v3}, Lcom/t4game/GameUi;->setFocus(B)V

    iget-byte v2, v0, Lcom/t4game/UI_Super;->type:B

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    check-cast v0, Lcom/t4game/UI_PageLable;

    iput-boolean v5, v0, Lcom/t4game/UI_PageLable;->showInside:Z

    :cond_0
    iget-object v0, p0, Lcom/t4game/UI_FunctionItem;->ui:Lcom/t4game/GameUi;

    iget-byte v2, p0, Lcom/t4game/UI_FunctionItem;->id:B

    invoke-virtual {v0, v2}, Lcom/t4game/GameUi;->setFocus(B)V

    move v0, v1

    invoke-static {}, Lcom/t4game/PointerUtil;->clearReleasePointer()V

    :cond_1
    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/UI_FunctionItem;->showText:Ljava/lang/String;

    return-void
.end method

.method public setFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/t4game/UI_FunctionItem;->isFocus:Z

    return-void
.end method
