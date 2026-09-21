.class public Lcom/t4game/FirstRecharge;
.super Ljava/lang/Object;


# static fields
.field private static firstRecharge:Lcom/t4game/FirstRecharge;


# instance fields
.field private activityName:Ljava/lang/String;

.field private button:Ljavax/microedition/lcdui/Image;

.field private endTime:Ljava/lang/String;

.field private fRechargeInfo:Ljava/lang/String;

.field private flag:Z

.field private flag2:Z

.field private fromTime:Ljava/lang/String;

.field private gNum:I

.field private gameWorld:Lcom/t4game/GameWorld;

.field private goodsBlind:[[B

.field private goodsDetails:[Ljava/lang/String;

.field private goodsID:[[I

.field private goodsIcon:[[I

.field private goodsLevel:[[I

.field private goodsName:[[Ljava/lang/String;

.field private goodsNum:[[B

.field private goodsType:[[I

.field private goodsTypeIndex:I

.field private gridW:I

.field private gridY:I

.field private imgbg:Ljavax/microedition/lcdui/Image;

.field private index:I

.field private listStr:[[Ljava/lang/String;

.field private moneyNum:[I

.field private network:Lcom/t4game/TcpNetwork;

.field private num:B

.field private readBuffer:Lcom/t4game/IoBuffer;

.field public rechargeType:B

.field private screen:Lcom/t4game/GameScreen;

.field private sendBuffer:Lcom/t4game/IoBuffer;

.field private size:B

.field private stateMent:Ljava/lang/String;

.field private totalGridNum:I

.field private yuanbao:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/t4game/FirstRecharge;->firstRecharge:Lcom/t4game/FirstRecharge;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lcom/t4game/FirstRecharge;->rechargeType:B

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->gameWorld:Lcom/t4game/GameWorld;

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->sendBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->readBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->network:Lcom/t4game/TcpNetwork;

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->imgbg:Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->button:Ljavax/microedition/lcdui/Image;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/t4game/FirstRecharge;->gridW:I

    iput v2, p0, Lcom/t4game/FirstRecharge;->index:I

    const/4 v0, 0x1

    const/16 v1, 0xc13

    invoke-static {v0, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->fRechargeInfo:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/t4game/FirstRecharge;->flag2:Z

    const/4 v0, 0x6

    iput v0, p0, Lcom/t4game/FirstRecharge;->gNum:I

    const/16 v0, 0xc

    iput v0, p0, Lcom/t4game/FirstRecharge;->totalGridNum:I

    iput v2, p0, Lcom/t4game/FirstRecharge;->gridY:I

    return-void
.end method

.method private drawFrecharge(Ljavax/microedition/lcdui/Graphics;)V
    .locals 13

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0, p1}, Lcom/t4game/GameScreen;->paintfunctionIntro0(Ljavax/microedition/lcdui/Graphics;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/FirstRecharge;->flag:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/t4game/Defaults;->lableTop:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v0, v1

    const/16 v0, 0xe8

    iget v1, p0, Lcom/t4game/FirstRecharge;->gridW:I

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    sub-int v10, v0, v1

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x168

    iget v1, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v1, v1, 0x6

    sub-int v11, v0, v1

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->imgbg:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->imgbg:Ljavax/microedition/lcdui/Image;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0xb4

    const/16 v2, 0x20

    const/16 v3, 0x11

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_2
    const/4 v0, 0x0

    move v12, v0

    :goto_1
    const/4 v0, 0x6

    if-ge v12, v0, :cond_4

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    rem-int/lit8 v0, v12, 0x6

    iget v1, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v1, v1, 0x5

    mul-int/2addr v0, v1

    add-int/2addr v0, v11

    iget v1, p0, Lcom/t4game/FirstRecharge;->gridW:I

    iget v2, p0, Lcom/t4game/FirstRecharge;->gridW:I

    invoke-virtual {p1, v0, v10, v1, v2}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    const v0, 0xffc700

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    rem-int/lit8 v0, v12, 0x6

    iget v1, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v1, v1, 0x5

    mul-int/2addr v0, v1

    add-int/2addr v0, v11

    iget v1, p0, Lcom/t4game/FirstRecharge;->gridW:I

    iget v2, p0, Lcom/t4game/FirstRecharge;->gridW:I

    invoke-virtual {p1, v0, v10, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    if-ge v12, v0, :cond_3

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    aget v0, v0, v12

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget v1, v1, v12

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    rem-int/lit8 v2, v12, 0x6

    iget v3, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v3, v3, 0x5

    mul-int/2addr v2, v3

    add-int/2addr v2, v11

    iget v3, p0, Lcom/t4game/FirstRecharge;->gridW:I

    const/16 v4, 0x18

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/FirstRecharge;->gridW:I

    const/16 v4, 0x18

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v10

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, p1

    invoke-virtual/range {v0 .. v9}, Lcom/t4game/GameScreen;->paintRoleGoodsIcon(Ljava/lang/String;IILjavax/microedition/lcdui/Graphics;IIZBZ)V

    :cond_3
    add-int/lit8 v0, v12, 0x1

    int-to-byte v0, v0

    move v12, v0

    goto :goto_1

    :cond_4
    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    rem-int/lit8 v0, v0, 0x6

    iget v1, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v1, v1, 0x5

    mul-int/2addr v0, v1

    add-int v1, v11, v0

    iget v0, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v4, v0, 0x2

    move-object v0, p0

    move v2, v10

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/FirstRecharge;->paintFunctionBlockSelect(IIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Lcom/t4game/FirstRecharge;->index:I

    aget v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->goodsName:[[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Lcom/t4game/FirstRecharge;->index:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/t4game/FirstRecharge;->index:I

    rem-int/lit8 v1, v1, 0x6

    iget v2, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v2, v2, 0x5

    mul-int/2addr v1, v2

    add-int/2addr v1, v11

    iget v2, p0, Lcom/t4game/FirstRecharge;->gridW:I

    const/16 v3, 0x10

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x18

    iget v2, p0, Lcom/t4game/FirstRecharge;->gridW:I

    const/16 v3, 0x10

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v10

    add-int/lit8 v2, v2, 0x18

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/t4game/FirstRecharge;->drawShowName(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;II)V

    :cond_5
    iget-object v0, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "\u67e5\u770b"

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintFunctionEndAlert(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->button:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->button:Ljavax/microedition/lcdui/Image;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0x168

    const/16 v2, 0xe8

    const/16 v3, 0x18

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_0
.end method

.method private drawQrecharge(Ljavax/microedition/lcdui/Graphics;)V
    .locals 13

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0, p1}, Lcom/t4game/GameScreen;->paintfunctionIntro0(Ljavax/microedition/lcdui/Graphics;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/FirstRecharge;->flag:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    const/16 v1, 0xc19

    invoke-static {v0, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/t4game/DraftingUtil;->paintFloatingDailog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v1, 0xc15

    invoke-static {v0, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/4 v2, 0x1

    const/16 v3, 0xc15

    invoke-static {v2, v3}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/t4game/Util;->stringWidth(Ljava/lang/String;)I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v4, Lcom/t4game/Defaults;->sfh:I

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    const/4 v0, 0x1

    const/16 v1, 0xc16

    invoke-static {v0, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/4 v2, 0x1

    const/16 v3, 0xc16

    invoke-static {v2, v3}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/t4game/Util;->stringWidth(Ljava/lang/String;)I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v4, Lcom/t4game/Defaults;->sfh:I

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->fromTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x5

    add-int/lit16 v1, v1, 0xb4

    invoke-direct {p0, v0}, Lcom/t4game/FirstRecharge;->getStrW(Ljava/lang/String;)I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v2, v3

    const/16 v3, 0x168

    sget v4, Lcom/t4game/Defaults;->sfh:I

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    const/4 v0, 0x1

    const/16 v1, 0xc17

    invoke-static {v0, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/4 v2, 0x1

    const/16 v3, 0xc17

    invoke-static {v2, v3}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/t4game/Util;->stringWidth(Ljava/lang/String;)I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v4, Lcom/t4game/Defaults;->sfh:I

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v1, v1, 0x1

    add-int v10, v0, v1

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v1, 0xaf

    sub-int/2addr v0, v1

    shr-int/lit8 v11, v0, 0x1

    const/4 v0, 0x0

    move v12, v0

    :goto_1
    iget v0, p0, Lcom/t4game/FirstRecharge;->totalGridNum:I

    if-ge v12, v0, :cond_3

    const v0, 0xffc700

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget v0, p0, Lcom/t4game/FirstRecharge;->gNum:I

    rem-int v0, v12, v0

    iget v1, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v1, v1, 0x5

    mul-int/2addr v0, v1

    add-int/2addr v0, v11

    iget v1, p0, Lcom/t4game/FirstRecharge;->gNum:I

    div-int v1, v12, v1

    iget v2, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v2, v2, 0x5

    mul-int/2addr v1, v2

    add-int/2addr v1, v10

    iget v2, p0, Lcom/t4game/FirstRecharge;->gridW:I

    iget v3, p0, Lcom/t4game/FirstRecharge;->gridW:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    iget v0, p0, Lcom/t4game/FirstRecharge;->gridY:I

    iget v1, p0, Lcom/t4game/FirstRecharge;->gNum:I

    mul-int/2addr v0, v1

    add-int/2addr v0, v12

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Lcom/t4game/FirstRecharge;->gridY:I

    iget v2, p0, Lcom/t4game/FirstRecharge;->gNum:I

    mul-int/2addr v1, v2

    add-int/2addr v1, v12

    aget v1, v0, v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v3, 0xaf

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/t4game/FirstRecharge;->gNum:I

    rem-int v3, v12, v3

    iget v4, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v4, v4, 0x5

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/FirstRecharge;->gridW:I

    const/16 v4, 0x18

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/FirstRecharge;->gridW:I

    const/16 v4, 0x18

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v10

    iget v4, p0, Lcom/t4game/FirstRecharge;->gNum:I

    div-int v4, v12, v4

    iget v5, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v5, v5, 0x5

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, p1

    invoke-virtual/range {v0 .. v9}, Lcom/t4game/GameScreen;->paintRoleGoodsIcon(Ljava/lang/String;IILjavax/microedition/lcdui/Graphics;IIZBZ)V

    :cond_2
    add-int/lit8 v0, v12, 0x1

    int-to-byte v0, v0

    move v12, v0

    goto/16 :goto_1

    :cond_3
    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v1, p0, Lcom/t4game/FirstRecharge;->gNum:I

    rem-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v1, v1, 0x5

    mul-int/2addr v0, v1

    add-int v1, v11, v0

    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v2, p0, Lcom/t4game/FirstRecharge;->gNum:I

    div-int/2addr v0, v2

    iget v2, p0, Lcom/t4game/FirstRecharge;->gridY:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v2, v2, 0x5

    mul-int/2addr v0, v2

    add-int v2, v10, v0

    iget v0, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v4, v0, 0x2

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/FirstRecharge;->paintFunctionBlockSelect(IIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Lcom/t4game/FirstRecharge;->index:I

    aget v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->goodsName:[[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Lcom/t4game/FirstRecharge;->index:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/t4game/FirstRecharge;->index:I

    rem-int/lit8 v1, v1, 0x6

    iget v2, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v2, v2, 0x5

    mul-int/2addr v1, v2

    add-int/2addr v1, v11

    iget v2, p0, Lcom/t4game/FirstRecharge;->gridW:I

    const/16 v3, 0x10

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x18

    iget v2, p0, Lcom/t4game/FirstRecharge;->gridW:I

    const/16 v3, 0x10

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v10

    add-int/lit8 v2, v2, 0x18

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/t4game/FirstRecharge;->drawShowName(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;II)V

    :cond_4
    iget-object v0, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "\u67e5\u770b"

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintFunctionEndAlert(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->button:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->button:Ljavax/microedition/lcdui/Image;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0x168

    const/16 v2, 0xe8

    const/16 v3, 0x18

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_0
.end method

.method private drawRechargeList(Ljavax/microedition/lcdui/Graphics;)V
    .locals 14

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0, p1}, Lcom/t4game/GameScreen;->paintfunctionIntro0(Ljavax/microedition/lcdui/Graphics;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/FirstRecharge;->flag:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    const/16 v1, 0xc14

    invoke-static {v0, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/t4game/DraftingUtil;->paintFloatingDailog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/16 v1, 0xc15

    invoke-static {v0, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/4 v2, 0x1

    const/16 v3, 0xc15

    invoke-static {v2, v3}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/t4game/Util;->stringWidth(Ljava/lang/String;)I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v4, Lcom/t4game/Defaults;->sfh:I

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    const/4 v0, 0x1

    const/16 v1, 0xc1e

    invoke-static {v0, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/4 v2, 0x1

    const/16 v3, 0xc16

    invoke-static {v2, v3}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/t4game/Util;->stringWidth(Ljava/lang/String;)I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v4, Lcom/t4game/Defaults;->sfh:I

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->fromTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x5

    add-int/lit16 v1, v1, 0xb4

    invoke-direct {p0, v0}, Lcom/t4game/FirstRecharge;->getStrW(Ljava/lang/String;)I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v2, v3

    const/16 v3, 0x168

    sget v4, Lcom/t4game/Defaults;->sfh:I

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    const/4 v0, 0x1

    const/16 v1, 0xc17

    invoke-static {v0, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/4 v2, 0x1

    const/16 v3, 0xc17

    invoke-static {v2, v3}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/t4game/Util;->stringWidth(Ljava/lang/String;)I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v4, Lcom/t4game/Defaults;->sfh:I

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v1, v1, 0x1

    add-int v10, v0, v1

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v0, v0, 0x5

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x5

    add-int v11, v0, v1

    const/4 v0, 0x0

    move v12, v0

    :goto_1
    const/4 v0, 0x2

    if-ge v12, v0, :cond_4

    const/4 v0, 0x0

    move v13, v0

    :goto_2
    iget v0, p0, Lcom/t4game/FirstRecharge;->gNum:I

    if-ge v13, v0, :cond_3

    const v0, 0xffc700

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget v0, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v0, v0, 0x5

    mul-int/2addr v0, v13

    add-int/2addr v0, v11

    iget v1, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v1, v1, 0x5

    mul-int/2addr v1, v12

    add-int/2addr v1, v10

    iget v2, p0, Lcom/t4game/FirstRecharge;->gridW:I

    iget v3, p0, Lcom/t4game/FirstRecharge;->gridW:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    const/16 v2, 0x358

    invoke-static {v1, v2}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->moneyNum:[I

    iget v2, p0, Lcom/t4game/FirstRecharge;->gridY:I

    add-int/2addr v2, v12

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v2, 0xc18

    invoke-static {v1, v2}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x5

    sub-int v1, v11, v1

    iget v2, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v2, v2, 0x5

    mul-int/2addr v2, v12

    add-int/2addr v2, v10

    sget v3, Lcom/t4game/Defaults;->CANVAS_W:I

    sub-int/2addr v3, v11

    sget v4, Lcom/t4game/Defaults;->sfh:I

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    iget v1, p0, Lcom/t4game/FirstRecharge;->gridY:I

    add-int/2addr v1, v12

    aget-object v0, v0, v1

    aget v1, v0, v13

    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v2, v2, 0x5

    mul-int/2addr v2, v13

    add-int/2addr v2, v11

    iget v3, p0, Lcom/t4game/FirstRecharge;->gridW:I

    const/16 v4, 0x18

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/FirstRecharge;->gridW:I

    const/16 v4, 0x18

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v10

    iget v4, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v4, v4, 0x5

    mul-int/2addr v4, v12

    add-int/2addr v3, v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v4, p1

    invoke-virtual/range {v0 .. v9}, Lcom/t4game/GameScreen;->paintRoleGoodsIcon(Ljava/lang/String;IILjavax/microedition/lcdui/Graphics;IIZBZ)V

    :cond_2
    add-int/lit8 v0, v13, 0x1

    int-to-byte v0, v0

    move v13, v0

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v0, v12, 0x1

    int-to-byte v0, v0

    move v12, v0

    goto/16 :goto_1

    :cond_4
    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v1, p0, Lcom/t4game/FirstRecharge;->gNum:I

    rem-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v1, v1, 0x5

    mul-int/2addr v0, v1

    add-int v1, v11, v0

    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v2, p0, Lcom/t4game/FirstRecharge;->gNum:I

    div-int/2addr v0, v2

    iget v2, p0, Lcom/t4game/FirstRecharge;->gridY:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v2, v2, 0x5

    mul-int/2addr v0, v2

    add-int v2, v10, v0

    iget v0, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v3, v0, 0x2

    iget v0, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v4, v0, 0x2

    move-object v0, p0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/FirstRecharge;->paintFunctionBlockSelect(IIIILjavax/microedition/lcdui/Graphics;)V

    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    array-length v1, v1

    iget v2, p0, Lcom/t4game/FirstRecharge;->gNum:I

    mul-int/2addr v1, v2

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    iget v1, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v2, p0, Lcom/t4game/FirstRecharge;->gNum:I

    div-int/2addr v1, v2

    aget-object v0, v0, v1

    iget v1, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v2, p0, Lcom/t4game/FirstRecharge;->gNum:I

    rem-int/2addr v1, v2

    aget v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->goodsName:[[Ljava/lang/String;

    iget v1, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v2, p0, Lcom/t4game/FirstRecharge;->gNum:I

    div-int/2addr v1, v2

    aget-object v0, v0, v1

    iget v1, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v2, p0, Lcom/t4game/FirstRecharge;->gNum:I

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    iget v1, p0, Lcom/t4game/FirstRecharge;->index:I

    rem-int/lit8 v1, v1, 0x6

    iget v2, p0, Lcom/t4game/FirstRecharge;->gridW:I

    add-int/lit8 v2, v2, 0x5

    mul-int/2addr v1, v2

    add-int/2addr v1, v11

    iget v2, p0, Lcom/t4game/FirstRecharge;->gridW:I

    const/16 v3, 0x10

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x18

    iget v2, p0, Lcom/t4game/FirstRecharge;->gridW:I

    const/16 v3, 0x10

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v10

    add-int/lit8 v2, v2, 0x18

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/t4game/FirstRecharge;->drawShowName(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;II)V

    :cond_5
    iget-object v0, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "\u67e5\u770b"

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintFunctionEndAlert(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->button:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->button:Ljavax/microedition/lcdui/Image;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0x168

    const/16 v2, 0xe8

    const/16 v3, 0x18

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/t4game/FirstRecharge;
    .locals 1

    sget-object v0, Lcom/t4game/FirstRecharge;->firstRecharge:Lcom/t4game/FirstRecharge;

    if-nez v0, :cond_0

    new-instance v0, Lcom/t4game/FirstRecharge;

    invoke-direct {v0}, Lcom/t4game/FirstRecharge;-><init>()V

    sput-object v0, Lcom/t4game/FirstRecharge;->firstRecharge:Lcom/t4game/FirstRecharge;

    :cond_0
    sget-object v0, Lcom/t4game/FirstRecharge;->firstRecharge:Lcom/t4game/FirstRecharge;

    return-object v0
.end method

.method private getStrW(Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    sget-object v3, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    aget-char v4, v0, v1

    invoke-virtual {v3, v4}, Ljavax/microedition/lcdui/Font;->charWidth(C)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private initFrecharge()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x19

    iput v0, p0, Lcom/t4game/FirstRecharge;->gridW:I

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    aget-object v0, v0, v3

    array-length v0, v0

    new-array v0, v0, [S

    move v1, v3

    :goto_0
    iget-object v2, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    aget-object v2, v2, v3

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    aget-object v2, v2, v3

    aget v2, v2, v1

    int-to-short v2, v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/t4game/FirstRecharge;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/t4game/GameWorld;->getGoodsIcon(B[SZ)V

    const-string v0, "/frecharge/bg.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->imgbg:Ljavax/microedition/lcdui/Image;

    const-string v0, "/frecharge/button.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->button:Ljavax/microedition/lcdui/Image;

    return-void
.end method

.method private initQrecharge()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x19

    iput v0, p0, Lcom/t4game/FirstRecharge;->gridW:I

    iput v3, p0, Lcom/t4game/FirstRecharge;->gridY:I

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    aget-object v0, v0, v3

    array-length v0, v0

    new-array v0, v0, [S

    move v1, v3

    :goto_0
    iget-object v2, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    aget-object v2, v2, v3

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    aget-object v2, v2, v3

    aget v2, v2, v1

    int-to-short v2, v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/t4game/FirstRecharge;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/t4game/GameWorld;->getGoodsIcon(B[SZ)V

    const-string v0, "/frecharge/button.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->button:Ljavax/microedition/lcdui/Image;

    return-void
.end method

.method private initRechargeList()V
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0x1e

    iput v0, p0, Lcom/t4game/FirstRecharge;->gridW:I

    iput v4, p0, Lcom/t4game/FirstRecharge;->gridY:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move v1, v4

    :goto_0
    iget-object v2, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    move v2, v4

    :goto_1
    iget-object v3, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    aget-object v3, v3, v1

    array-length v3, v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    aget-object v3, v3, v1

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [S

    move v2, v4

    :goto_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/t4game/FirstRecharge;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v2, 0x4

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Lcom/t4game/GameWorld;->getGoodsIcon(B[SZ)V

    const-string v0, "/frecharge/button.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->button:Ljavax/microedition/lcdui/Image;

    return-void
.end method

.method private keyFrecharge(I)V
    .locals 4

    const/4 v1, 0x5

    const/4 v3, 0x1

    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    if-gez v0, :cond_0

    iput v2, p0, Lcom/t4game/FirstRecharge;->index:I

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    if-le v0, v1, :cond_0

    iput v1, p0, Lcom/t4game/FirstRecharge;->index:I

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/t4game/FirstRecharge;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v2, v0, Lcom/t4game/GameWorld;->showIntro:Z

    iget-boolean v0, p0, Lcom/t4game/FirstRecharge;->flag:Z

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/t4game/FirstRecharge;->flag:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    iget-byte v1, v1, Lcom/t4game/GameScreen;->PreState:B

    invoke-virtual {v0, v1, v3}, Lcom/t4game/GameScreen;->setState(BZ)V

    invoke-virtual {p0}, Lcom/t4game/FirstRecharge;->release()V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/t4game/FirstRecharge;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0}, Lcom/t4game/GameWorld;->sendGetGoodsPayMenuMessage()Z

    goto :goto_0

    :sswitch_4
    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->goodsID:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v3, v0, Lcom/t4game/GameWorld;->showIntro:Z

    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    invoke-direct {p0, v2, v0}, Lcom/t4game/FirstRecharge;->sendGoodsDetails(II)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_2
        -0x6 -> :sswitch_3
        -0x4 -> :sswitch_1
        -0x3 -> :sswitch_0
        0x30 -> :sswitch_4
    .end sparse-switch
.end method

.method private keyQrecharge(I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v1, p0, Lcom/t4game/FirstRecharge;->gNum:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/t4game/FirstRecharge;->index:I

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v1, p0, Lcom/t4game/FirstRecharge;->gNum:I

    rem-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/FirstRecharge;->gNum:I

    sub-int/2addr v1, v5

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/FirstRecharge;->index:I

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v1, p0, Lcom/t4game/FirstRecharge;->gNum:I

    div-int/2addr v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v1, p0, Lcom/t4game/FirstRecharge;->gNum:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/FirstRecharge;->gridY:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/t4game/FirstRecharge;->gridY:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/t4game/FirstRecharge;->gridY:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/t4game/FirstRecharge;->gridY:I

    :cond_1
    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v1, p0, Lcom/t4game/FirstRecharge;->gNum:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/FirstRecharge;->index:I

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v1, p0, Lcom/t4game/FirstRecharge;->gNum:I

    div-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->goodsID:[[I

    aget-object v1, v1, v4

    array-length v1, v1

    iget v2, p0, Lcom/t4game/FirstRecharge;->gNum:I

    div-int/2addr v1, v2

    sub-int/2addr v1, v5

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v1, p0, Lcom/t4game/FirstRecharge;->gNum:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/FirstRecharge;->gridY:I

    iget v2, p0, Lcom/t4game/FirstRecharge;->totalGridNum:I

    iget v3, p0, Lcom/t4game/FirstRecharge;->gNum:I

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    sub-int/2addr v1, v5

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/t4game/FirstRecharge;->gridY:I

    iget v1, p0, Lcom/t4game/FirstRecharge;->totalGridNum:I

    iget v2, p0, Lcom/t4game/FirstRecharge;->gNum:I

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->goodsID:[[I

    aget-object v1, v1, v4

    array-length v1, v1

    iget v2, p0, Lcom/t4game/FirstRecharge;->gNum:I

    div-int/2addr v1, v2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/t4game/FirstRecharge;->gridY:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/FirstRecharge;->gridY:I

    :cond_2
    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v1, p0, Lcom/t4game/FirstRecharge;->gNum:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/FirstRecharge;->index:I

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/t4game/FirstRecharge;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v4, v0, Lcom/t4game/GameWorld;->showIntro:Z

    iget-boolean v0, p0, Lcom/t4game/FirstRecharge;->flag:Z

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lcom/t4game/FirstRecharge;->flag:Z

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    iget-byte v1, v1, Lcom/t4game/GameScreen;->PreState:B

    invoke-virtual {v0, v1, v5}, Lcom/t4game/GameScreen;->setState(BZ)V

    invoke-virtual {p0}, Lcom/t4game/FirstRecharge;->release()V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/t4game/FirstRecharge;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0}, Lcom/t4game/GameWorld;->sendGetGoodsPayMenuMessage()Z

    goto/16 :goto_0

    :sswitch_6
    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    aget-object v1, v1, v4

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    aget-object v0, v0, v4

    iget v1, p0, Lcom/t4game/FirstRecharge;->index:I

    aget v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v5, v0, Lcom/t4game/GameWorld;->showIntro:Z

    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    invoke-direct {p0, v4, v0}, Lcom/t4game/FirstRecharge;->sendGoodsDetails(II)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_4
        -0x6 -> :sswitch_5
        -0x4 -> :sswitch_1
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_3
        -0x1 -> :sswitch_2
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method private keyRechargeList(I)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v1, p0, Lcom/t4game/FirstRecharge;->gNum:I

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/t4game/FirstRecharge;->index:I

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v1, p0, Lcom/t4game/FirstRecharge;->gNum:I

    rem-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/FirstRecharge;->gNum:I

    sub-int/2addr v1, v4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/FirstRecharge;->index:I

    goto :goto_0

    :sswitch_2
    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v1, p0, Lcom/t4game/FirstRecharge;->gNum:I

    div-int/2addr v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v1, p0, Lcom/t4game/FirstRecharge;->gNum:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/FirstRecharge;->gridY:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/t4game/FirstRecharge;->gridY:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/t4game/FirstRecharge;->gridY:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/t4game/FirstRecharge;->gridY:I

    :cond_1
    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v1, p0, Lcom/t4game/FirstRecharge;->gNum:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/FirstRecharge;->index:I

    goto :goto_0

    :sswitch_3
    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v1, p0, Lcom/t4game/FirstRecharge;->gNum:I

    div-int/2addr v0, v1

    iget-byte v1, p0, Lcom/t4game/FirstRecharge;->num:B

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v1, p0, Lcom/t4game/FirstRecharge;->gNum:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/FirstRecharge;->gridY:I

    iget v2, p0, Lcom/t4game/FirstRecharge;->totalGridNum:I

    iget v3, p0, Lcom/t4game/FirstRecharge;->gNum:I

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    sub-int/2addr v1, v4

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/t4game/FirstRecharge;->gridY:I

    iget v1, p0, Lcom/t4game/FirstRecharge;->totalGridNum:I

    iget v2, p0, Lcom/t4game/FirstRecharge;->gNum:I

    div-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->goodsID:[[I

    aget-object v1, v1, v5

    array-length v1, v1

    iget v2, p0, Lcom/t4game/FirstRecharge;->gNum:I

    div-int/2addr v1, v2

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/t4game/FirstRecharge;->gridY:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/FirstRecharge;->gridY:I

    :cond_2
    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v1, p0, Lcom/t4game/FirstRecharge;->gNum:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/FirstRecharge;->index:I

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/t4game/FirstRecharge;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v5, v0, Lcom/t4game/GameWorld;->showIntro:Z

    iget-boolean v0, p0, Lcom/t4game/FirstRecharge;->flag:Z

    if-eqz v0, :cond_3

    iput-boolean v5, p0, Lcom/t4game/FirstRecharge;->flag:Z

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    iget-byte v1, v1, Lcom/t4game/GameScreen;->PreState:B

    invoke-virtual {v0, v1, v4}, Lcom/t4game/GameScreen;->setState(BZ)V

    invoke-virtual {p0}, Lcom/t4game/FirstRecharge;->release()V

    goto/16 :goto_0

    :sswitch_5
    iget-object v0, p0, Lcom/t4game/FirstRecharge;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0}, Lcom/t4game/GameWorld;->sendGetGoodsPayMenuMessage()Z

    goto/16 :goto_0

    :sswitch_6
    iget-object v0, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    iget v1, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v2, p0, Lcom/t4game/FirstRecharge;->gNum:I

    div-int/2addr v1, v2

    aget-object v0, v0, v1

    iget v1, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v2, p0, Lcom/t4game/FirstRecharge;->gNum:I

    rem-int/2addr v1, v2

    aget v0, v0, v1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v4, v0, Lcom/t4game/GameWorld;->showIntro:Z

    iget v0, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v1, p0, Lcom/t4game/FirstRecharge;->gNum:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/FirstRecharge;->index:I

    iget v2, p0, Lcom/t4game/FirstRecharge;->gNum:I

    rem-int/2addr v1, v2

    invoke-direct {p0, v0, v1}, Lcom/t4game/FirstRecharge;->sendGoodsDetails(II)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_4
        -0x6 -> :sswitch_5
        -0x4 -> :sswitch_1
        -0x3 -> :sswitch_0
        -0x2 -> :sswitch_3
        -0x1 -> :sswitch_2
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method private sendGoodsDetails(II)V
    .locals 4

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/t4game/FirstRecharge;->goodsType:[[I

    aget-object v2, v2, p1

    aget v2, v2, p2

    int-to-byte v2, v2

    iget-object v3, p0, Lcom/t4game/FirstRecharge;->goodsID:[[I

    aget-object v3, v3, p1

    aget v3, v3, p2

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/GameWorld;->sendGoodsDetailMessage(BBI)Z

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->goodsName:[[Ljava/lang/String;

    aget-object v1, v1, p1

    aget-object v1, v1, p2

    iput-object v1, v0, Lcom/t4game/GameWorld;->questGoodsShowIntroName:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    iput v1, v0, Lcom/t4game/GameWorld;->questGoodsShowIntroIconId:I

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->goodsLevel:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    int-to-short v1, v1

    iput-short v1, v0, Lcom/t4game/GameWorld;->questGoodsShowlimitLevel:S

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->goodsBlind:[[B

    aget-object v0, v0, p1

    aget-byte v0, v0, p2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/t4game/GameWorld;->questGoodsShowBind:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/t4game/GameWorld;->questGoodsShowBind:Z

    goto :goto_0
.end method


# virtual methods
.method public Start()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/t4game/FirstRecharge;->drawFrecharge(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/t4game/FirstRecharge;->drawQrecharge(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/t4game/FirstRecharge;->drawRechargeList(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x24
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public drawShowName(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;II)V
    .locals 6

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    const v5, 0xffc700

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GameScreen;->paintFunctionIntro(Ljava/lang/String;IILjavax/microedition/lcdui/Graphics;I)V

    return-void
.end method

.method public init(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, Lcom/t4game/FirstRecharge;->initFrecharge()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/t4game/FirstRecharge;->initQrecharge()V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/t4game/FirstRecharge;->initRechargeList()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x24
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public keyEvent(I)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/t4game/FirstRecharge;->keyFrecharge(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/t4game/FirstRecharge;->keyQrecharge(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/t4game/FirstRecharge;->keyRechargeList(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x24
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public paintFunctionBlockSelect(IIIILjavax/microedition/lcdui/Graphics;)V
    .locals 6

    const/16 v0, 0xff

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-virtual {p5, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(III)V

    sget v0, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v0, v0, 0x6

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    sub-int v2, p3, v0

    const/4 v0, 0x1

    sub-int v3, p4, v0

    const/4 v4, 0x3

    move v0, p1

    move v1, p2

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    const/4 v0, 0x1

    sub-int v0, p1, v0

    const/4 v1, 0x1

    sub-int v1, p2, v1

    add-int/lit8 v2, p3, 0x1

    add-int/lit8 v3, p4, 0x1

    const/4 v4, 0x4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, p2, 0x2

    const/4 v2, 0x5

    sub-int v2, p3, v2

    const/4 v3, 0x5

    sub-int v3, p4, v3

    const/4 v4, 0x4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x3

    sub-int v2, p3, v2

    const/4 v3, 0x3

    sub-int v3, p4, v3

    const/4 v4, 0x3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0
.end method

.method public pointerEvent()V
    .locals 6

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    const/16 v1, -0x22

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    const/16 v1, -0x23

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    const/16 v1, -0x24

    if-ne v0, v1, :cond_1

    :cond_0
    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x168

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->button:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    const/16 v2, 0xe8

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->button:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->button:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x6

    invoke-virtual {p0, v0}, Lcom/t4game/FirstRecharge;->keyEvent(I)V

    :cond_1
    return-void
.end method

.method public processMsg()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/FirstRecharge;->rechargeType:B

    iget-byte v0, p0, Lcom/t4game/FirstRecharge;->rechargeType:B

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->activityName:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->fromTime:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->endTime:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->stateMent:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/t4game/FirstRecharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/FirstRecharge;->num:B

    iget-byte v0, p0, Lcom/t4game/FirstRecharge;->num:B

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    iget-byte v0, p0, Lcom/t4game/FirstRecharge;->num:B

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->goodsID:[[I

    iget-byte v0, p0, Lcom/t4game/FirstRecharge;->num:B

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->goodsType:[[I

    iget-byte v0, p0, Lcom/t4game/FirstRecharge;->num:B

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->goodsName:[[Ljava/lang/String;

    iget-byte v0, p0, Lcom/t4game/FirstRecharge;->num:B

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->goodsNum:[[B

    iget-byte v0, p0, Lcom/t4game/FirstRecharge;->num:B

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->goodsBlind:[[B

    iget-byte v0, p0, Lcom/t4game/FirstRecharge;->num:B

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->goodsLevel:[[I

    iget-byte v0, p0, Lcom/t4game/FirstRecharge;->num:B

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->moneyNum:[I

    move v0, v6

    :goto_0
    iget-byte v1, p0, Lcom/t4game/FirstRecharge;->num:B

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->moneyNum:[I

    iget-object v2, p0, Lcom/t4game/FirstRecharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/t4game/FirstRecharge;->size:B

    iget-byte v1, p0, Lcom/t4game/FirstRecharge;->size:B

    iget-byte v2, p0, Lcom/t4game/FirstRecharge;->rechargeType:B

    const/4 v3, 0x7

    if-ne v2, v3, :cond_3

    iget-byte v2, p0, Lcom/t4game/FirstRecharge;->size:B

    iget v3, p0, Lcom/t4game/FirstRecharge;->totalGridNum:I

    if-ge v2, v3, :cond_2

    iget v2, p0, Lcom/t4game/FirstRecharge;->totalGridNum:I

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/t4game/FirstRecharge;->size:B

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    iget-byte v3, p0, Lcom/t4game/FirstRecharge;->size:B

    new-array v3, v3, [I

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/t4game/FirstRecharge;->goodsID:[[I

    iget-byte v3, p0, Lcom/t4game/FirstRecharge;->size:B

    new-array v3, v3, [I

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/t4game/FirstRecharge;->goodsType:[[I

    iget-byte v3, p0, Lcom/t4game/FirstRecharge;->size:B

    new-array v3, v3, [I

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/t4game/FirstRecharge;->goodsName:[[Ljava/lang/String;

    iget-byte v3, p0, Lcom/t4game/FirstRecharge;->size:B

    new-array v3, v3, [Ljava/lang/String;

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/t4game/FirstRecharge;->goodsNum:[[B

    iget-byte v3, p0, Lcom/t4game/FirstRecharge;->size:B

    new-array v3, v3, [B

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/t4game/FirstRecharge;->goodsBlind:[[B

    iget-byte v3, p0, Lcom/t4game/FirstRecharge;->size:B

    new-array v3, v3, [B

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/t4game/FirstRecharge;->goodsLevel:[[I

    iget-byte v3, p0, Lcom/t4game/FirstRecharge;->size:B

    new-array v3, v3, [I

    aput-object v3, v2, v0

    move v2, v6

    :goto_2
    iget-byte v3, p0, Lcom/t4game/FirstRecharge;->size:B

    if-ge v2, v3, :cond_5

    if-ge v2, v1, :cond_4

    iget-object v3, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/t4game/FirstRecharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v4

    aput v4, v3, v2

    iget-object v3, p0, Lcom/t4game/FirstRecharge;->goodsID:[[I

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/t4game/FirstRecharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v4

    aput v4, v3, v2

    iget-object v3, p0, Lcom/t4game/FirstRecharge;->goodsType:[[I

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/t4game/FirstRecharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v4

    aput v4, v3, v2

    iget-object v3, p0, Lcom/t4game/FirstRecharge;->goodsName:[[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/t4game/FirstRecharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/t4game/FirstRecharge;->goodsNum:[[B

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/t4game/FirstRecharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v4

    aput-byte v4, v3, v2

    iget-object v3, p0, Lcom/t4game/FirstRecharge;->goodsBlind:[[B

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/t4game/FirstRecharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v4

    aput-byte v4, v3, v2

    iget-object v3, p0, Lcom/t4game/FirstRecharge;->goodsLevel:[[I

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/t4game/FirstRecharge;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v4

    aput v4, v3, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_2

    :cond_2
    iget-byte v2, p0, Lcom/t4game/FirstRecharge;->size:B

    iget v3, p0, Lcom/t4game/FirstRecharge;->gNum:I

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/t4game/FirstRecharge;->gNum:I

    mul-int/2addr v2, v3

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/t4game/FirstRecharge;->size:B

    goto/16 :goto_1

    :cond_3
    iget-byte v2, p0, Lcom/t4game/FirstRecharge;->rechargeType:B

    const/16 v3, 0x9

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/t4game/FirstRecharge;->gNum:I

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/t4game/FirstRecharge;->size:B

    goto/16 :goto_1

    :cond_4
    iget-object v3, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    aget-object v3, v3, v0

    aput v5, v3, v2

    iget-object v3, p0, Lcom/t4game/FirstRecharge;->goodsID:[[I

    aget-object v3, v3, v0

    aput v5, v3, v2

    iget-object v3, p0, Lcom/t4game/FirstRecharge;->goodsType:[[I

    aget-object v3, v3, v0

    aput v5, v3, v2

    iget-object v3, p0, Lcom/t4game/FirstRecharge;->goodsName:[[Ljava/lang/String;

    aget-object v3, v3, v0

    const-string v4, ""

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/t4game/FirstRecharge;->goodsNum:[[B

    aget-object v3, v3, v0

    aput-byte v5, v3, v2

    iget-object v3, p0, Lcom/t4game/FirstRecharge;->goodsBlind:[[B

    aget-object v3, v3, v0

    aput-byte v5, v3, v2

    iget-object v3, p0, Lcom/t4game/FirstRecharge;->goodsLevel:[[I

    aget-object v3, v3, v0

    aput v5, v3, v2

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    iget-byte v0, p0, Lcom/t4game/FirstRecharge;->rechargeType:B

    packed-switch v0, :pswitch_data_0

    move v0, v6

    :goto_4
    invoke-virtual {p0, v0}, Lcom/t4game/FirstRecharge;->init(I)V

    iget-object v1, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v1, v0}, Lcom/t4game/GameScreen;->setDialog(B)V

    return-void

    :pswitch_0
    const/16 v0, -0x22

    goto :goto_4

    :pswitch_1
    const/16 v0, -0x23

    goto :goto_4

    :pswitch_2
    const/16 v0, -0x24

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public release()V
    .locals 4

    const/4 v2, 0x0

    move-object v0, v2

    check-cast v0, [[I

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/FirstRecharge;->goodsIcon:[[I

    move-object v0, v2

    check-cast v0, [[I

    move-object v3, v0

    iput-object v3, p0, Lcom/t4game/FirstRecharge;->goodsID:[[I

    move-object v0, v2

    check-cast v0, [[I

    move-object v3, v0

    iput-object v3, p0, Lcom/t4game/FirstRecharge;->goodsType:[[I

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v3, v0

    iput-object v3, p0, Lcom/t4game/FirstRecharge;->listStr:[[Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[B

    move-object v3, v0

    iput-object v3, p0, Lcom/t4game/FirstRecharge;->goodsNum:[[B

    const/4 v1, 0x0

    iput v1, p0, Lcom/t4game/FirstRecharge;->index:I

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v3, v0

    iput-object v3, p0, Lcom/t4game/FirstRecharge;->goodsName:[[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/FirstRecharge;->yuanbao:[I

    iput-object v2, p0, Lcom/t4game/FirstRecharge;->activityName:Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/FirstRecharge;->stateMent:Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/FirstRecharge;->goodsDetails:[Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[B

    move-object v3, v0

    iput-object v3, p0, Lcom/t4game/FirstRecharge;->goodsBlind:[[B

    move-object v0, v2

    check-cast v0, [[I

    move-object v3, v0

    iput-object v3, p0, Lcom/t4game/FirstRecharge;->goodsLevel:[[I

    iput-object v2, p0, Lcom/t4game/FirstRecharge;->button:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/FirstRecharge;->imgbg:Ljavax/microedition/lcdui/Image;

    return-void
.end method

.method public sendFRechargeMsg(B)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/FirstRecharge;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x261

    iget-object v2, p0, Lcom/t4game/FirstRecharge;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public setConfig(Lcom/t4game/GameScreen;)V
    .locals 1

    iput-object p1, p0, Lcom/t4game/FirstRecharge;->screen:Lcom/t4game/GameScreen;

    iget-object v0, p1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, p1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v0, p1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->readBuffer:Lcom/t4game/IoBuffer;

    iget-object v0, p1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    iput-object v0, p0, Lcom/t4game/FirstRecharge;->network:Lcom/t4game/TcpNetwork;

    return-void
.end method
