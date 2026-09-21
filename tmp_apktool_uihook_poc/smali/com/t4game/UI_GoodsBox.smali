.class public Lcom/t4game/UI_GoodsBox;
.super Lcom/t4game/UI_Super;


# static fields
.field public static final BLOCK_OFFSET:I = 0x1e

.field public static final BLOCK_SPACE:B = 0x6t

.field public static final blockWH:B = 0x18t


# instance fields
.field black_image:[B

.field boxs:[Lcom/t4game/RoleGoods;

.field colIndex:B

.field color_of_hole:[B

.field disable:[Z

.field gs:Lcom/t4game/GameScreen;

.field iconIndex:[S

.field isFocus:Z

.field isOnBody:Z

.field leng:B

.field lineIndex:B

.field name:[Ljava/lang/String;

.field numOneLine:B

.field position:[Ljava/lang/String;

.field rowMax:B

.field showNoOpen:Z

.field showType:B

.field startRow:B

.field state:B

.field stateIndex:B

.field private ui:Lcom/t4game/GameUi;

.field yy:I


# direct methods
.method public constructor <init>(Lcom/t4game/GameUi;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/t4game/UI_Super;-><init>(Lcom/t4game/UI_Super;)V

    iput-object v1, p0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    iput-object v1, p0, Lcom/t4game/UI_GoodsBox;->disable:[Z

    iput-object v1, p0, Lcom/t4game/UI_GoodsBox;->iconIndex:[S

    iput-object v1, p0, Lcom/t4game/UI_GoodsBox;->name:[Ljava/lang/String;

    iput-boolean v2, p0, Lcom/t4game/UI_GoodsBox;->isFocus:Z

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/UI_GoodsBox;->state:B

    iput-boolean v2, p0, Lcom/t4game/UI_GoodsBox;->showNoOpen:Z

    iput-byte v2, p0, Lcom/t4game/UI_GoodsBox;->showType:B

    iput-boolean v2, p0, Lcom/t4game/UI_GoodsBox;->isOnBody:Z

    iput-object v1, p0, Lcom/t4game/UI_GoodsBox;->gs:Lcom/t4game/GameScreen;

    iput-object p1, p0, Lcom/t4game/UI_GoodsBox;->ui:Lcom/t4game/GameUi;

    const/16 v0, 0xc

    iput-byte v0, p0, Lcom/t4game/UI_GoodsBox;->type:B

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

    invoke-virtual {p0}, Lcom/t4game/UI_GoodsBox;->clone()Lcom/t4game/UI_Super;

    move-result-object v0

    return-object v0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;S)V
    .locals 10

    iget-object v0, p0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p2, p0, Lcom/t4game/UI_GoodsBox;->yy:I

    const/4 v0, 0x2

    sub-int v0, p2, v0

    int-to-short v4, v0

    iget-object v0, p0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    array-length v0, v0

    iget-byte v1, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    invoke-static {v0, v1}, Lcom/t4game/Util;->getLineNumInt(IB)I

    move-result v0

    int-to-byte v0, v0

    iget-byte v1, p0, Lcom/t4game/UI_GoodsBox;->rowMax:B

    if-le v0, v1, :cond_4

    iget-byte v1, p0, Lcom/t4game/UI_GoodsBox;->startRow:B

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->rowMax:B

    add-int/2addr v1, v2

    int-to-byte v1, v1

    :goto_1
    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->startRow:B

    :goto_2
    if-ge v2, v1, :cond_d

    const/4 v3, 0x0

    :goto_3
    iget-byte v5, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    if-ge v3, v5, :cond_c

    iget-byte v5, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    mul-int/2addr v5, v2

    add-int/2addr v5, v3

    int-to-byte v5, v5

    iget-object v6, p0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    array-length v6, v6

    if-ge v5, v6, :cond_b

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/t4game/UI_GoodsBox;->disable:[Z

    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    aget-object v7, v7, v5

    if-eqz v7, :cond_1

    const/4 v6, 0x1

    :cond_1
    :goto_4
    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/t4game/UI_GoodsBox;->gs:Lcom/t4game/GameScreen;

    iget-short v7, p0, Lcom/t4game/UI_GoodsBox;->x:S

    mul-int/lit8 v8, v3, 0x1e

    add-int/2addr v7, v8

    iget-short v8, p0, Lcom/t4game/UI_GoodsBox;->y:S

    sub-int/2addr v8, v4

    iget-byte v9, p0, Lcom/t4game/UI_GoodsBox;->startRow:B

    sub-int v9, v2, v9

    mul-int/lit8 v9, v9, 0x1e

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    aget-object v9, v9, v5

    invoke-virtual {v6, v7, v8, p1, v9}, Lcom/t4game/GameScreen;->paintGoodsIcon(IILjavax/microedition/lcdui/Graphics;Lcom/t4game/RoleGoods;)V

    iget-object v6, p0, Lcom/t4game/UI_GoodsBox;->color_of_hole:[B

    if-eqz v6, :cond_2

    iget-byte v6, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    mul-int/2addr v6, v2

    add-int/2addr v6, v3

    int-to-byte v6, v6

    iget-object v7, p0, Lcom/t4game/UI_GoodsBox;->color_of_hole:[B

    array-length v7, v7

    if-ge v6, v7, :cond_2

    sget-object v7, Lcom/t4game/Defaults;->iconBox:[Ljavax/microedition/lcdui/Image;

    sget-object v8, Lcom/t4game/Defaults;->map_icon_hole:[I

    iget-object v9, p0, Lcom/t4game/UI_GoodsBox;->color_of_hole:[B

    aget-byte v6, v9, v6

    aget v6, v8, v6

    aget-object v6, v7, v6

    iget-short v7, p0, Lcom/t4game/UI_GoodsBox;->x:S

    mul-int/lit8 v8, v3, 0x1e

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0xc

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    iget-short v8, p0, Lcom/t4game/UI_GoodsBox;->y:S

    sub-int/2addr v8, v4

    iget-byte v9, p0, Lcom/t4game/UI_GoodsBox;->startRow:B

    sub-int v9, v2, v9

    mul-int/lit8 v9, v9, 0x1e

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0xc

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    const/4 v9, 0x3

    invoke-virtual {p1, v6, v7, v8, v9}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_2
    :goto_5
    iget-byte v6, p0, Lcom/t4game/UI_GoodsBox;->state:B

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    iget-byte v6, p0, Lcom/t4game/UI_GoodsBox;->stateIndex:B

    if-ne v6, v5, :cond_3

    const v5, 0xffff00

    invoke-virtual {p1, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v5, Lcom/t4game/UI_Super;->tick:I

    rem-int/lit8 v5, v5, 0x4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_a

    iget-short v5, p0, Lcom/t4game/UI_GoodsBox;->x:S

    mul-int/lit8 v6, v3, 0x1e

    add-int/2addr v5, v6

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    iget-short v6, p0, Lcom/t4game/UI_GoodsBox;->y:S

    sub-int/2addr v6, v4

    iget-byte v7, p0, Lcom/t4game/UI_GoodsBox;->startRow:B

    sub-int v7, v2, v7

    mul-int/lit8 v7, v7, 0x1e

    add-int/2addr v6, v7

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    const/16 v7, 0x1c

    const/16 v8, 0x1c

    invoke-virtual {p1, v5, v6, v7, v8}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    :cond_3
    :goto_6
    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    goto/16 :goto_3

    :cond_4
    move v1, v0

    goto/16 :goto_1

    :cond_5
    iget-object v7, p0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    aget-object v7, v7, v5

    if-nez v7, :cond_6

    iget-object v7, p0, Lcom/t4game/UI_GoodsBox;->disable:[Z

    const/4 v8, 0x1

    aput-boolean v8, v7, v5

    :cond_6
    iget-object v7, p0, Lcom/t4game/UI_GoodsBox;->disable:[Z

    aget-boolean v7, v7, v5

    if-nez v7, :cond_1

    const/4 v6, 0x1

    goto/16 :goto_4

    :cond_7
    iget-boolean v6, p0, Lcom/t4game/UI_GoodsBox;->isOnBody:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/t4game/UI_GoodsBox;->gs:Lcom/t4game/GameScreen;

    iget-object v6, v6, Lcom/t4game/GameScreen;->EQUE_POST_MAP:[B

    aget-byte v6, v6, v5

    const/4 v7, -0x1

    if-le v6, v7, :cond_8

    iget-object v6, p0, Lcom/t4game/UI_GoodsBox;->gs:Lcom/t4game/GameScreen;

    iget-short v7, p0, Lcom/t4game/UI_GoodsBox;->x:S

    mul-int/lit8 v8, v3, 0x1e

    add-int/2addr v7, v8

    iget-short v8, p0, Lcom/t4game/UI_GoodsBox;->y:S

    sub-int/2addr v8, v4

    iget-byte v9, p0, Lcom/t4game/UI_GoodsBox;->startRow:B

    sub-int v9, v2, v9

    mul-int/lit8 v9, v9, 0x1e

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/t4game/UI_GoodsBox;->black_image:[B

    aget-byte v9, v9, v5

    invoke-virtual {v6, v7, v8, v9, p1}, Lcom/t4game/GameScreen;->paintOutfitBackImg(IIILjavax/microedition/lcdui/Graphics;)V

    iget-short v6, p0, Lcom/t4game/UI_GoodsBox;->x:S

    mul-int/lit8 v7, v3, 0x1e

    add-int/2addr v6, v7

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    iget-short v7, p0, Lcom/t4game/UI_GoodsBox;->y:S

    sub-int/2addr v7, v4

    iget-byte v8, p0, Lcom/t4game/UI_GoodsBox;->startRow:B

    sub-int v8, v2, v8

    mul-int/lit8 v8, v8, 0x1e

    add-int/2addr v7, v8

    const/4 v8, 0x2

    sub-int/2addr v7, v8

    invoke-static {v6, v7, p1}, Lcom/t4game/DraftingUtil;->paintIconBlock(IILjavax/microedition/lcdui/Graphics;)V

    :cond_8
    :goto_7
    iget-object v6, p0, Lcom/t4game/UI_GoodsBox;->color_of_hole:[B

    if-eqz v6, :cond_2

    iget-byte v6, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    mul-int/2addr v6, v2

    add-int/2addr v6, v3

    int-to-byte v6, v6

    iget-object v7, p0, Lcom/t4game/UI_GoodsBox;->color_of_hole:[B

    array-length v7, v7

    if-ge v6, v7, :cond_2

    sget-object v7, Lcom/t4game/Defaults;->iconBox:[Ljavax/microedition/lcdui/Image;

    sget-object v8, Lcom/t4game/Defaults;->map_icon_hole:[I

    iget-object v9, p0, Lcom/t4game/UI_GoodsBox;->color_of_hole:[B

    aget-byte v6, v9, v6

    aget v6, v8, v6

    aget-object v6, v7, v6

    iget-short v7, p0, Lcom/t4game/UI_GoodsBox;->x:S

    mul-int/lit8 v8, v3, 0x1e

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0xc

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    iget-short v8, p0, Lcom/t4game/UI_GoodsBox;->y:S

    sub-int/2addr v8, v4

    iget-byte v9, p0, Lcom/t4game/UI_GoodsBox;->startRow:B

    sub-int v9, v2, v9

    mul-int/lit8 v9, v9, 0x1e

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0xc

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    const/4 v9, 0x3

    invoke-virtual {p1, v6, v7, v8, v9}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_5

    :cond_9
    iget-short v6, p0, Lcom/t4game/UI_GoodsBox;->x:S

    mul-int/lit8 v7, v3, 0x1e

    add-int/2addr v6, v7

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    iget-short v7, p0, Lcom/t4game/UI_GoodsBox;->y:S

    sub-int/2addr v7, v4

    iget-byte v8, p0, Lcom/t4game/UI_GoodsBox;->startRow:B

    sub-int v8, v2, v8

    mul-int/lit8 v8, v8, 0x1e

    add-int/2addr v7, v8

    const/4 v8, 0x2

    sub-int/2addr v7, v8

    invoke-static {v6, v7, p1}, Lcom/t4game/DraftingUtil;->paintIconBlock(IILjavax/microedition/lcdui/Graphics;)V

    goto :goto_7

    :cond_a
    iget-short v5, p0, Lcom/t4game/UI_GoodsBox;->x:S

    mul-int/lit8 v6, v3, 0x1e

    add-int/2addr v5, v6

    const/4 v6, 0x4

    sub-int/2addr v5, v6

    iget-short v6, p0, Lcom/t4game/UI_GoodsBox;->y:S

    sub-int/2addr v6, v4

    iget-byte v7, p0, Lcom/t4game/UI_GoodsBox;->startRow:B

    sub-int v7, v2, v7

    mul-int/lit8 v7, v7, 0x1e

    add-int/2addr v6, v7

    const/4 v7, 0x4

    sub-int/2addr v6, v7

    const/16 v7, 0x1f

    const/16 v8, 0x1f

    invoke-virtual {p1, v5, v6, v7, v8}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    goto/16 :goto_6

    :cond_b
    iget-boolean v5, p0, Lcom/t4game/UI_GoodsBox;->showNoOpen:Z

    if-eqz v5, :cond_3

    iget-short v5, p0, Lcom/t4game/UI_GoodsBox;->x:S

    mul-int/lit8 v6, v3, 0x1e

    add-int/2addr v5, v6

    iget-short v6, p0, Lcom/t4game/UI_GoodsBox;->y:S

    sub-int/2addr v6, v4

    iget-byte v7, p0, Lcom/t4game/UI_GoodsBox;->startRow:B

    sub-int v7, v2, v7

    mul-int/lit8 v7, v7, 0x1e

    add-int/2addr v6, v7

    invoke-static {v5, v6, p1}, Lcom/t4game/DraftingUtil;->paintIconBlockNoOpen(IILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_6

    :cond_c
    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto/16 :goto_2

    :cond_d
    iget-boolean v1, p0, Lcom/t4game/UI_GoodsBox;->isFocus:Z

    if-eqz v1, :cond_e

    iget-short v1, p0, Lcom/t4game/UI_GoodsBox;->x:S

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    mul-int/lit8 v2, v2, 0x1e

    add-int/2addr v1, v2

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    iget-byte v3, p0, Lcom/t4game/UI_GoodsBox;->startRow:B

    sub-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x1e

    iget-short v3, p0, Lcom/t4game/UI_GoodsBox;->y:S

    add-int/2addr v2, v3

    sub-int/2addr v2, v4

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-static {v1, v2, p1}, Lcom/t4game/DraftingUtil;->paintFunctionBlockSelect(IILjavax/microedition/lcdui/Graphics;)V

    :cond_e
    iget-byte v1, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    mul-int/2addr v1, v2

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    array-length v2, v2

    if-ge v1, v2, :cond_10

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/t4game/UI_GoodsBox;->disable:[Z

    if-nez v2, :cond_11

    const/4 v1, 0x1

    :cond_f
    :goto_8
    if-eqz v1, :cond_10

    iget-byte v1, p0, Lcom/t4game/UI_GoodsBox;->startRow:B

    invoke-virtual {p0, p1, v1}, Lcom/t4game/UI_GoodsBox;->drawShowName(Ljavax/microedition/lcdui/Graphics;I)V

    :cond_10
    iget-byte v1, p0, Lcom/t4game/UI_GoodsBox;->rowMax:B

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    iget-short v3, p0, Lcom/t4game/UI_GoodsBox;->x:S

    iget-short v5, p0, Lcom/t4game/UI_GoodsBox;->w:S

    add-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x3

    iget-short v5, p0, Lcom/t4game/UI_GoodsBox;->y:S

    sub-int v4, v5, v4

    const/4 v5, 0x2

    sub-int/2addr v4, v5

    iget-short v5, p0, Lcom/t4game/UI_GoodsBox;->h:S

    add-int/lit8 v5, v5, 0x4

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_0

    :cond_11
    iget-object v2, p0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    iget-byte v3, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    iget-byte v5, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    mul-int/2addr v3, v5

    iget-byte v5, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    add-int/2addr v3, v5

    aget-object v2, v2, v3

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/t4game/UI_GoodsBox;->disable:[Z

    iget-byte v3, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    iget-byte v5, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    mul-int/2addr v3, v5

    iget-byte v5, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    add-int/2addr v3, v5

    const/4 v5, 0x1

    aput-boolean v5, v2, v3

    :cond_12
    iget-object v2, p0, Lcom/t4game/UI_GoodsBox;->disable:[Z

    iget-byte v3, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    iget-byte v5, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    mul-int/2addr v3, v5

    iget-byte v5, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    add-int/2addr v3, v5

    aget-boolean v2, v2, v3

    if-nez v2, :cond_f

    const/4 v1, 0x1

    goto :goto_8
.end method

.method public drawShowName(Ljavax/microedition/lcdui/Graphics;I)V
    .locals 8

    const v7, 0xffc700

    sget-object v0, Lcom/t4game/GameUi;->topGameUI:Lcom/t4game/GameUi;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/t4game/UI_GoodsBox;->isFocus:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    iget-byte v3, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    mul-int/2addr v2, v3

    iget-byte v3, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    add-int/2addr v2, v3

    aget-object v2, v1, v2

    iget-short v1, p0, Lcom/t4game/UI_GoodsBox;->x:S

    iget-byte v3, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    mul-int/lit8 v3, v3, 0x1e

    add-int/2addr v1, v3

    add-int/lit8 v4, v1, 0x18

    iget-byte v1, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    sub-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0x1e

    iget-short v3, p0, Lcom/t4game/UI_GoodsBox;->y:S

    add-int/2addr v1, v3

    iget v3, p0, Lcom/t4game/UI_GoodsBox;->yy:I

    sub-int v5, v1, v3

    const/4 v1, 0x0

    if-nez v2, :cond_2

    iget-boolean v3, p0, Lcom/t4game/UI_GoodsBox;->isOnBody:Z

    if-eqz v3, :cond_2

    iget-object v1, p0, Lcom/t4game/UI_GoodsBox;->position:[Ljava/lang/String;

    iget-byte v3, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    iget-byte v6, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    mul-int/2addr v3, v6

    iget-byte v6, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    add-int/2addr v3, v6

    aget-object v1, v1, v3

    move v6, v7

    move-object v3, v1

    :goto_1
    iget-object v1, p0, Lcom/t4game/UI_GoodsBox;->gs:Lcom/t4game/GameScreen;

    iget-boolean v7, p0, Lcom/t4game/UI_GoodsBox;->isOnBody:Z

    invoke-virtual/range {v0 .. v7}, Lcom/t4game/GameUi;->openBubble(Lcom/t4game/GameScreen;Lcom/t4game/RoleGoods;Ljava/lang/String;IIIZ)V

    goto :goto_0

    :cond_2
    move v6, v7

    move-object v3, v1

    goto :goto_1
.end method

.method public drawWithRoleGoodGrade(Ljavax/microedition/lcdui/Graphics;S[I)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    move-object v5, v0

    if-nez v5, :cond_0

    :goto_0
    return-void

    :cond_0
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/t4game/UI_GoodsBox;->yy:I

    const/4 v5, 0x2

    sub-int v5, p2, v5

    move v0, v5

    int-to-short v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    move-object v5, v0

    array-length v5, v5

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    move v6, v0

    invoke-static {v5, v6}, Lcom/t4game/Util;->getLineNumInt(IB)I

    move-result v5

    move v0, v5

    int-to-byte v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->rowMax:B

    move v5, v0

    move/from16 v0, v17

    move v1, v5

    if-le v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->startRow:B

    move v5, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->rowMax:B

    move v6, v0

    add-int/2addr v5, v6

    int-to-byte v5, v5

    move/from16 v18, v5

    :goto_1
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->startRow:B

    move v5, v0

    move/from16 v19, v5

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_14

    const/4 v5, 0x0

    move/from16 v20, v5

    :goto_3
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    move v5, v0

    move/from16 v0, v20

    move v1, v5

    if-ge v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    move v5, v0

    mul-int v5, v5, v19

    add-int v5, v5, v20

    move v0, v5

    int-to-byte v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    move-object v5, v0

    array-length v5, v5

    move/from16 v0, v21

    move v1, v5

    if-ge v0, v1, :cond_12

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->disable:[Z

    move-object v6, v0

    if-nez v6, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    move-object v6, v0

    aget-object v6, v6, v21

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    :goto_4
    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    move-object v5, v0

    aget-object v15, v5, v21

    if-eqz v15, :cond_3

    iget-byte v5, v15, Lcom/t4game/RoleGoods;->type:B

    if-nez v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->gs:Lcom/t4game/GameScreen;

    move-object v5, v0

    iget-short v6, v15, Lcom/t4game/RoleGoods;->iconId:S

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->x:S

    move v7, v0

    mul-int/lit8 v8, v20, 0x1e

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->y:S

    move v8, v0

    sub-int v8, v8, v16

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->startRow:B

    move v9, v0

    sub-int v9, v19, v9

    mul-int/lit8 v9, v9, 0x1e

    add-int/2addr v8, v9

    iget-byte v9, v15, Lcom/t4game/RoleGoods;->color:B

    aget v10, p3, v9

    iget-short v9, v15, Lcom/t4game/RoleGoods;->limitUseLevel:S

    div-int/lit8 v11, v9, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->gs:Lcom/t4game/GameScreen;

    move-object v9, v0

    iget-object v9, v9, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v9, v9, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-short v9, v9, Lcom/t4game/GUser;->grade:S

    invoke-virtual {v15, v9}, Lcom/t4game/RoleGoods;->testCanUse(I)Z

    move-result v12

    iget-byte v13, v15, Lcom/t4game/RoleGoods;->selected:B

    iget-boolean v14, v15, Lcom/t4game/RoleGoods;->canOperate:Z

    move-object/from16 v9, p1

    invoke-virtual/range {v5 .. v14}, Lcom/t4game/GameScreen;->paintRoleGoodsIcon(Ljava/lang/String;IILjavax/microedition/lcdui/Graphics;IIZBZ)V

    iget-boolean v5, v15, Lcom/t4game/RoleGoods;->isGoodsPay:Z

    if-nez v5, :cond_2

    move-object v0, v15

    check-cast v0, Lcom/t4game/RoleOutfit;

    move-object/from16 p2, v0

    move-object/from16 v0, p2

    iget-byte v0, v0, Lcom/t4game/RoleOutfit;->holeNum:B

    move v5, v0

    if-lez v5, :cond_2

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->x:S

    move v5, v0

    mul-int/lit8 v6, v20, 0x1e

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->y:S

    move v6, v0

    sub-int v6, v6, v16

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->startRow:B

    move v7, v0

    sub-int v7, v19, v7

    mul-int/lit8 v7, v7, 0x1e

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x12

    move-object/from16 v0, p2

    iget-byte v0, v0, Lcom/t4game/RoleOutfit;->holeNum:B

    move v7, v0

    move v0, v5

    move v1, v6

    move v2, v7

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    :cond_2
    :goto_5
    iget-boolean v5, v15, Lcom/t4game/RoleGoods;->limitTime:Z

    if-eqz v5, :cond_d

    sget-object v5, Lcom/t4game/OneRow_EMAIL_RECEIVE;->email_img_time:Ljavax/microedition/lcdui/Image;

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->x:S

    move v6, v0

    mul-int/lit8 v7, v20, 0x1e

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0xa

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->y:S

    move v7, v0

    sub-int v7, v7, v16

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->startRow:B

    move v8, v0

    sub-int v8, v19, v8

    mul-int/lit8 v8, v8, 0x1e

    add-int/2addr v7, v8

    sget v8, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_3
    :goto_6
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->x:S

    move v5, v0

    mul-int/lit8 v6, v20, 0x1e

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->y:S

    move v6, v0

    sub-int v6, v6, v16

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->startRow:B

    move v7, v0

    sub-int v7, v19, v7

    mul-int/lit8 v7, v7, 0x1e

    add-int/2addr v6, v7

    const/16 v7, 0x16

    const/16 v8, 0x16

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->color_of_hole:[B

    move-object v5, v0

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    move v5, v0

    mul-int v5, v5, v19

    add-int v5, v5, v20

    int-to-byte v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->color_of_hole:[B

    move-object v6, v0

    array-length v6, v6

    if-ge v5, v6, :cond_4

    sget-object v6, Lcom/t4game/Defaults;->iconBox:[Ljavax/microedition/lcdui/Image;

    sget-object v7, Lcom/t4game/Defaults;->map_icon_hole:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->color_of_hole:[B

    move-object v8, v0

    aget-byte v5, v8, v5

    aget v5, v7, v5

    aget-object v5, v6, v5

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->x:S

    move v6, v0

    mul-int/lit8 v7, v20, 0x1e

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0xc

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->y:S

    move v7, v0

    sub-int v7, v7, v16

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->startRow:B

    move v8, v0

    sub-int v8, v19, v8

    mul-int/lit8 v8, v8, 0x1e

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0xc

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    const/4 v8, 0x3

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    move-object v5, v0

    aget-object v5, v5, v21

    iget-short v5, v5, Lcom/t4game/RoleGoods;->grade:S

    const/4 v6, -0x1

    if-le v5, v6, :cond_5

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->x:S

    move v5, v0

    mul-int/lit8 v6, v20, 0x1e

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->y:S

    move v6, v0

    sub-int v6, v6, v16

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->startRow:B

    move v7, v0

    sub-int v7, v19, v7

    mul-int/lit8 v7, v7, 0x1e

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    move-object v7, v0

    aget-object v7, v7, v21

    iget-short v7, v7, Lcom/t4game/RoleGoods;->grade:S

    move v0, v5

    move v1, v6

    move v2, v7

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    :cond_5
    :goto_7
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->state:B

    move v5, v0

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->stateIndex:B

    move v5, v0

    move v0, v5

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    const v5, 0xffff00

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v5, Lcom/t4game/UI_Super;->tick:I

    rem-int/lit8 v5, v5, 0x4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_11

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->x:S

    move v5, v0

    mul-int/lit8 v6, v20, 0x1e

    add-int/2addr v5, v6

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->y:S

    move v6, v0

    sub-int v6, v6, v16

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->startRow:B

    move v7, v0

    sub-int v7, v19, v7

    mul-int/lit8 v7, v7, 0x1e

    add-int/2addr v6, v7

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    const/16 v7, 0x1c

    const/16 v8, 0x1c

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    :cond_6
    :goto_8
    add-int/lit8 v5, v20, 0x1

    int-to-byte v5, v5

    move/from16 v20, v5

    goto/16 :goto_3

    :cond_7
    move/from16 v18, v17

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    move-object v6, v0

    aget-object v6, v6, v21

    if-nez v6, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->disable:[Z

    move-object v6, v0

    const/4 v7, 0x1

    aput-boolean v7, v6, v21

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->disable:[Z

    move-object v6, v0

    aget-boolean v6, v6, v21

    if-nez v6, :cond_1

    const/4 v5, 0x1

    goto/16 :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->gs:Lcom/t4game/GameScreen;

    move-object v5, v0

    iget-short v6, v15, Lcom/t4game/RoleGoods;->iconId:S

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->x:S

    move v7, v0

    mul-int/lit8 v8, v20, 0x1e

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->y:S

    move v8, v0

    sub-int v8, v8, v16

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->startRow:B

    move v9, v0

    sub-int v9, v19, v9

    mul-int/lit8 v9, v9, 0x1e

    add-int/2addr v8, v9

    iget-byte v9, v15, Lcom/t4game/RoleGoods;->color:B

    const/4 v10, 0x5

    if-le v9, v10, :cond_b

    const v9, 0x7a654a

    move v10, v9

    :goto_9
    iget-short v9, v15, Lcom/t4game/RoleGoods;->limitUseLevel:S

    div-int/lit8 v11, v9, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->gs:Lcom/t4game/GameScreen;

    move-object v9, v0

    iget-object v9, v9, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v9, v9, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-short v9, v9, Lcom/t4game/GUser;->grade:S

    invoke-virtual {v15, v9}, Lcom/t4game/RoleGoods;->testCanUse(I)Z

    move-result v12

    iget-byte v13, v15, Lcom/t4game/RoleGoods;->selected:B

    iget-boolean v14, v15, Lcom/t4game/RoleGoods;->canOperate:Z

    move-object/from16 v9, p1

    invoke-virtual/range {v5 .. v14}, Lcom/t4game/GameScreen;->paintRoleGoodsIcon(Ljava/lang/String;IILjavax/microedition/lcdui/Graphics;IIZBZ)V

    iget-short v5, v15, Lcom/t4game/RoleGoods;->num:S

    if-lez v5, :cond_2

    iget-short v5, v15, Lcom/t4game/RoleGoods;->num:S

    const/16 v6, 0xa

    if-lt v5, v6, :cond_c

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->x:S

    move v5, v0

    mul-int/lit8 v6, v20, 0x1e

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0xe

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->y:S

    move v6, v0

    sub-int v6, v6, v16

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->startRow:B

    move v7, v0

    sub-int v7, v19, v7

    mul-int/lit8 v7, v7, 0x1e

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x12

    iget-short v7, v15, Lcom/t4game/RoleGoods;->num:S

    move v0, v5

    move v1, v6

    move v2, v7

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_5

    :cond_b
    iget-byte v9, v15, Lcom/t4game/RoleGoods;->color:B

    aget v9, p3, v9

    move v10, v9

    goto :goto_9

    :cond_c
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->x:S

    move v5, v0

    mul-int/lit8 v6, v20, 0x1e

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x12

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->y:S

    move v6, v0

    sub-int v6, v6, v16

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->startRow:B

    move v7, v0

    sub-int v7, v19, v7

    mul-int/lit8 v7, v7, 0x1e

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x12

    iget-short v7, v15, Lcom/t4game/RoleGoods;->num:S

    move v0, v5

    move v1, v6

    move v2, v7

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_5

    :cond_d
    iget-boolean v5, v15, Lcom/t4game/RoleGoods;->binded:Z

    if-eqz v5, :cond_3

    sget-object v5, Lcom/t4game/OneRow_EMAIL_RECEIVE;->email_img_lock:Ljavax/microedition/lcdui/Image;

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->x:S

    move v6, v0

    mul-int/lit8 v7, v20, 0x1e

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->y:S

    move v7, v0

    sub-int v7, v7, v16

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->startRow:B

    move v8, v0

    sub-int v8, v19, v8

    mul-int/lit8 v8, v8, 0x1e

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x2

    sget v8, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_6

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/t4game/UI_GoodsBox;->isOnBody:Z

    move v5, v0

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->gs:Lcom/t4game/GameScreen;

    move-object v5, v0

    iget-object v5, v5, Lcom/t4game/GameScreen;->EQUE_POST_MAP:[B

    aget-byte v5, v5, v21

    const/4 v6, -0x1

    if-le v5, v6, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->gs:Lcom/t4game/GameScreen;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->x:S

    move v6, v0

    mul-int/lit8 v7, v20, 0x1e

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->y:S

    move v7, v0

    sub-int v7, v7, v16

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->startRow:B

    move v8, v0

    sub-int v8, v19, v8

    mul-int/lit8 v8, v8, 0x1e

    add-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->black_image:[B

    move-object v8, v0

    aget-byte v8, v8, v21

    move-object v0, v5

    move v1, v6

    move v2, v7

    move v3, v8

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/t4game/GameScreen;->paintOutfitBackImg(IIILjavax/microedition/lcdui/Graphics;)V

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->x:S

    move v5, v0

    mul-int/lit8 v6, v20, 0x1e

    add-int/2addr v5, v6

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->y:S

    move v6, v0

    sub-int v6, v6, v16

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->startRow:B

    move v7, v0

    sub-int v7, v19, v7

    mul-int/lit8 v7, v7, 0x1e

    add-int/2addr v6, v7

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    move v0, v5

    move v1, v6

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/t4game/DraftingUtil;->paintIconBlock(IILjavax/microedition/lcdui/Graphics;)V

    :cond_f
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->color_of_hole:[B

    move-object v5, v0

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    move v5, v0

    mul-int v5, v5, v19

    add-int v5, v5, v20

    int-to-byte v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->color_of_hole:[B

    move-object v6, v0

    array-length v6, v6

    if-ge v5, v6, :cond_5

    sget-object v6, Lcom/t4game/Defaults;->iconBox:[Ljavax/microedition/lcdui/Image;

    sget-object v7, Lcom/t4game/Defaults;->map_icon_hole:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->color_of_hole:[B

    move-object v8, v0

    aget-byte v5, v8, v5

    aget v5, v7, v5

    aget-object v5, v6, v5

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->x:S

    move v6, v0

    mul-int/lit8 v7, v20, 0x1e

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0xc

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->y:S

    move v7, v0

    sub-int v7, v7, v16

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->startRow:B

    move v8, v0

    sub-int v8, v19, v8

    mul-int/lit8 v8, v8, 0x1e

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0xc

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    const/4 v8, 0x3

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_7

    :cond_10
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->x:S

    move v5, v0

    mul-int/lit8 v6, v20, 0x1e

    add-int/2addr v5, v6

    const/4 v6, 0x2

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->y:S

    move v6, v0

    sub-int v6, v6, v16

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->startRow:B

    move v7, v0

    sub-int v7, v19, v7

    mul-int/lit8 v7, v7, 0x1e

    add-int/2addr v6, v7

    const/4 v7, 0x2

    sub-int/2addr v6, v7

    move v0, v5

    move v1, v6

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/t4game/DraftingUtil;->paintIconBlock(IILjavax/microedition/lcdui/Graphics;)V

    goto :goto_a

    :cond_11
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->x:S

    move v5, v0

    mul-int/lit8 v6, v20, 0x1e

    add-int/2addr v5, v6

    const/4 v6, 0x4

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->y:S

    move v6, v0

    sub-int v6, v6, v16

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->startRow:B

    move v7, v0

    sub-int v7, v19, v7

    mul-int/lit8 v7, v7, 0x1e

    add-int/2addr v6, v7

    const/4 v7, 0x4

    sub-int/2addr v6, v7

    const/16 v7, 0x1f

    const/16 v8, 0x1f

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    goto/16 :goto_8

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/t4game/UI_GoodsBox;->showNoOpen:Z

    move v5, v0

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->x:S

    move v5, v0

    mul-int/lit8 v6, v20, 0x1e

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->y:S

    move v6, v0

    sub-int v6, v6, v16

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->startRow:B

    move v7, v0

    sub-int v7, v19, v7

    mul-int/lit8 v7, v7, 0x1e

    add-int/2addr v6, v7

    move v0, v5

    move v1, v6

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/t4game/DraftingUtil;->paintIconBlockNoOpen(IILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_8

    :cond_13
    add-int/lit8 v5, v19, 0x1

    int-to-byte v5, v5

    move/from16 v19, v5

    goto/16 :goto_2

    :cond_14
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/t4game/UI_GoodsBox;->isFocus:Z

    move v5, v0

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->x:S

    move v5, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    move v6, v0

    mul-int/lit8 v6, v6, 0x1e

    add-int/2addr v5, v6

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    move v6, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->startRow:B

    move v7, v0

    sub-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x1e

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->y:S

    move v7, v0

    add-int/2addr v6, v7

    sub-int v6, v6, v16

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move v0, v5

    move v1, v6

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/t4game/DraftingUtil;->paintFunctionBlockSelect(IILjavax/microedition/lcdui/Graphics;)V

    :cond_15
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    move v5, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    move v6, v0

    mul-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    move-object v6, v0

    array-length v6, v6

    if-ge v5, v6, :cond_17

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->disable:[Z

    move-object v6, v0

    if-nez v6, :cond_18

    const/4 v5, 0x1

    :cond_16
    :goto_b
    if-eqz v5, :cond_17

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->startRow:B

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/t4game/UI_GoodsBox;->drawShowName(Ljavax/microedition/lcdui/Graphics;I)V

    :cond_17
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->rowMax:B

    move v6, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    move v7, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->x:S

    move v5, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->w:S

    move v8, v0

    add-int/2addr v5, v8

    add-int/lit8 v8, v5, 0x3

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->y:S

    move v5, v0

    sub-int v5, v5, v16

    const/4 v9, 0x2

    sub-int v9, v5, v9

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->h:S

    move v5, v0

    add-int/lit8 v10, v5, 0x4

    move/from16 v5, v17

    move-object/from16 v11, p1

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    move v7, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    move v8, v0

    mul-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    move v8, v0

    add-int/2addr v7, v8

    aget-object v6, v6, v7

    if-nez v6, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->disable:[Z

    move-object v6, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    move v7, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    move v8, v0

    mul-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    move v8, v0

    add-int/2addr v7, v8

    const/4 v8, 0x1

    aput-boolean v8, v6, v7

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/UI_GoodsBox;->disable:[Z

    move-object v6, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    move v7, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    move v8, v0

    mul-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    move v8, v0

    add-int/2addr v7, v8

    aget-boolean v6, v6, v7

    if-nez v6, :cond_16

    const/4 v5, 0x1

    goto/16 :goto_b
.end method

.method public getIndex()B
    .locals 2

    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    iget-byte v1, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    mul-int/2addr v0, v1

    iget-byte v1, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method public getIndexGood()Lcom/t4game/RoleGoods;
    .locals 3

    iget-object v0, p0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    iget-byte v1, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    mul-int/2addr v1, v2

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public init(Ljava/io/DataInputStream;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lcom/t4game/UI_Super;->init(Ljava/io/DataInputStream;)V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_GoodsBox;->leng:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    iget-short v0, p0, Lcom/t4game/UI_GoodsBox;->h:S

    add-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0x1e

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_GoodsBox;->rowMax:B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public isOutBox(I)Z
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    array-length v0, v0

    iget-byte v1, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    invoke-static {v0, v1}, Lcom/t4game/Util;->getLineNumInt(IB)I

    move-result v0

    iget-object v1, p0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    array-length v1, v1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v1, -0x2

    if-ne p1, v1, :cond_3

    iget-byte v1, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    sub-int/2addr v0, v2

    if-ne v1, v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v0, -0x3

    if-ne p1, v0, :cond_5

    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    if-nez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    const/4 v0, -0x4

    if-ne p1, v0, :cond_8

    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    iget-byte v1, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/t4game/UI_GoodsBox;->getIndex()B

    move-result v0

    iget-byte v1, p0, Lcom/t4game/UI_GoodsBox;->leng:B

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_7

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v3

    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_0
.end method

.method public keyEvent(I)V
    .locals 8

    const/4 v7, -0x4

    const/16 v6, -0x3e8

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    array-length v0, v0

    iget-byte v1, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    invoke-static {v0, v1}, Lcom/t4game/Util;->getLineNumInt(IB)I

    move-result v0

    iget-object v1, p0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    array-length v1, v1

    if-ne p1, v4, :cond_6

    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    if-nez v0, :cond_5

    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->state:B

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_GoodsBox;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_GoodsBox;->id:B

    invoke-virtual {v0, v1, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    :cond_0
    :goto_0
    sget-object v0, Lcom/t4game/GameUi;->topGameUI:Lcom/t4game/GameUi;

    if-eqz v0, :cond_2

    if-eq p1, v4, :cond_1

    const/4 v1, -0x2

    if-eq p1, v1, :cond_1

    const/4 v1, -0x3

    if-eq p1, v1, :cond_1

    if-ne p1, v7, :cond_2

    :cond_1
    invoke-virtual {v0}, Lcom/t4game/GameUi;->closeBubble()V

    :cond_2
    iget-boolean v0, p0, Lcom/t4game/UI_GoodsBox;->isOnBody:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/UI_GoodsBox;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->EQUE_POST_MAP:[B

    iget-byte v1, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    mul-int/2addr v1, v2

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    add-int/2addr v1, v2

    aget-byte v0, v0, v1

    if-ne v0, v4, :cond_3

    invoke-virtual {p0, p1}, Lcom/t4game/UI_GoodsBox;->keyEvent(I)V

    :cond_3
    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    iget-byte v1, p0, Lcom/t4game/UI_GoodsBox;->startRow:B

    if-ge v0, v1, :cond_13

    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    iput-byte v0, p0, Lcom/t4game/UI_GoodsBox;->startRow:B

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    sub-int/2addr v0, v3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    goto :goto_0

    :cond_6
    const/4 v2, -0x2

    if-ne p1, v2, :cond_9

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    sub-int/2addr v0, v3

    if-ne v2, v0, :cond_7

    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->state:B

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_GoodsBox;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_GoodsBox;->id:B

    invoke-virtual {v0, v1, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    goto :goto_0

    :cond_7
    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    add-int/lit8 v2, v2, 0x1

    iget-byte v3, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    if-lt v0, v1, :cond_8

    iput-byte v5, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    goto :goto_0

    :cond_8
    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    add-int/lit8 v2, v2, 0x1

    iget-byte v3, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    if-ge v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    goto :goto_0

    :cond_9
    const/4 v0, -0x3

    if-ne p1, v0, :cond_d

    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    if-nez v0, :cond_c

    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->state:B

    if-ne v0, v4, :cond_a

    iget-object v0, p0, Lcom/t4game/UI_GoodsBox;->ui:Lcom/t4game/GameUi;

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->id:B

    invoke-virtual {v0, v2, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    :cond_a
    iget-object v0, p0, Lcom/t4game/UI_GoodsBox;->ui:Lcom/t4game/GameUi;

    iget v0, v0, Lcom/t4game/GameUi;->lose_focus:I

    if-eq v0, v6, :cond_0

    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    if-lez v0, :cond_b

    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    sub-int/2addr v0, v3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    sub-int/2addr v0, v3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    goto/16 :goto_0

    :cond_b
    sub-int v0, v1, v3

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    div-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    sub-int v0, v1, v3

    iget-byte v1, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v1, v2

    rem-int/2addr v0, v1

    iget-byte v1, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    rem-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    goto/16 :goto_0

    :cond_c
    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    sub-int/2addr v0, v3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    goto/16 :goto_0

    :cond_d
    if-ne p1, v7, :cond_0

    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    sub-int/2addr v2, v3

    if-eq v0, v2, :cond_e

    invoke-virtual {p0}, Lcom/t4game/UI_GoodsBox;->getIndex()B

    move-result v0

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->leng:B

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_11

    :cond_e
    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->state:B

    if-ne v0, v4, :cond_f

    iget-object v0, p0, Lcom/t4game/UI_GoodsBox;->ui:Lcom/t4game/GameUi;

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->id:B

    invoke-virtual {v0, v2, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    :cond_f
    iget-object v0, p0, Lcom/t4game/UI_GoodsBox;->ui:Lcom/t4game/GameUi;

    iget v0, v0, Lcom/t4game/GameUi;->lose_focus:I

    if-eq v0, v6, :cond_0

    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    add-int/lit8 v0, v0, 0x1

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    mul-int/2addr v0, v2

    if-ge v0, v1, :cond_10

    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    iput-byte v5, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    goto/16 :goto_0

    :cond_10
    iput-byte v5, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    iput-byte v5, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    goto/16 :goto_0

    :cond_11
    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    add-int/lit8 v0, v0, 0x1

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    iget-byte v3, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    if-ge v0, v1, :cond_12

    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    goto/16 :goto_0

    :cond_12
    iput-byte v5, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    iput-byte v5, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    goto/16 :goto_0

    :cond_13
    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->startRow:B

    iget-byte v1, p0, Lcom/t4game/UI_GoodsBox;->rowMax:B

    add-int/2addr v0, v1

    iget-byte v1, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_4

    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    iget-byte v1, p0, Lcom/t4game/UI_GoodsBox;->rowMax:B

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_GoodsBox;->startRow:B

    goto/16 :goto_1
.end method

.method public pointEvent(II)B
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v1, 0x24

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-short v2, p0, Lcom/t4game/UI_GoodsBox;->x:S

    aput v2, v0, v1

    iget-short v1, p0, Lcom/t4game/UI_GoodsBox;->y:S

    aput v1, v0, v5

    const/4 v1, 0x2

    iget-short v2, p0, Lcom/t4game/UI_GoodsBox;->x:S

    iget-short v3, p0, Lcom/t4game/UI_GoodsBox;->w:S

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-short v2, p0, Lcom/t4game/UI_GoodsBox;->y:S

    iget-short v3, p0, Lcom/t4game/UI_GoodsBox;->h:S

    add-int/2addr v2, v3

    aput v2, v0, v1

    invoke-static {p1, p2, v0}, Lcom/t4game/PointerUtil;->isPointerInArea(II[I)Z

    move-result v0

    if-eqz v0, :cond_5

    iput-boolean v5, p0, Lcom/t4game/UI_GoodsBox;->isFocus:Z

    iget-object v0, p0, Lcom/t4game/UI_GoodsBox;->ui:Lcom/t4game/GameUi;

    iget-object v1, p0, Lcom/t4game/UI_GoodsBox;->ui:Lcom/t4game/GameUi;

    iget-byte v1, v1, Lcom/t4game/GameUi;->focus:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/UI_GoodsBox;->ui:Lcom/t4game/GameUi;

    iget-byte v1, v1, Lcom/t4game/GameUi;->focus:B

    iget-object v1, p0, Lcom/t4game/UI_GoodsBox;->ui:Lcom/t4game/GameUi;

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->id:B

    invoke-virtual {v1, v2}, Lcom/t4game/GameUi;->setFocus(B)V

    iget-byte v1, v0, Lcom/t4game/UI_Super;->type:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    check-cast v0, Lcom/t4game/UI_PageLable;

    iput-boolean v5, v0, Lcom/t4game/UI_PageLable;->showInside:Z

    :cond_1
    iget-short v0, p0, Lcom/t4game/UI_GoodsBox;->y:S

    sub-int v0, p2, v0

    div-int/lit8 v0, v0, 0x1e

    iget-byte v1, p0, Lcom/t4game/UI_GoodsBox;->startRow:B

    add-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_GoodsBox;->x:S

    sub-int v1, p1, v1

    const/4 v2, 0x6

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x1e

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->startRow:B

    sub-int v2, v0, v2

    iget-byte v3, p0, Lcom/t4game/UI_GoodsBox;->rowMax:B

    if-gt v2, v3, :cond_5

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    if-gt v1, v2, :cond_5

    iget-byte v2, p0, Lcom/t4game/UI_GoodsBox;->numOneLine:B

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    array-length v3, v3

    if-lt v2, v3, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/t4game/UI_GoodsBox;->getIndex()B

    move-result v3

    if-ne v2, v3, :cond_3

    iget-byte v0, p0, Lcom/t4game/UI_GoodsBox;->id:B

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lcom/t4game/UI_GoodsBox;->isOnBody:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/t4game/UI_GoodsBox;->gs:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->EQUE_POST_MAP:[B

    aget-byte v2, v3, v2

    if-eq v2, v4, :cond_5

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    int-to-byte v0, v1

    iput-byte v0, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    move v0, v4

    goto/16 :goto_0

    :cond_4
    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_GoodsBox;->lineIndex:B

    int-to-byte v0, v1

    iput-byte v0, p0, Lcom/t4game/UI_GoodsBox;->colIndex:B

    :cond_5
    move v0, v4

    goto/16 :goto_0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    iput-object v0, p0, Lcom/t4game/UI_GoodsBox;->iconIndex:[S

    iput-object v0, p0, Lcom/t4game/UI_GoodsBox;->name:[Ljava/lang/String;

    return-void
.end method

.method public setFocus(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/t4game/UI_GoodsBox;->isFocus:Z

    sget-object v0, Lcom/t4game/GameUi;->topGameUI:Lcom/t4game/GameUi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/t4game/GameUi;->closeBubble()V

    :cond_0
    return-void
.end method

.method public setGameScreen(Lcom/t4game/GameScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/UI_GoodsBox;->gs:Lcom/t4game/GameScreen;

    return-void
.end method
