.class public Lcom/t4game/FairyHouseUtil;
.super Ljava/lang/Object;


# static fields
.field public static final attributeStrings:[Ljava/lang/String;

.field public static final qualityColor:[I

.field public static final qualityStrings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "\u5730\u4ed9"

    aput-object v1, v0, v3

    const-string v1, "\u5929\u4ed9"

    aput-object v1, v0, v4

    const-string v1, "\u771f\u4ed9"

    aput-object v1, v0, v5

    const-string v1, "\u91d1\u4ed9"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\u7384\u4ed9"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u5929\u5c0a"

    aput-object v2, v0, v1

    sput-object v0, Lcom/t4game/FairyHouseUtil;->qualityStrings:[Ljava/lang/String;

    new-array v0, v7, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/t4game/FairyHouseUtil;->qualityColor:[I

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "\u5929"

    aput-object v1, v0, v3

    const-string v1, "\u5730"

    aput-object v1, v0, v4

    const-string v1, "\u4eba"

    aput-object v1, v0, v5

    sput-object v0, Lcom/t4game/FairyHouseUtil;->attributeStrings:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0xffffff
        0xff00
        0x90ff
        0xc018c0
        0xffa500
        0xff0000
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawAlert(Ljavax/microedition/lcdui/Graphics;I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    array-length v0, p2

    array-length v1, p3

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x6

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int v3, v0, v1

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v0, v0, 0x3c

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    sub-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x2

    const/16 v2, 0xf0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->paintAlertBox(IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v0, v0, 0x3c

    sget v1, Lcom/t4game/Defaults;->sfw:I

    add-int v2, v0, v1

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    sub-int/2addr v0, v3

    sget v1, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    shr-int/lit8 v3, v0, 0x2

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v1, v1, 0x2

    sub-int v4, v0, v1

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/t4game/FairyHouseUtil;->drawContent(Ljavax/microedition/lcdui/Graphics;IIII[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static drawContent(Ljavax/microedition/lcdui/Graphics;IIII[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    packed-switch p1, :pswitch_data_0

    :goto_0
    sget v0, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v0, p3

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    move v7, v1

    move v2, v0

    :goto_1
    array-length v0, p6

    if-ge v7, v0, :cond_1

    aget-object v0, p6, v7

    sget v1, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v1, p2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v0, v2

    add-int/lit8 v1, v7, 0x1

    int-to-byte v1, v1

    move v7, v1

    move v2, v0

    goto :goto_1

    :pswitch_0
    const-string v0, "\u6fc0\u6d3b\u8be5\u4ed9\u6bbf\u9700\u8981\u6d88\u8017\uff1a"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0xffc700

    move v1, p2

    move v2, p3

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "\u5347\u7ea7\u8be5\u4ed9\u6bbf\u9700\u8981\u6d88\u8017\uff1a"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0xffc700

    move v1, p2

    move v2, p3

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "\u62c6\u9664\u8be5\u4ed9\u6bbf\u60a8\u53ef\u80fd\u635f\u5931\uff1a"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0xffc700

    move v1, p2

    move v2, p3

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v7, v1

    move v2, v0

    :goto_2
    array-length v0, p5

    if-ge v7, v0, :cond_1

    aget-object v0, p5, v7

    sget v1, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v1, p2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v0, v2

    add-int/lit8 v1, v7, 0x1

    int-to-byte v1, v1

    move v7, v1

    move v2, v0

    goto :goto_2

    :cond_1
    packed-switch p1, :pswitch_data_1

    :goto_3
    sget p4, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr p4, v2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const/4 v0, 0x0

    move v2, p4

    move p4, v0

    :goto_4
    array-length v0, p5

    if-ge p4, v0, :cond_3

    aget-object v0, p5, p4

    sget v1, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v1, p2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v0, v2

    add-int/lit8 p4, p4, 0x1

    int-to-byte p4, p4

    move v2, v0

    goto :goto_4

    :pswitch_3
    const-string v0, "\u6fc0\u6d3b\u5b8c\u540e\u53ef\u83b7\u5f97\uff1a"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0xffc700

    move v1, p2

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_3

    :pswitch_4
    const-string v0, "\u5347\u7ea7\u5b8c\u540e\u53ef\u83b7\u5f97\uff1a"

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0xffc700

    move v1, p2

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_3

    :pswitch_5
    const-string v0, "\u5c06\u8fd4\u8fd8\u60a8\u90e8\u5206\u6750\u6599\uff1a"

    const/4 v4, 0x0

    const v5, 0xffc700

    move v1, p2

    move v3, p4

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawStringCutLine(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)B

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    move v2, p4

    move p4, v0

    :goto_5
    array-length v0, p6

    if-ge p4, v0, :cond_3

    aget-object v0, p6, p4

    sget v1, Lcom/t4game/Defaults;->sfw:I

    add-int/2addr v1, p2

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v0, v2

    add-int/lit8 p4, p4, 0x1

    int-to-byte p4, p4

    move v2, v0

    goto :goto_5

    :cond_3
    packed-switch p1, :pswitch_data_2

    :goto_6
    sget p1, Lcom/t4game/Defaults;->sfh:I

    array-length p4, p5

    array-length v0, p6

    add-int/2addr p4, v0

    add-int/lit8 p4, p4, 0x4

    mul-int/2addr p1, p4

    add-int/2addr p1, p3

    sget p4, Lcom/t4game/Defaults;->sfw:I

    add-int/lit8 p4, p4, 0xe

    sget v0, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p2, p1, p4, v0, p0}, Lcom/t4game/DraftingUtil;->paintCommandBack(IIIILjavax/microedition/lcdui/Graphics;)V

    const-string v0, "\u662f"

    add-int/lit8 v1, p2, 0x7

    sget p1, Lcom/t4game/Defaults;->sfh:I

    array-length p2, p5

    array-length p4, p6

    add-int/2addr p2, p4

    add-int/lit8 p2, p2, 0x4

    mul-int/2addr p1, p2

    add-int/2addr p1, p3

    add-int/lit8 v2, p1, 0x2

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const v4, 0x300506

    const v5, 0xffd100

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget p1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 p1, p1, 0x10e

    sget p2, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 p2, p2, 0x3

    sub-int/2addr p1, p2

    sget p2, Lcom/t4game/Defaults;->sfh:I

    array-length p4, p5

    array-length v0, p6

    add-int/2addr p4, v0

    add-int/lit8 p4, p4, 0x4

    mul-int/2addr p2, p4

    add-int/2addr p2, p3

    sget p4, Lcom/t4game/Defaults;->sfw:I

    add-int/lit8 p4, p4, 0xe

    sget v0, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, p2, p4, v0, p0}, Lcom/t4game/DraftingUtil;->paintCommandBack(IIIILjavax/microedition/lcdui/Graphics;)V

    const-string v0, "\u5426"

    sget p1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 p1, p1, 0x10e

    sget p2, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 p2, p2, 0x5

    div-int/lit8 p2, p2, 0x2

    sub-int v1, p1, p2

    sget p1, Lcom/t4game/Defaults;->sfh:I

    array-length p2, p5

    array-length p4, p6

    add-int/2addr p2, p4

    add-int/lit8 p2, p2, 0x4

    mul-int/2addr p1, p2

    add-int/2addr p1, p3

    add-int/lit8 v2, p1, 0x2

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const v4, 0x300506

    const v5, 0xffd100

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    return-void

    :pswitch_6
    const-string v0, "\u662f\u5426\u6fc0\u6d3b\uff1f"

    sget p1, Lcom/t4game/Defaults;->sfh:I

    array-length p4, p5

    array-length v1, p6

    add-int/2addr p4, v1

    add-int/lit8 p4, p4, 0x2

    mul-int/2addr p1, p4

    add-int/2addr p1, p3

    sget p4, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 p4, p4, 0x1

    add-int v2, p1, p4

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0xffc700

    move v1, p2

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_6

    :pswitch_7
    const-string v0, "\u662f\u5426\u5347\u7ea7\uff1f"

    sget p1, Lcom/t4game/Defaults;->sfh:I

    array-length p4, p5

    array-length v1, p6

    add-int/2addr p4, v1

    add-int/lit8 p4, p4, 0x2

    mul-int/2addr p1, p4

    add-int/2addr p1, p3

    sget p4, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 p4, p4, 0x1

    add-int v2, p1, p4

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0xffc700

    move v1, p2

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_6

    :pswitch_8
    const-string v0, "\u662f\u5426\u62c6\u9664\uff1f"

    sget p1, Lcom/t4game/Defaults;->sfh:I

    array-length p4, p5

    array-length v1, p6

    add-int/2addr p4, v1

    add-int/lit8 p4, p4, 0x2

    mul-int/2addr p1, p4

    add-int/2addr p1, p3

    sget p4, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 p4, p4, 0x1

    add-int v2, p1, p4

    const/4 v3, 0x0

    const/4 v4, -0x1

    const v5, 0xffc700

    move v1, p2

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static draw_line(Ljavax/microedition/lcdui/Graphics;III)V
    .locals 1

    const v0, 0xffffff

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int v0, p1, p3

    invoke-virtual {p0, p1, p2, v0, p2}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    return-void
.end method

.method public static paintIconBlockSelected(IIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 2

    invoke-virtual {p5, p4}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int/lit8 v0, p0, 0x1

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p5, v0, v1, p2, p3}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    return-void
.end method
