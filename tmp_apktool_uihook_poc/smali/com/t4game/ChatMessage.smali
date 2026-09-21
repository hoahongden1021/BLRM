.class public Lcom/t4game/ChatMessage;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/t4game/ChatMessage$PreInfo;
    }
.end annotation


# static fields
.field public static ChatTime:J

.field public static TimeStateInChat:B


# instance fields
.field HString:[Ljava/lang/String;

.field ShowInPop:B

.field StringV:Ljava/util/Vector;

.field cimeliaGridId:[I

.field cimeliaRoleId:[I

.field cimeliaSize:B

.field cimeliaType:B

.field color:[B

.field colorV:Ljava/util/Vector;

.field color_:[I

.field f:Ljavax/microedition/lcdui/Font;

.field finalMessage:Ljava/lang/String;

.field fontH:I

.field goods:[Lcom/t4game/RoleGoods;

.field goodsId:[I

.field goodsSize:B

.field isGM:Z

.field logtick:I

.field message:[Ljava/lang/String;

.field private msgVec:Ljava/util/Vector;

.field name:Ljava/lang/String;

.field private needRefresh:Z

.field noSpeaker:B

.field paintEnd:B

.field paintStatrt:B

.field spriteId:I

.field spriteLevel:I

.field spriteType:B

.field stringColor:I

.field type:B

.field vipIconId:I

.field vipImage:Ljavax/microedition/lcdui/Image;

.field final vipRegex:Ljava/lang/String;

.field xyV:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-byte v0, Lcom/t4game/ChatMessage;->TimeStateInChat:B

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/t4game/ChatMessage;->ChatTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lcom/t4game/ChatMessage;->vipIconId:I

    iput-object v2, p0, Lcom/t4game/ChatMessage;->vipImage:Ljavax/microedition/lcdui/Image;

    const-string v0, "*&"

    iput-object v0, p0, Lcom/t4game/ChatMessage;->vipRegex:Ljava/lang/String;

    iput v3, p0, Lcom/t4game/ChatMessage;->stringColor:I

    iput-boolean v1, p0, Lcom/t4game/ChatMessage;->isGM:Z

    iput-byte v1, p0, Lcom/t4game/ChatMessage;->noSpeaker:B

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/ChatMessage;->name:Ljava/lang/String;

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/t4game/ChatMessage;->spriteType:B

    iput v1, p0, Lcom/t4game/ChatMessage;->spriteId:I

    iput v1, p0, Lcom/t4game/ChatMessage;->spriteLevel:I

    iput-object v2, p0, Lcom/t4game/ChatMessage;->finalMessage:Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/ChatMessage;->message:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/ChatMessage;->HString:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/ChatMessage;->goods:[Lcom/t4game/RoleGoods;

    iput-object v2, p0, Lcom/t4game/ChatMessage;->color:[B

    iput-object v2, p0, Lcom/t4game/ChatMessage;->color_:[I

    iput-byte v1, p0, Lcom/t4game/ChatMessage;->ShowInPop:B

    iput-object v2, p0, Lcom/t4game/ChatMessage;->goodsId:[I

    iput-byte v1, p0, Lcom/t4game/ChatMessage;->goodsSize:B

    iput-byte v1, p0, Lcom/t4game/ChatMessage;->cimeliaSize:B

    iput-object v2, p0, Lcom/t4game/ChatMessage;->cimeliaRoleId:[I

    iput-object v2, p0, Lcom/t4game/ChatMessage;->cimeliaGridId:[I

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    iput-object v0, p0, Lcom/t4game/ChatMessage;->f:Ljavax/microedition/lcdui/Font;

    iput v1, p0, Lcom/t4game/ChatMessage;->logtick:I

    iput-byte v1, p0, Lcom/t4game/ChatMessage;->paintStatrt:B

    iput-byte v1, p0, Lcom/t4game/ChatMessage;->paintEnd:B

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/ChatMessage;->msgVec:Ljava/util/Vector;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/ChatMessage;->needRefresh:Z

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/ChatMessage;->xyV:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/ChatMessage;->StringV:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/ChatMessage;->colorV:Ljava/util/Vector;

    iput v1, p0, Lcom/t4game/ChatMessage;->logtick:I

    return-void
.end method

.method private drawPrepare(Ljavax/microedition/lcdui/Graphics;)V
    .locals 11

    const/4 v1, 0x0

    move v10, v1

    :goto_0
    iget-object v1, p0, Lcom/t4game/ChatMessage;->msgVec:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v10, v1, :cond_6

    iget-object v1, p0, Lcom/t4game/ChatMessage;->msgVec:Ljava/util/Vector;

    invoke-virtual {v1, v10}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/t4game/ChatMessage$PreInfo;

    move-object v9, v0

    iget-byte v1, v9, Lcom/t4game/ChatMessage$PreInfo;->flag:B

    if-nez v1, :cond_0

    iget v1, v9, Lcom/t4game/ChatMessage$PreInfo;->color:I

    invoke-virtual {p1, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    :cond_0
    iget-byte v1, v9, Lcom/t4game/ChatMessage$PreInfo;->flag:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v3, v9, Lcom/t4game/ChatMessage$PreInfo;->str:Ljava/lang/String;

    iget v4, v9, Lcom/t4game/ChatMessage$PreInfo;->x:I

    iget v5, v9, Lcom/t4game/ChatMessage$PreInfo;->y:I

    iget-object v6, p0, Lcom/t4game/ChatMessage;->vipImage:Ljavax/microedition/lcdui/Image;

    const-string v7, "*&"

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Lcom/t4game/ChatMessage;->drawStringWithTitleImage(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IILjavax/microedition/lcdui/Image;Ljava/lang/String;I)V

    :cond_1
    iget-byte v1, v9, Lcom/t4game/ChatMessage$PreInfo;->flag:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget v1, v9, Lcom/t4game/ChatMessage$PreInfo;->imgTpe:I

    if-nez v1, :cond_4

    iget v1, v9, Lcom/t4game/ChatMessage$PreInfo;->imgIndex:I

    div-int/lit8 v5, v1, 0x10

    iget v1, v9, Lcom/t4game/ChatMessage$PreInfo;->imgIndex:I

    rem-int/lit8 v4, v1, 0x10

    sget-object v1, Lcom/t4game/Defaults;->chatFaceImg:[Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget v2, v9, Lcom/t4game/ChatMessage$PreInfo;->x:I

    iget v3, v9, Lcom/t4game/ChatMessage$PreInfo;->y:I

    sget v6, Lcom/t4game/Defaults;->expression_sub_w:I

    mul-int/2addr v4, v6

    sget v6, Lcom/t4game/Defaults;->expression_sub_h:I

    mul-int/2addr v5, v6

    sget v6, Lcom/t4game/Defaults;->expression_sub_w:I

    sget v7, Lcom/t4game/Defaults;->expression_sub_h:I

    move-object v8, p1

    invoke-static/range {v1 .. v8}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_2
    :goto_1
    iget-byte v1, v9, Lcom/t4game/ChatMessage$PreInfo;->flag:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    iget v1, v9, Lcom/t4game/ChatMessage$PreInfo;->x:I

    iget v2, v9, Lcom/t4game/ChatMessage$PreInfo;->y:I

    iget v3, v9, Lcom/t4game/ChatMessage$PreInfo;->x:I

    iget v4, v9, Lcom/t4game/ChatMessage$PreInfo;->len:I

    add-int/2addr v3, v4

    iget v4, v9, Lcom/t4game/ChatMessage$PreInfo;->y:I

    invoke-virtual {p1, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    :cond_3
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/t4game/Defaults;->moneyCoin:Ljavax/microedition/lcdui/Image;

    if-nez v1, :cond_5

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/t4game/Defaults;->createMoneyIcon(Z)V

    :cond_5
    sget-object v1, Lcom/t4game/Defaults;->moneyCoin:Ljavax/microedition/lcdui/Image;

    iget v2, v9, Lcom/t4game/ChatMessage$PreInfo;->x:I

    iget v3, v9, Lcom/t4game/ChatMessage$PreInfo;->y:I

    iget v4, v9, Lcom/t4game/ChatMessage$PreInfo;->imgIndex:I

    mul-int/lit8 v4, v4, 0xc

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/16 v7, 0xc

    move-object v8, p1

    invoke-static/range {v1 .. v8}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method private drawStringWithTitleImage(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IILjavax/microedition/lcdui/Image;Ljava/lang/String;I)V
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eqz p5, :cond_1

    if-eqz p6, :cond_1

    invoke-virtual {p2, p6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    const-string v2, ""

    invoke-static {p2, p6, v2}, Lcom/t4game/Util;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v2, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, p3

    aput v3, v0, v5

    aput p4, v0, v6

    move-object v3, v2

    move v2, v6

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    :goto_0
    invoke-virtual {p1, v3, p3, p4, p7}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    if-eqz v2, :cond_0

    if-ltz v0, :cond_0

    if-eqz v1, :cond_0

    aget v0, v1, v5

    aget v1, v1, v6

    sget v2, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, p5, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_0
    return-void

    :cond_1
    move v2, v5

    move-object v3, p2

    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_0
.end method


# virtual methods
.method public copy()Lcom/t4game/ChatMessage;
    .locals 3

    new-instance v0, Lcom/t4game/ChatMessage;

    invoke-direct {v0}, Lcom/t4game/ChatMessage;-><init>()V

    iget-byte v1, p0, Lcom/t4game/ChatMessage;->type:B

    iput-byte v1, v0, Lcom/t4game/ChatMessage;->type:B

    iget v1, p0, Lcom/t4game/ChatMessage;->stringColor:I

    iput v1, v0, Lcom/t4game/ChatMessage;->stringColor:I

    sget-byte v1, Lcom/t4game/ChatMessage;->TimeStateInChat:B

    sput-byte v1, Lcom/t4game/ChatMessage;->TimeStateInChat:B

    iget-boolean v1, p0, Lcom/t4game/ChatMessage;->isGM:Z

    iput-boolean v1, v0, Lcom/t4game/ChatMessage;->isGM:Z

    iget-object v1, p0, Lcom/t4game/ChatMessage;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/t4game/ChatMessage;->name:Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/ChatMessage;->spriteType:B

    iput-byte v1, v0, Lcom/t4game/ChatMessage;->spriteType:B

    iget v1, p0, Lcom/t4game/ChatMessage;->spriteId:I

    iput v1, v0, Lcom/t4game/ChatMessage;->spriteId:I

    iget-object v1, p0, Lcom/t4game/ChatMessage;->finalMessage:Ljava/lang/String;

    iput-object v1, v0, Lcom/t4game/ChatMessage;->finalMessage:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/ChatMessage;->HString:[Ljava/lang/String;

    iput-object v1, v0, Lcom/t4game/ChatMessage;->HString:[Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/ChatMessage;->goods:[Lcom/t4game/RoleGoods;

    iput-object v1, v0, Lcom/t4game/ChatMessage;->goods:[Lcom/t4game/RoleGoods;

    iget-object v1, p0, Lcom/t4game/ChatMessage;->color:[B

    iput-object v1, v0, Lcom/t4game/ChatMessage;->color:[B

    iget-object v1, p0, Lcom/t4game/ChatMessage;->color_:[I

    iput-object v1, v0, Lcom/t4game/ChatMessage;->color_:[I

    iget-object v1, p0, Lcom/t4game/ChatMessage;->goodsId:[I

    iput-object v1, v0, Lcom/t4game/ChatMessage;->goodsId:[I

    sget-wide v1, Lcom/t4game/ChatMessage;->ChatTime:J

    sput-wide v1, Lcom/t4game/ChatMessage;->ChatTime:J

    iget v1, p0, Lcom/t4game/ChatMessage;->vipIconId:I

    iput v1, v0, Lcom/t4game/ChatMessage;->vipIconId:I

    iget-object v1, p0, Lcom/t4game/ChatMessage;->vipImage:Ljavax/microedition/lcdui/Image;

    iput-object v1, v0, Lcom/t4game/ChatMessage;->vipImage:Ljavax/microedition/lcdui/Image;

    return-object v0
.end method

.method public draw(IILjavax/microedition/lcdui/Graphics;II)V
    .locals 10

    const/4 v9, -0x1

    iget-object v0, p0, Lcom/t4game/ChatMessage;->f:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p3, v0}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    iget v0, p0, Lcom/t4game/ChatMessage;->logtick:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/ChatMessage;->logtick:I

    iget v0, p0, Lcom/t4game/ChatMessage;->stringColor:I

    if-ne v0, v9, :cond_3

    iget-boolean v0, p0, Lcom/t4game/ChatMessage;->isGM:Z

    if-eqz v0, :cond_2

    const v0, 0xff00ff

    invoke-virtual {p3, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    :goto_0
    iget v0, p0, Lcom/t4game/ChatMessage;->vipIconId:I

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/t4game/ChatMessage;->vipImage:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/t4game/ChatMessage;->message:[Ljava/lang/String;

    iget v4, p0, Lcom/t4game/ChatMessage;->logtick:I

    iget-object v7, p0, Lcom/t4game/ChatMessage;->vipImage:Ljavax/microedition/lcdui/Image;

    const-string v8, "*&"

    move-object v0, p3

    move v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v8}, Lcom/t4game/DraftingUtil;->drawCntnt(Ljavax/microedition/lcdui/Graphics;[Ljava/lang/String;IIIIILjavax/microedition/lcdui/Image;Ljava/lang/String;)V

    :goto_1
    if-nez p4, :cond_0

    sget-object v0, Lcom/t4game/CommonConstants;->chatType:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/ChatMessage;->type:B

    aget-object v0, v0, v1

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v1, Lcom/t4game/Defaults;->ChatMessageColor:[I

    iget-byte v2, p0, Lcom/t4game/ChatMessage;->type:B

    aget v5, v1, v2

    move v1, p1

    move v2, p2

    move v4, v9

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/ChatMessage;->HString:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p5}, Lcom/t4game/ChatMessage;->drawHightColor(IILjavax/microedition/lcdui/Graphics;II)V

    :cond_1
    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p3, v0}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    return-void

    :cond_2
    sget-object v0, Lcom/t4game/Defaults;->ChatMessageColor:[I

    iget-byte v1, p0, Lcom/t4game/ChatMessage;->type:B

    aget v0, v0, v1

    invoke-virtual {p3, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/t4game/ChatMessage;->stringColor:I

    invoke-virtual {p3, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/t4game/ChatMessage;->message:[Ljava/lang/String;

    iget v4, p0, Lcom/t4game/ChatMessage;->logtick:I

    move-object v0, p3

    move v2, p1

    move v3, p2

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawCntnt(Ljavax/microedition/lcdui/Graphics;[Ljava/lang/String;IIIII)V

    goto :goto_1
.end method

.method public draw2(IILjavax/microedition/lcdui/Graphics;II)V
    .locals 1

    iget-boolean v0, p0, Lcom/t4game/ChatMessage;->needRefresh:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/t4game/ChatMessage;->prepareMessage(IIII)V

    :cond_0
    invoke-direct {p0, p3}, Lcom/t4game/ChatMessage;->drawPrepare(Ljavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public drawHightColor(IILjavax/microedition/lcdui/Graphics;II)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x2

    move v9, v11

    :goto_0
    iget-object v2, p0, Lcom/t4game/ChatMessage;->StringV:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v9, v2, :cond_1

    iget-object v2, p0, Lcom/t4game/ChatMessage;->colorV:Ljava/util/Vector;

    invoke-virtual {v2, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v7, v0

    aget-byte v2, v7, v10

    move v0, v2

    move/from16 v1, p4

    if-lt v0, v1, :cond_0

    aget-byte v2, v7, v10

    move v0, v2

    move/from16 v1, p5

    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/t4game/ChatMessage;->xyV:Ljava/util/Vector;

    invoke-virtual {v2, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [S

    check-cast v2, [S

    aget-short v2, v2, v11

    add-int v3, v2, p1

    iget-object v2, p0, Lcom/t4game/ChatMessage;->xyV:Ljava/util/Vector;

    invoke-virtual {v2, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [S

    check-cast v2, [S

    const/4 v4, 0x1

    aget-short v2, v2, v4

    add-int/2addr v2, p2

    iget v4, p0, Lcom/t4game/ChatMessage;->fontH:I

    mul-int v4, v4, p4

    sub-int v4, v2, v4

    iget-object v2, p0, Lcom/t4game/ChatMessage;->StringV:Ljava/util/Vector;

    invoke-virtual {v2, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v5, 0x14

    const/4 v6, -0x1

    sget-object v8, Lcom/t4game/CommonConstants;->QUALITYCOLOR:[I

    aget-byte v7, v7, v11

    aget v7, v8, v7

    move-object v8, p3

    invoke-static/range {v2 .. v8}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    const v5, 0xffff00

    invoke-virtual {p3, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget v5, p0, Lcom/t4game/ChatMessage;->fontH:I

    add-int/2addr v5, v4

    sub-int/2addr v5, v10

    iget-object v6, p0, Lcom/t4game/ChatMessage;->f:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v6, v2}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v2, v3

    iget v6, p0, Lcom/t4game/ChatMessage;->fontH:I

    add-int/2addr v4, v6

    sub-int/2addr v4, v10

    invoke-virtual {p3, v3, v5, v2, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    :cond_0
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public initHightColorGoods(II)V
    .locals 2

    const/4 v1, 0x0

    if-lez p2, :cond_0

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/t4game/ChatMessage;->cimeliaRoleId:[I

    new-array v0, p2, [I

    iput-object v0, p0, Lcom/t4game/ChatMessage;->cimeliaGridId:[I

    :goto_0
    if-lez p1, :cond_1

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/t4game/ChatMessage;->goodsId:[I

    new-array v0, p1, [Lcom/t4game/RoleGoods;

    iput-object v0, p0, Lcom/t4game/ChatMessage;->goods:[Lcom/t4game/RoleGoods;

    :goto_1
    add-int v0, p1, p2

    if-lez v0, :cond_2

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/ChatMessage;->HString:[Ljava/lang/String;

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/ChatMessage;->color:[B

    :goto_2
    return-void

    :cond_0
    iput-object v1, p0, Lcom/t4game/ChatMessage;->cimeliaRoleId:[I

    iput-object v1, p0, Lcom/t4game/ChatMessage;->cimeliaGridId:[I

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/t4game/ChatMessage;->goodsId:[I

    iput-object v1, p0, Lcom/t4game/ChatMessage;->goodsId:[I

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lcom/t4game/ChatMessage;->color:[B

    iput-object v1, p0, Lcom/t4game/ChatMessage;->HString:[Ljava/lang/String;

    goto :goto_2
.end method

.method public initMessage(Ljava/lang/String;)V
    .locals 2

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v1, 0x2d

    sub-int/2addr v0, v1

    sget-object v1, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p0, p1, v0, v1}, Lcom/t4game/ChatMessage;->initMessage(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)V

    return-void
.end method

.method public initMessage(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)V
    .locals 12

    iput-object p3, p0, Lcom/t4game/ChatMessage;->f:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p3}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/t4game/ChatMessage;->fontH:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/t4game/CommonConstants;->chatType:[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/ChatMessage;->type:B

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/ChatMessage;->finalMessage:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/t4game/CommonConstants;->chatType:[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/ChatMessage;->type:B

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/t4game/Util;->refreashChatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/t4game/Util;->refreashChat([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/t4game/ChatMessage;->message:[Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/ChatMessage;->HString:[Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/t4game/ChatMessage;->HString:[Ljava/lang/String;

    array-length v1, v1

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    const/4 v3, 0x2

    filled-new-array {v1, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Lcom/t4game/ChatMessage;->HString:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    aget-object v4, p1, v3

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/t4game/ChatMessage;->HString:[Ljava/lang/String;

    aget-object v6, v6, v3

    iget-object v7, p0, Lcom/t4game/ChatMessage;->HString:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v2, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    aput v6, v4, v5

    aget-object v4, p1, v3

    const/4 v5, 0x1

    aget-object v6, p1, v3

    const/4 v7, 0x0

    aget v6, v6, v7

    iget-object v7, p0, Lcom/t4game/ChatMessage;->HString:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v4, v5

    iget-object v4, p0, Lcom/t4game/ChatMessage;->HString:[Ljava/lang/String;

    aget-object v4, v4, v3

    aget-object v5, p1, v3

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    aget-object v4, p1, v3

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/t4game/ChatMessage;->HString:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    aput v6, v4, v5

    aget-object v4, p1, v3

    const/4 v5, 0x1

    aget-object v6, p1, v3

    const/4 v7, 0x0

    aget v6, v6, v7

    iget-object v7, p0, Lcom/t4game/ChatMessage;->HString:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    aput v6, v4, v5

    aget-object v4, p1, v3

    const/4 v5, 0x0

    aget v4, v4, v5

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/t4game/ChatMessage;->HString:[Ljava/lang/String;

    aget-object v4, v4, v3

    aget-object v5, p1, v3

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/t4game/ChatMessage;->message:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x2

    filled-new-array {v2, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[S

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v2, :cond_4

    if-nez v3, :cond_3

    aget-object v4, p2, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput-short v6, v4, v5

    aget-object v4, p2, v3

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/t4game/ChatMessage;->message:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    int-to-short v6, v6

    aput-short v6, v4, v5

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    aget-object v4, p2, v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    sub-int v6, v3, v6

    aget-object v6, p2, v6

    const/4 v7, 0x1

    aget-short v6, v6, v7

    aput-short v6, v4, v5

    aget-object v4, p2, v3

    const/4 v5, 0x1

    aget-object v6, p2, v3

    const/4 v7, 0x0

    aget-short v6, v6, v7

    iget-object v7, p0, Lcom/t4game/ChatMessage;->message:[Ljava/lang/String;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, v4, v5

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_10

    aget-object v3, p1, v2

    const/4 v4, 0x0

    aget v3, v3, v4

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    aget-object v3, p1, v2

    const/4 v4, 0x0

    aget v3, v3, v4

    int-to-short v3, v3

    invoke-static {p2, v3}, Lcom/t4game/Util;->getlineNum([[SS)S

    move-result v3

    aget-object v4, p1, v2

    const/4 v5, 0x0

    aget v4, v4, v5

    aget-object v5, p2, v3

    const/4 v6, 0x0

    aget-short v5, v5, v6

    sub-int/2addr v4, v5

    int-to-short v4, v4

    aget-object v5, p1, v2

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-short v5, v5

    invoke-static {p2, v5}, Lcom/t4game/Util;->getlineNum([[SS)S

    move-result v5

    aget-object v6, p1, v2

    const/4 v7, 0x1

    aget v6, v6, v7

    aget-object v7, p2, v5

    const/4 v8, 0x0

    aget-short v7, v7, v8

    sub-int/2addr v6, v7

    int-to-short v6, v6

    if-ne v3, v5, :cond_8

    iget-object v5, p0, Lcom/t4game/ChatMessage;->StringV:Ljava/util/Vector;

    iget-object v6, p0, Lcom/t4game/ChatMessage;->HString:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v5, 0x2

    new-array v5, v5, [S

    if-nez v4, :cond_6

    const/4 v4, 0x0

    const/4 v6, 0x0

    aput-short v6, v5, v4

    const/4 v4, 0x1

    iget v6, p0, Lcom/t4game/ChatMessage;->fontH:I

    mul-int/2addr v6, v3

    int-to-short v6, v6

    aput-short v6, v5, v4

    :goto_5
    iget-object v4, p0, Lcom/t4game/ChatMessage;->xyV:Ljava/util/Vector;

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v4, 0x3

    new-array v4, v4, [B

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/t4game/ChatMessage;->color:[B

    aget-byte v6, v6, v2

    aput-byte v6, v4, v5

    const/4 v5, 0x1

    int-to-byte v6, v2

    aput-byte v6, v4, v5

    const/4 v5, 0x2

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    iget-object v3, p0, Lcom/t4game/ChatMessage;->colorV:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    aget-object v4, p2, v3

    const/4 v6, 0x0

    aget-short v4, v4, v6

    aget-object v6, p1, v2

    const/4 v7, 0x0

    aget v6, v6, v7

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {p3, v4}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v5, v6

    iget v4, p0, Lcom/t4game/ChatMessage;->vipIconId:I

    if-ltz v4, :cond_7

    iget-object v4, p0, Lcom/t4game/ChatMessage;->vipImage:Ljavax/microedition/lcdui/Image;

    if-eqz v4, :cond_7

    if-nez v3, :cond_7

    const/4 v4, 0x0

    aget-short v6, v5, v4

    const-string v7, "*&"

    invoke-virtual {p3, v7}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v7

    sub-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, v5, v4

    :cond_7
    const/4 v4, 0x1

    iget v6, p0, Lcom/t4game/ChatMessage;->fontH:I

    mul-int/2addr v6, v3

    int-to-short v6, v6

    aput-short v6, v5, v4

    goto :goto_5

    :cond_8
    sub-int v6, v5, v3

    const/4 v7, 0x0

    :goto_6
    if-gt v7, v6, :cond_5

    if-nez v7, :cond_b

    iget-object v8, p0, Lcom/t4game/ChatMessage;->StringV:Ljava/util/Vector;

    aget-object v9, p1, v2

    const/4 v10, 0x0

    aget v9, v9, v10

    add-int v10, v3, v7

    aget-object v10, p2, v10

    const/4 v11, 0x1

    aget-short v10, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v8, 0x2

    new-array v8, v8, [S

    if-nez v4, :cond_9

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-short v10, v8, v9

    const/4 v9, 0x1

    add-int v10, v3, v7

    iget v11, p0, Lcom/t4game/ChatMessage;->fontH:I

    mul-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v8, v9

    :goto_7
    iget-object v9, p0, Lcom/t4game/ChatMessage;->xyV:Ljava/util/Vector;

    invoke-virtual {v9, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v8, 0x3

    new-array v8, v8, [B

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/t4game/ChatMessage;->color:[B

    aget-byte v10, v10, v2

    aput-byte v10, v8, v9

    const/4 v9, 0x1

    int-to-byte v10, v2

    aput-byte v10, v8, v9

    const/4 v9, 0x2

    int-to-byte v10, v3

    aput-byte v10, v8, v9

    iget-object v9, p0, Lcom/t4game/ChatMessage;->colorV:Ljava/util/Vector;

    invoke-virtual {v9, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_9
    aget-object v9, p2, v3

    const/4 v10, 0x0

    aget-short v9, v9, v10

    aget-object v10, p1, v2

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p3, v9}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v9

    int-to-short v9, v9

    aput-short v9, v8, v10

    iget v9, p0, Lcom/t4game/ChatMessage;->vipIconId:I

    if-ltz v9, :cond_a

    iget-object v9, p0, Lcom/t4game/ChatMessage;->vipImage:Ljavax/microedition/lcdui/Image;

    if-eqz v9, :cond_a

    add-int v9, v3, v7

    if-nez v9, :cond_a

    const/4 v9, 0x0

    aget-short v10, v8, v9

    const-string v11, "*&"

    invoke-virtual {p3, v11}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v11

    sub-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v8, v9

    :cond_a
    const/4 v9, 0x1

    add-int v10, v3, v7

    iget v11, p0, Lcom/t4game/ChatMessage;->fontH:I

    mul-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v8, v9

    goto :goto_7

    :cond_b
    if-ne v7, v6, :cond_e

    iget-object v8, p0, Lcom/t4game/ChatMessage;->StringV:Ljava/util/Vector;

    add-int v9, v3, v7

    aget-object v9, p2, v9

    const/4 v10, 0x0

    aget-short v9, v9, v10

    aget-object v10, p1, v2

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v8, 0x2

    new-array v8, v8, [S

    if-nez v4, :cond_c

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-short v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/t4game/ChatMessage;->fontH:I

    mul-int/2addr v10, v5

    int-to-short v10, v10

    aput-short v10, v8, v9

    :goto_9
    iget-object v9, p0, Lcom/t4game/ChatMessage;->xyV:Ljava/util/Vector;

    invoke-virtual {v9, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v8, 0x3

    new-array v8, v8, [B

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/t4game/ChatMessage;->color:[B

    aget-byte v10, v10, v2

    aput-byte v10, v8, v9

    const/4 v9, 0x1

    int-to-byte v10, v2

    aput-byte v10, v8, v9

    const/4 v9, 0x2

    int-to-byte v10, v5

    aput-byte v10, v8, v9

    iget-object v9, p0, Lcom/t4game/ChatMessage;->colorV:Ljava/util/Vector;

    invoke-virtual {v9, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_8

    :cond_c
    add-int v9, v3, v7

    aget-object v9, p2, v9

    const/4 v10, 0x0

    aget-short v9, v9, v10

    aget-object v10, p1, v2

    const/4 v11, 0x0

    aget v10, v10, v11

    if-ge v9, v10, :cond_d

    add-int v9, v3, v7

    aget-object v9, p2, v9

    const/4 v10, 0x0

    aget-short v9, v9, v10

    aget-object v10, p1, v2

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p3, v9}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v9

    int-to-short v9, v9

    aput-short v9, v8, v10

    :goto_a
    const/4 v9, 0x1

    add-int v10, v3, v7

    iget v11, p0, Lcom/t4game/ChatMessage;->fontH:I

    mul-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v8, v9

    goto :goto_9

    :cond_d
    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-short v10, v8, v9

    goto :goto_a

    :cond_e
    iget-object v8, p0, Lcom/t4game/ChatMessage;->StringV:Ljava/util/Vector;

    add-int v9, v3, v7

    aget-object v9, p2, v9

    const/4 v10, 0x0

    aget-short v9, v9, v10

    add-int v10, v3, v7

    aget-object v10, p2, v10

    const/4 v11, 0x1

    aget-short v10, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v8, 0x2

    new-array v8, v8, [S

    if-nez v4, :cond_f

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput-short v10, v8, v9

    const/4 v9, 0x1

    iget v10, p0, Lcom/t4game/ChatMessage;->fontH:I

    mul-int/2addr v10, v3

    int-to-short v10, v10

    aput-short v10, v8, v9

    :goto_b
    iget-object v9, p0, Lcom/t4game/ChatMessage;->xyV:Ljava/util/Vector;

    invoke-virtual {v9, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v8, 0x3

    new-array v8, v8, [B

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/t4game/ChatMessage;->color:[B

    aget-byte v10, v10, v2

    aput-byte v10, v8, v9

    const/4 v9, 0x1

    int-to-byte v10, v2

    aput-byte v10, v8, v9

    const/4 v9, 0x2

    add-int v10, v3, v7

    int-to-byte v10, v10

    aput-byte v10, v8, v9

    iget-object v9, p0, Lcom/t4game/ChatMessage;->colorV:Ljava/util/Vector;

    invoke-virtual {v9, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_f
    add-int v9, v3, v7

    aget-object v9, p2, v9

    const/4 v10, 0x0

    aget-short v9, v9, v10

    aget-object v10, p1, v2

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {v0, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {p3, v9}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v9

    int-to-short v9, v9

    aput-short v9, v8, v10

    const/4 v9, 0x1

    add-int v10, v3, v7

    iget v11, p0, Lcom/t4game/ChatMessage;->fontH:I

    mul-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v8, v9

    goto :goto_b

    :cond_10
    iget-object v0, p0, Lcom/t4game/ChatMessage;->message:[Ljava/lang/String;

    array-length v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/ChatMessage;->paintEnd:B

    return-void
.end method

.method public initMessage(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)V
    .locals 0

    iput-object p2, p0, Lcom/t4game/ChatMessage;->vipImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0, p1}, Lcom/t4game/ChatMessage;->initMessage(Ljava/lang/String;)V

    return-void
.end method

.method public newMsgInfo()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/ChatMessage;->msgVec:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/ChatMessage;->needRefresh:Z

    return-void
.end method

.method public prepareMessage(IIII)V
    .locals 11

    iget v0, p0, Lcom/t4game/ChatMessage;->stringColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/t4game/ChatMessage;->isGM:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/ChatMessage;->msgVec:Ljava/util/Vector;

    new-instance v1, Lcom/t4game/ChatMessage$PreInfo;

    const v2, 0xff00ff

    invoke-direct {v1, p0, v2}, Lcom/t4game/ChatMessage$PreInfo;-><init>(Lcom/t4game/ChatMessage;I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_0
    move v7, p3

    :goto_1
    if-ge v7, p4, :cond_9

    sub-int v0, v7, p3

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v0, v1

    add-int v3, p2, v0

    iget-object v0, p0, Lcom/t4game/ChatMessage;->message:[Ljava/lang/String;

    aget-object v0, v0, v7

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/ChatMessage;->message:[Ljava/lang/String;

    aget-object v0, v0, v7

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/t4game/ChatMessage;->message:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/ChatMessage;->message:[Ljava/lang/String;

    aget-object v0, v0, v7

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/t4game/ChatMessage;->message:[Ljava/lang/String;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/t4game/ChatMessage;->msgVec:Ljava/util/Vector;

    new-instance v1, Lcom/t4game/ChatMessage$PreInfo;

    iget-object v2, p0, Lcom/t4game/ChatMessage;->message:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-direct {v1, p0, p1, v3, v2}, Lcom/t4game/ChatMessage$PreInfo;-><init>(Lcom/t4game/ChatMessage;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    :goto_2
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/t4game/ChatMessage;->msgVec:Ljava/util/Vector;

    new-instance v1, Lcom/t4game/ChatMessage$PreInfo;

    sget-object v2, Lcom/t4game/Defaults;->ChatMessageColor:[I

    iget-byte v3, p0, Lcom/t4game/ChatMessage;->type:B

    aget v2, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/t4game/ChatMessage$PreInfo;-><init>(Lcom/t4game/ChatMessage;I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/t4game/ChatMessage;->msgVec:Ljava/util/Vector;

    new-instance v1, Lcom/t4game/ChatMessage$PreInfo;

    iget v2, p0, Lcom/t4game/ChatMessage;->stringColor:I

    invoke-direct {v1, p0, v2}, Lcom/t4game/ChatMessage$PreInfo;-><init>(Lcom/t4game/ChatMessage;I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v8, v0

    move v0, v1

    move v1, p1

    :goto_3
    iget-object v2, p0, Lcom/t4game/ChatMessage;->message:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v8, v2, :cond_8

    iget-object v2, p0, Lcom/t4game/ChatMessage;->message:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x3d

    if-ne v2, v4, :cond_5

    iget-object v2, p0, Lcom/t4game/ChatMessage;->message:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x2

    sub-int/2addr v2, v4

    if-ge v8, v2, :cond_5

    :try_start_0
    iget-object v2, p0, Lcom/t4game/ChatMessage;->message:[Ljava/lang/String;

    aget-object v2, v2, v7

    add-int/lit8 v4, v8, 0x1

    add-int/lit8 v5, v8, 0x3

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    move v4, v2

    :goto_4
    if-ltz v4, :cond_5

    const/16 v2, 0x6a

    if-ge v4, v2, :cond_5

    iget-object v2, p0, Lcom/t4game/ChatMessage;->message:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v2, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/t4game/ChatMessage;->msgVec:Ljava/util/Vector;

    new-instance v5, Lcom/t4game/ChatMessage$PreInfo;

    invoke-direct {v5, p0, v1, v3, v0}, Lcom/t4game/ChatMessage$PreInfo;-><init>(Lcom/t4game/ChatMessage;IILjava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v2, v0}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int v2, v1, v0

    const/16 v0, 0x5e

    if-ge v4, v0, :cond_6

    iget-object v9, p0, Lcom/t4game/ChatMessage;->msgVec:Ljava/util/Vector;

    new-instance v0, Lcom/t4game/ChatMessage$PreInfo;

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/t4game/ChatMessage$PreInfo;-><init>(Lcom/t4game/ChatMessage;IIIBI)V

    invoke-virtual {v9, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_5
    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    const-string v1, "=00"

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v2

    add-int/lit8 v1, v8, 0x3

    move v10, v1

    move v1, v0

    move v0, v10

    :cond_5
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_3

    :catch_0
    move-exception v2

    const/4 v2, -0x1

    move v4, v2

    goto :goto_4

    :cond_6
    sget-object v0, Lcom/t4game/Defaults;->moneyCoin:Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_7

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/t4game/Defaults;->createMoneyIcon(Z)V

    :cond_7
    iget-object v9, p0, Lcom/t4game/ChatMessage;->msgVec:Ljava/util/Vector;

    new-instance v0, Lcom/t4game/ChatMessage$PreInfo;

    const/16 v1, 0x5e

    sub-int/2addr v4, v1

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/t4game/ChatMessage$PreInfo;-><init>(Lcom/t4game/ChatMessage;IIIBI)V

    invoke-virtual {v9, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    iget-object v2, p0, Lcom/t4game/ChatMessage;->message:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/t4game/ChatMessage;->message:[Ljava/lang/String;

    aget-object v2, v2, v7

    iget-object v4, p0, Lcom/t4game/ChatMessage;->message:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/t4game/ChatMessage;->msgVec:Ljava/util/Vector;

    new-instance v4, Lcom/t4game/ChatMessage$PreInfo;

    invoke-direct {v4, p0, v1, v3, v0}, Lcom/t4game/ChatMessage$PreInfo;-><init>(Lcom/t4game/ChatMessage;IILjava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_9
    if-nez p3, :cond_a

    iget-object v0, p0, Lcom/t4game/ChatMessage;->msgVec:Ljava/util/Vector;

    new-instance v1, Lcom/t4game/ChatMessage$PreInfo;

    sget-object v2, Lcom/t4game/Defaults;->ChatMessageColor:[I

    iget-byte v3, p0, Lcom/t4game/ChatMessage;->type:B

    aget v2, v2, v3

    invoke-direct {v1, p0, v2}, Lcom/t4game/ChatMessage$PreInfo;-><init>(Lcom/t4game/ChatMessage;I)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/t4game/ChatMessage;->msgVec:Ljava/util/Vector;

    new-instance v1, Lcom/t4game/ChatMessage$PreInfo;

    sget-object v2, Lcom/t4game/CommonConstants;->chatType:[Ljava/lang/String;

    iget-byte v3, p0, Lcom/t4game/ChatMessage;->type:B

    aget-object v2, v2, v3

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/t4game/ChatMessage$PreInfo;-><init>(Lcom/t4game/ChatMessage;IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_a
    iget-object v0, p0, Lcom/t4game/ChatMessage;->HString:[Ljava/lang/String;

    if-eqz v0, :cond_c

    const/4 v7, -0x2

    const/4 v0, 0x0

    move v8, v0

    :goto_6
    iget-object v0, p0, Lcom/t4game/ChatMessage;->StringV:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v8, v0, :cond_c

    iget-object v0, p0, Lcom/t4game/ChatMessage;->colorV:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    check-cast v0, [B

    const/4 v1, 0x2

    aget-byte v1, v0, v1

    if-lt v1, p3, :cond_b

    const/4 v1, 0x2

    aget-byte v1, v0, v1

    if-ge v1, p4, :cond_b

    iget-object v1, p0, Lcom/t4game/ChatMessage;->xyV:Ljava/util/Vector;

    invoke-virtual {v1, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    check-cast v1, [S

    const/4 v2, 0x0

    aget-short v1, v1, v2

    add-int v2, v1, p1

    iget-object v1, p0, Lcom/t4game/ChatMessage;->xyV:Ljava/util/Vector;

    invoke-virtual {v1, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    check-cast v1, [S

    const/4 v3, 0x1

    aget-short v1, v1, v3

    add-int/2addr v1, p2

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, p3

    sub-int v3, v1, v3

    iget-object v1, p0, Lcom/t4game/ChatMessage;->StringV:Ljava/util/Vector;

    invoke-virtual {v1, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, Lcom/t4game/ChatMessage;->msgVec:Ljava/util/Vector;

    new-instance v5, Lcom/t4game/ChatMessage$PreInfo;

    sget-object v6, Lcom/t4game/CommonConstants;->QUALITYCOLOR:[I

    const/4 v9, 0x0

    aget-byte v0, v0, v9

    aget v0, v6, v0

    invoke-direct {v5, p0, v0}, Lcom/t4game/ChatMessage$PreInfo;-><init>(Lcom/t4game/ChatMessage;I)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/t4game/ChatMessage;->msgVec:Ljava/util/Vector;

    new-instance v4, Lcom/t4game/ChatMessage$PreInfo;

    invoke-direct {v4, p0, v2, v3, v1}, Lcom/t4game/ChatMessage$PreInfo;-><init>(Lcom/t4game/ChatMessage;IILjava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/t4game/ChatMessage;->msgVec:Ljava/util/Vector;

    new-instance v4, Lcom/t4game/ChatMessage$PreInfo;

    const v5, 0xffff00

    invoke-direct {v4, p0, v5}, Lcom/t4game/ChatMessage$PreInfo;-><init>(Lcom/t4game/ChatMessage;I)V

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/t4game/ChatMessage;->msgVec:Ljava/util/Vector;

    new-instance v0, Lcom/t4game/ChatMessage$PreInfo;

    sget v4, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v3, v4

    add-int/2addr v3, v7

    sget-object v4, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v4, v1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/t4game/ChatMessage$PreInfo;-><init>(Lcom/t4game/ChatMessage;IIIBI)V

    invoke-virtual {v9, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_b
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_6

    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/ChatMessage;->needRefresh:Z

    return-void
.end method
