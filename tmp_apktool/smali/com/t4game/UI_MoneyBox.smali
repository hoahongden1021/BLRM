.class public Lcom/t4game/UI_MoneyBox;
.super Lcom/t4game/UI_Super;


# instance fields
.field focusColor:B

.field private img:Ljavax/microedition/lcdui/Image;

.field isHiddenHightZero:Z

.field isRefresh:Z

.field private isScroll:Z

.field lines:B

.field money:J

.field private scrollOffX:S

.field showType:B

.field strMoney:[Ljava/lang/String;

.field textColor:B

.field private ui:Lcom/t4game/GameUi;

.field private waitTime:B

.field private wontentW:S


# direct methods
.method public constructor <init>(Lcom/t4game/GameUi;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/t4game/UI_Super;-><init>(Lcom/t4game/UI_Super;)V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/UI_MoneyBox;->waitTime:B

    iput-object p1, p0, Lcom/t4game/UI_MoneyBox;->ui:Lcom/t4game/GameUi;

    const/4 v0, 0x6

    iput-byte v0, p0, Lcom/t4game/UI_MoneyBox;->type:B

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/UI_MoneyBox;->strMoney:[Ljava/lang/String;

    invoke-static {v1}, Lcom/t4game/Defaults;->createMoneyIcon(Z)V

    sget-object v0, Lcom/t4game/Defaults;->moneyCoin:Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/UI_MoneyBox;->img:Ljavax/microedition/lcdui/Image;

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

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->clone()Lcom/t4game/UI_Super;

    move-result-object v0

    return-object v0
.end method

.method countMoneyInf()V
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const-string v7, "\u94dc"

    const-string v6, "\u91d1"

    iget-byte v0, p0, Lcom/t4game/UI_MoneyBox;->showType:B

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iput-byte v3, p0, Lcom/t4game/UI_MoneyBox;->lines:B

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getGold()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getSilver()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getCopper()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x24

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_MoneyBox;->wontentW:S

    iget-short v0, p0, Lcom/t4game/UI_MoneyBox;->wontentW:S

    iget-short v1, p0, Lcom/t4game/UI_MoneyBox;->w:S

    if-le v0, v1, :cond_0

    iput-boolean v3, p0, Lcom/t4game/UI_MoneyBox;->isScroll:Z

    iput-short v5, p0, Lcom/t4game/UI_MoneyBox;->scrollOffX:S

    iput-byte v5, p0, Lcom/t4game/UI_MoneyBox;->waitTime:B

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getGold()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u91d1"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getSilver()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u94f6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getCopper()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u94dc"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    iget-short v1, p0, Lcom/t4game/UI_MoneyBox;->w:S

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/UI_MoneyBox;->strMoney:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getGold()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u91d1"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getSilver()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u94f6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getCopper()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u94dc"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/t4game/Util;->strArrayGrow([Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/UI_MoneyBox;->strMoney:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/t4game/UI_MoneyBox;->strMoney:[Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getGold()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u91d1"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v5, v1}, Lcom/t4game/Util;->strArrayGrow([Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/UI_MoneyBox;->strMoney:[Ljava/lang/String;

    add-int/lit8 v0, v5, 0x1

    int-to-byte v0, v0

    iget-object v1, p0, Lcom/t4game/UI_MoneyBox;->strMoney:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getSilver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u94f6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getCopper()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u94dc"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/t4game/Util;->strArrayGrow([Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/UI_MoneyBox;->strMoney:[Ljava/lang/String;

    goto/16 :goto_0

    :pswitch_2
    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getGold()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getSilver()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x18

    iget-short v1, p0, Lcom/t4game/UI_MoneyBox;->w:S

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_2

    iput-byte v3, p0, Lcom/t4game/UI_MoneyBox;->lines:B

    goto/16 :goto_0

    :cond_2
    iput-byte v4, p0, Lcom/t4game/UI_MoneyBox;->lines:B

    goto/16 :goto_0

    :pswitch_3
    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getGold()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getSilver()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x18

    iget-short v1, p0, Lcom/t4game/UI_MoneyBox;->w:S

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_3

    iput-byte v3, p0, Lcom/t4game/UI_MoneyBox;->lines:B

    goto/16 :goto_0

    :cond_3
    iput-byte v4, p0, Lcom/t4game/UI_MoneyBox;->lines:B

    goto/16 :goto_0

    :pswitch_4
    iput-byte v3, p0, Lcom/t4game/UI_MoneyBox;->lines:B

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;S)V
    .locals 12

    iget-boolean v0, p0, Lcom/t4game/UI_MoneyBox;->isRefresh:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->countMoneyInf()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/UI_MoneyBox;->isRefresh:Z

    :cond_0
    const/4 v11, 0x3

    iget-byte v0, p0, Lcom/t4game/UI_MoneyBox;->showType:B

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-short v0, p0, Lcom/t4game/UI_MoneyBox;->y:S

    sub-int v2, v0, p2

    iget-byte v0, p0, Lcom/t4game/UI_MoneyBox;->lines:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    iget-short v0, p0, Lcom/t4game/UI_MoneyBox;->x:S

    iget-boolean v1, p0, Lcom/t4game/UI_MoneyBox;->isScroll:Z

    if-eqz v1, :cond_7

    iget-short v0, p0, Lcom/t4game/UI_MoneyBox;->wontentW:S

    iget-short v1, p0, Lcom/t4game/UI_MoneyBox;->scrollOffX:S

    sub-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_MoneyBox;->w:S

    const/16 v3, 0x14

    sub-int/2addr v1, v3

    if-gt v0, v1, :cond_3

    iget-byte v0, p0, Lcom/t4game/UI_MoneyBox;->waitTime:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_MoneyBox;->waitTime:B

    iget-byte v0, p0, Lcom/t4game/UI_MoneyBox;->waitTime:B

    const/16 v1, 0xa

    if-lt v0, v1, :cond_2

    const/16 v0, -0xa

    iput-short v0, p0, Lcom/t4game/UI_MoneyBox;->scrollOffX:S

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/UI_MoneyBox;->waitTime:B

    :cond_2
    :goto_1
    iget-short v0, p0, Lcom/t4game/UI_MoneyBox;->x:S

    iget-short v1, p0, Lcom/t4game/UI_MoneyBox;->scrollOffX:S

    sub-int/2addr v0, v1

    move v1, v0

    :goto_2
    iget-short v0, p0, Lcom/t4game/UI_MoneyBox;->x:S

    iget-short v3, p0, Lcom/t4game/UI_MoneyBox;->w:S

    iget-short v4, p0, Lcom/t4game/UI_MoneyBox;->h:S

    invoke-virtual {p1, v0, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getGold()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    sget-object v5, Lcom/t4game/Data;->color:[I

    iget-byte v6, p0, Lcom/t4game/UI_MoneyBox;->textColor:B

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getGold()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int v4, v1, v0

    iget-object v3, p0, Lcom/t4game/UI_MoneyBox;->img:Ljavax/microedition/lcdui/Image;

    add-int v5, v2, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/16 v9, 0xc

    move-object v10, p1

    invoke-static/range {v3 .. v10}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v1, v4, 0xc

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getSilver()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    sget-object v5, Lcom/t4game/Data;->color:[I

    iget-byte v6, p0, Lcom/t4game/UI_MoneyBox;->textColor:B

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getSilver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int v4, v1, v0

    iget-object v3, p0, Lcom/t4game/UI_MoneyBox;->img:Ljavax/microedition/lcdui/Image;

    add-int v5, v2, v11

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/16 v9, 0xc

    move-object v10, p1

    invoke-static/range {v3 .. v10}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v1, v4, 0xc

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getCopper()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    sget-object v5, Lcom/t4game/Data;->color:[I

    iget-byte v6, p0, Lcom/t4game/UI_MoneyBox;->textColor:B

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getCopper()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/t4game/UI_MoneyBox;->img:Ljavax/microedition/lcdui/Image;

    add-int/2addr v2, v11

    const/16 v3, 0x18

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/16 v6, 0xc

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v3, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto/16 :goto_0

    :cond_3
    iget-short v0, p0, Lcom/t4game/UI_MoneyBox;->scrollOffX:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_MoneyBox;->scrollOffX:S

    goto/16 :goto_1

    :cond_4
    iget-short v1, p0, Lcom/t4game/UI_MoneyBox;->x:S

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getGold()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    sget-object v5, Lcom/t4game/Data;->color:[I

    iget-byte v6, p0, Lcom/t4game/UI_MoneyBox;->textColor:B

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getGold()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int v4, v1, v0

    iget-object v3, p0, Lcom/t4game/UI_MoneyBox;->img:Ljavax/microedition/lcdui/Image;

    add-int v5, v2, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/16 v9, 0xc

    move-object v10, p1

    invoke-static/range {v3 .. v10}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v2, v0

    iget-short v1, p0, Lcom/t4game/UI_MoneyBox;->x:S

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getSilver()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    sget-object v5, Lcom/t4game/Data;->color:[I

    iget-byte v6, p0, Lcom/t4game/UI_MoneyBox;->textColor:B

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getSilver()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int v4, v1, v0

    iget-object v3, p0, Lcom/t4game/UI_MoneyBox;->img:Ljavax/microedition/lcdui/Image;

    add-int v5, v2, v11

    const/16 v6, 0xc

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/16 v9, 0xc

    move-object v10, p1

    invoke-static/range {v3 .. v10}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v1, v4, 0xc

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getCopper()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    sget-object v5, Lcom/t4game/Data;->color:[I

    iget-byte v6, p0, Lcom/t4game/UI_MoneyBox;->textColor:B

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getCopper()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/t4game/UI_MoneyBox;->img:Ljavax/microedition/lcdui/Image;

    add-int/2addr v2, v11

    const/16 v3, 0x18

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/16 v6, 0xc

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_0

    :pswitch_1
    const/4 v0, 0x0

    move v7, v0

    :goto_3
    iget-object v0, p0, Lcom/t4game/UI_MoneyBox;->strMoney:[Ljava/lang/String;

    array-length v0, v0

    if-ge v7, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/UI_MoneyBox;->strMoney:[Ljava/lang/String;

    aget-object v0, v0, v7

    iget-short v1, p0, Lcom/t4game/UI_MoneyBox;->x:S

    iget-short v2, p0, Lcom/t4game/UI_MoneyBox;->y:S

    sub-int/2addr v2, p2

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v7

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    sget-object v5, Lcom/t4game/Data;->color:[I

    iget-byte v6, p0, Lcom/t4game/UI_MoneyBox;->textColor:B

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_3

    :pswitch_2
    iget-short v1, p0, Lcom/t4game/UI_MoneyBox;->x:S

    iget-short v0, p0, Lcom/t4game/UI_MoneyBox;->y:S

    sub-int v2, v0, p2

    iget-byte v0, p0, Lcom/t4game/UI_MoneyBox;->lines:B

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getSilverOther()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    sget-object v5, Lcom/t4game/Data;->color:[I

    iget-byte v6, p0, Lcom/t4game/UI_MoneyBox;->textColor:B

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getSilverOther()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int v4, v1, v0

    iget-object v3, p0, Lcom/t4game/UI_MoneyBox;->img:Ljavax/microedition/lcdui/Image;

    add-int v5, v2, v11

    const/16 v6, 0x24

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/16 v9, 0xc

    move-object v10, p1

    invoke-static/range {v3 .. v10}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v1, v4, 0xc

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getCopper()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    sget-object v5, Lcom/t4game/Data;->color:[I

    iget-byte v6, p0, Lcom/t4game/UI_MoneyBox;->textColor:B

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getCopper()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/t4game/UI_MoneyBox;->img:Ljavax/microedition/lcdui/Image;

    add-int/2addr v2, v11

    const/16 v3, 0x30

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/16 v6, 0xc

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v1, 0xc

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getSilverOther()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    sget-object v5, Lcom/t4game/Data;->color:[I

    iget-byte v6, p0, Lcom/t4game/UI_MoneyBox;->textColor:B

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getSilverOther()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int v4, v1, v0

    iget-object v3, p0, Lcom/t4game/UI_MoneyBox;->img:Ljavax/microedition/lcdui/Image;

    add-int v5, v2, v11

    const/16 v6, 0x24

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/16 v9, 0xc

    move-object v10, p1

    invoke-static/range {v3 .. v10}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v2, v0

    iget-short v1, p0, Lcom/t4game/UI_MoneyBox;->x:S

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getCopper()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    sget-object v5, Lcom/t4game/Data;->color:[I

    iget-byte v6, p0, Lcom/t4game/UI_MoneyBox;->textColor:B

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getCopper()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/t4game/UI_MoneyBox;->img:Ljavax/microedition/lcdui/Image;

    add-int/2addr v2, v11

    const/16 v3, 0x30

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/16 v6, 0xc

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v1, 0xc

    goto/16 :goto_0

    :pswitch_3
    iget-short v1, p0, Lcom/t4game/UI_MoneyBox;->x:S

    iget-short v0, p0, Lcom/t4game/UI_MoneyBox;->y:S

    sub-int v2, v0, p2

    iget-byte v0, p0, Lcom/t4game/UI_MoneyBox;->lines:B

    const/4 v3, 0x1

    if-ne v0, v3, :cond_6

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getSilverOther()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    sget-object v5, Lcom/t4game/Data;->color:[I

    iget-byte v6, p0, Lcom/t4game/UI_MoneyBox;->textColor:B

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getSilverOther()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int v4, v1, v0

    iget-object v3, p0, Lcom/t4game/UI_MoneyBox;->img:Ljavax/microedition/lcdui/Image;

    add-int v5, v2, v11

    const/16 v6, 0x3c

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/16 v9, 0xc

    move-object v10, p1

    invoke-static/range {v3 .. v10}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v1, v4, 0xc

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getCopper()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    sget-object v5, Lcom/t4game/Data;->color:[I

    iget-byte v6, p0, Lcom/t4game/UI_MoneyBox;->textColor:B

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getCopper()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/t4game/UI_MoneyBox;->img:Ljavax/microedition/lcdui/Image;

    add-int/2addr v2, v11

    const/16 v3, 0x48

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/16 v6, 0xc

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v1, 0xc

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getSilverOther()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    sget-object v5, Lcom/t4game/Data;->color:[I

    iget-byte v6, p0, Lcom/t4game/UI_MoneyBox;->textColor:B

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getSilverOther()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int v4, v1, v0

    iget-object v3, p0, Lcom/t4game/UI_MoneyBox;->img:Ljavax/microedition/lcdui/Image;

    add-int v5, v2, v11

    const/16 v6, 0x3c

    const/4 v7, 0x0

    const/16 v8, 0xc

    const/16 v9, 0xc

    move-object v10, p1

    invoke-static/range {v3 .. v10}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v2, v0

    iget-short v1, p0, Lcom/t4game/UI_MoneyBox;->x:S

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getCopper()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    sget-object v5, Lcom/t4game/Data;->color:[I

    iget-byte v6, p0, Lcom/t4game/UI_MoneyBox;->textColor:B

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p0}, Lcom/t4game/UI_MoneyBox;->getCopper()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/t4game/UI_MoneyBox;->img:Ljavax/microedition/lcdui/Image;

    add-int/2addr v2, v11

    const/16 v3, 0x48

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/16 v6, 0xc

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v1, 0xc

    goto/16 :goto_0

    :pswitch_4
    iget-short v1, p0, Lcom/t4game/UI_MoneyBox;->x:S

    iget-short v0, p0, Lcom/t4game/UI_MoneyBox;->y:S

    sub-int v2, v0, p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/t4game/UI_MoneyBox;->money:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    sget-object v5, Lcom/t4game/Data;->color:[I

    iget-byte v6, p0, Lcom/t4game/UI_MoneyBox;->textColor:B

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/t4game/UI_MoneyBox;->money:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    iget-object v0, p0, Lcom/t4game/UI_MoneyBox;->img:Ljavax/microedition/lcdui/Image;

    add-int/2addr v2, v11

    const/16 v3, 0x54

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/16 v6, 0xc

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_0

    :cond_7
    move v1, v0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method getCopper()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/t4game/UI_MoneyBox;->money:J

    const-wide/16 v2, 0x64

    rem-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getGold()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/t4game/UI_MoneyBox;->money:J

    const-wide/16 v2, 0x2710

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSilver()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/t4game/UI_MoneyBox;->money:J

    const-wide/16 v2, 0x2710

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSilverOther()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/t4game/UI_MoneyBox;->money:J

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/io/DataInputStream;)V
    .locals 1

    :try_start_0
    invoke-super {p0, p1}, Lcom/t4game/UI_Super;->init(Ljava/io/DataInputStream;)V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_MoneyBox;->showType:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_MoneyBox;->textColor:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_MoneyBox;->focusColor:B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/UI_MoneyBox;->isRefresh:Z
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

    iget-boolean v0, p0, Lcom/t4game/UI_MoneyBox;->focus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_MoneyBox;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_MoneyBox;->id:B

    invoke-virtual {v0, v1, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    :cond_0
    return-void
.end method

.method public pointEvent(II)B
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget-short v3, p0, Lcom/t4game/UI_MoneyBox;->x:S

    aput v3, v1, v2

    const/4 v2, 0x1

    iget-short v3, p0, Lcom/t4game/UI_MoneyBox;->y:S

    iget-object v4, p0, Lcom/t4game/UI_MoneyBox;->ui:Lcom/t4game/GameUi;

    iget-short v4, v4, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x2

    iget-short v3, p0, Lcom/t4game/UI_MoneyBox;->x:S

    iget-short v4, p0, Lcom/t4game/UI_MoneyBox;->w:S

    add-int/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x3

    iget-short v3, p0, Lcom/t4game/UI_MoneyBox;->y:S

    iget-short v4, p0, Lcom/t4game/UI_MoneyBox;->h:S

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/t4game/UI_MoneyBox;->ui:Lcom/t4game/GameUi;

    iget-short v4, v4, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v3, v4

    aput v3, v1, v2

    invoke-static {p1, p2, v1}, Lcom/t4game/PointerUtil;->isPointerInArea(II[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_MoneyBox;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_MoneyBox;->id:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->setFocus(B)V

    iget-byte v0, p0, Lcom/t4game/UI_MoneyBox;->id:B

    invoke-static {}, Lcom/t4game/PointerUtil;->clearReleasePointer()V

    :cond_0
    return v0
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/UI_MoneyBox;->strMoney:[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/UI_MoneyBox;->img:Ljavax/microedition/lcdui/Image;

    return-void
.end method

.method public setFocus(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/t4game/UI_MoneyBox;->focus:Z

    return-void
.end method
