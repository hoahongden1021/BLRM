.class public Lcom/t4game/ShenZhuang;
.super Ljava/lang/Object;


# static fields
.field public static curStarNum:[B

.field public static shengxingIndex:[I


# instance fields
.field public bOnBody:Z

.field public baoshiIndex:I

.field private baoshiInfo:[Ljava/lang/String;

.field private baoshiOpen:[B

.field private experience:[Ljava/lang/String;

.field private fire0:Ljavax/microedition/lcdui/Image;

.field private fire1:Ljavax/microedition/lcdui/Image;

.field private fireNum:B

.field public fitoutIndex:B

.field private flame:Ljava/lang/String;

.field private grade:[I

.field private gridId:[S

.field private gs:Lcom/t4game/GameScreen;

.field private imgBaoshi:[Ljavax/microedition/lcdui/Image;

.field private imgBaoshiIndex:Ljavax/microedition/lcdui/Image;

.field private imgQiling:[Ljavax/microedition/lcdui/Image;

.field private imgRefiBg:Ljavax/microedition/lcdui/Image;

.field public list:Lcom/t4game/UI_List;

.field private posBaoshi:[[I

.field private posQiling:[I

.field private posStarCutLine:I

.field public qilingGridId:B

.field public qilingIndex:B

.field private final qilingName:[Ljava/lang/String;

.field public spiritGridId:B

.field private star:Ljavax/microedition/lcdui/Image;

.field private starBgImg:Ljavax/microedition/lcdui/Image;

.field private starName:Ljava/lang/String;

.field private starNum:B

.field private final starPos:[[I

.field public uiIndex:B

.field private vecGoods:Ljava/util/Vector;

.field private vecOpenInfo:[Ljava/util/Vector;

.field private vecOpenflag:[Ljava/util/Vector;

.field private vecStarinfo:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Lcom/t4game/GameScreen;)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v4, p0, Lcom/t4game/ShenZhuang;->fireNum:B

    iput-byte v4, p0, Lcom/t4game/ShenZhuang;->starNum:B

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/ShenZhuang;->vecGoods:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/ShenZhuang;->vecStarinfo:Ljava/util/Vector;

    const/16 v0, 0xa1

    iput v0, p0, Lcom/t4game/ShenZhuang;->posStarCutLine:I

    const/16 v0, 0xa

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/t4game/ShenZhuang;->starPos:[[I

    iput v4, p0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/ShenZhuang;->qilingIndex:B

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u9b3c"

    aput-object v1, v0, v4

    const-string v1, "\u7075"

    aput-object v1, v0, v5

    const-string v1, "\u9b54"

    aput-object v1, v0, v3

    const-string v1, "\u795e"

    aput-object v1, v0, v6

    const-string v1, "\u5723"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/t4game/ShenZhuang;->qilingName:[Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_a

    iput-object v0, p0, Lcom/t4game/ShenZhuang;->posQiling:[I

    const/4 v0, 0x5

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_c

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_d

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_e

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_f

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/t4game/ShenZhuang;->posBaoshi:[[I

    iput-byte v4, p0, Lcom/t4game/ShenZhuang;->uiIndex:B

    iput-byte v4, p0, Lcom/t4game/ShenZhuang;->fitoutIndex:B

    iput-byte v4, p0, Lcom/t4game/ShenZhuang;->spiritGridId:B

    iput-byte v4, p0, Lcom/t4game/ShenZhuang;->qilingGridId:B

    iput-boolean v4, p0, Lcom/t4game/ShenZhuang;->bOnBody:Z

    iput-object p1, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    return-void

    nop

    :array_0
    .array-data 4
        0xf
        0x49
    .end array-data

    :array_1
    .array-data 4
        0x2a
        0x2b
    .end array-data

    :array_2
    .array-data 4
        0x46
        0x49
    .end array-data

    :array_3
    .array-data 4
        0x74
        0x46
    .end array-data

    :array_4
    .array-data 4
        0x67
        0x1e
    .end array-data

    :array_5
    .array-data 4
        0x84
        0x19
    .end array-data

    :array_6
    .array-data 4
        0xa0
        0xd
    .end array-data

    :array_7
    .array-data 4
        0xa9
        0x30
    .end array-data

    :array_8
    .array-data 4
        0xbc
        0x3f
    .end array-data

    :array_9
    .array-data 4
        0xa7
        0x5d
    .end array-data

    :array_a
    .array-data 4
        0xa0
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x0
        0xf
    .end array-data

    :array_c
    .array-data 4
        -0x14
        0x28
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x28
    .end array-data

    :array_e
    .array-data 4
        0x14
        0x28
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x50
    .end array-data
.end method

.method private drawRefiningDialog(Ljavax/microedition/lcdui/Graphics;)V
    .locals 11

    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/t4game/ShenZhuang;->drawQilingDialog(Ljavax/microedition/lcdui/Graphics;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xac4

    invoke-static {v8, v0}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-static {v0, p1, v1}, Lcom/t4game/DraftingUtil;->paintDialog(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;Lcom/t4game/GameUi;)V

    sget v0, Lcom/t4game/Util;->dialogTopLableHight:I

    add-int/lit8 v0, v0, 0x3

    add-int v7, v9, v0

    iget-byte v0, p0, Lcom/t4game/ShenZhuang;->qilingIndex:B

    if-eq v0, v10, :cond_2

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->imgQiling:[Ljavax/microedition/lcdui/Image;

    iget-byte v1, p0, Lcom/t4game/ShenZhuang;->qilingIndex:B

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->posQiling:[I

    aget v1, v1, v9

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->posQiling:[I

    aget v2, v2, v8

    add-int/2addr v2, v7

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->flame:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->posQiling:[I

    aget v1, v1, v9

    const/16 v2, 0x8

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->posQiling:[I

    aget v2, v2, v8

    add-int/2addr v2, v7

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->imgQiling:[Ljavax/microedition/lcdui/Image;

    iget-byte v4, p0, Lcom/t4game/ShenZhuang;->qilingIndex:B

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7b49\u7ea7:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->grade:[I

    iget v2, p0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/lit16 v1, v1, 0x8c

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->posQiling:[I

    aget v2, v2, v8

    add-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x8

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7ecf\u9a8c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->experience:[Ljava/lang/String;

    iget v2, p0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/lit16 v1, v1, 0x8c

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->posQiling:[I

    aget v2, v2, v8

    add-int/2addr v2, v7

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->imgQiling:[Ljavax/microedition/lcdui/Image;

    iget-byte v4, p0, Lcom/t4game/ShenZhuang;->qilingIndex:B

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    :cond_2
    sget-boolean v0, Lcom/t4game/Defaults;->bMini:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->imgRefiBg:Ljavax/microedition/lcdui/Image;

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget v2, Lcom/t4game/Defaults;->TOP_HCENTER:I

    invoke-virtual {p1, v0, v1, v7, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_3
    iget-byte v0, p0, Lcom/t4game/ShenZhuang;->qilingIndex:B

    if-eq v0, v10, :cond_5

    move v0, v9

    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->baoshiOpen:[B

    aget-byte v1, v1, v0

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->imgBaoshi:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v9

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->posBaoshi:[[I

    aget-object v2, v2, v0

    aget v2, v2, v9

    sget v3, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->posBaoshi:[[I

    aget-object v3, v3, v0

    aget v3, v3, v8

    add-int/2addr v3, v7

    sget v4, Lcom/t4game/Defaults;->TOP_HCENTER:I

    invoke-virtual {p1, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/t4game/ShenZhuang;->imgBaoshi:[Ljavax/microedition/lcdui/Image;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->posBaoshi:[[I

    aget-object v2, v2, v0

    aget v2, v2, v9

    sget v3, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->posBaoshi:[[I

    aget-object v3, v3, v0

    aget v3, v3, v8

    add-int/2addr v3, v7

    sget v4, Lcom/t4game/Defaults;->TOP_HCENTER:I

    invoke-virtual {p1, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto :goto_2

    :cond_5
    const v0, 0x7a654a

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-short v0, v0, Lcom/t4game/GameUi;->x:S

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->imgRefiBg:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    add-int/2addr v1, v7

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-short v2, v2, Lcom/t4game/GameUi;->x:S

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-short v3, v3, Lcom/t4game/GameUi;->w:S

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->imgRefiBg:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v3, v7

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->imgRefiBg:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    add-int/2addr v0, v7

    add-int/lit8 v2, v0, 0x3

    invoke-virtual {p1, v10}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-byte v0, p0, Lcom/t4game/ShenZhuang;->qilingIndex:B

    if-eq v0, v10, :cond_9

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->baoshiInfo:[Ljava/lang/String;

    iget v1, p0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->baoshiOpen:[B

    iget v1, p0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    aget-byte v0, v0, v1

    if-nez v0, :cond_a

    sget-object v0, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    aget v0, v0, v8

    move v5, v0

    :goto_3
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->baoshiInfo:[Ljava/lang/String;

    iget v1, p0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-short v1, v1, Lcom/t4game/GameUi;->x:S

    add-int/lit8 v1, v1, 0x5

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-short v3, v3, Lcom/t4game/GameUi;->w:S

    sget v4, Lcom/t4game/Defaults;->sfh:I

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_6
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->vecOpenInfo:[Ljava/util/Vector;

    iget v1, p0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_8

    move v1, v9

    :goto_4
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->vecOpenInfo:[Ljava/util/Vector;

    iget v3, p0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    aget-object v0, v0, v3

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->vecOpenflag:[Ljava/util/Vector;

    iget v3, p0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    aget v0, v0, v8

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->vecOpenInfo:[Ljava/util/Vector;

    iget v3, p0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    aget-object v0, v0, v3

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-short v3, v3, Lcom/t4game/GameUi;->x:S

    add-int/lit8 v3, v3, 0x5

    sget v4, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v4, v2

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    :goto_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_7
    invoke-virtual {p1, v10}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->vecOpenInfo:[Ljava/util/Vector;

    iget v4, p0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    aget-object v0, v0, v4

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "(\u5df2\u6ee1\u8db3)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-short v3, v3, Lcom/t4game/GameUi;->x:S

    add-int/lit8 v3, v3, 0x5

    sget v4, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v4, v2

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    goto :goto_5

    :cond_8
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->imgBaoshiIndex:Ljavax/microedition/lcdui/Image;

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->posBaoshi:[[I

    iget v2, p0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    aget-object v1, v1, v2

    aget v1, v1, v9

    sget v2, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->posBaoshi:[[I

    iget v3, p0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    aget-object v2, v2, v3

    aget v2, v2, v8

    add-int/2addr v2, v7

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_9
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    if-ne v0, v8, :cond_0

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->draw(Ljavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_0

    :cond_a
    move v5, v10

    goto/16 :goto_3
.end method

.method private drawStarDialog(Ljavax/microedition/lcdui/Graphics;)V
    .locals 11

    const v10, 0x7a654a

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v0, 0xac3

    invoke-static {v9, v0}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-static {v0, p1, v1}, Lcom/t4game/DraftingUtil;->paintDialog(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;Lcom/t4game/GameUi;)V

    sget v0, Lcom/t4game/Util;->dialogTopLableHight:I

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->fire0:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x7

    sub-int v6, v0, v1

    sget-boolean v0, Lcom/t4game/Defaults;->bMini:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->starBgImg:Ljavax/microedition/lcdui/Image;

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget v2, Lcom/t4game/Defaults;->TOP_HCENTER:I

    invoke-virtual {p1, v0, v1, v6, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_0
    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/16 v1, 0x64

    sub-int v1, v0, v1

    const/16 v0, 0x14

    move v2, v8

    :goto_0
    iget-byte v3, p0, Lcom/t4game/ShenZhuang;->fireNum:B

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->fire1:Ljavax/microedition/lcdui/Image;

    mul-int v4, v2, v0

    add-int/2addr v4, v1

    sget v5, Lcom/t4game/Util;->dialogTopLableHight:I

    add-int/lit8 v5, v5, 0x3

    sget v7, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v3, v4, v5, v7}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-byte v2, p0, Lcom/t4game/ShenZhuang;->fireNum:B

    const/16 v3, 0xa

    if-ge v2, v3, :cond_2

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->fire0:Ljavax/microedition/lcdui/Image;

    iget-byte v3, p0, Lcom/t4game/ShenZhuang;->fireNum:B

    mul-int/2addr v0, v3

    add-int/2addr v0, v1

    sget v3, Lcom/t4game/Util;->dialogTopLableHight:I

    add-int/lit8 v3, v3, 0x3

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v2, v0, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_2
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->starName:Ljava/lang/String;

    sget v2, Lcom/t4game/Util;->dialogTopLableHight:I

    add-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->fire0:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v4, Lcom/t4game/Defaults;->sfh:I

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;)V

    move v0, v8

    :goto_1
    iget-byte v2, p0, Lcom/t4game/ShenZhuang;->starNum:B

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->star:Ljavax/microedition/lcdui/Image;

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->starPos:[[I

    aget-object v3, v3, v0

    aget v3, v3, v8

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/t4game/ShenZhuang;->starPos:[[I

    aget-object v4, v4, v0

    aget v4, v4, v9

    add-int/2addr v4, v6

    sget v5, Lcom/t4game/Defaults;->TOP_HCENTER:I

    invoke-virtual {p1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v10}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-short v0, v0, Lcom/t4game/GameUi;->x:S

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->starBgImg:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    add-int/2addr v1, v6

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-short v2, v2, Lcom/t4game/GameUi;->x:S

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-short v3, v3, Lcom/t4game/GameUi;->w:S

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->starBgImg:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    add-int/2addr v3, v6

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    move v2, v8

    :goto_2
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->vecGoods:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->vecGoods:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-short v1, v1, Lcom/t4game/GameUi;->x:S

    add-int/lit8 v3, v1, 0x5

    sget-object v4, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->vecGoods:Ljava/util/Vector;

    invoke-virtual {v1, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1e

    mul-int/2addr v1, v2

    add-int/2addr v1, v3

    iget v3, p0, Lcom/t4game/ShenZhuang;->posStarCutLine:I

    add-int/lit8 v3, v3, 0xa

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v10}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-short v0, v0, Lcom/t4game/GameUi;->x:S

    iget v1, p0, Lcom/t4game/ShenZhuang;->posStarCutLine:I

    add-int/lit8 v1, v1, 0xa

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-short v2, v2, Lcom/t4game/GameUi;->x:S

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-short v3, v3, Lcom/t4game/GameUi;->w:S

    add-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/ShenZhuang;->posStarCutLine:I

    add-int/lit8 v3, v3, 0xa

    sget-object v4, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1}, Lcom/t4game/GameUi;->draw(Ljavax/microedition/lcdui/Graphics;)V

    :cond_5
    return-void
.end method

.method private initOutfitByBin([Lcom/t4game/RoleGoods;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->release()V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    :cond_0
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    new-instance v1, Lcom/t4game/GameUi;

    invoke-direct {v1}, Lcom/t4game/GameUi;-><init>()V

    iput-object v1, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    const-string v1, "/data/ui/Outfit.bin"

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->init(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v7}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/t4game/GameScreen;->getUI_MoneyBox(I)Lcom/t4game/UI_MoneyBox;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-wide v2, v2, Lcom/t4game/GUser;->money:J

    iput-wide v2, v1, Lcom/t4game/UI_MoneyBox;->money:J

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->pack:Lcom/t4game/Pack;

    iget-object v1, v1, Lcom/t4game/Pack;->outFitBagBlock:[Lcom/t4game/RoleOutfit;

    iput-object v1, v0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->pack:Lcom/t4game/Pack;

    iget-object v1, v1, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    iput-object v1, v0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    iget-object v1, v0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, v0, Lcom/t4game/UI_GoodsBox;->disable:[Z

    move v1, v8

    :goto_0
    iget-object v2, v0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, v0, Lcom/t4game/UI_GoodsBox;->disable:[Z

    aput-boolean v7, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v8

    :goto_1
    iget-object v2, p0, Lcom/t4game/ShenZhuang;->gridId:[S

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, v0, Lcom/t4game/UI_GoodsBox;->disable:[Z

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->gridId:[S

    aget-short v3, v3, v1

    aput-boolean v8, v2, v3

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v3, 0x4

    new-array v4, v7, [S

    iget-object v5, v0, Lcom/t4game/UI_GoodsBox;->boxs:[Lcom/t4game/RoleGoods;

    iget-object v6, p0, Lcom/t4game/ShenZhuang;->gridId:[S

    aget-short v6, v6, v1

    aget-object v5, v5, v6

    iget-short v5, v5, Lcom/t4game/RoleGoods;->iconId:S

    aput-short v5, v4, v8

    invoke-virtual {v2, v3, v4, v7}, Lcom/t4game/GameWorld;->getGoodsIcon(B[SZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v1}, Lcom/t4game/UI_GoodsBox;->setGameScreen(Lcom/t4game/GameScreen;)V

    iput-boolean v7, v0, Lcom/t4game/UI_GoodsBox;->showNoOpen:Z

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->autoLayout()V

    return-void
.end method


# virtual methods
.method public draw(BLjavax/microedition/lcdui/Graphics;)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/t4game/ShenZhuang;->drawStarDialog(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/t4game/ShenZhuang;->drawRefiningDialog(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x17
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public drawQilingDialog(Ljavax/microedition/lcdui/Graphics;)V
    .locals 5

    const/4 v3, -0x1

    const-string v0, "\u5c01\u5370\u5668\u7075"

    const/16 v1, 0xb4

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintDialog_SplitFloating_H2(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-short v0, v0, Lcom/t4game/GameUi;->x:S

    add-int/lit8 v0, v0, 0xa

    sget-object v1, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x23

    invoke-virtual {p1, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-byte v2, p0, Lcom/t4game/ShenZhuang;->qilingIndex:B

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5f53\u524d\u5668\u7075:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->qilingName:[Ljava/lang/String;

    iget-byte v4, p0, Lcom/t4game/ShenZhuang;->qilingIndex:B

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v2, v0, v1, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->imgQiling:[Ljavax/microedition/lcdui/Image;

    iget-byte v3, p0, Lcom/t4game/ShenZhuang;->qilingIndex:B

    aget-object v2, v2, v3

    sget-object v3, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v3

    add-int/2addr v1, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v2, v0, v1, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :goto_0
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1}, Lcom/t4game/GameUi;->draw(Ljavax/microedition/lcdui/Graphics;)V

    :cond_0
    return-void

    :cond_1
    const-string v2, "\u5f53\u524d\u65e0\u5668\u7075"

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v2, v0, v1, v3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    goto :goto_0
.end method

.method public initQilingDialog()V
    .locals 4

    const/4 v3, 0x4

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->pack:Lcom/t4game/Pack;

    invoke-virtual {v1, v3}, Lcom/t4game/Pack;->getGoodsIcon(B)[S

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/t4game/GameWorld;->getGoodsIcon(B[SZ)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v0, v0, Lcom/t4game/GUser;->outFitOn:[Lcom/t4game/RoleOutfit;

    invoke-direct {p0, v0}, Lcom/t4game/ShenZhuang;->initOutfitByBin([Lcom/t4game/RoleGoods;)V

    return-void
.end method

.method public initRefiningDialog()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/ShenZhuang;->imgBaoshi:[Ljavax/microedition/lcdui/Image;

    const/4 v0, 0x5

    new-array v0, v0, [Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/ShenZhuang;->imgQiling:[Ljavax/microedition/lcdui/Image;

    sget-boolean v0, Lcom/t4game/Defaults;->bMini:Z

    if-nez v0, :cond_0

    const-string v0, "/shenzhuang/lianhuabg.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/ShenZhuang;->imgRefiBg:Ljavax/microedition/lcdui/Image;

    :cond_0
    const-string v0, "/shenzhuang/bsindex.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/ShenZhuang;->imgBaoshiIndex:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->imgBaoshi:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/shenzhuang/gray.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->imgBaoshi:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/shenzhuang/red.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->imgBaoshi:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/shenzhuang/blue.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->imgBaoshi:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/shenzhuang/green.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->imgBaoshi:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/shenzhuang/gold.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->imgBaoshi:[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x5

    const-string v2, "/shenzhuang/purple.png"

    invoke-static {v2}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->imgQiling:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/shenzhuang/gui.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->imgQiling:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/shenzhuang/shen.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->imgQiling:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/shenzhuang/sheng.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->imgQiling:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/shenzhuang/xian.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->imgQiling:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/shenzhuang/ling.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v7

    return-void
.end method

.method public initStarDialog()V
    .locals 14

    sget-boolean v0, Lcom/t4game/Defaults;->bMini:Z

    if-nez v0, :cond_0

    const-string v0, "/shenzhuang/starbg.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/ShenZhuang;->starBgImg:Ljavax/microedition/lcdui/Image;

    :cond_0
    const-string v0, "/shenzhuang/star.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/ShenZhuang;->star:Ljavax/microedition/lcdui/Image;

    const-string v0, "/shenzhuang/fire0.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/ShenZhuang;->fire0:Ljavax/microedition/lcdui/Image;

    const-string v0, "/shenzhuang/fire1.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/ShenZhuang;->fire1:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    new-instance v1, Lcom/t4game/GameUi;

    invoke-direct {v1}, Lcom/t4game/GameUi;-><init>()V

    iput-object v1, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    const-string v1, "/data/ui/FoundNPC.bin"

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->init(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-short v2, v2, Lcom/t4game/GameUi;->w:S

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lcom/t4game/GameUi;->x:S

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-byte v1, v1, Lcom/t4game/GameUi;->focus:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->getUI_List(I)Lcom/t4game/UI_List;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/ShenZhuang;->list:Lcom/t4game/UI_List;

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    const/4 v1, 0x0

    iput-short v1, v0, Lcom/t4game/GameUi;->focusY:S

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->list:Lcom/t4game/UI_List;

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-short v1, v1, Lcom/t4game/GameUi;->x:S

    add-int/lit8 v1, v1, 0x5

    int-to-short v1, v1

    iput-short v1, v0, Lcom/t4game/UI_List;->x:S

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->list:Lcom/t4game/UI_List;

    iget v1, p0, Lcom/t4game/ShenZhuang;->posStarCutLine:I

    add-int/lit8 v1, v1, 0xa

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->list:Lcom/t4game/UI_List;

    iget-short v2, v2, Lcom/t4game/UI_List;->Row_H:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lcom/t4game/UI_List;->y:S

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->list:Lcom/t4game/UI_List;

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->list:Lcom/t4game/UI_List;

    iget-short v1, v1, Lcom/t4game/UI_List;->Row_H:S

    mul-int/lit8 v1, v1, 0x2

    int-to-short v1, v1

    iput-short v1, v0, Lcom/t4game/UI_List;->h:S

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->list:Lcom/t4game/UI_List;

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->list:Lcom/t4game/UI_List;

    iget-short v1, v1, Lcom/t4game/UI_List;->y:S

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-short v2, v2, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lcom/t4game/UI_List;->Sub_Y:S

    const/4 v0, 0x2

    new-array v0, v0, [S

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-short v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-short v2, v2, Lcom/t4game/GameUi;->w:S

    aput-short v2, v0, v1

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->list:Lcom/t4game/UI_List;

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-short v2, v2, Lcom/t4game/GameUi;->w:S

    invoke-virtual {v1, v0, v2}, Lcom/t4game/UI_List;->setColumn_W([SS)V

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->vecStarinfo:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v9, v0, :cond_4

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->list:Lcom/t4game/UI_List;

    invoke-virtual {v0}, Lcom/t4game/UI_List;->getColumn()B

    move-result v0

    new-array v10, v0, [Lcom/t4game/ListItem;

    const/4 v0, 0x2

    new-array v11, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, ""

    aput-object v1, v11, v0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->vecStarinfo:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v11, v1

    const/4 v0, 0x2

    new-array v12, v0, [I

    const/4 v0, 0x0

    const v1, 0xffffff

    aput v1, v12, v0

    const/4 v0, 0x1

    rem-int/lit8 v1, v9, 0x2

    if-nez v1, :cond_1

    const v1, 0xffffff

    :goto_1
    aput v1, v12, v0

    const/4 v0, 0x0

    move v13, v0

    :goto_2
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->list:Lcom/t4game/UI_List;

    invoke-virtual {v0}, Lcom/t4game/UI_List;->getColumn()B

    move-result v0

    if-ge v13, v0, :cond_3

    new-instance v0, Lcom/t4game/ListItem;

    invoke-direct {v0}, Lcom/t4game/ListItem;-><init>()V

    aput-object v0, v10, v13

    if-nez v13, :cond_2

    aget-object v0, v10, v13

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/t4game/ListItem;->Init(Ljavax/microedition/lcdui/Image;[I[Ljava/lang/String;Ljava/lang/String;[II[Ljava/lang/String;Z)V

    :goto_3
    add-int/lit8 v0, v13, 0x1

    move v13, v0

    goto :goto_2

    :cond_1
    const v1, 0xff00

    goto :goto_1

    :cond_2
    aget-object v0, v10, v13

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v12

    move-object v3, v11

    invoke-virtual/range {v0 .. v8}, Lcom/t4game/ListItem;->Init(Ljavax/microedition/lcdui/Image;[I[Ljava/lang/String;Ljava/lang/String;[II[Ljava/lang/String;Z)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->list:Lcom/t4game/UI_List;

    invoke-virtual {v0, v10}, Lcom/t4game/UI_List;->addChoice([Lcom/t4game/ListItem;)V

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->list:Lcom/t4game/UI_List;

    iget-byte v1, v1, Lcom/t4game/UI_List;->id:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->setFocus(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/t4game/GameUi;->commandType:B

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    const/4 v1, 0x0

    iput v1, v0, Lcom/t4game/GameUi;->lose_focus:I

    return-void
.end method

.method public pressed(BI)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/t4game/ShenZhuang;->pressedStarDialog(BI)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/t4game/ShenZhuang;->pressedRefiningDialog(BI)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x17
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pressedAlert(I)V
    .locals 0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p0}, Lcom/t4game/ShenZhuang;->pressedStarUpdataAlert()V

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/t4game/ShenZhuang;->pressedRefiningAlert()V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/t4game/ShenZhuang;->sendRefiningMessage3()Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x23b -> :sswitch_0
        0x23d -> :sswitch_1
        0x241 -> :sswitch_2
    .end sparse-switch
.end method

.method public pressedQilingDialog(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, -0x6

    if-eq p1, v0, :cond_0

    const/4 v0, -0x5

    if-ne p1, v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->getUI_GoodsBox(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/t4game/UI_GoodsBox;->getIndex()B

    move-result v1

    iput-byte v1, p0, Lcom/t4game/ShenZhuang;->qilingGridId:B

    iget-object v1, v0, Lcom/t4game/UI_GoodsBox;->disable:[Z

    invoke-virtual {v0}, Lcom/t4game/UI_GoodsBox;->getIndex()B

    move-result v0

    aget-boolean v0, v1, v0

    if-nez v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/t4game/ShenZhuang;->sendChangeMessage(B)Z

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1}, Lcom/t4game/GameUi;->keyEvent(I)V

    :cond_2
    return-void

    :cond_3
    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/t4game/ShenZhuang;->releasedQiliong()V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iput-byte v2, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    goto :goto_0
.end method

.method public pressedRefiningAlert()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/t4game/ShenZhuang;->sendChangeMessage(B)Z

    return-void
.end method

.method public pressedRefiningDialog(BI)V
    .locals 6

    const/4 v3, -0x6

    const/4 v1, -0x7

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v0, -0x17

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    if-nez v0, :cond_9

    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    const/4 v0, -0x3

    if-ne p2, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->shenzhuang:Lcom/t4game/ShenZhuang;

    iget v1, v0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    sub-int/2addr v1, v5

    iput v1, v0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->shenzhuang:Lcom/t4game/ShenZhuang;

    iget v0, v0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->shenzhuang:Lcom/t4game/ShenZhuang;

    const/4 v1, 0x4

    iput v1, v0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    goto :goto_0

    :cond_3
    const/4 v0, -0x2

    if-eq p2, v0, :cond_4

    const/4 v0, -0x4

    if-ne p2, v0, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->shenzhuang:Lcom/t4game/ShenZhuang;

    iget v1, v0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->shenzhuang:Lcom/t4game/ShenZhuang;

    iget v0, v0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->shenzhuang:Lcom/t4game/ShenZhuang;

    iput v4, v0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    goto :goto_0

    :cond_5
    if-eq p2, v3, :cond_6

    const/4 v0, -0x5

    if-ne p2, v0, :cond_7

    :cond_6
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iput-byte v5, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    new-instance v1, Lcom/t4game/UI_Menu;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u5c01\u5370\u5668\u7075"

    aput-object v3, v2, v4

    const-string v3, "\u541e\u566c\u7075\u9975"

    aput-object v3, v2, v5

    invoke-direct {v1, v2}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    goto :goto_0

    :cond_7
    if-ne p2, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->shenzhuang:Lcom/t4game/ShenZhuang;

    invoke-virtual {v0}, Lcom/t4game/ShenZhuang;->releaseRefiningDialog()V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->setDialog(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->shenzhuang:Lcom/t4game/ShenZhuang;

    iget-byte v0, v0, Lcom/t4game/ShenZhuang;->uiIndex:B

    if-ne v0, v2, :cond_8

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->shenzhuang:Lcom/t4game/ShenZhuang;

    iget-byte v1, v1, Lcom/t4game/ShenZhuang;->spiritGridId:B

    invoke-virtual {v0, v2, v1}, Lcom/t4game/GameScreen;->goZhuangBei2(BI)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget v1, v1, Lcom/t4game/GameScreen;->whichSide:I

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->shenzhuang:Lcom/t4game/ShenZhuang;

    iget-byte v2, v2, Lcom/t4game/ShenZhuang;->spiritGridId:B

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->goZhuangBeiOnBody(II)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    if-ne v0, v5, :cond_d

    if-eq p2, v3, :cond_a

    const/4 v0, -0x5

    if-ne p2, v0, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iget-byte v0, v0, Lcom/t4game/UI_Menu;->index:B

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/t4game/ShenZhuang;->sendRefiningMessage()Z

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/t4game/ShenZhuang;->sendRefiningMessage2()Z

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iput-byte v4, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    goto/16 :goto_0

    :cond_b
    if-ne p2, v1, :cond_c

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iput-byte v4, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p2}, Lcom/t4game/UI_Menu;->keyEvent(I)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p2}, Lcom/t4game/ShenZhuang;->pressedQilingDialog(I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public pressedStarDialog(BI)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x2

    const/16 v0, -0x16

    if-eq p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x6

    if-eq p2, v0, :cond_2

    const/4 v0, -0x5

    if-ne p2, v0, :cond_4

    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u53d1\u9001\u5347\u661f\u6d88\u606f"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-byte v0, p0, Lcom/t4game/ShenZhuang;->uiIndex:B

    if-eq v0, v2, :cond_3

    iget-byte v0, p0, Lcom/t4game/ShenZhuang;->fitoutIndex:B

    invoke-virtual {p0, v4, v0, v3}, Lcom/t4game/ShenZhuang;->sendUpdataStar(BBS)Z

    goto :goto_0

    :cond_3
    iget-byte v0, p0, Lcom/t4game/ShenZhuang;->spiritGridId:B

    int-to-short v0, v0

    invoke-virtual {p0, v4, v3, v0}, Lcom/t4game/ShenZhuang;->sendUpdataStar(BBS)Z

    goto :goto_0

    :cond_4
    const/4 v0, -0x7

    if-ne p2, v0, :cond_6

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u5347\u661f\u754c\u9762\u8fd4\u56de\u64cd\u4f5c"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->shenzhuang:Lcom/t4game/ShenZhuang;

    invoke-virtual {v0}, Lcom/t4game/ShenZhuang;->releaseStarDialog()V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->setDialog(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->shenzhuang:Lcom/t4game/ShenZhuang;

    iget-byte v0, v0, Lcom/t4game/ShenZhuang;->uiIndex:B

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->shenzhuang:Lcom/t4game/ShenZhuang;

    iget-byte v1, v1, Lcom/t4game/ShenZhuang;->spiritGridId:B

    invoke-virtual {v0, v2, v1}, Lcom/t4game/GameScreen;->goZhuangBei2(BI)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget v1, v1, Lcom/t4game/GameScreen;->whichSide:I

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->shenzhuang:Lcom/t4game/ShenZhuang;

    iget-byte v2, v2, Lcom/t4game/ShenZhuang;->spiritGridId:B

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->goZhuangBeiOnBody(II)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, p2}, Lcom/t4game/GameUi;->keyEvent(I)V

    goto :goto_0
.end method

.method public pressedStarUpdataAlert()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, -0x1

    iget-byte v0, p0, Lcom/t4game/ShenZhuang;->uiIndex:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/ShenZhuang;->fitoutIndex:B

    invoke-virtual {p0, v3, v0, v2}, Lcom/t4game/ShenZhuang;->sendUpdataStar(BBS)Z

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "alert\u4e8c\u6b21\u53d1\u9001"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-byte v0, p0, Lcom/t4game/ShenZhuang;->spiritGridId:B

    int-to-short v0, v0

    invoke-virtual {p0, v3, v2, v0}, Lcom/t4game/ShenZhuang;->sendUpdataStar(BBS)Z

    goto :goto_0
.end method

.method public processChangeMessage()V
    .locals 3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u5f00\u59cb\u5904\u7406\u70bc\u5316\u6d88\u606f"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v2, 0x23d

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public processMsg(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/t4game/ShenZhuang;->processStarDialogMessage()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/t4game/ShenZhuang;->processUpdataStar()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/t4game/ShenZhuang;->processRefiningDialogMessage()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/t4game/ShenZhuang;->processChangeMessage()V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/t4game/ShenZhuang;->processRefiningMessage()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/t4game/ShenZhuang;->processRefiningMessage2()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x23a
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public processRefiningDialogMessage()V
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/ShenZhuang;->qilingIndex:B

    iget-byte v0, p0, Lcom/t4game/ShenZhuang;->qilingIndex:B

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/t4game/ShenZhuang;->baoshiOpen:[B

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/ShenZhuang;->baoshiInfo:[Ljava/lang/String;

    new-array v1, v0, [Ljava/util/Vector;

    iput-object v1, p0, Lcom/t4game/ShenZhuang;->vecOpenInfo:[Ljava/util/Vector;

    new-array v1, v0, [Ljava/util/Vector;

    iput-object v1, p0, Lcom/t4game/ShenZhuang;->vecOpenflag:[Ljava/util/Vector;

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/t4game/ShenZhuang;->grade:[I

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/ShenZhuang;->experience:[Ljava/lang/String;

    move v1, v7

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->vecOpenInfo:[Ljava/util/Vector;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->vecOpenflag:[Ljava/util/Vector;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->baoshiOpen:[B

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    aput-byte v3, v2, v1

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->baoshiInfo:[Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    move v3, v7

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v4, v4, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v4, v4, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v5, v5, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v5, v5, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v5}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v5

    iget-object v6, p0, Lcom/t4game/ShenZhuang;->vecOpenInfo:[Ljava/util/Vector;

    aget-object v6, v6, v1

    invoke-virtual {v6, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/t4game/ShenZhuang;->vecOpenflag:[Ljava/util/Vector;

    aget-object v4, v4, v1

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/t4game/ShenZhuang;->grade:[I

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v3

    aput v3, v2, v1

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->experience:[Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/ShenZhuang;->flame:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->shenzhuang:Lcom/t4game/ShenZhuang;

    invoke-virtual {v0}, Lcom/t4game/ShenZhuang;->initRefiningDialog()V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    const/16 v1, -0x17

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->setDialog(B)V

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v1, v0}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public processRefiningMessage()V
    .locals 4

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    new-array v1, v0, [S

    iput-object v1, p0, Lcom/t4game/ShenZhuang;->gridId:[S

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->gridId:[S

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v3

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/t4game/ShenZhuang;->initQilingDialog()V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v1, v0}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public processRefiningMessage2()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v2, 0x241

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    :goto_1
    return-void

    :cond_1
    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->experience:[Ljava/lang/String;

    iget v2, p0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->grade:[I

    iget v2, p0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->experience:[Ljava/lang/String;

    iget v2, p0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->baoshiInfo:[Ljava/lang/String;

    iget v2, p0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public processStarDialogMessage()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/ShenZhuang;->fireNum:B

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/ShenZhuang;->starName:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/ShenZhuang;->starNum:B

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->vecGoods:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->vecGoods:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    :cond_0
    iget-object v1, p0, Lcom/t4game/ShenZhuang;->vecStarinfo:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->vecStarinfo:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    :cond_1
    move v1, v6

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v3

    iget-object v4, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v4, v4, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v4, v4, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ":"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->vecGoods:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    move v1, v6

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->vecStarinfo:Ljava/util/Vector;

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->vecStarinfo:Ljava/util/Vector;

    iget-object v3, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->shenzhuang:Lcom/t4game/ShenZhuang;

    invoke-virtual {v0}, Lcom/t4game/ShenZhuang;->initStarDialog()V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    const/16 v1, -0x16

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->setDialog(B)V

    :cond_4
    return-void
.end method

.method public processUpdataStar()V
    .locals 3

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v2, 0x23b

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public releaseRefiningDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->imgRefiBg:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/t4game/ShenZhuang;->imgRefiBg:Ljavax/microedition/lcdui/Image;

    :cond_0
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->imgBaoshi:[Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/t4game/ShenZhuang;->imgBaoshi:[Ljavax/microedition/lcdui/Image;

    :cond_1
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->imgQiling:[Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/t4game/ShenZhuang;->imgQiling:[Ljavax/microedition/lcdui/Image;

    :cond_2
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->imgBaoshiIndex:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/t4game/ShenZhuang;->imgBaoshiIndex:Ljavax/microedition/lcdui/Image;

    :cond_3
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->release()V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iput-object v1, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    :cond_4
    return-void
.end method

.method public releaseStarDialog()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->starBgImg:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/t4game/ShenZhuang;->starBgImg:Ljavax/microedition/lcdui/Image;

    :cond_0
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->star:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/t4game/ShenZhuang;->star:Ljavax/microedition/lcdui/Image;

    :cond_1
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->fire0:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/t4game/ShenZhuang;->fire0:Ljavax/microedition/lcdui/Image;

    :cond_2
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->fire1:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/t4game/ShenZhuang;->fire1:Ljavax/microedition/lcdui/Image;

    :cond_3
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->vecGoods:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->vecStarinfo:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->release()V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iput-object v1, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    :cond_4
    return-void
.end method

.method public releasedQiliong()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui2:Lcom/t4game/GameUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui2:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->release()V

    :cond_0
    return-void
.end method

.method public sendChangeMessage(B)Z
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-byte v0, p0, Lcom/t4game/ShenZhuang;->uiIndex:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v2}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/ShenZhuang;->spiritGridId:B

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putShort(S)V

    :goto_0
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/ShenZhuang;->qilingGridId:B

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putShort(S)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u53d1\u9001\u5c01\u5370"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x23d

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/ShenZhuang;->fitoutIndex:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v2}, Lcom/t4game/IoBuffer;->putShort(S)V

    goto :goto_0
.end method

.method public sendRefiningDialogMessage(BS)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putShort(S)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x23c

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public sendRefiningMessage()Z
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-byte v0, p0, Lcom/t4game/ShenZhuang;->uiIndex:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v2}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/ShenZhuang;->spiritGridId:B

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putShort(S)V

    :goto_0
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x23e

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/ShenZhuang;->fitoutIndex:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v2}, Lcom/t4game/IoBuffer;->putShort(S)V

    goto :goto_0
.end method

.method public sendRefiningMessage2()Z
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-byte v0, p0, Lcom/t4game/ShenZhuang;->uiIndex:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v2}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/ShenZhuang;->spiritGridId:B

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putShort(S)V

    :goto_0
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget v1, p0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x241

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/ShenZhuang;->fitoutIndex:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v2}, Lcom/t4game/IoBuffer;->putShort(S)V

    goto :goto_0
.end method

.method public sendRefiningMessage3()Z
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-byte v0, p0, Lcom/t4game/ShenZhuang;->uiIndex:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v2}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/ShenZhuang;->spiritGridId:B

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putShort(S)V

    :goto_0
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget v1, p0, Lcom/t4game/ShenZhuang;->baoshiIndex:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x241

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/ShenZhuang;->fitoutIndex:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v2}, Lcom/t4game/IoBuffer;->putShort(S)V

    goto :goto_0
.end method

.method public sendStarDialogMessage(BS)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putShort(S)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x23a

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public sendUpdataStar(BBS)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p3}, Lcom/t4game/IoBuffer;->putShort(S)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x23b

    iget-object v2, p0, Lcom/t4game/ShenZhuang;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method
