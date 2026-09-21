.class public Lcom/t4game/UI_ImageBox;
.super Lcom/t4game/UI_Super;


# instance fields
.field public content:B

.field target_x:B

.field target_y:B

.field transform:I

.field private ui:Lcom/t4game/GameUi;


# direct methods
.method public constructor <init>(Lcom/t4game/GameUi;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/t4game/UI_Super;-><init>(Lcom/t4game/UI_Super;)V

    iput-object p1, p0, Lcom/t4game/UI_ImageBox;->ui:Lcom/t4game/GameUi;

    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/t4game/UI_ImageBox;->type:B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/UI_ImageBox;->focus:Z

    return-void
.end method


# virtual methods
.method public clearAction()V
    .locals 0

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

    invoke-virtual {p0}, Lcom/t4game/UI_ImageBox;->clone()Lcom/t4game/UI_Super;

    move-result-object v0

    return-object v0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;S)V
    .locals 10

    sget-object v0, Lcom/t4game/Data;->UIImage:[Ljavax/microedition/lcdui/Image;

    iget-byte v1, p0, Lcom/t4game/UI_ImageBox;->content:B

    aget-object v1, v0, v1

    iget-byte v2, p0, Lcom/t4game/UI_ImageBox;->target_x:B

    iget-byte v3, p0, Lcom/t4game/UI_ImageBox;->target_y:B

    iget-short v4, p0, Lcom/t4game/UI_ImageBox;->w:S

    iget-short v5, p0, Lcom/t4game/UI_ImageBox;->h:S

    iget v6, p0, Lcom/t4game/UI_ImageBox;->transform:I

    iget-short v7, p0, Lcom/t4game/UI_ImageBox;->x:S

    iget-short v0, p0, Lcom/t4game/UI_ImageBox;->y:S

    sub-int v8, v0, p2

    sget v9, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    return-void
.end method

.method public init(Ljava/io/DataInputStream;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lcom/t4game/UI_Super;->init(Ljava/io/DataInputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/UI_ImageBox;->focus:Z

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_ImageBox;->target_x:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_ImageBox;->target_y:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/UI_ImageBox;->transform:I
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
    .locals 0

    return-void
.end method

.method public pointEvent(II)B
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-short v3, p0, Lcom/t4game/UI_ImageBox;->x:S

    aput v3, v1, v2

    const/4 v2, 0x1

    iget-short v3, p0, Lcom/t4game/UI_ImageBox;->y:S

    iget-object v4, p0, Lcom/t4game/UI_ImageBox;->ui:Lcom/t4game/GameUi;

    iget-short v4, v4, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x2

    iget-short v3, p0, Lcom/t4game/UI_ImageBox;->x:S

    iget-short v4, p0, Lcom/t4game/UI_ImageBox;->w:S

    add-int/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x3

    iget-short v3, p0, Lcom/t4game/UI_ImageBox;->y:S

    iget-short v4, p0, Lcom/t4game/UI_ImageBox;->h:S

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/t4game/UI_ImageBox;->ui:Lcom/t4game/GameUi;

    iget-short v4, v4, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v3, v4

    aput v3, v1, v2

    invoke-static {p1, p2, v1}, Lcom/t4game/PointerUtil;->isPointerInArea(II[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_ImageBox;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_ImageBox;->id:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->setFocus(B)V

    iget-byte v0, p0, Lcom/t4game/UI_ImageBox;->id:B

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

    return-void
.end method
