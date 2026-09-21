.class public Lcom/t4game/UPageLable;
.super Ljava/lang/Object;


# instance fields
.field protected bFocus:Z

.field protected h:I

.field protected index:I

.field private lable:[Ljava/lang/String;

.field protected lableWidth:I

.field protected pageNum:I

.field protected w:I

.field protected x:I

.field protected y:I


# direct methods
.method public constructor <init>([Ljava/lang/String;IIII)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/t4game/UPageLable;->index:I

    iput-boolean v2, p0, Lcom/t4game/UPageLable;->bFocus:Z

    const/4 v0, 0x3

    iput v0, p0, Lcom/t4game/UPageLable;->pageNum:I

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    iput v0, p0, Lcom/t4game/UPageLable;->w:I

    iget v0, p0, Lcom/t4game/UPageLable;->w:I

    iget v1, p0, Lcom/t4game/UPageLable;->pageNum:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/UPageLable;->lableWidth:I

    iput v2, p0, Lcom/t4game/UPageLable;->x:I

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    sget v1, Lcom/t4game/Defaults;->lableTop:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/UPageLable;->y:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/t4game/UPageLable;->h:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/UPageLable;->lable:[Ljava/lang/String;

    iput-object p1, p0, Lcom/t4game/UPageLable;->lable:[Ljava/lang/String;

    array-length v0, p1

    iput v0, p0, Lcom/t4game/UPageLable;->pageNum:I

    iput p2, p0, Lcom/t4game/UPageLable;->x:I

    iput p3, p0, Lcom/t4game/UPageLable;->y:I

    iput p4, p0, Lcom/t4game/UPageLable;->w:I

    iput p5, p0, Lcom/t4game/UPageLable;->h:I

    iget v0, p0, Lcom/t4game/UPageLable;->pageNum:I

    div-int v0, p4, v0

    iput v0, p0, Lcom/t4game/UPageLable;->lableWidth:I

    return-void
.end method

.method private drawLable(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;IIIIZ)V
    .locals 8

    int-to-short v7, p4

    if-eqz p7, :cond_2

    const/16 v0, 0x11

    const/16 v1, 0x71

    const/16 v2, 0x81

    invoke-virtual {p2, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(III)V

    add-int/lit8 v1, p3, 0x3

    add-int/lit8 v2, v7, 0x2

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v0, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    const/16 v0, 0x11

    const/16 v1, 0x71

    const/16 v2, 0x81

    invoke-virtual {p2, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(III)V

    add-int/lit8 v0, p3, 0x1

    add-int v1, v7, p6

    add-int v2, p3, p5

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    add-int v3, v7, p6

    invoke-virtual {p2, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int/lit8 v0, p3, 0x1

    add-int v1, v7, p6

    add-int/lit8 v1, v1, 0x1

    add-int v2, p3, p5

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    add-int v3, v7, p6

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p2, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int/lit8 v0, p3, 0x1

    add-int v1, p3, p5

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v7, v1, v7}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int/lit8 v0, p3, 0x1

    const/4 v1, 0x1

    sub-int v1, v7, v1

    add-int v2, p3, p5

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    sub-int v3, v7, v3

    invoke-virtual {p2, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    iget-boolean v0, p0, Lcom/t4game/UPageLable;->bFocus:Z

    if-nez v0, :cond_0

    const v0, 0xffff00

    invoke-virtual {p2, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v0, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v0, v0, 0x4

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, v7, 0x1

    const/4 v2, 0x2

    sub-int v2, p5, v2

    const/4 v3, 0x2

    sub-int v3, p6, v3

    const/4 v4, 0x3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, v7, 0x2

    const/4 v2, 0x4

    sub-int v2, p5, v2

    const/4 v3, 0x4

    sub-int v3, p6, v3

    const/4 v4, 0x3

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :cond_2
    add-int/lit8 v1, p3, 0x3

    add-int/lit8 v2, v7, 0x2

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffffff

    move-object v0, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0
.end method

.method private isInRect(IIIIII)Z
    .locals 1

    if-le p1, p3, :cond_0

    add-int v0, p3, p5

    if-ge p1, v0, :cond_0

    if-le p2, p4, :cond_0

    add-int v0, p4, p6

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 10

    const/4 v9, 0x0

    move v8, v9

    :goto_0
    iget v0, p0, Lcom/t4game/UPageLable;->pageNum:I

    if-ge v8, v0, :cond_1

    iget v0, p0, Lcom/t4game/UPageLable;->x:I

    iget v1, p0, Lcom/t4game/UPageLable;->lableWidth:I

    mul-int/2addr v1, v8

    add-int v3, v0, v1

    iget v0, p0, Lcom/t4game/UPageLable;->index:I

    if-ne v8, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/UPageLable;->lable:[Ljava/lang/String;

    aget-object v1, v0, v8

    iget v4, p0, Lcom/t4game/UPageLable;->y:I

    iget v5, p0, Lcom/t4game/UPageLable;->lableWidth:I

    iget v6, p0, Lcom/t4game/UPageLable;->h:I

    const/4 v7, 0x1

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/t4game/UPageLable;->drawLable(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;IIIIZ)V

    :goto_1
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/UPageLable;->lable:[Ljava/lang/String;

    aget-object v1, v0, v8

    iget v4, p0, Lcom/t4game/UPageLable;->y:I

    iget v5, p0, Lcom/t4game/UPageLable;->lableWidth:I

    iget v6, p0, Lcom/t4game/UPageLable;->h:I

    move-object v0, p0

    move-object v2, p1

    move v7, v9

    invoke-direct/range {v0 .. v7}, Lcom/t4game/UPageLable;->drawLable(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;IIIIZ)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/t4game/UPageLable;->index:I

    return v0
.end method

.method public keyPointEvent()V
    .locals 9

    const/4 v8, 0x0

    iget v0, p0, Lcom/t4game/UPageLable;->w:I

    div-int/lit8 v5, v0, 0x3

    move v7, v8

    :goto_0
    iget v0, p0, Lcom/t4game/UPageLable;->pageNum:I

    if-ge v7, v0, :cond_1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    sget v2, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    iget v0, p0, Lcom/t4game/UPageLable;->x:I

    mul-int v3, v5, v7

    add-int/2addr v3, v0

    iget v4, p0, Lcom/t4game/UPageLable;->y:I

    iget v6, p0, Lcom/t4game/UPageLable;->h:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/t4game/UPageLable;->isInRect(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v8, p0, Lcom/t4game/UPageLable;->bFocus:Z

    iput v7, p0, Lcom/t4game/UPageLable;->index:I

    :cond_0
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public keyPressEvent(I)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/t4game/UPageLable;->bFocus:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x3

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/t4game/UPageLable;->index:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/t4game/UPageLable;->index:I

    iget v0, p0, Lcom/t4game/UPageLable;->index:I

    const/4 v1, -0x1

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/t4game/UPageLable;->pageNum:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/t4game/UPageLable;->index:I

    goto :goto_0

    :cond_2
    const/4 v0, -0x4

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/t4game/UPageLable;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/UPageLable;->index:I

    iget v0, p0, Lcom/t4game/UPageLable;->index:I

    iget v1, p0, Lcom/t4game/UPageLable;->pageNum:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/UPageLable;->index:I

    goto :goto_0

    :cond_3
    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/t4game/UPageLable;->bFocus:Z

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/t4game/UPageLable;->bFocus:Z

    goto :goto_0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/UPageLable;->index:I

    iput-boolean v0, p0, Lcom/t4game/UPageLable;->bFocus:Z

    return-void
.end method
