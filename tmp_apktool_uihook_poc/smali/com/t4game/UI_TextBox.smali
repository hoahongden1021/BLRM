.class public Lcom/t4game/UI_TextBox;
.super Lcom/t4game/UI_Super;


# instance fields
.field color_BG:B

.field color_content:B

.field private content:[Ljava/lang/String;

.field current_page:B

.field distance:B

.field public frame_image:B

.field image_h:S

.field image_w:S

.field is_focse:Z

.field line_color:[B

.field line_distance:[B

.field line_index:B

.field sum_line:B

.field sum_page:B

.field type_scroll:Z

.field private ui:Lcom/t4game/GameUi;


# direct methods
.method public constructor <init>(Lcom/t4game/GameUi;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/t4game/UI_Super;-><init>(Lcom/t4game/UI_Super;)V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/UI_TextBox;->line_index:B

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/UI_TextBox;->current_page:B

    iput-object p1, p0, Lcom/t4game/UI_TextBox;->ui:Lcom/t4game/GameUi;

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/t4game/UI_TextBox;->type:B

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

    invoke-virtual {p0}, Lcom/t4game/UI_TextBox;->clone()Lcom/t4game/UI_Super;

    move-result-object v0

    return-object v0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;S)V
    .locals 10

    const/4 v5, -0x1

    const/4 v2, 0x0

    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->color_BG:B

    if-le v0, v5, :cond_0

    sget-object v0, Lcom/t4game/Data;->color:[I

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->color_BG:B

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-short v0, p0, Lcom/t4game/UI_TextBox;->x:S

    iget-short v1, p0, Lcom/t4game/UI_TextBox;->y:S

    sub-int/2addr v1, p2

    iget-short v3, p0, Lcom/t4game/UI_TextBox;->w:S

    iget-short v4, p0, Lcom/t4game/UI_TextBox;->h:S

    invoke-virtual {p1, v0, v1, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_0
    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->frame_image:B

    if-eq v0, v5, :cond_1

    sget-object v0, Lcom/t4game/Data;->UIImage:[Ljavax/microedition/lcdui/Image;

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->frame_image:B

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    sget-object v0, Lcom/t4game/Data;->UIImage:[Ljavax/microedition/lcdui/Image;

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->frame_image:B

    aget-object v1, v0, v1

    iget-short v4, p0, Lcom/t4game/UI_TextBox;->image_w:S

    iget-short v5, p0, Lcom/t4game/UI_TextBox;->image_h:S

    iget-short v7, p0, Lcom/t4game/UI_TextBox;->x:S

    iget-short v0, p0, Lcom/t4game/UI_TextBox;->y:S

    sub-int v8, v0, p2

    sget v9, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object v0, p1

    move v3, p2

    move v6, v2

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    sget-object v0, Lcom/t4game/Data;->UIImage:[Ljavax/microedition/lcdui/Image;

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->frame_image:B

    aget-object v1, v0, v1

    iget-short v4, p0, Lcom/t4game/UI_TextBox;->image_w:S

    iget-short v5, p0, Lcom/t4game/UI_TextBox;->image_h:S

    const/4 v6, 0x2

    iget-short v0, p0, Lcom/t4game/UI_TextBox;->x:S

    iget-short v3, p0, Lcom/t4game/UI_TextBox;->image_w:S

    sub-int/2addr v0, v3

    iget-short v3, p0, Lcom/t4game/UI_TextBox;->w:S

    add-int v7, v0, v3

    iget-short v0, p0, Lcom/t4game/UI_TextBox;->y:S

    sub-int v8, v0, p2

    sget v9, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object v0, p1

    move v3, p2

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    sget-object v0, Lcom/t4game/Data;->UIImage:[Ljavax/microedition/lcdui/Image;

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->frame_image:B

    aget-object v1, v0, v1

    iget-short v4, p0, Lcom/t4game/UI_TextBox;->image_w:S

    iget-short v5, p0, Lcom/t4game/UI_TextBox;->image_h:S

    const/4 v6, 0x1

    iget-short v7, p0, Lcom/t4game/UI_TextBox;->x:S

    iget-short v0, p0, Lcom/t4game/UI_TextBox;->y:S

    sub-int/2addr v0, p2

    iget-short v3, p0, Lcom/t4game/UI_TextBox;->h:S

    add-int/2addr v0, v3

    iget-short v3, p0, Lcom/t4game/UI_TextBox;->image_h:S

    sub-int v8, v0, v3

    sget v9, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object v0, p1

    move v3, p2

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    sget-object v0, Lcom/t4game/Data;->UIImage:[Ljavax/microedition/lcdui/Image;

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->frame_image:B

    aget-object v1, v0, v1

    iget-short v4, p0, Lcom/t4game/UI_TextBox;->image_w:S

    iget-short v5, p0, Lcom/t4game/UI_TextBox;->image_h:S

    const/4 v6, 0x3

    iget-short v0, p0, Lcom/t4game/UI_TextBox;->x:S

    iget-short v3, p0, Lcom/t4game/UI_TextBox;->image_w:S

    sub-int/2addr v0, v3

    iget-short v3, p0, Lcom/t4game/UI_TextBox;->w:S

    add-int v7, v0, v3

    iget-short v0, p0, Lcom/t4game/UI_TextBox;->y:S

    sub-int/2addr v0, p2

    iget-short v3, p0, Lcom/t4game/UI_TextBox;->h:S

    add-int/2addr v0, v3

    iget-short v3, p0, Lcom/t4game/UI_TextBox;->image_h:S

    sub-int v8, v0, v3

    sget v9, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object v0, p1

    move v3, p2

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/t4game/UI_TextBox;->drawString(Ljavax/microedition/lcdui/Graphics;S)V

    return-void
.end method

.method drawString(Ljavax/microedition/lcdui/Graphics;S)V
    .locals 8

    iget-boolean v0, p0, Lcom/t4game/UI_TextBox;->type_scroll:Z

    if-nez v0, :cond_5

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->sum_line:B

    if-ge v7, v0, :cond_0

    iget-boolean v0, p0, Lcom/t4game/UI_TextBox;->is_focse:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/UI_TextBox;->content:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->line_index:B

    add-int/2addr v1, v7

    aget-object v0, v0, v1

    iget-short v1, p0, Lcom/t4game/UI_TextBox;->x:S

    iget-short v2, p0, Lcom/t4game/UI_TextBox;->image_w:S

    add-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_TextBox;->y:S

    sub-int/2addr v2, p2

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v7

    add-int/2addr v2, v3

    iget-byte v3, p0, Lcom/t4game/UI_TextBox;->distance:B

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    sget-object v5, Lcom/t4game/Data;->color:[I

    const/16 v6, 0x11

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->line_index:B

    add-int/2addr v0, v7

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/t4game/UI_TextBox;->content:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    :cond_0
    :goto_1
    iget-short v0, p0, Lcom/t4game/UI_TextBox;->h:S

    iget-short v1, p0, Lcom/t4game/UI_TextBox;->image_h:S

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/UI_TextBox;->content:[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v0, :cond_4

    iget-object v1, p0, Lcom/t4game/UI_TextBox;->content:[Ljava/lang/String;

    array-length v1, v1

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    iget-byte v2, p0, Lcom/t4game/UI_TextBox;->line_index:B

    iget-short v3, p0, Lcom/t4game/UI_TextBox;->x:S

    iget-short v4, p0, Lcom/t4game/UI_TextBox;->w:S

    add-int/2addr v3, v4

    iget-short v4, p0, Lcom/t4game/UI_TextBox;->y:S

    sub-int/2addr v4, p2

    iget-byte v5, p0, Lcom/t4game/UI_TextBox;->distance:B

    add-int/2addr v4, v5

    iget-byte v5, p0, Lcom/t4game/UI_TextBox;->sum_line:B

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_2
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->line_index:B

    if-ne v7, v0, :cond_2

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x9

    iget-short v2, p0, Lcom/t4game/UI_TextBox;->x:S

    iget-short v3, p0, Lcom/t4game/UI_TextBox;->y:S

    sub-int/2addr v3, p2

    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v4, v7

    add-int/2addr v3, v4

    iget-byte v4, p0, Lcom/t4game/UI_TextBox;->distance:B

    add-int/2addr v3, v4

    iget-short v4, p0, Lcom/t4game/UI_TextBox;->w:S

    sget v5, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :cond_2
    add-int/lit8 v0, v7, 0x1

    int-to-byte v0, v0

    move v7, v0

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/t4game/UI_TextBox;->content:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->line_index:B

    add-int/2addr v1, v7

    aget-object v0, v0, v1

    iget-short v1, p0, Lcom/t4game/UI_TextBox;->x:S

    iget-short v2, p0, Lcom/t4game/UI_TextBox;->image_w:S

    add-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_TextBox;->y:S

    sub-int/2addr v2, p2

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v7

    add-int/2addr v2, v3

    iget-byte v3, p0, Lcom/t4game/UI_TextBox;->distance:B

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    sget-object v5, Lcom/t4game/Data;->color:[I

    iget-byte v6, p0, Lcom/t4game/UI_TextBox;->color_content:B

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->line_index:B

    add-int/2addr v0, v7

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/t4game/UI_TextBox;->content:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/t4game/UI_TextBox;->content:[Ljava/lang/String;

    array-length v1, v1

    sub-int v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    iget-byte v2, p0, Lcom/t4game/UI_TextBox;->line_index:B

    iget-short v3, p0, Lcom/t4game/UI_TextBox;->x:S

    iget-short v4, p0, Lcom/t4game/UI_TextBox;->w:S

    add-int/2addr v3, v4

    iget-short v4, p0, Lcom/t4game/UI_TextBox;->y:S

    sub-int/2addr v4, p2

    iget-byte v5, p0, Lcom/t4game/UI_TextBox;->distance:B

    add-int/2addr v4, v5

    iget-byte v5, p0, Lcom/t4game/UI_TextBox;->sum_line:B

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    move v7, v0

    :goto_3
    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->sum_line:B

    if-ge v7, v0, :cond_6

    iget-boolean v0, p0, Lcom/t4game/UI_TextBox;->is_focse:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/t4game/UI_TextBox;->content:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->current_page:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-byte v2, p0, Lcom/t4game/UI_TextBox;->sum_line:B

    mul-int/2addr v1, v2

    add-int/2addr v1, v7

    aget-object v0, v0, v1

    iget-short v1, p0, Lcom/t4game/UI_TextBox;->x:S

    iget-short v2, p0, Lcom/t4game/UI_TextBox;->image_w:S

    add-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_TextBox;->y:S

    sub-int/2addr v2, p2

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v7

    add-int/2addr v2, v3

    iget-byte v3, p0, Lcom/t4game/UI_TextBox;->distance:B

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    sget-object v5, Lcom/t4game/Data;->color:[I

    const/16 v6, 0x11

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->current_page:B

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->sum_line:B

    mul-int/2addr v0, v1

    add-int/2addr v0, v7

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/t4game/UI_TextBox;->content:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_8

    :cond_6
    iget-short v0, p0, Lcom/t4game/UI_TextBox;->x:S

    iget-short v1, p0, Lcom/t4game/UI_TextBox;->w:S

    ushr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_TextBox;->y:S

    sub-int/2addr v1, p2

    iget-short v2, p0, Lcom/t4game/UI_TextBox;->h:S

    add-int/2addr v1, v2

    iget-byte v2, p0, Lcom/t4game/UI_TextBox;->distance:B

    sub-int/2addr v1, v2

    const/16 v2, 0xa

    sub-int v2, v0, v2

    iget-byte v3, p0, Lcom/t4game/UI_TextBox;->current_page:B

    invoke-static {v2, v1, v3, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v2, v0, 0xa

    iget-byte v3, p0, Lcom/t4game/UI_TextBox;->sum_page:B

    invoke-static {v2, v1, v3, p1}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    sget-object v2, Lcom/t4game/Data;->color:[I

    iget-byte v3, p0, Lcom/t4game/UI_TextBox;->color_content:B

    aget v2, v2, v3

    invoke-virtual {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int/lit8 v2, v0, 0x0

    add-int/lit8 v3, v1, 0x5

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v1, v1, 0x0

    invoke-virtual {p1, v2, v3, v0, v1}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    goto/16 :goto_2

    :cond_7
    iget-object v0, p0, Lcom/t4game/UI_TextBox;->content:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->current_page:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-byte v2, p0, Lcom/t4game/UI_TextBox;->sum_line:B

    mul-int/2addr v1, v2

    add-int/2addr v1, v7

    aget-object v0, v0, v1

    iget-short v1, p0, Lcom/t4game/UI_TextBox;->x:S

    iget-short v2, p0, Lcom/t4game/UI_TextBox;->image_w:S

    add-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_TextBox;->y:S

    sub-int/2addr v2, p2

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v7

    add-int/2addr v2, v3

    iget-byte v3, p0, Lcom/t4game/UI_TextBox;->distance:B

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    sget-object v5, Lcom/t4game/Data;->color:[I

    iget-byte v6, p0, Lcom/t4game/UI_TextBox;->color_content:B

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->current_page:B

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->sum_line:B

    mul-int/2addr v0, v1

    add-int/2addr v0, v7

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/t4game/UI_TextBox;->content:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_6

    :cond_8
    add-int/lit8 v0, v7, 0x1

    int-to-byte v0, v0

    move v7, v0

    goto/16 :goto_3
.end method

.method public init(Ljava/io/DataInputStream;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x0

    :try_start_0
    invoke-super {p0, p1}, Lcom/t4game/UI_Super;->init(Ljava/io/DataInputStream;)V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_TextBox;->frame_image:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_TextBox;->color_BG:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_TextBox;->color_content:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/t4game/UI_TextBox;->line_color:[B

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/t4game/UI_TextBox;->line_distance:[B

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/t4game/UI_TextBox;->line_color:[B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    aput-byte v3, v2, v1

    iget-object v2, p0, Lcom/t4game/UI_TextBox;->line_distance:[B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    const/4 v0, 0x7

    iput-byte v0, p0, Lcom/t4game/UI_TextBox;->distance:B

    iget-short v0, p0, Lcom/t4game/UI_TextBox;->w:S

    const/16 v1, 0xe

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_TextBox;->w:S
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->frame_image:B

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/t4game/Data;->UIImage:[Ljavax/microedition/lcdui/Image;

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->frame_image:B

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    iget-short v0, p0, Lcom/t4game/UI_TextBox;->image_w:S

    sget-object v1, Lcom/t4game/Data;->UIImage:[Ljavax/microedition/lcdui/Image;

    iget-byte v2, p0, Lcom/t4game/UI_TextBox;->frame_image:B

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_TextBox;->image_w:S

    iget-short v0, p0, Lcom/t4game/UI_TextBox;->image_h:S

    sget-object v1, Lcom/t4game/Data;->UIImage:[Ljavax/microedition/lcdui/Image;

    iget-byte v2, p0, Lcom/t4game/UI_TextBox;->frame_image:B

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    or-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_TextBox;->image_h:S

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/t4game/UI_TextBox;->line_color:[B

    array-length v0, v0

    if-nez v0, :cond_2

    iput-short v4, p0, Lcom/t4game/UI_TextBox;->image_w:S

    iput-short v4, p0, Lcom/t4game/UI_TextBox;->image_h:S

    goto :goto_2

    :cond_2
    iput-short v5, p0, Lcom/t4game/UI_TextBox;->image_w:S

    iput-short v5, p0, Lcom/t4game/UI_TextBox;->image_h:S

    goto :goto_2
.end method

.method public keyEvent(I)V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/t4game/UI_TextBox;->is_focse:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/t4game/UI_TextBox;->type_scroll:Z

    if-nez v0, :cond_3

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->line_index:B

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/UI_TextBox;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->id:B

    invoke-virtual {v0, v1, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    goto :goto_0

    :cond_1
    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->line_index:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_TextBox;->line_index:B

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/t4game/UI_TextBox;->content:[Ljava/lang/String;

    array-length v0, v0

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->line_index:B

    sub-int/2addr v0, v1

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->sum_line:B

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/UI_TextBox;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->id:B

    invoke-virtual {v0, v1, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    goto :goto_0

    :cond_2
    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->line_index:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_TextBox;->line_index:B

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/t4game/UI_TextBox;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->id:B

    invoke-virtual {v0, v1, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    goto :goto_0

    :cond_3
    packed-switch p1, :pswitch_data_1

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/t4game/UI_TextBox;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->id:B

    invoke-virtual {v0, v1, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    goto :goto_0

    :pswitch_4
    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->current_page:B

    if-gt v0, v1, :cond_4

    iget-object v0, p0, Lcom/t4game/UI_TextBox;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->id:B

    invoke-virtual {v0, v1, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    goto :goto_0

    :cond_4
    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->current_page:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_TextBox;->current_page:B

    goto :goto_0

    :pswitch_5
    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->current_page:B

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->sum_page:B

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/t4game/UI_TextBox;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->id:B

    invoke-virtual {v0, v1, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    goto :goto_0

    :cond_5
    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->current_page:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_TextBox;->current_page:B

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x4
        :pswitch_3
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public pointEvent(II)B
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-short v3, p0, Lcom/t4game/UI_TextBox;->x:S

    aput v3, v1, v2

    const/4 v2, 0x1

    iget-short v3, p0, Lcom/t4game/UI_TextBox;->y:S

    iget-object v4, p0, Lcom/t4game/UI_TextBox;->ui:Lcom/t4game/GameUi;

    iget-short v4, v4, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x2

    iget-short v3, p0, Lcom/t4game/UI_TextBox;->x:S

    iget-short v4, p0, Lcom/t4game/UI_TextBox;->w:S

    add-int/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x3

    iget-short v3, p0, Lcom/t4game/UI_TextBox;->y:S

    iget-short v4, p0, Lcom/t4game/UI_TextBox;->h:S

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/t4game/UI_TextBox;->ui:Lcom/t4game/GameUi;

    iget-short v4, v4, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v3, v4

    aput v3, v1, v2

    invoke-static {p1, p2, v1}, Lcom/t4game/PointerUtil;->isPointerInArea(II[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_TextBox;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->id:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->setFocus(B)V

    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->id:B

    :cond_0
    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/UI_TextBox;->content:[Ljava/lang/String;

    return-void
.end method

.method public setFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/t4game/UI_TextBox;->is_focse:Z

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/UI_TextBox;->sum_page:B

    const-string v0, "/r/n"

    invoke-static {p1, v0}, Lcom/t4game/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/t4game/UI_TextBox;->setString([Ljava/lang/String;)V

    return-void
.end method

.method public setString([Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    if-nez p1, :cond_0

    new-array v0, v6, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/UI_TextBox;->content:[Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/UI_TextBox;->content:[Ljava/lang/String;

    const-string v1, ""

    aput-object v1, v0, v5

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    move v0, v5

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_2

    aget-object v2, p1, v0

    iget-short v3, p0, Lcom/t4game/UI_TextBox;->w:S

    iget-short v4, p0, Lcom/t4game/UI_TextBox;->image_w:S

    shl-int/lit8 v4, v4, 0x1

    sub-int/2addr v3, v4

    sget-object v4, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v2, v3, v4}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v2

    move v3, v5

    :goto_2
    array-length v4, v2

    if-ge v3, v4, :cond_1

    aget-object v4, v2, v3

    invoke-virtual {v1, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/UI_TextBox;->content:[Ljava/lang/String;

    move v3, v5

    :goto_3
    if-ge v3, v2, :cond_3

    iget-object v4, p0, Lcom/t4game/UI_TextBox;->content:[Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_3
    iget-short v0, p0, Lcom/t4game/UI_TextBox;->h:S

    iget-byte v1, p0, Lcom/t4game/UI_TextBox;->distance:B

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_TextBox;->sum_line:B

    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->sum_line:B

    iget-object v1, p0, Lcom/t4game/UI_TextBox;->content:[Ljava/lang/String;

    array-length v1, v1

    if-le v0, v1, :cond_4

    iget-object v0, p0, Lcom/t4game/UI_TextBox;->content:[Ljava/lang/String;

    array-length v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_TextBox;->sum_line:B

    :cond_4
    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->sum_line:B

    if-nez v0, :cond_5

    iput-byte v6, p0, Lcom/t4game/UI_TextBox;->sum_page:B

    :goto_4
    iput-byte v5, p0, Lcom/t4game/UI_TextBox;->line_index:B

    iput-byte v6, p0, Lcom/t4game/UI_TextBox;->current_page:B

    goto :goto_0

    :cond_5
    iget-byte v0, p0, Lcom/t4game/UI_TextBox;->sum_page:B

    iget-object v1, p0, Lcom/t4game/UI_TextBox;->content:[Ljava/lang/String;

    array-length v1, v1

    iget-byte v2, p0, Lcom/t4game/UI_TextBox;->sum_line:B

    div-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/UI_TextBox;->content:[Ljava/lang/String;

    array-length v2, v2

    iget-byte v3, p0, Lcom/t4game/UI_TextBox;->sum_line:B

    rem-int/2addr v2, v3

    if-lez v2, :cond_6

    move v2, v6

    :goto_5
    add-int/2addr v1, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_TextBox;->sum_page:B

    goto :goto_4

    :cond_6
    move v2, v5

    goto :goto_5
.end method
