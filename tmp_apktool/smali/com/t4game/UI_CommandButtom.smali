.class public Lcom/t4game/UI_CommandButtom;
.super Lcom/t4game/UI_Super;


# instance fields
.field CommandStringId:B

.field ShowType:B

.field commandType:B

.field imageId:B

.field isFocus:Z

.field public showText:Ljava/lang/String;

.field private ui:Lcom/t4game/GameUi;


# direct methods
.method public constructor <init>(Lcom/t4game/GameUi;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/t4game/UI_Super;-><init>(Lcom/t4game/UI_Super;)V

    iput-byte v1, p0, Lcom/t4game/UI_CommandButtom;->ShowType:B

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/UI_CommandButtom;->CommandStringId:B

    iput-byte v1, p0, Lcom/t4game/UI_CommandButtom;->commandType:B

    iput-boolean v1, p0, Lcom/t4game/UI_CommandButtom;->isFocus:Z

    iput-object p1, p0, Lcom/t4game/UI_CommandButtom;->ui:Lcom/t4game/GameUi;

    const/16 v0, 0xb

    iput-byte v0, p0, Lcom/t4game/UI_CommandButtom;->type:B

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

    invoke-virtual {p0}, Lcom/t4game/UI_CommandButtom;->clone()Lcom/t4game/UI_Super;

    move-result-object v0

    return-object v0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;S)V
    .locals 8

    const/4 v7, -0x1

    iget-byte v0, p0, Lcom/t4game/UI_CommandButtom;->ShowType:B

    if-nez v0, :cond_3

    iget-byte v0, p0, Lcom/t4game/UI_CommandButtom;->CommandStringId:B

    if-eq v0, v7, :cond_2

    sget-object v0, Lcom/t4game/Data;->commandString:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/UI_CommandButtom;->CommandStringId:B

    aget-object v0, v0, v1

    iget-short v1, p0, Lcom/t4game/UI_CommandButtom;->x:S

    iget-short v2, p0, Lcom/t4game/UI_CommandButtom;->y:S

    sub-int/2addr v2, p2

    iget-short v3, p0, Lcom/t4game/UI_CommandButtom;->w:S

    iget-short v4, p0, Lcom/t4game/UI_CommandButtom;->h:S

    const/4 v6, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    :cond_0
    :goto_0
    iget-byte v0, p0, Lcom/t4game/UI_CommandButtom;->imageId:B

    if-eq v0, v7, :cond_1

    sget-object v0, Lcom/t4game/Data;->UIImage:[Ljavax/microedition/lcdui/Image;

    iget-byte v1, p0, Lcom/t4game/UI_CommandButtom;->imageId:B

    aget-object v0, v0, v1

    iget-short v1, p0, Lcom/t4game/UI_CommandButtom;->x:S

    iget-short v2, p0, Lcom/t4game/UI_CommandButtom;->y:S

    sub-int/2addr v2, p2

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/t4game/UI_CommandButtom;->showText:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_CommandButtom;->showText:Ljava/lang/String;

    iget-short v1, p0, Lcom/t4game/UI_CommandButtom;->x:S

    iget-short v2, p0, Lcom/t4game/UI_CommandButtom;->y:S

    sub-int/2addr v2, p2

    iget-short v3, p0, Lcom/t4game/UI_CommandButtom;->w:S

    iget-short v4, p0, Lcom/t4game/UI_CommandButtom;->h:S

    iget-boolean v6, p0, Lcom/t4game/UI_CommandButtom;->isFocus:Z

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    goto :goto_0

    :cond_3
    iget-byte v0, p0, Lcom/t4game/UI_CommandButtom;->ShowType:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/t4game/Data;->commandString:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/UI_CommandButtom;->CommandStringId:B

    aget-object v0, v0, v1

    iget-short v1, p0, Lcom/t4game/UI_CommandButtom;->x:S

    iget-short v2, p0, Lcom/t4game/UI_CommandButtom;->y:S

    sub-int/2addr v2, p2

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const v4, 0x300506

    const v5, 0xffd100

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0
.end method

.method public init(Ljava/io/DataInputStream;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lcom/t4game/UI_Super;->init(Ljava/io/DataInputStream;)V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_CommandButtom;->commandType:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_CommandButtom;->ShowType:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_CommandButtom;->CommandStringId:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_CommandButtom;->imageId:B
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

    iget-object v0, p0, Lcom/t4game/UI_CommandButtom;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_CommandButtom;->id:B

    invoke-virtual {v0, v1, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    return-void
.end method

.method public pointEvent(II)B
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-short v3, p0, Lcom/t4game/UI_CommandButtom;->x:S

    aput v3, v1, v2

    const/4 v2, 0x1

    iget-short v3, p0, Lcom/t4game/UI_CommandButtom;->y:S

    iget-object v4, p0, Lcom/t4game/UI_CommandButtom;->ui:Lcom/t4game/GameUi;

    iget-short v4, v4, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x2

    iget-short v3, p0, Lcom/t4game/UI_CommandButtom;->x:S

    iget-short v4, p0, Lcom/t4game/UI_CommandButtom;->w:S

    add-int/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x3

    iget-short v3, p0, Lcom/t4game/UI_CommandButtom;->y:S

    iget-short v4, p0, Lcom/t4game/UI_CommandButtom;->h:S

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/t4game/UI_CommandButtom;->ui:Lcom/t4game/GameUi;

    iget-short v4, v4, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v3, v4

    aput v3, v1, v2

    invoke-static {p1, p2, v1}, Lcom/t4game/PointerUtil;->isPointerInArea(II[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_CommandButtom;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_CommandButtom;->id:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->setFocus(B)V

    iget-byte v0, p0, Lcom/t4game/UI_CommandButtom;->id:B

    invoke-static {}, Lcom/t4game/PointerUtil;->clearReleasePointer()V

    :cond_0
    return v0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public setFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/t4game/UI_CommandButtom;->isFocus:Z

    return-void
.end method
