.class public Lcom/t4game/CF;
.super Ljava/lang/Object;


# static fields
.field public static final IMG_ADD:B = 0x0t

.field public static final IMG_CHANGE_EXP:B = 0x3t

.field public static final IMG_CHANGE_NAME:B = 0x1t

.field public static final IMG_CHANGE_STAR:B = 0x2t

.field public static final TAG_C:Ljava/lang/String; = "c"

.field public static final TAG_CF:Ljava/lang/String; = "cf"

.field public static final TAG_IMG:Ljava/lang/String; = "img"

.field public static final TAG_R:Ljava/lang/String; = "r"

.field public static final TAG_STR:Ljava/lang/String; = "str"


# instance fields
.field temp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<cf><fc>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</fc><str>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Sting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</str></cf>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/CF;->temp:Ljava/lang/String;

    return-void
.end method

.method private static addColorFontTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<cf>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</cf>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static addColorTag(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<c>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</c>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static addImgTag(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<img>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</img>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static addRectTag(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<r>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</r>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static addStrTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<str>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</str>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static draw(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 9

    const-string p4, "cf"

    invoke-virtual {p0, p4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p4

    const/4 v0, -0x1

    if-ne p4, v0, :cond_1

    const/16 v3, 0x14

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v4, p5

    move v5, p5

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_0
    return-void

    :cond_1
    const-string p4, "cf"

    invoke-static {p0, p4}, Lcom/t4game/CF;->splitCf(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p4, 0x0

    const/4 p5, 0x0

    move v8, p5

    move p5, p4

    move p4, v8

    :goto_0
    array-length v0, p0

    if-ge p4, v0, :cond_0

    const/4 v1, -0x1

    aget-object v0, p0, p4

    const-string v2, "<str>"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_4

    aget-object v0, p0, p4

    const-string v2, "str"

    invoke-static {v0, v2}, Lcom/t4game/CF;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4game/CF;->getStrW(Ljava/lang/String;)I

    move-result v7

    aget-object v2, p0, p4

    const-string v3, "<r>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    aget-object v2, p0, p4

    const-string v3, "r"

    invoke-static {v2, v3}, Lcom/t4game/CF;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int v2, p2, p5

    sget v3, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual {p1, v2, p3, v7, v3}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    :cond_2
    aget-object v2, p0, p4

    const-string v3, "<c>"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    aget-object v1, p0, p4

    const-string v2, "c"

    invoke-static {v1, v2}, Lcom/t4game/CF;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v4, v1

    :goto_1
    add-int v1, p2, p5

    const/16 v3, 0x14

    move v2, p3

    move v5, v4

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/2addr p5, v7

    :cond_3
    :goto_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_4
    aget-object v0, p0, p4

    const-string v1, "<img>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    aget-object v0, p0, p4

    const-string v1, "img"

    invoke-static {v0, v1}, Lcom/t4game/CF;->getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int v1, p2, p5

    invoke-static {p1, v1, p3, v0}, Lcom/t4game/CF;->drawImg(Ljavax/microedition/lcdui/Graphics;III)I

    move-result v0

    add-int/2addr p5, v0

    goto :goto_2

    :cond_5
    move v4, v1

    goto :goto_1
.end method

.method private static drawImg(Ljavax/microedition/lcdui/Graphics;III)I
    .locals 9

    const/16 v8, 0x8

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v7, 0x0

    packed-switch p3, :pswitch_data_0

    :goto_0
    move v0, v7

    :goto_1
    return v0

    :pswitch_0
    add-int/lit8 v0, p1, 0x5

    const v1, 0xff00

    invoke-virtual {p0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, p2, 0x2

    sget v3, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v3, v5

    sget v4, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    invoke-virtual {p0, v7}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int/lit8 v1, v0, 0x4

    add-int/lit8 v2, p2, 0x4

    sget v3, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v3, v8

    sget v4, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v4, v8

    invoke-virtual {p0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int/lit8 v1, v0, 0x6

    sget v2, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, p2

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v3, v0

    sub-int/2addr v3, v6

    sget v4, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v4, p2

    invoke-virtual {p0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    sget v1, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v0

    add-int/lit8 v2, p2, 0x6

    sget v3, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v3, p2

    sub-int/2addr v3, v6

    invoke-virtual {p0, v1, v2, v0, v3}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    sget v0, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v0, v0, 0x5

    goto :goto_1

    :pswitch_1
    add-int/lit8 v1, p1, 0x5

    sget-object v0, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    aget v0, v0, v5

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const-string v0, "\u6539\u540d"

    add-int/lit8 v1, v1, 0x7

    add-int/lit8 v2, p2, 0x2

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const v4, 0x300506

    const v5, 0xffd100

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x5

    goto :goto_1

    :pswitch_2
    move v0, v7

    :goto_2
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget v1, v1, Lcom/t4game/Pet;->petStarNum:I

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-byte v1, v1, Lcom/t4game/Pet;->petColor:B

    invoke-static {v1}, Lcom/t4game/mmorpg/dreamgame/Palette;->getColor(B)I

    move-result v1

    :goto_3
    add-int v2, p1, v7

    mul-int/lit8 v3, v0, 0x10

    add-int/2addr v2, v3

    invoke-static {p0, v2, p2, v1}, Lcom/t4game/CF;->drawStar(Ljavax/microedition/lcdui/Graphics;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v1

    iget-byte v1, v1, Lcom/t4game/Pet;->petLastColor:B

    invoke-static {v1}, Lcom/t4game/mmorpg/dreamgame/Palette;->getColor(B)I

    move-result v1

    goto :goto_3

    :cond_1
    move v0, v7

    goto/16 :goto_1

    :pswitch_3
    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v0

    iget v0, v0, Lcom/t4game/Pet;->expCommandW:I

    sub-int/2addr v0, p1

    const/4 v1, 0x5

    sub-int v5, v0, v1

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v0

    iget v1, v0, Lcom/t4game/Pet;->cur:I

    invoke-static {}, Lcom/t4game/Pet;->getIns()Lcom/t4game/Pet;

    move-result-object v0

    iget v2, v0, Lcom/t4game/Pet;->totle:I

    add-int/lit8 v3, p1, 0x5

    sget v6, Lcom/t4game/Defaults;->sfh:I

    move-object v0, p0

    move v4, p2

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->paintExp(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static drawStar(Ljavax/microedition/lcdui/Graphics;III)V
    .locals 7

    invoke-virtual {p0, p3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int/lit8 p3, p1, 0x6

    add-int/lit8 v0, p2, 0x6

    const/4 p1, 0x5

    const/4 p2, 0x2

    filled-new-array {p1, p2}, [I

    move-result-object p1

    sget-object p2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    const/4 p2, 0x0

    aget-object p2, p1, p2

    const/4 v1, 0x0

    aput p3, p2, v1

    const/4 p2, 0x0

    aget-object p2, p1, p2

    const/4 v1, 0x1

    const/4 v2, 0x7

    sub-int v2, v0, v2

    aput v2, p2, v1

    const/4 p2, 0x1

    aget-object p2, p1, p2

    const/4 v1, 0x0

    add-int/lit8 v2, p3, 0x7

    aput v2, p2, v1

    const/4 p2, 0x1

    aget-object p2, p1, p2

    const/4 v1, 0x1

    const/4 v2, 0x2

    sub-int v2, v0, v2

    aput v2, p2, v1

    const/4 p2, 0x2

    aget-object p2, p1, p2

    const/4 v1, 0x0

    add-int/lit8 v2, p3, 0x6

    aput v2, p2, v1

    const/4 p2, 0x2

    aget-object p2, p1, p2

    const/4 v1, 0x1

    add-int/lit8 v2, v0, 0x7

    aput v2, p2, v1

    const/4 p2, 0x3

    aget-object p2, p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x5

    sub-int v2, p3, v2

    aput v2, p2, v1

    const/4 p2, 0x3

    aget-object p2, p1, p2

    const/4 v1, 0x1

    add-int/lit8 v2, v0, 0x7

    aput v2, p2, v1

    const/4 p2, 0x4

    aget-object p2, p1, p2

    const/4 v1, 0x0

    const/4 v2, 0x7

    sub-int v2, p3, v2

    aput v2, p2, v1

    const/4 p2, 0x4

    aget-object p2, p1, p2

    const/4 v1, 0x1

    const/4 v2, 0x2

    sub-int v2, v0, v2

    aput v2, p2, v1

    const/4 p2, 0x5

    const/4 v1, 0x2

    filled-new-array {p2, v1}, [I

    move-result-object p2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[I

    const/4 v1, 0x0

    aget-object v1, p2, v1

    const/4 v2, 0x0

    add-int/lit8 v3, p3, 0x2

    aput v3, v1, v2

    const/4 v1, 0x0

    aget-object v1, p2, v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    sub-int v3, v0, v3

    aput v3, v1, v2

    const/4 v1, 0x1

    aget-object v1, p2, v1

    const/4 v2, 0x0

    add-int/lit8 v3, p3, 0x3

    aput v3, v1, v2

    const/4 v1, 0x1

    aget-object v1, p2, v1

    const/4 v2, 0x1

    add-int/lit8 v3, v0, 0x1

    aput v3, v1, v2

    const/4 v1, 0x2

    aget-object v1, p2, v1

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 v1, 0x2

    aget-object v1, p2, v1

    const/4 v2, 0x1

    add-int/lit8 v3, v0, 0x3

    aput v3, v1, v2

    const/4 v1, 0x3

    aget-object v1, p2, v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    sub-int v3, p3, v3

    aput v3, v1, v2

    const/4 v1, 0x3

    aget-object v1, p2, v1

    const/4 v2, 0x1

    add-int/lit8 v3, v0, 0x1

    aput v3, v1, v2

    const/4 v1, 0x4

    aget-object v1, p2, v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    sub-int/2addr p3, v3

    aput p3, v1, v2

    const/4 p3, 0x4

    aget-object p3, p2, p3

    const/4 v1, 0x1

    const/4 v2, 0x2

    sub-int/2addr v0, v2

    aput v0, p3, v1

    const/4 p3, 0x0

    aget-object p3, p1, p3

    const/4 v0, 0x0

    aget v1, p3, v0

    const/4 p3, 0x0

    aget-object p3, p1, p3

    const/4 v0, 0x1

    aget v2, p3, v0

    const/4 p3, 0x2

    aget-object p3, p1, p3

    const/4 v0, 0x0

    aget v3, p3, v0

    const/4 p3, 0x2

    aget-object p3, p1, p3

    const/4 v0, 0x1

    aget v4, p3, v0

    const/4 p3, 0x3

    aget-object p3, p2, p3

    const/4 v0, 0x0

    aget v5, p3, v0

    const/4 p3, 0x3

    aget-object p3, p2, p3

    const/4 v0, 0x1

    aget v6, p3, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(IIIIII)V

    const/4 p3, 0x1

    aget-object p3, p1, p3

    const/4 v0, 0x0

    aget v1, p3, v0

    const/4 p3, 0x1

    aget-object p3, p1, p3

    const/4 v0, 0x1

    aget v2, p3, v0

    const/4 p3, 0x3

    aget-object p3, p1, p3

    const/4 v0, 0x0

    aget v3, p3, v0

    const/4 p3, 0x3

    aget-object p3, p1, p3

    const/4 v0, 0x1

    aget v4, p3, v0

    const/4 p3, 0x4

    aget-object p3, p2, p3

    const/4 v0, 0x0

    aget v5, p3, v0

    const/4 p3, 0x4

    aget-object p3, p2, p3

    const/4 v0, 0x1

    aget v6, p3, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(IIIIII)V

    const/4 p3, 0x2

    aget-object p3, p1, p3

    const/4 v0, 0x0

    aget v1, p3, v0

    const/4 p3, 0x2

    aget-object p3, p1, p3

    const/4 v0, 0x1

    aget v2, p3, v0

    const/4 p3, 0x4

    aget-object p3, p1, p3

    const/4 v0, 0x0

    aget v3, p3, v0

    const/4 p3, 0x4

    aget-object p3, p1, p3

    const/4 v0, 0x1

    aget v4, p3, v0

    const/4 p3, 0x0

    aget-object p3, p2, p3

    const/4 v0, 0x0

    aget v5, p3, v0

    const/4 p3, 0x0

    aget-object p3, p2, p3

    const/4 v0, 0x1

    aget v6, p3, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(IIIIII)V

    const/4 p3, 0x3

    aget-object p3, p1, p3

    const/4 v0, 0x0

    aget v1, p3, v0

    const/4 p3, 0x3

    aget-object p3, p1, p3

    const/4 v0, 0x1

    aget v2, p3, v0

    const/4 p3, 0x0

    aget-object p3, p1, p3

    const/4 v0, 0x0

    aget v3, p3, v0

    const/4 p3, 0x0

    aget-object p3, p1, p3

    const/4 v0, 0x1

    aget v4, p3, v0

    const/4 p3, 0x1

    aget-object p3, p2, p3

    const/4 v0, 0x0

    aget v5, p3, v0

    const/4 p3, 0x1

    aget-object p3, p2, p3

    const/4 v0, 0x1

    aget v6, p3, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(IIIIII)V

    const/4 p3, 0x4

    aget-object p3, p1, p3

    const/4 v0, 0x0

    aget v1, p3, v0

    const/4 p3, 0x4

    aget-object p3, p1, p3

    const/4 v0, 0x1

    aget v2, p3, v0

    const/4 p3, 0x1

    aget-object p3, p1, p3

    const/4 v0, 0x0

    aget v3, p3, v0

    const/4 p3, 0x1

    aget-object p1, p1, p3

    const/4 p3, 0x1

    aget v4, p1, p3

    const/4 p1, 0x2

    aget-object p1, p2, p1

    const/4 p3, 0x0

    aget v5, p1, p3

    const/4 p1, 0x2

    aget-object p1, p2, p1

    const/4 p2, 0x1

    aget v6, p1, p2

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(IIIIII)V

    return-void
.end method

.method public static getSpeCf(Ljava/lang/String;IZIZI)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/t4game/CF;->addStrTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/t4game/CF;->addColorTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-static {v0, p3}, Lcom/t4game/CF;->addRectTag(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/t4game/CF;->addColorFontTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p4, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p5}, Lcom/t4game/CF;->addImgTag(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/t4game/CF;->addColorFontTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private static getStrW(Ljava/lang/String;)I
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

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

.method private static getTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v3, ">"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    move v2, v3

    :goto_0
    if-lez v0, :cond_0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    move v4, v2

    move v2, v0

    move v0, v4

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    move v2, v3

    :goto_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private static splitCf(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const-string v3, ">"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v1}, Lcom/t4game/CF;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    array-length v3, v1

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
