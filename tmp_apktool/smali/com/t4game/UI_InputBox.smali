.class public Lcom/t4game/UI_InputBox;
.super Lcom/t4game/UI_Super;

# interfaces
.implements Lcom/t4game/IViewText;


# instance fields
.field BoxBoundColor:B

.field BoxFillColor:B

.field IsFocus:Z

.field ShowString:Ljava/lang/String;

.field actionType:B

.field inputType:B

.field public leng:B

.field private showOnTick:B

.field stringColor:B

.field stringColorFocus:B

.field private ui:Lcom/t4game/GameUi;

.field xx:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/t4game/GameUi;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/t4game/UI_Super;-><init>(Lcom/t4game/UI_Super;)V

    iput-byte v1, p0, Lcom/t4game/UI_InputBox;->actionType:B

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/UI_InputBox;->inputType:B

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    const/16 v0, 0x28

    iput-byte v0, p0, Lcom/t4game/UI_InputBox;->showOnTick:B

    const-string v0, "******************"

    iput-object v0, p0, Lcom/t4game/UI_InputBox;->xx:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/t4game/UI_InputBox;->IsFocus:Z

    iput-object p1, p0, Lcom/t4game/UI_InputBox;->ui:Lcom/t4game/GameUi;

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/t4game/UI_InputBox;->type:B

    return-void
.end method


# virtual methods
.method public clearAction()V
    .locals 0

    return-void
.end method

.method public clearInput()V
    .locals 2

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v0}, Lcom/t4game/Texter;->clearText()V

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/t4game/Texter;->enable:Z

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/t4game/Texter;->text:Lcom/t4game/IViewText;

    return-void
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

    invoke-virtual {p0}, Lcom/t4game/UI_InputBox;->clone()Lcom/t4game/UI_Super;

    move-result-object v0

    return-object v0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;S)V
    .locals 11

    const/16 v10, 0x28

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v0, p1}, Lcom/t4game/Texter;->paint(Ljavax/microedition/lcdui/Graphics;)V

    iget-byte v0, p0, Lcom/t4game/UI_InputBox;->showOnTick:B

    if-ge v0, v10, :cond_0

    iget-byte v0, p0, Lcom/t4game/UI_InputBox;->showOnTick:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_InputBox;->showOnTick:B

    :cond_0
    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x14

    iget-short v2, p0, Lcom/t4game/UI_InputBox;->x:S

    iget-short v3, p0, Lcom/t4game/UI_InputBox;->y:S

    sub-int/2addr v3, p2

    iget-short v4, p0, Lcom/t4game/UI_InputBox;->w:S

    iget-short v5, p0, Lcom/t4game/UI_InputBox;->h:S

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    iget-boolean v0, p0, Lcom/t4game/UI_InputBox;->IsFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/UI_InputBox;->ui:Lcom/t4game/GameUi;

    sget v0, Lcom/t4game/GameUi;->tick:I

    rem-int/lit8 v0, v0, 0x6

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Graphics;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    sget-object v2, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v2}, Lcom/t4game/Texter;->getFcous()I

    move-result v2

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    const v1, 0xffffff

    invoke-virtual {p1, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-short v1, p0, Lcom/t4game/UI_InputBox;->x:S

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    iget-short v1, p0, Lcom/t4game/UI_InputBox;->y:S

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x4

    sget v2, Lcom/t4game/Defaults;->sfh:I

    const/16 v3, 0x8

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v9, v2}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_1
    iget-boolean v0, p0, Lcom/t4game/UI_InputBox;->IsFocus:Z

    if-eqz v0, :cond_2

    iget-byte v0, p0, Lcom/t4game/UI_InputBox;->stringColorFocus:B

    move v4, v0

    :goto_0
    iget-byte v0, p0, Lcom/t4game/UI_InputBox;->inputType:B

    if-ne v0, v9, :cond_6

    iget-byte v0, p0, Lcom/t4game/UI_InputBox;->showOnTick:B

    if-ge v0, v10, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/t4game/UI_InputBox;->xx:Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v8

    :goto_1
    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v8, :cond_4

    iget-object v1, p0, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-short v1, p0, Lcom/t4game/UI_InputBox;->x:S

    add-int/lit8 v1, v1, 0x4

    iget-short v2, p0, Lcom/t4game/UI_InputBox;->y:S

    sub-int/2addr v2, p2

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v5, Lcom/t4game/Data;->color:[I

    aget v5, v5, v4

    move v4, v7

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_3
    return-void

    :cond_2
    iget-byte v0, p0, Lcom/t4game/UI_InputBox;->stringColor:B

    move v4, v0

    goto :goto_0

    :cond_3
    move v2, v6

    goto :goto_1

    :cond_4
    const-string v1, ""

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/t4game/UI_InputBox;->xx:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-short v1, p0, Lcom/t4game/UI_InputBox;->x:S

    add-int/lit8 v1, v1, 0x4

    iget-short v2, p0, Lcom/t4game/UI_InputBox;->y:S

    sub-int/2addr v2, p2

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v5, Lcom/t4game/Data;->color:[I

    aget v5, v5, v4

    move v4, v7

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    iget-short v1, p0, Lcom/t4game/UI_InputBox;->x:S

    add-int/lit8 v1, v1, 0x4

    iget-short v2, p0, Lcom/t4game/UI_InputBox;->y:S

    sub-int/2addr v2, p2

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v5, Lcom/t4game/Data;->color:[I

    aget v5, v5, v4

    move v4, v7

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_3
.end method

.method public init(Ljava/io/DataInputStream;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lcom/t4game/UI_Super;->init(Ljava/io/DataInputStream;)V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_InputBox;->actionType:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_InputBox;->inputType:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_InputBox;->leng:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_InputBox;->BoxBoundColor:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_InputBox;->BoxFillColor:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_InputBox;->stringColor:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_InputBox;->stringColorFocus:B
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

    iget-byte v0, p0, Lcom/t4game/UI_InputBox;->actionType:B

    if-nez v0, :cond_2

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    iget-boolean v0, v0, Lcom/t4game/Texter;->inputed:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/t4game/UI_InputBox;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_InputBox;->id:B

    invoke-virtual {v0, v1, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/t4game/UI_InputBox;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_InputBox;->id:B

    invoke-virtual {v0, v1, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    goto :goto_0
.end method

.method public pointEvent(II)B
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-short v3, p0, Lcom/t4game/UI_InputBox;->x:S

    aput v3, v1, v2

    const/4 v2, 0x1

    iget-short v3, p0, Lcom/t4game/UI_InputBox;->y:S

    iget-object v4, p0, Lcom/t4game/UI_InputBox;->ui:Lcom/t4game/GameUi;

    iget-short v4, v4, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x2

    iget-short v3, p0, Lcom/t4game/UI_InputBox;->x:S

    iget-short v4, p0, Lcom/t4game/UI_InputBox;->w:S

    add-int/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x3

    iget-short v3, p0, Lcom/t4game/UI_InputBox;->y:S

    iget-short v4, p0, Lcom/t4game/UI_InputBox;->h:S

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/t4game/UI_InputBox;->ui:Lcom/t4game/GameUi;

    iget-short v4, v4, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v3, v4

    aput v3, v1, v2

    invoke-static {p1, p2, v1}, Lcom/t4game/PointerUtil;->isPointerInArea(II[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v0, p0, Lcom/t4game/UI_InputBox;->focus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_InputBox;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_InputBox;->id:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->setFocus(B)V

    :cond_0
    iget-byte v0, p0, Lcom/t4game/UI_InputBox;->id:B

    :cond_1
    return v0
.end method

.method public refreshView(Ljava/lang/String;)V
    .locals 2

    iget-byte v0, p0, Lcom/t4game/UI_InputBox;->actionType:B

    if-nez v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/UI_InputBox;->inputType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/UI_InputBox;->showOnTick:B

    :cond_0
    iput-object p1, p0, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setFocus(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/UI_InputBox;->inputType:B

    iget-byte v2, p0, Lcom/t4game/UI_InputBox;->leng:B

    invoke-virtual {p0, v0, v1, v2}, Lcom/t4game/UI_InputBox;->setInput(Ljava/lang/String;BI)V

    :goto_0
    iput-boolean p1, p0, Lcom/t4game/UI_InputBox;->IsFocus:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/t4game/UI_InputBox;->clearInput()V

    goto :goto_0
.end method

.method public setInput(Ljava/lang/String;BI)V
    .locals 2

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/t4game/Texter;->enable:Z

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    iput-object p0, v0, Lcom/t4game/Texter;->text:Lcom/t4game/IViewText;

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v0, p3}, Lcom/t4game/Texter;->setInputLength(I)V

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v0, p1}, Lcom/t4game/Texter;->setText(Ljava/lang/String;)V

    if-nez p2, :cond_0

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v0}, Lcom/t4game/Texter;->setMunLock()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v0}, Lcom/t4game/Texter;->clearMunLock()V

    goto :goto_0
.end method

.method public setString(Ljava/lang/String;Z)V
    .locals 1

    iput-object p1, p0, Lcom/t4game/UI_InputBox;->ShowString:Ljava/lang/String;

    if-eqz p2, :cond_0

    sget-object v0, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v0, p1}, Lcom/t4game/Texter;->setText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
