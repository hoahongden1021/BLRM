.class public Lcom/t4game/UI_TitleBar;
.super Lcom/t4game/UI_Super;


# instance fields
.field anchor:I

.field color_BG:B

.field color_BORDER:B

.field public content:[Ljava/lang/String;

.field content_color:[B

.field space_X:[S

.field text_y:S

.field private ui:Lcom/t4game/GameUi;


# direct methods
.method public constructor <init>(Lcom/t4game/GameUi;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/t4game/UI_Super;-><init>(Lcom/t4game/UI_Super;)V

    sget v0, Lcom/t4game/Defaults;->TOP_HCENTER:I

    iput v0, p0, Lcom/t4game/UI_TitleBar;->anchor:I

    iput-object p1, p0, Lcom/t4game/UI_TitleBar;->ui:Lcom/t4game/GameUi;

    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/t4game/UI_TitleBar;->type:B

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

    invoke-virtual {p0}, Lcom/t4game/UI_TitleBar;->clone()Lcom/t4game/UI_Super;

    move-result-object v0

    return-object v0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;S)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v4, -0x1

    iget-byte v0, p0, Lcom/t4game/UI_TitleBar;->color_BG:B

    if-le v0, v4, :cond_0

    iget-byte v0, p0, Lcom/t4game/UI_TitleBar;->color_BORDER:B

    if-le v0, v4, :cond_0

    sget-object v0, Lcom/t4game/Data;->color:[I

    iget-byte v1, p0, Lcom/t4game/UI_TitleBar;->color_BG:B

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-short v0, p0, Lcom/t4game/UI_TitleBar;->x:S

    iget-short v1, p0, Lcom/t4game/UI_TitleBar;->y:S

    sub-int/2addr v1, p2

    iget-short v2, p0, Lcom/t4game/UI_TitleBar;->w:S

    iget-short v3, p0, Lcom/t4game/UI_TitleBar;->h:S

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    sget-object v0, Lcom/t4game/Data;->color:[I

    iget-byte v1, p0, Lcom/t4game/UI_TitleBar;->color_BORDER:B

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-short v0, p0, Lcom/t4game/UI_TitleBar;->x:S

    iget-short v1, p0, Lcom/t4game/UI_TitleBar;->y:S

    sub-int/2addr v1, p2

    iget-short v2, p0, Lcom/t4game/UI_TitleBar;->w:S

    iget-short v3, p0, Lcom/t4game/UI_TitleBar;->h:S

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/UI_TitleBar;->space_X:[S

    array-length v0, v0

    if-lez v0, :cond_5

    move v7, v11

    :goto_0
    iget-object v0, p0, Lcom/t4game/UI_TitleBar;->content:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_5

    iget v0, p0, Lcom/t4game/UI_TitleBar;->anchor:I

    sget v1, Lcom/t4game/Defaults;->TOP_HCENTER:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/t4game/UI_TitleBar;->content:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, v10

    if-eq v7, v0, :cond_2

    iget-short v0, p0, Lcom/t4game/UI_TitleBar;->x:S

    iget-object v1, p0, Lcom/t4game/UI_TitleBar;->space_X:[S

    add-int/lit8 v2, v7, 0x1

    aget-short v1, v1, v2

    iget-object v2, p0, Lcom/t4game/UI_TitleBar;->space_X:[S

    aget-short v2, v2, v7

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/UI_TitleBar;->space_X:[S

    aget-short v1, v1, v7

    add-int/2addr v0, v1

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/t4game/UI_TitleBar;->content:[Ljava/lang/String;

    aget-object v0, v0, v7

    iget-short v2, p0, Lcom/t4game/UI_TitleBar;->text_y:S

    sub-int/2addr v2, p2

    iget v3, p0, Lcom/t4game/UI_TitleBar;->anchor:I

    sget-object v5, Lcom/t4game/Data;->color:[I

    iget-object v6, p0, Lcom/t4game/UI_TitleBar;->content_color:[B

    aget-byte v6, v6, v7

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_2
    iget-short v0, p0, Lcom/t4game/UI_TitleBar;->x:S

    iget-object v1, p0, Lcom/t4game/UI_TitleBar;->space_X:[S

    iget-object v2, p0, Lcom/t4game/UI_TitleBar;->content:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v2, v10

    aget-short v1, v1, v2

    add-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_TitleBar;->w:S

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/t4game/UI_TitleBar;->anchor:I

    sget v1, Lcom/t4game/Defaults;->TOP_LEFT:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/UI_TitleBar;->content:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, v10

    if-eq v7, v0, :cond_4

    iget-object v0, p0, Lcom/t4game/UI_TitleBar;->space_X:[S

    add-int/lit8 v1, v7, 0x1

    aget-short v0, v0, v1

    iget-object v1, p0, Lcom/t4game/UI_TitleBar;->space_X:[S

    aget-short v1, v1, v7

    sub-int/2addr v0, v1

    :goto_2
    iget-object v1, p0, Lcom/t4game/UI_TitleBar;->content:[Ljava/lang/String;

    aget-object v1, v1, v7

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v1, v0, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v8

    move v9, v11

    :goto_3
    array-length v0, v8

    if-ge v9, v0, :cond_1

    aget-object v0, v8, v9

    iget-object v1, p0, Lcom/t4game/UI_TitleBar;->space_X:[S

    aget-short v1, v1, v7

    iget-short v2, p0, Lcom/t4game/UI_TitleBar;->text_y:S

    sub-int/2addr v2, p2

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v9

    add-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/UI_TitleBar;->anchor:I

    sget-object v5, Lcom/t4game/Data;->color:[I

    iget-object v6, p0, Lcom/t4game/UI_TitleBar;->content_color:[B

    aget-byte v6, v6, v7

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_3

    :cond_4
    iget-short v0, p0, Lcom/t4game/UI_TitleBar;->x:S

    iget-short v1, p0, Lcom/t4game/UI_TitleBar;->w:S

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/UI_TitleBar;->space_X:[S

    aget-short v1, v1, v7

    sub-int/2addr v0, v1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public init(Ljava/io/DataInputStream;)V
    .locals 4

    :try_start_0
    invoke-super {p0, p1}, Lcom/t4game/UI_Super;->init(Ljava/io/DataInputStream;)V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/t4game/UI_TitleBar;->color_BORDER:B

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/UI_TitleBar;->content:[Ljava/lang/String;

    new-array v1, v0, [S

    iput-object v1, p0, Lcom/t4game/UI_TitleBar;->space_X:[S

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/t4game/UI_TitleBar;->content_color:[B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/t4game/UI_TitleBar;->space_X:[S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v3

    aput-short v3, v2, v1

    iget-object v2, p0, Lcom/t4game/UI_TitleBar;->content_color:[B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_TitleBar;->color_BG:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/t4game/UI_TitleBar;->text_y:S
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
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

    iget-short v3, p0, Lcom/t4game/UI_TitleBar;->x:S

    aput v3, v1, v2

    const/4 v2, 0x1

    iget-short v3, p0, Lcom/t4game/UI_TitleBar;->y:S

    iget-object v4, p0, Lcom/t4game/UI_TitleBar;->ui:Lcom/t4game/GameUi;

    iget-short v4, v4, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x2

    iget-short v3, p0, Lcom/t4game/UI_TitleBar;->x:S

    iget-short v4, p0, Lcom/t4game/UI_TitleBar;->w:S

    add-int/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x3

    iget-short v3, p0, Lcom/t4game/UI_TitleBar;->y:S

    iget-short v4, p0, Lcom/t4game/UI_TitleBar;->h:S

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/t4game/UI_TitleBar;->ui:Lcom/t4game/GameUi;

    iget-short v4, v4, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v3, v4

    aput v3, v1, v2

    invoke-static {p1, p2, v1}, Lcom/t4game/PointerUtil;->isPointerInArea(II[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_TitleBar;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_TitleBar;->id:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->setFocus(B)V

    iget-byte v0, p0, Lcom/t4game/UI_TitleBar;->id:B

    invoke-static {}, Lcom/t4game/PointerUtil;->clearReleasePointer()V

    :cond_0
    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/UI_TitleBar;->content:[Ljava/lang/String;

    return-void
.end method

.method public setFocus(Z)V
    .locals 0

    return-void
.end method
