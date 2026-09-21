.class public Lcom/t4game/DraftingUtil;
.super Ljava/lang/Object;


# static fields
.field static final CR:C = '|'

.field public static final DOOK_STRING:Ljava/lang/String; = "\u63d0\u4ea4"

.field public static final FUBEI_NPCLIST:Ljava/lang/String; = "\u6b64\u5730\u56fe\u4e2d\u6ca1\u6709npc"

.field public static final SkyMoney:B = 0x2t

.field public static commandArea:[[I = null

.field public static commandRectHight:S = 0x0s

.field public static dialogBodyHight:S = 0x0s

.field public static dialogTopLableHight:S = 0x0s

.field public static inputArea:[I = null

.field private static isScroll:Z = false

.field static loading1:Ljavax/microedition/lcdui/Image; = null

.field static loading2:Ljavax/microedition/lcdui/Image; = null

.field static final loadingH:B = 0xft

.field static final loadingW:B = 0x10t

.field static final loading_TICK:B = 0x3t

.field static loading_cur_tick:I = 0x0

.field static loading_leng_cur:I = 0x0

.field static loading_leng_max:I = 0x0

.field static final maxLinesOfPage:B = 0x37t

.field private static scrollAlertX:I = 0x0

.field private static strIndex:I = 0x0

.field private static tick:I = 0x0

.field public static final yuanBao:B = 0x0t

.field public static final yuanBaoF:B = 0x1t


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/16 v0, 0x1c

    sput-short v0, Lcom/t4game/DraftingUtil;->dialogTopLableHight:S

    const/16 v0, 0x20

    sput-short v0, Lcom/t4game/DraftingUtil;->commandRectHight:S

    const/16 v0, 0xc8

    sput-short v0, Lcom/t4game/DraftingUtil;->dialogBodyHight:S

    const/16 v0, 0x12c

    sput v0, Lcom/t4game/DraftingUtil;->loading_leng_max:I

    sput v2, Lcom/t4game/DraftingUtil;->loading_leng_cur:I

    sput v2, Lcom/t4game/DraftingUtil;->loading_cur_tick:I

    sput v2, Lcom/t4game/DraftingUtil;->scrollAlertX:I

    new-array v0, v1, [I

    sput-object v0, Lcom/t4game/DraftingUtil;->inputArea:[I

    const/4 v0, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/t4game/DraftingUtil;->commandArea:[[I

    sput v2, Lcom/t4game/DraftingUtil;->tick:I

    sput-boolean v2, Lcom/t4game/DraftingUtil;->isScroll:Z

    sput v2, Lcom/t4game/DraftingUtil;->strIndex:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static PaintMsg(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    sget-boolean v1, Lcom/t4game/Defaults;->showMsg:Z

    if-eqz v1, :cond_1

    sget-byte v1, Lcom/t4game/Defaults;->showMsgTick:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-byte v1, v1

    sput-byte v1, Lcom/t4game/Defaults;->showMsgTick:B

    sget-byte v1, Lcom/t4game/Defaults;->showMsgTick:B

    if-nez v1, :cond_0

    const/16 v1, 0x14

    sput-byte v1, Lcom/t4game/Defaults;->showMsgTick:B

    sput-boolean v0, Lcom/t4game/Defaults;->showMsg:Z

    :cond_0
    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    sget v2, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v1, v2

    const/4 v2, 0x6

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v3, v3, 0x6

    move v4, v0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintFaceBoxSmall(IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v6, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/lit8 v2, v1, 0x3

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v4, -0x1

    const v5, 0xffffff

    move-object v0, p1

    move v1, v6

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_1
    return-void
.end method

.method public static drawAlpha(IIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 9

    const/4 v2, 0x0

    const v0, 0x4f7c8f

    invoke-virtual {p5, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual {p5, v2, v2, v0, v1}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    mul-int v0, p2, p3

    new-array v1, v0, [I

    move v0, v2

    move v3, v2

    :goto_0
    if-ge v0, p3, :cond_2

    rem-int/lit8 v4, v0, 0x2

    if-nez v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    :cond_0
    shl-int/lit8 v4, v3, 0x18

    move v5, v2

    :goto_1
    if-ge v5, p2, :cond_1

    mul-int v6, v0, p2

    add-int/2addr v6, v5

    sub-int v7, p4, v4

    aput v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x1

    move-object v0, p5

    move v3, p2

    move v4, p0

    move v5, p1

    move v6, p2

    move v7, p3

    invoke-virtual/range {v0 .. v8}, Ljavax/microedition/lcdui/Graphics;->drawRGB([IIIIIIIZ)V

    return-void
.end method

.method public static drawAlphaImage(IIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/t4game/Defaults;->sysSetBoolean:[[Z

    aget-object v0, v0, v2

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    mul-int v0, p3, p4

    new-array v1, v0, [I

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v4, p0, 0x0

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v0, p5

    move v3, p3

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v0 .. v8}, Ljavax/microedition/lcdui/Graphics;->drawRGB([IIIIIIIZ)V

    :goto_1
    return-void

    :cond_1
    const v0, 0x121212

    invoke-virtual {p5, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    invoke-virtual {p5, p1, p2, p3, p4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    const v0, 0xffff00

    invoke-virtual {p5, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sub-int v0, p3, v8

    sub-int v1, p4, v8

    invoke-virtual {p5, p1, p2, v0, v1}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    goto :goto_1
.end method

.method public static drawAlphaRegion(ILjavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIII)V
    .locals 14

    mul-int v12, p7, p8

    new-array v5, v12, [I

    const/4 v6, 0x0

    move-object/from16 v4, p2

    move/from16 v7, p7

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-virtual/range {v4 .. v11}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    const/16 p2, 0x0

    :goto_0
    move/from16 v0, p2

    move v1, v12

    if-ge v0, v1, :cond_1

    aget p5, v5, p2

    shr-int/lit8 p5, p5, 0x18

    if-eqz p5, :cond_0

    aget p5, v5, p2

    add-int p5, p5, p0

    aput p5, v5, p2

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    move-object v0, v5

    move/from16 v1, p7

    move/from16 v2, p8

    move v3, p0

    invoke-static {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Image;->createRGBImage([IIIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v13, 0x14

    move-object v4, p1

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-static/range {v4 .. v13}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    :cond_2
    return-void
.end method

.method public static drawBuff(IIILjavax/microedition/lcdui/Graphics;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    and-int/lit8 v2, p2, 0xf

    shr-int/lit8 v0, p2, 0x4

    and-int/lit8 v3, v0, 0xf

    sget-object v0, Lcom/t4game/Defaults;->bufIcon:Lcom/t4game/GImageData;

    move-object v1, p3

    move v4, p0

    move v5, p1

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/t4game/GImageData;->drawTile(Ljavax/microedition/lcdui/Graphics;IIIIZZ)V

    :cond_0
    return-void
.end method

.method public static drawBuffIcon(IISLjavax/microedition/lcdui/Graphics;)V
    .locals 8

    const/16 v1, 0xa

    const/4 v6, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const v0, 0x7a654a

    invoke-virtual {p3, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    invoke-virtual {p3, p0, p1, v1, v1}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    :goto_0
    return-void

    :cond_0
    and-int/lit8 v2, p2, 0xf

    shr-int/lit8 v0, p2, 0x4

    and-int/lit8 v3, v0, 0xf

    sget-object v0, Lcom/t4game/Defaults;->bufIcon:Lcom/t4game/GImageData;

    move-object v1, p3

    move v4, p0

    move v5, p1

    move v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/t4game/GImageData;->drawTile(Ljavax/microedition/lcdui/Graphics;IIIIZZ)V

    goto :goto_0
.end method

.method public static final drawClipIcon(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZ)V
    .locals 10

    if-eqz p8, :cond_0

    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->imageEffectBlackWhite(Ljavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Graphics;IIIIII)V

    :goto_0
    return-void

    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p4

    move v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move v6, p2

    move v7, p3

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    goto :goto_0
.end method

.method public static drawCntnt(Ljavax/microedition/lcdui/Graphics;[Ljava/lang/String;IIIII)V
    .locals 9

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v8, v7

    invoke-static/range {v0 .. v8}, Lcom/t4game/DraftingUtil;->drawCntnt(Ljavax/microedition/lcdui/Graphics;[Ljava/lang/String;IIIIILjavax/microedition/lcdui/Image;Ljava/lang/String;)V

    return-void
.end method

.method public static drawCntnt(Ljavax/microedition/lcdui/Graphics;[Ljava/lang/String;IIIIILjavax/microedition/lcdui/Image;Ljava/lang/String;)V
    .locals 7

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Graphics;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object p4

    invoke-virtual {p4}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result p4

    move v6, p5

    :goto_0
    if-ge v6, p6, :cond_0

    aget-object v1, p1, v6

    sub-int v0, v6, p5

    mul-int/2addr v0, p4

    add-int v3, p3, v0

    move-object v0, p0

    move v2, p2

    move-object v4, p7

    move-object v5, p8

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->drawStringWithImage(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IILjavax/microedition/lcdui/Image;Ljava/lang/String;)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final drawImageGroup([Ljavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Graphics;III)I
    .locals 5

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    move v0, v2

    move v1, v2

    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_3

    aget-object v2, p0, v0

    if-eqz v2, :cond_2

    aget-object v2, p0, v0

    add-int v3, p2, v1

    mul-int v4, p4, v0

    add-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v2, v3, p3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static drawMirrorAnimation(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;II)V
    .locals 10

    const/4 v2, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    sub-int v8, p3, v5

    div-int/lit8 v0, v4, 0x2

    sub-int v7, p2, v0

    sget v0, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v0, v0, 0x7

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, p1, v7, v8, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto :goto_0

    :cond_1
    const/4 v6, 0x2

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v9, v2

    invoke-virtual/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_0
.end method

.method static drawPage(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIZ)I
    .locals 12

    const/4 v2, 0x0

    const/16 v3, 0x37

    new-array v9, v3, [I

    const/4 v3, 0x0

    move v11, v3

    move v3, v2

    move v2, v11

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x7c

    if-ne v4, v5, :cond_0

    add-int/lit8 v4, v3, 0x1

    aput v2, v9, v3

    move v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    aput v2, v9, v3

    sub-int v2, v10, p5

    move v0, v2

    move/from16 v1, p6

    if-ge v0, v1, :cond_2

    sub-int p6, v10, p5

    :cond_2
    if-gez p6, :cond_4

    move/from16 p6, v10

    :goto_1
    move v4, p3

    move p3, p2

    move/from16 p2, p5

    :goto_2
    move v0, p2

    move/from16 v1, p6

    if-ge v0, v1, :cond_8

    if-lez p2, :cond_5

    const/4 v2, 0x1

    sub-int v2, p2, v2

    aget v2, v9, v2

    add-int/lit8 v2, v2, 0x1

    :goto_3
    aget v3, v9, p2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v0, p2

    move/from16 v1, p5

    if-ne v0, v1, :cond_9

    if-eqz p7, :cond_9

    const/4 v3, 0x0

    move v5, p3

    move/from16 p3, p5

    :goto_4
    move v0, p3

    move/from16 v1, p6

    if-ge v0, v1, :cond_7

    if-nez p3, :cond_6

    const/4 v6, 0x0

    aget v6, v9, v6

    if-ge v3, v6, :cond_3

    const/4 v3, 0x0

    aget v3, v9, v3

    sget v5, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    aget v7, v9, v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    sub-int/2addr v5, v6

    :cond_3
    :goto_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_4
    add-int p6, p6, p5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    aget v6, v9, p3

    const/4 v7, 0x1

    sub-int v7, p3, v7

    aget v7, v9, v7

    sub-int/2addr v6, v7

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-ge v3, v6, :cond_3

    aget v3, v9, p3

    const/4 v5, 0x1

    sub-int v5, p3, v5

    aget v5, v9, v5

    sub-int/2addr v3, v5

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    sget v5, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/4 v6, 0x1

    sub-int v6, p3, v6

    aget v6, v9, v6

    add-int/lit8 v6, v6, 0x1

    aget v7, v9, p3

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v6

    shr-int/lit8 v6, v6, 0x1

    sub-int/2addr v5, v6

    goto :goto_5

    :cond_7
    move v3, v5

    :goto_6
    sget v5, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v6, -0x1

    move/from16 v7, p4

    move-object v8, p0

    invoke-static/range {v2 .. v8}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget p3, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr p3, v4

    add-int/lit8 p2, p2, 0x1

    move v4, p3

    move p3, v3

    goto/16 :goto_2

    :cond_8
    return v10

    :cond_9
    move v3, p3

    goto :goto_6
.end method

.method public static drawRectM(IIIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 4

    add-int v0, p0, p5

    invoke-virtual {p6, p0, p1, v0, p1}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int v0, p1, p5

    invoke-virtual {p6, p0, p1, p0, v0}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int v0, p0, p2

    add-int v1, p0, p2

    sub-int/2addr v1, p5

    invoke-virtual {p6, v0, p1, v1, p1}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int v0, p0, p2

    add-int v1, p0, p2

    add-int v2, p1, p5

    invoke-virtual {p6, v0, p1, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int v0, p1, p3

    add-int v1, p1, p3

    sub-int/2addr v1, p5

    invoke-virtual {p6, p0, v0, p0, v1}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int v0, p1, p3

    add-int v1, p0, p5

    add-int v2, p1, p3

    invoke-virtual {p6, p0, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int v0, p0, p2

    add-int v1, p1, p3

    add-int v2, p0, p2

    sub-int/2addr v2, p5

    add-int v3, p1, p3

    invoke-virtual {p6, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int v0, p0, p2

    add-int v1, p1, p3

    add-int v2, p0, p2

    add-int v3, p1, p3

    sub-int/2addr v3, p5

    invoke-virtual {p6, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    return-void
.end method

.method public static drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 5

    const/4 v4, 0x3

    add-int/lit8 v0, p0, 0x3

    invoke-virtual {p5, p0, p1, v0, p1}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int/lit8 v0, p1, 0x3

    invoke-virtual {p5, p0, p1, p0, v0}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int v0, p0, p2

    add-int v1, p0, p2

    sub-int/2addr v1, v4

    invoke-virtual {p5, v0, p1, v1, p1}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int v0, p0, p2

    add-int v1, p0, p2

    add-int/lit8 v2, p1, 0x3

    invoke-virtual {p5, v0, p1, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int v0, p1, p3

    add-int v1, p1, p3

    sub-int/2addr v1, v4

    invoke-virtual {p5, p0, v0, p0, v1}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int v0, p1, p3

    add-int/lit8 v1, p0, 0x3

    add-int v2, p1, p3

    invoke-virtual {p5, p0, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int v0, p0, p2

    add-int v1, p1, p3

    add-int v2, p0, p2

    sub-int/2addr v2, v4

    add-int v3, p1, p3

    invoke-virtual {p5, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int v0, p0, p2

    add-int v1, p1, p3

    add-int v2, p0, p2

    add-int v3, p1, p3

    sub-int/2addr v3, v4

    invoke-virtual {p5, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    return-void
.end method

.method public static drawScrollAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIII)V
    .locals 7

    const/4 v6, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v4

    add-int v0, v4, p7

    sget v1, Lcom/t4game/DraftingUtil;->scrollAlertX:I

    sub-int/2addr v1, p6

    sput v1, Lcom/t4game/DraftingUtil;->scrollAlertX:I

    sget v1, Lcom/t4game/DraftingUtil;->scrollAlertX:I

    neg-int v0, v0

    if-ge v1, v0, :cond_1

    sput p4, Lcom/t4game/DraftingUtil;->scrollAlertX:I

    :cond_1
    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/4 v1, 0x6

    sget v2, Lcom/t4game/DraftingUtil;->scrollAlertX:I

    add-int/2addr v2, p2

    sget v5, Lcom/t4game/Defaults;->sfh:I

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    sget v0, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual {p0, p2, p3, p4, v0}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    invoke-virtual {p0, p5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v0, Lcom/t4game/DraftingUtil;->scrollAlertX:I

    add-int/2addr v0, p2

    const/4 v1, 0x3

    sub-int v1, p3, v1

    const/16 v2, 0x14

    invoke-virtual {p0, p1, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual {p0, v6, v6, v0, v1}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto :goto_0
.end method

.method public static drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 3

    const/4 v2, 0x1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, p2, 0x0

    sget-byte v1, Lcom/t4game/Defaults;->drawStringBounds:B

    if-lez v1, :cond_1

    const/4 v1, -0x1

    if-eq p4, v1, :cond_1

    invoke-virtual {p6, p4}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget-byte v1, Lcom/t4game/Defaults;->drawStringBounds:B

    if-ne v1, v2, :cond_2

    sub-int v1, p1, v2

    invoke-virtual {p6, p0, v1, v0, p3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p6, p0, p1, v1, p3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p6, p0, v1, v0, p3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p6, p0, p1, v1, p3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    :cond_1
    :goto_1
    invoke-virtual {p6, p5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    invoke-virtual {p6, p0, p1, v0, p3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    goto :goto_0

    :cond_2
    sget-byte v1, Lcom/t4game/Defaults;->drawStringBounds:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, p1, 0x1

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p6, p0, v1, v2, p3}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    goto :goto_1
.end method

.method public static drawStringCutLine(Ljava/lang/String;IIILjavax/microedition/lcdui/Graphics;)I
    .locals 9

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    mul-int/lit8 v1, p1, 0x2

    sub-int/2addr v0, v1

    sget-object v1, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {p0, v0, v1}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4, p3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    array-length v0, v7

    if-ge v8, v0, :cond_0

    aget-object v0, v7, v8

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v1, v8

    add-int v2, p2, v1

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    move v1, p1

    move v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v8, 0x1

    int-to-byte v0, v0

    move v8, v0

    goto :goto_0

    :cond_0
    array-length v0, v7

    return v0
.end method

.method public static final drawStringGroup([Ljava/lang/String;[ILjavax/microedition/lcdui/Graphics;III)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_1

    array-length v0, p1

    array-length v1, p0

    if-eq v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v0, -0x1

    if-eq p5, v0, :cond_4

    move v0, v8

    move v1, v8

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    if-eqz v2, :cond_3

    aget v2, p1, v0

    invoke-virtual {p2, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    aget-object v2, p0, v0

    mul-int v3, p5, v0

    add-int/2addr v3, p3

    add-int/2addr v3, v1

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p2, v2, v3, p4, v4}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    move v2, v1

    move v1, v8

    :goto_1
    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    sget-object v3, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    aget-object v4, p0, v0

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljavax/microedition/lcdui/Font;->charWidth(C)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    mul-int/lit8 v1, p3, 0x2

    sub-int/2addr v0, v1

    array-length v1, p0

    new-array v1, v1, [I

    move v2, v8

    move v3, v8

    :goto_2
    array-length v4, p0

    if-ge v2, v4, :cond_7

    aget-object v4, p0, v2

    if-eqz v4, :cond_6

    move v4, v8

    move v5, v3

    move v3, v8

    :goto_3
    aget-object v6, p0, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_5

    sget-object v6, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    aget-object v7, p0, v2

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljavax/microedition/lcdui/Font;->charWidth(C)I

    move-result v6

    add-int/2addr v5, v6

    sget-object v6, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    aget-object v7, p0, v2

    invoke-virtual {v7, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljavax/microedition/lcdui/Font;->charWidth(C)I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    aput v4, v1, v2

    move v3, v5

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    sub-int/2addr v0, v3

    array-length v2, p0

    sub-int/2addr v2, v9

    div-int/2addr v0, v2

    move v2, v8

    move v3, v8

    :goto_4
    array-length v4, p0

    if-ge v2, v4, :cond_0

    aget-object v4, p0, v2

    if-eqz v4, :cond_8

    aget v4, p1, v2

    invoke-virtual {p2, v4}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    aget-object v4, p0, v2

    mul-int v5, v0, v2

    add-int/2addr v5, p3

    if-lez v2, :cond_9

    sub-int v6, v2, v9

    aget v6, v1, v6

    :goto_5
    add-int/2addr v5, v6

    add-int/2addr v5, v3

    sget v6, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p2, v4, v5, p4, v6}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    if-lez v2, :cond_a

    sub-int v4, v2, v9

    aget v4, v1, v4

    :goto_6
    add-int/2addr v3, v4

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_9
    move v6, v8

    goto :goto_5

    :cond_a
    move v4, v8

    goto :goto_6
.end method

.method public static drawStringWithImage(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;II)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->drawStringWithImage(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IILjavax/microedition/lcdui/Image;Ljava/lang/String;)V

    return-void
.end method

.method public static drawStringWithImage(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IILjavax/microedition/lcdui/Image;Ljava/lang/String;)V
    .locals 18

    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/Graphics;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object v14

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eqz p4, :cond_9

    if-eqz p5, :cond_9

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-ltz v7, :cond_9

    const/4 v5, 0x2

    new-array v5, v5, [I

    const-string v6, ""

    move-object/from16 v0, p1

    move-object/from16 v1, p5

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p5, 0x0

    sget-object v6, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v8

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v6

    add-int v6, v6, p2

    aput v6, v5, p5

    const/16 p5, 0x1

    aput p3, v5, p5

    const/16 p5, 0x1

    move/from16 v15, p5

    move-object/from16 p5, v5

    move-object/from16 v5, p1

    move/from16 p1, v7

    :goto_0
    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-eq v6, v7, :cond_0

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    sub-int/2addr v7, v8

    if-ne v6, v7, :cond_3

    :cond_0
    sget v8, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v9, -0x1

    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/Graphics;->getColor()I

    move-result v10

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v11, p0

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_1
    :goto_1
    if-eqz v15, :cond_2

    if-ltz p1, :cond_2

    if-eqz p5, :cond_2

    const/16 p1, 0x0

    aget p1, p5, p1

    const/16 p2, 0x1

    aget p2, p5, p2

    sget p3, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_2
    return-void

    :cond_3
    const/4 v6, 0x0

    const/4 v7, 0x0

    move/from16 v16, v6

    move/from16 v17, v7

    move/from16 v7, p2

    move/from16 p2, v17

    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v0, v16

    move v1, v6

    if-ge v0, v1, :cond_7

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0x3d

    if-ne v6, v8, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v8, 0x2

    sub-int/2addr v6, v8

    move/from16 v0, v16

    move v1, v6

    if-ge v0, v1, :cond_8

    add-int/lit8 v6, v16, 0x1

    add-int/lit8 v8, v16, 0x3

    :try_start_0
    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    move v13, v6

    :goto_3
    if-ltz v13, :cond_8

    const/16 v6, 0x6a

    if-ge v13, v6, :cond_8

    move/from16 v0, v16

    move/from16 v1, p2

    if-eq v0, v1, :cond_4

    move-object v0, v5

    move/from16 v1, p2

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sget v9, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v10, -0x1

    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/Graphics;->getColor()I

    move-result v11

    move/from16 v8, p3

    move-object/from16 v12, p0

    invoke-static/range {v6 .. v12}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    invoke-virtual {v14, v6}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result p2

    add-int p2, p2, v7

    move/from16 v7, p2

    :cond_4
    const/16 p2, 0x5e

    move v0, v13

    move/from16 v1, p2

    if-ge v0, v1, :cond_5

    div-int/lit8 p2, v13, 0x10

    rem-int/lit8 v8, v13, 0x10

    sget-object v6, Lcom/t4game/Defaults;->chatFaceImg:[Ljavax/microedition/lcdui/Image;

    const/4 v9, 0x0

    aget-object v6, v6, v9

    sget v9, Lcom/t4game/Defaults;->expression_sub_w:I

    mul-int/2addr v9, v8

    sget v8, Lcom/t4game/Defaults;->expression_sub_h:I

    mul-int v10, p2, v8

    sget v11, Lcom/t4game/Defaults;->expression_sub_w:I

    sget v12, Lcom/t4game/Defaults;->expression_sub_h:I

    move/from16 v8, p3

    move-object/from16 v13, p0

    invoke-static/range {v6 .. v13}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_4
    const-string p2, "=00"

    invoke-static/range {p2 .. p2}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result p2

    add-int p2, p2, v7

    add-int/lit8 v6, v16, 0x3

    move/from16 v17, v6

    move/from16 v6, p2

    move/from16 p2, v17

    :goto_5
    add-int/lit8 v7, v16, 0x1

    move/from16 v16, v7

    move v7, v6

    goto/16 :goto_2

    :catch_0
    move-exception v6

    const/4 v6, -0x1

    move v13, v6

    goto :goto_3

    :cond_5
    sget-object p2, Lcom/t4game/Defaults;->moneyCoin:Ljavax/microedition/lcdui/Image;

    if-nez p2, :cond_6

    const/16 p2, 0x1

    invoke-static/range {p2 .. p2}, Lcom/t4game/Defaults;->createMoneyIcon(Z)V

    :cond_6
    sget-object v6, Lcom/t4game/Defaults;->moneyCoin:Ljavax/microedition/lcdui/Image;

    const/16 p2, 0x5e

    sub-int p2, v13, p2

    mul-int/lit8 v9, p2, 0xc

    const/4 v10, 0x0

    const/16 v11, 0xc

    const/16 v12, 0xc

    move/from16 v8, p3

    move-object/from16 v13, p0

    invoke-static/range {v6 .. v13}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    move/from16 v0, p2

    move v1, v6

    if-ge v0, v1, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    move-object v0, v5

    move/from16 v1, p2

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    sget v9, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v10, -0x1

    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/Graphics;->getColor()I

    move-result v11

    move/from16 v8, p3

    move-object/from16 v12, p0

    invoke-static/range {v6 .. v12}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_1

    :cond_8
    move v6, v7

    goto :goto_5

    :cond_9
    move-object/from16 p5, v6

    move v15, v5

    move-object/from16 v5, p1

    move/from16 p1, v7

    goto/16 :goto_0
.end method

.method public static drawStringWithWrap(IIIILjava/lang/String;Ljavax/microedition/lcdui/Graphics;)I
    .locals 9

    const/4 v3, 0x0

    const/16 v0, 0x14

    sub-int v0, p2, v0

    sget-object v1, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {p4, v0, v1}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v7

    move v8, v3

    :goto_0
    array-length v0, v7

    if-ge v8, v0, :cond_0

    aget-object v0, v7, v8

    add-int/lit8 v1, p0, 0xa

    add-int/lit8 v2, p1, 0xa

    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v4, v8

    add-int/2addr v2, v4

    const/4 v4, -0x1

    move v5, p3

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    array-length v0, v7

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public static getString([B)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static imageEffectBlackWhite(Ljavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Graphics;IIIIII)V
    .locals 11

    mul-int v2, p6, p7

    new-array v3, v2, [I

    const/4 v4, 0x0

    move-object v2, p0

    move/from16 v5, p6

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    const/4 p0, 0x0

    :goto_0
    move v0, p0

    move/from16 v1, p7

    if-ge v0, v1, :cond_1

    const/4 p4, 0x0

    :goto_1
    move v0, p4

    move/from16 v1, p6

    if-ge v0, v1, :cond_0

    mul-int p5, p0, p6

    add-int p5, p5, p4

    aget p5, v3, p5

    const/high16 v2, -0x1000000

    and-int v2, v2, p5

    shr-int/lit8 v2, v2, 0x18

    const/high16 v4, 0xff0000

    and-int v4, v4, p5

    shr-int/lit8 v4, v4, 0x10

    const v5, 0xff00

    and-int v5, v5, p5

    shr-int/lit8 v5, v5, 0x8

    move/from16 v0, p5

    and-int/lit16 v0, v0, 0xff

    move/from16 p5, v0

    mul-int/lit16 v4, v4, 0x12b

    mul-int/lit16 v5, v5, 0x24b

    add-int/2addr v4, v5

    mul-int/lit8 p5, p5, 0x72

    add-int p5, p5, v4

    move/from16 v0, p5

    div-int/lit16 v0, v0, 0x3e8

    move/from16 p5, v0

    mul-int v4, p0, p6

    add-int/2addr v4, p4

    shl-int/lit8 v2, v2, 0x18

    shl-int/lit8 v5, p5, 0x10

    or-int/2addr v2, v5

    shl-int/lit8 v5, p5, 0x8

    or-int/2addr v2, v5

    or-int p5, p5, v2

    aput p5, v3, v4

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v10, 0x1

    move-object v2, p1

    move/from16 v5, p6

    move v6, p2

    move v7, p3

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v10}, Ljavax/microedition/lcdui/Graphics;->drawRGB([IIIIIIIZ)V

    return-void
.end method

.method public static marqueeCtrl(III)I
    .locals 1

    if-lt p0, p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sub-int v0, p1, p0

    add-int/lit8 v0, v0, 0x14

    if-lt p2, v0, :cond_1

    sget v0, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v0, v0, 0xa

    if-nez v0, :cond_2

    const/16 v0, -0xa

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p2, 0x1

    goto :goto_0

    :cond_2
    move v0, p2

    goto :goto_0
.end method

.method public static paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V
    .locals 4

    const/4 v1, 0x0

    const-string v3, "\u8fd4\u56de"

    const-string v2, "\u786e\u5b9a"

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const-string v0, "\u8fd4\u56de"

    invoke-static {p0, p1, v1, v3}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_2

    const-string v0, "\u786e\u5b9a"

    invoke-static {p0, p1, v2, v1}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    const-string v0, "\u786e\u5b9a"

    const-string v0, "\u8fd4\u56de"

    invoke-static {p0, p1, v2, v3}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    invoke-static {p0, p1, v1, v1}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    shr-int/lit8 v0, v0, 0x1

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/16 v2, 0x28

    sub-int/2addr v1, v2

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {p1, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v1, v2

    add-int/lit8 v9, v1, 0x2e

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    sub-int/2addr v1, v9

    shr-int/lit8 v1, v1, 0x1

    sget v2, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/lit8 v3, v9, 0xa

    const/4 v4, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintAlertBox(IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v2, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v3}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    sub-int v3, v2, v3

    const/4 v2, 0x0

    move v10, v2

    :goto_0
    array-length v2, p1

    if-ge v10, v2, :cond_0

    aget-object v2, p1, v10

    add-int/lit8 v4, v1, 0xa

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v10

    add-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v6, -0x1

    const v7, 0xffffff

    move-object v8, p0

    invoke-static/range {v2 .. v8}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    add-int/lit8 p1, v0, 0x5

    add-int v2, v1, v9

    const/16 v3, 0x1e

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->CANVAS_WW:I

    shr-int/lit8 v3, v3, 0x1

    const/16 v4, 0xa

    sub-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v4, v4, 0x8

    invoke-static {p1, v2, v3, v4, p0}, Lcom/t4game/DraftingUtil;->paintCommandBack(IIIILjavax/microedition/lcdui/Graphics;)V

    sget p1, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget v2, Lcom/t4game/Defaults;->CANVAS_WW:I

    shr-int/lit8 v2, v2, 0x2

    sub-int v3, p1, v2

    add-int p1, v1, v9

    const/16 v2, 0x1f

    sub-int/2addr p1, v2

    add-int/lit8 v4, p1, 0x3

    sget v5, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v6, 0x300506

    const v7, 0xffd100

    move-object v2, p2

    move-object v8, p0

    invoke-static/range {v2 .. v8}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget p1, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/lit8 p1, p1, 0x5

    add-int p2, v1, v9

    const/16 v2, 0x1e

    sub-int/2addr p2, v2

    sget v2, Lcom/t4game/Defaults;->CANVAS_WW:I

    shr-int/lit8 v2, v2, 0x1

    const/16 v3, 0xa

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v3, v3, 0x8

    invoke-static {p1, p2, v2, v3, p0}, Lcom/t4game/DraftingUtil;->paintCommandBack(IIIILjavax/microedition/lcdui/Graphics;)V

    sget p1, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget p2, Lcom/t4game/Defaults;->CANVAS_WW:I

    shr-int/lit8 p2, p2, 0x2

    add-int v3, p1, p2

    add-int p1, v1, v9

    const/16 p2, 0x1f

    sub-int/2addr p1, p2

    add-int/lit8 v4, p1, 0x3

    sget v5, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v6, 0x300506

    const v7, 0xffd100

    move-object v2, p3

    move-object v8, p0

    invoke-static/range {v2 .. v8}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 p0, v0, 0x5

    sput p0, Lcom/t4game/PointerUtil;->s_iAlertButtonLeftX:I

    sget p0, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/lit8 p0, p0, 0x5

    sput p0, Lcom/t4game/PointerUtil;->s_iAlertButtonRightX:I

    add-int p0, v1, v9

    const/16 p1, 0x1f

    sub-int/2addr p0, p1

    sput p0, Lcom/t4game/PointerUtil;->s_iAlertButtonY:I

    sget p0, Lcom/t4game/Defaults;->CANVAS_WW:I

    shr-int/lit8 p0, p0, 0x1

    const/16 p1, 0xa

    sub-int/2addr p0, p1

    sput p0, Lcom/t4game/PointerUtil;->s_iAlertButtonWidth:I

    sget p0, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 p0, p0, 0x8

    sput p0, Lcom/t4game/PointerUtil;->s_iAlertButtonHeight:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-nez p2, :cond_3

    if-eqz p3, :cond_1

    :cond_3
    if-eqz p2, :cond_5

    sget p1, Lcom/t4game/Defaults;->CANVAS_WW:I

    shr-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    sput p1, Lcom/t4game/PointerUtil;->s_iAlertButtonLeftX:I

    add-int p1, v1, v9

    const/16 v2, 0x1f

    sub-int/2addr p1, v2

    sput p1, Lcom/t4game/PointerUtil;->s_iAlertButtonY:I

    sget p1, Lcom/t4game/Defaults;->CANVAS_WW:I

    shr-int/lit8 p1, p1, 0x1

    sput p1, Lcom/t4game/PointerUtil;->s_iAlertButtonWidth:I

    sget p1, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 p1, p1, 0x8

    sput p1, Lcom/t4game/PointerUtil;->s_iAlertButtonHeight:I

    :cond_4
    :goto_2
    sget p1, Lcom/t4game/Defaults;->CANVAS_WW:I

    shr-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    add-int v0, v1, v9

    const/16 v2, 0x1e

    sub-int/2addr v0, v2

    sget v2, Lcom/t4game/Defaults;->CANVAS_WW:I

    shr-int/lit8 v2, v2, 0x1

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v3, v3, 0x8

    invoke-static {p1, v0, v2, v3, p0}, Lcom/t4game/DraftingUtil;->paintCommandBack(IIIILjavax/microedition/lcdui/Graphics;)V

    if-nez p3, :cond_6

    move-object v0, p2

    :goto_3
    sget p1, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int p2, v1, v9

    const/16 p3, 0x1f

    sub-int/2addr p2, p3

    add-int/lit8 v2, p2, 0x3

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v4, 0x300506

    const v5, 0xffd100

    move v1, p1

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_4

    sget p1, Lcom/t4game/Defaults;->CANVAS_WW:I

    shr-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v0

    sput p1, Lcom/t4game/PointerUtil;->s_iAlertButtonRightX:I

    add-int p1, v1, v9

    const/16 v2, 0x1f

    sub-int/2addr p1, v2

    sput p1, Lcom/t4game/PointerUtil;->s_iAlertButtonY:I

    sget p1, Lcom/t4game/Defaults;->CANVAS_WW:I

    shr-int/lit8 p1, p1, 0x1

    sput p1, Lcom/t4game/PointerUtil;->s_iAlertButtonWidth:I

    sget p1, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 p1, p1, 0x8

    sput p1, Lcom/t4game/PointerUtil;->s_iAlertButtonHeight:I

    goto :goto_2

    :cond_6
    move-object v0, p3

    goto :goto_3
.end method

.method public static paintAlertBox(IIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 6

    const/4 v4, 0x6

    const/4 v0, -0x1

    if-ne p4, v0, :cond_0

    :goto_0
    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x16

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    return-void

    :cond_0
    const/4 v0, -0x2

    if-ne p4, v0, :cond_1

    const v0, 0x262321

    invoke-virtual {p5, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int/lit8 v0, p0, 0x3

    add-int/lit8 v1, p1, 0x3

    sub-int v2, p2, v4

    sub-int v3, p3, v4

    invoke-virtual {p5, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x3

    if-ne p4, v0, :cond_2

    const v0, 0x100976

    invoke-virtual {p5, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int/lit8 v0, p0, 0x3

    add-int/lit8 v1, p1, 0x3

    sub-int v2, p2, v4

    sub-int v3, p3, v4

    invoke-virtual {p5, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto :goto_0

    :cond_2
    const/4 v0, -0x4

    if-ne p4, v0, :cond_3

    const v0, -0x2feff68a

    add-int/lit8 v1, p0, 0x3

    add-int/lit8 v2, p1, 0x3

    sub-int v3, p2, v4

    sub-int v4, p3, v4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->drawAlphaImage(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :cond_3
    const/4 v0, -0x5

    if-ne p4, v0, :cond_4

    const/high16 v0, -0x78000000

    add-int/lit8 v1, p0, 0x3

    add-int/lit8 v2, p1, 0x3

    sub-int v3, p2, v4

    sub-int v4, p3, v4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->drawAlphaImage(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :cond_4
    const/high16 v0, -0x30000000

    add-int/lit8 v1, p0, 0x3

    add-int/lit8 v2, p1, 0x3

    sub-int v3, p2, v4

    sub-int v4, p3, v4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->drawAlphaImage(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0
.end method

.method public static paintAlertColorSplit(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)V
    .locals 13

    const/16 v11, 0x14

    const-string v0, "\n"

    invoke-static {p1, v0}, Lcom/t4game/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v0, v1

    mul-int/lit8 v1, v11, 0x3

    add-int/lit8 v4, v0, 0x3c

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/2addr v0, v11

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    sub-int/2addr v1, v4

    shr-int/lit8 v1, v1, 0x1

    const/16 v2, 0x168

    shl-int/lit8 v3, v11, 0x1

    sub-int/2addr v2, v3

    array-length v3, p1

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v5

    mul-int/lit8 v5, v11, 0x3

    add-int/lit8 v3, v3, 0x3c

    add-int v5, v1, v11

    sget v6, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v6, v6, 0x1

    sub-int/2addr v5, v6

    const/4 v6, 0x1

    sub-int v12, v5, v6

    sget v5, Lcom/t4game/Defaults;->CANVAS_H:I

    sub-int v4, v5, v4

    shr-int/lit8 v4, v4, 0x1

    const/4 v4, 0x0

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintAlertBox(IIIIILjavax/microedition/lcdui/Graphics;)V

    const/4 v2, 0x0

    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_1

    array-length v4, p1

    array-length v5, p2

    if-ne v4, v5, :cond_0

    aget-object v4, p1, v2

    sget v5, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v12

    sget v7, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v8, -0x1

    aget v9, p2, v2

    move-object v10, p0

    invoke-static/range {v4 .. v10}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    aget-object v4, p1, v2

    sget v5, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v6, v2

    add-int/2addr v6, v12

    sget v7, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v8, -0x1

    aget v9, p2, v2

    move-object v10, p0

    invoke-static/range {v4 .. v10}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    const/16 p1, 0x64

    const/16 p2, 0x1e

    add-int v7, v0, v11

    add-int/2addr v1, v3

    sub-int/2addr v1, v11

    sub-int v8, v1, p2

    shr-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v7, 0x32

    sget v2, Lcom/t4game/Defaults;->sfh:I

    sub-int v2, p2, v2

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v8

    add-int/lit16 v0, v0, 0x140

    sub-int/2addr v0, v11

    sub-int v9, v0, p1

    shr-int/lit8 v0, p1, 0x1

    add-int/lit8 v10, v9, 0x32

    invoke-static {v7, v8, p1, p2, p0}, Lcom/t4game/DraftingUtil;->paintCommandBack(IIIILjavax/microedition/lcdui/Graphics;)V

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v4, 0x300506

    const v5, 0xffd100

    move-object/from16 v0, p3

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sput v7, Lcom/t4game/PointerUtil;->s_iAlertButtonLeftX:I

    sput v8, Lcom/t4game/PointerUtil;->s_iAlertButtonY:I

    sput p1, Lcom/t4game/PointerUtil;->s_iAlertButtonWidth:I

    sput p2, Lcom/t4game/PointerUtil;->s_iAlertButtonHeight:I

    sput v9, Lcom/t4game/PointerUtil;->s_iAlertButtonRightX:I

    invoke-static {v9, v8, p1, p2, p0}, Lcom/t4game/DraftingUtil;->paintCommandBack(IIIILjavax/microedition/lcdui/Graphics;)V

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v4, 0x300506

    const v5, 0xffd100

    move-object/from16 v0, p4

    move v1, v10

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-nez p3, :cond_4

    if-eqz p4, :cond_2

    :cond_4
    const/16 p1, 0x96

    const/16 p2, 0x1e

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    shr-int/lit8 v2, p1, 0x1

    sub-int/2addr v0, v2

    add-int/2addr v1, v3

    sub-int/2addr v1, v11

    sub-int v3, v1, p2

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget v2, Lcom/t4game/Defaults;->sfh:I

    sub-int v2, p2, v2

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v3

    invoke-static {v0, v3, p1, p2, p0}, Lcom/t4game/DraftingUtil;->paintCommandBack(IIIILjavax/microedition/lcdui/Graphics;)V

    if-nez p4, :cond_5

    move-object/from16 v0, p3

    :goto_3
    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v4, 0x300506

    const v5, 0xffd100

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_2

    :cond_5
    move-object/from16 v0, p4

    goto :goto_3
.end method

.method public static paintAlertCommand(Ljavax/microedition/lcdui/Graphics;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const v5, 0xffd100

    const v4, 0x300506

    const/16 v7, 0xa

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    shr-int/lit8 v0, v0, 0x1

    if-eqz p2, :cond_0

    add-int/lit8 v1, v0, 0x5

    sput v1, Lcom/t4game/PointerUtil;->s_iAlertButtonLeftX:I

    sput p1, Lcom/t4game/PointerUtil;->s_iAlertButtonY:I

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v1, v7

    sput v1, Lcom/t4game/PointerUtil;->s_iAlertButtonWidth:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v1, v1, 0x8

    sput v1, Lcom/t4game/PointerUtil;->s_iAlertButtonHeight:I

    add-int/lit8 v0, v0, 0x5

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v1, v7

    sget v2, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v2, v2, 0x8

    invoke-static {v0, p1, v1, v2, p0}, Lcom/t4game/DraftingUtil;->paintCommandBack(IIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    shr-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    add-int/lit8 v2, p1, 0x4

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    move-object v0, p2

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_0
    if-eqz p3, :cond_1

    sput p1, Lcom/t4game/PointerUtil;->s_iAlertButtonY:I

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    sput v0, Lcom/t4game/PointerUtil;->s_iAlertButtonRightX:I

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/lit8 v0, v0, 0x5

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v1, v7

    sget v2, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v2, v2, 0x8

    invoke-static {v0, p1, v1, v2, p0}, Lcom/t4game/DraftingUtil;->paintCommandBack(IIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    shr-int/lit8 v0, v0, 0x2

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/2addr v1, v0

    add-int/lit8 v2, p1, 0x4

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    move-object v0, p3

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_1
    return-void
.end method

.method public static paintAlertSplit(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 17

    const/16 v16, 0xf

    const-string v5, "\n"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/t4game/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v6

    add-int/lit8 v8, v5, 0x2e

    sget v5, Lcom/t4game/Defaults;->CANVAS_H:I

    sub-int/2addr v5, v8

    shr-int/lit8 v6, v5, 0x1

    const/16 v5, 0xa

    sget v7, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v9, 0x14

    sub-int/2addr v7, v9

    const/4 v9, 0x0

    move-object/from16 v10, p0

    invoke-static/range {v5 .. v10}, Lcom/t4game/DraftingUtil;->paintAlertBox(IIIIILjavax/microedition/lcdui/Graphics;)V

    const/4 v5, 0x0

    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move v7, v0

    if-ge v5, v7, :cond_0

    aget-object v9, p1, v5

    sget v10, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/lit8 v7, v6, 0xa

    sget v11, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v11, v5

    add-int/2addr v11, v7

    sget v12, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v13, -0x1

    const v14, 0xffffff

    move-object/from16 v15, p0

    invoke-static/range {v9 .. v15}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    add-int/lit8 p1, v16, 0x5

    add-int p4, v6, v8

    const/16 p5, 0x1e

    sub-int p4, p4, p5

    sget p5, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/lit8 v5, v16, 0x5

    mul-int/lit8 v5, v5, 0x2

    sub-int p5, p5, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v5, v5, 0x8

    move/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    move v3, v5

    move-object/from16 v4, p0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/DraftingUtil;->paintCommandBack(IIIILjavax/microedition/lcdui/Graphics;)V

    sget p1, Lcom/t4game/Defaults;->CANVAS_WW:I

    div-int/lit8 v10, p1, 0x2

    add-int p1, v6, v8

    const/16 p4, 0x1e

    sub-int p1, p1, p4

    add-int/lit8 v11, p1, 0x4

    sget v12, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v13, 0x300506

    const v14, 0xffd100

    move-object/from16 v9, p2

    move-object/from16 v15, p0

    invoke-static/range {v9 .. v15}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 p1, v16, 0x5

    sget p1, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/lit8 p1, p1, 0x14

    add-int p2, v6, v8

    const/16 p4, 0x1e

    sub-int p2, p2, p4

    sget p4, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/lit8 p5, v16, 0x5

    mul-int/lit8 p5, p5, 0x2

    sub-int p4, p4, p5

    sget p5, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 p5, p5, 0x8

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/DraftingUtil;->paintCommandBack(IIIILjavax/microedition/lcdui/Graphics;)V

    sget p1, Lcom/t4game/Defaults;->CANVAS_WW:I

    div-int/lit8 p1, p1, 0x2

    sget p2, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int v10, p1, p2

    add-int p1, v6, v8

    const/16 p2, 0x1e

    sub-int p1, p1, p2

    add-int/lit8 v11, p1, 0x4

    sget v12, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v13, 0x300506

    const v14, 0xffd100

    move-object/from16 v9, p3

    move-object/from16 v15, p0

    invoke-static/range {v9 .. v15}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 p0, v16, 0x5

    sput p0, Lcom/t4game/PointerUtil;->s_iAlertButtonLeftX:I

    add-int/lit8 p0, v16, 0x5

    sget p0, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/lit8 p0, p0, 0x14

    sput p0, Lcom/t4game/PointerUtil;->s_iAlertButtonRightX:I

    add-int p0, v6, v8

    const/16 p1, 0x1f

    sub-int p0, p0, p1

    sput p0, Lcom/t4game/PointerUtil;->s_iAlertButtonY:I

    sget p0, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/lit8 p1, v16, 0x5

    mul-int/lit8 p1, p1, 0x2

    sub-int p0, p0, p1

    sput p0, Lcom/t4game/PointerUtil;->s_iAlertButtonWidth:I

    sget p0, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 p0, p0, 0x8

    sput p0, Lcom/t4game/PointerUtil;->s_iAlertButtonHeight:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-nez p2, :cond_3

    if-eqz p3, :cond_1

    :cond_3
    add-int/lit8 p1, v16, 0x28

    add-int v5, v6, v8

    const/16 v7, 0x1e

    sub-int/2addr v5, v7

    sget v7, Lcom/t4game/Defaults;->CANVAS_W:I

    add-int/lit8 v9, v16, 0x28

    mul-int/lit8 v9, v9, 0x2

    sub-int/2addr v7, v9

    sget v9, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v9, v9, 0x8

    move/from16 v0, p1

    move v1, v5

    move v2, v7

    move v3, v9

    move-object/from16 v4, p0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/DraftingUtil;->paintCommandBack(IIIILjavax/microedition/lcdui/Graphics;)V

    if-nez p3, :cond_4

    move-object/from16 v9, p2

    :goto_2
    sget v10, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int p1, v6, v8

    const/16 p2, 0x1e

    sub-int p1, p1, p2

    add-int/lit8 v11, p1, 0x4

    sget v12, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v13, 0x300506

    const v14, 0xffd100

    move-object/from16 v15, p0

    invoke-static/range {v9 .. v15}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    if-eqz p4, :cond_1

    add-int/lit8 p0, v16, 0x28

    add-int p1, v6, v8

    const/16 p2, 0x1e

    sub-int p1, p1, p2

    sget p2, Lcom/t4game/Defaults;->CANVAS_W:I

    add-int/lit8 p3, v16, 0x28

    mul-int/lit8 p3, p3, 0x2

    sub-int p2, p2, p3

    sget p3, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 p3, p3, 0x8

    move/from16 v0, p5

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    goto :goto_1

    :cond_4
    move-object/from16 v9, p3

    goto :goto_2
.end method

.method public static final paintBoxSmall(IIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 6

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x8

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    return-void
.end method

.method public static final paintColorString(II[Ljava/lang/String;[ILjavax/microedition/lcdui/Graphics;)V
    .locals 9

    const/4 v4, -0x1

    const-string v0, ""

    const/4 v1, 0x0

    move v7, v1

    move-object v8, v0

    :goto_0
    array-length v0, p2

    if-ge v7, v0, :cond_1

    if-nez v7, :cond_0

    aget-object v0, p2, v7

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    aget v5, p3, v7

    move v1, p0

    move v2, p1

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p2, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v7, 0x1

    int-to-byte v1, v1

    move v7, v1

    move-object v8, v0

    goto :goto_0

    :cond_0
    aget-object v0, p2, v7

    invoke-static {v8}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, p0

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    aget v5, p3, v7

    move v2, p1

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static paintColorStringInStaticAndScrollType(II[Ljava/lang/String;[IIILjavax/microedition/lcdui/Graphics;)V
    .locals 17

    move-object/from16 v0, p2

    array-length v0, v0

    move v12, v0

    new-array v13, v12, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-ltz p4, :cond_0

    const/4 v9, 0x1

    sub-int v9, v12, v9

    move/from16 v0, p4

    move v1, v9

    if-le v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v12, :cond_2

    aget-object v10, p2, v9

    invoke-static {v10}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v10

    aput v10, v13, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    if-ltz p4, :cond_8

    move/from16 v0, p4

    move v1, v12

    if-ge v0, v1, :cond_8

    const/4 v9, 0x0

    move/from16 v10, p0

    :goto_2
    move v0, v9

    move/from16 v1, p4

    if-ge v0, v1, :cond_3

    aget v11, v13, v9

    add-int/2addr v10, v11

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_3
    sub-int v9, v10, p0

    add-int/2addr v7, v9

    move v9, v5

    move/from16 v5, p4

    :goto_3
    if-ge v5, v12, :cond_4

    aget v11, v13, v5

    add-int/2addr v9, v11

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    add-int v5, v7, v9

    move v7, v9

    move v14, v10

    :goto_4
    move v0, v14

    move/from16 v1, p0

    if-lt v0, v1, :cond_0

    add-int v9, p0, p5

    if-gt v14, v9, :cond_0

    move/from16 v0, p5

    move v1, v5

    if-ge v0, v1, :cond_5

    sub-int v5, v14, p0

    sub-int p5, p5, v5

    shr-int/lit8 v5, p5, 0x1

    sub-int v5, v7, v5

    move/from16 v15, p4

    move/from16 p4, p5

    move/from16 p5, v5

    :goto_5
    const/4 v5, 0x0

    move/from16 v6, p0

    move/from16 p0, v5

    :goto_6
    move/from16 v0, p0

    move v1, v15

    if-ge v0, v1, :cond_6

    aget-object v5, p2, p0

    sget v8, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v9, -0x1

    aget v10, p3, p0

    move/from16 v7, p1

    move-object/from16 v11, p6

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    aget v5, v13, p0

    add-int/2addr v5, v6

    add-int/lit8 p0, p0, 0x1

    move v6, v5

    goto :goto_6

    :cond_5
    move/from16 p4, v8

    move/from16 p5, v6

    move v15, v12

    goto :goto_5

    :cond_6
    if-lez p5, :cond_0

    sget p0, Lcom/t4game/Defaults;->sfh:I

    move-object/from16 v0, p6

    move v1, v14

    move/from16 v2, p1

    move/from16 v3, p4

    move/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    sget p0, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int p0, p0, p5

    sub-int p0, v14, p0

    move/from16 v6, p0

    move/from16 p0, v15

    :goto_7
    move/from16 v0, p0

    move v1, v12

    if-ge v0, v1, :cond_7

    aget-object v5, p2, p0

    sget v8, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v9, -0x1

    aget v10, p3, p0

    move/from16 v7, p1

    move-object/from16 v11, p6

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    aget p4, v13, p0

    add-int p4, p4, v6

    add-int/lit8 p0, p0, 0x1

    move/from16 v6, p4

    goto :goto_7

    :cond_7
    const/16 p0, 0x0

    const/16 p1, 0x0

    sget p2, Lcom/t4game/Defaults;->CANVAS_W:I

    sget p3, Lcom/t4game/Defaults;->CANVAS_H:I

    move-object/from16 v0, p6

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto/16 :goto_0

    :cond_8
    move/from16 v14, p0

    move/from16 v16, v5

    move v5, v7

    move/from16 v7, v16

    goto/16 :goto_4
.end method

.method public static final paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V
    .locals 10

    add-int/lit8 v3, p2, -0x5

    sget p2, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 p2, p2, 0x8

    invoke-static {p1, v3, p3, p2, p5}, Lcom/t4game/DraftingUtil;->paintCommandBack(IIIILjavax/microedition/lcdui/Graphics;)V

    sget-boolean p2, Lcom/t4game/Defaults;->CNL_YUENAN:Z

    if-nez p2, :cond_3

    div-int/lit8 p2, p3, 0x2

    add-int/2addr p1, p2

    move v2, p1

    :goto_0
    if-eqz p6, :cond_1

    sget-boolean p1, Lcom/t4game/Defaults;->CNL_YUENAN:Z

    if-eqz p1, :cond_0

    sget p1, Lcom/t4game/Defaults;->sfh:I

    sub-int p1, p4, p1

    shr-int/lit8 p1, p1, 0x1

    add-int/2addr v3, p1

    sget v5, Lcom/t4game/Defaults;->sfh:I

    const/4 v6, 0x2

    const v7, 0x300506

    const v8, 0xffd100

    const/4 v9, 0x1

    move-object v0, p5

    move-object v1, p0

    move v4, p3

    invoke-static/range {v0 .. v9}, Lcom/t4game/DraftingUtil;->paintStringInScrollTypeInMiddle(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIIIZ)V

    :goto_1
    return-void

    :cond_0
    sget v4, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v5, 0x300506

    const v6, 0xffd100

    move-object v1, p0

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_1

    :cond_1
    sget-boolean p1, Lcom/t4game/Defaults;->CNL_YUENAN:Z

    if-eqz p1, :cond_2

    sget p1, Lcom/t4game/Defaults;->sfh:I

    sub-int p1, p4, p1

    shr-int/lit8 p1, p1, 0x1

    add-int/2addr v3, p1

    sget v5, Lcom/t4game/Defaults;->sfh:I

    const/4 v6, 0x2

    const v7, 0xffc700

    const/4 v8, -0x1

    const/4 v9, 0x1

    move-object v0, p5

    move-object v1, p0

    move v4, p3

    invoke-static/range {v0 .. v9}, Lcom/t4game/DraftingUtil;->paintStringInScrollTypeInMiddle(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIIIZ)V

    goto :goto_1

    :cond_2
    sget v4, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v5, 0xffc700

    const/4 v6, -0x1

    move-object v1, p0

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_1

    :cond_3
    move v2, p1

    goto :goto_0
.end method

.method public static paintCommand(Ljava/lang/String;Ljava/lang/String;ZIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 7

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/4 v1, 0x6

    sget-short v5, Lcom/t4game/DraftingUtil;->commandRectHight:S

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    add-int/lit8 p4, p4, 0x3

    if-eqz p2, :cond_0

    sget-boolean p2, Lcom/t4game/Defaults;->CNL_YUENAN:Z

    if-nez p2, :cond_0

    sget-object p2, Lcom/t4game/Defaults;->t4game:Ljavax/microedition/lcdui/Image;

    sget p6, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget-short v0, Lcom/t4game/DraftingUtil;->commandRectHight:S

    sget-object v1, Lcom/t4game/Defaults;->t4game:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p4

    sget v1, Lcom/t4game/Defaults;->TOP_HCENTER:I

    invoke-virtual {p7, p2, p6, v0, v1}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_0
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result p2

    add-int/lit8 p6, p3, 0x3

    add-int/lit8 v0, p2, 0x14

    sget-short v1, Lcom/t4game/DraftingUtil;->commandRectHight:S

    invoke-static {p6, p4, v0, v1, p7}, Lcom/t4game/DraftingUtil;->paintCommandBack(IIIILjavax/microedition/lcdui/Graphics;)V

    const/4 p6, 0x1

    add-int/lit8 v0, p3, 0x3

    add-int/lit8 p2, p2, 0x14

    sget-short v1, Lcom/t4game/DraftingUtil;->commandRectHight:S

    invoke-static {p6, v0, p4, p2, v1}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    add-int/lit8 v1, p3, 0xd

    sget-short p2, Lcom/t4game/DraftingUtil;->commandRectHight:S

    sget p6, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr p2, p6

    shr-int/lit8 p2, p2, 0x1

    add-int v2, p4, p2

    const/16 v3, 0x14

    const v4, 0x300506

    const v5, 0xffd100

    move-object v0, p0

    move-object v6, p7

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result p0

    add-int p2, p3, p5

    sub-int/2addr p2, p0

    const/16 p6, 0x17

    sub-int/2addr p2, p6

    add-int/lit8 p6, p0, 0x14

    sget-short v0, Lcom/t4game/DraftingUtil;->commandRectHight:S

    invoke-static {p2, p4, p6, v0, p7}, Lcom/t4game/DraftingUtil;->paintCommandBack(IIIILjavax/microedition/lcdui/Graphics;)V

    const/4 p2, 0x2

    add-int p6, p3, p5

    sub-int/2addr p6, p0

    const/16 v0, 0x17

    sub-int/2addr p6, v0

    add-int/lit8 p0, p0, 0x14

    sget-short v0, Lcom/t4game/DraftingUtil;->commandRectHight:S

    invoke-static {p2, p6, p4, p0, v0}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    add-int p0, p3, p5

    const/16 p2, 0xd

    sub-int v1, p0, p2

    sget-short p0, Lcom/t4game/DraftingUtil;->commandRectHight:S

    sget p2, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr p0, p2

    shr-int/lit8 p0, p0, 0x1

    add-int v2, p4, p0

    const/16 v3, 0x18

    const v4, 0x300506

    const v5, 0xffd100

    move-object v0, p1

    move-object v6, p7

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_2
    return-void
.end method

.method public static paintCommand2(Ljava/lang/String;Ljava/lang/String;ILjavax/microedition/lcdui/Graphics;)V
    .locals 9

    const v4, 0x300506

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v1, 0x7

    const/4 v5, 0x0

    invoke-virtual {p3, p2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sget-short v2, Lcom/t4game/DraftingUtil;->commandRectHight:S

    invoke-virtual {p3, v5, v5, v0, v2}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    sget-object v0, Lcom/t4game/Defaults;->t4game:Ljavax/microedition/lcdui/Image;

    sget v2, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    invoke-virtual {p3, v0, v2, v1, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    if-eqz p0, :cond_0

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    sget v2, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v8

    invoke-static {p0}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v3, v3, 0x4

    invoke-static {v5, v0, v2, v3, p3}, Lcom/t4game/DraftingUtil;->paintCommandBack(IIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    sget v2, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v0, v2

    sub-int v2, v0, v7

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const v5, 0xffd100

    move-object v0, p0

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_0
    if-eqz p1, :cond_1

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v2, 0xe

    sub-int/2addr v0, v2

    invoke-static {p1}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v0, v2

    sget v2, Lcom/t4game/Defaults;->CANVAS_H:I

    sget v3, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v8

    invoke-static {p1}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0xe

    sget v5, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v5, v5, 0x4

    invoke-static {v0, v2, v3, v5, p3}, Lcom/t4game/DraftingUtil;->paintCommandBack(IIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sub-int v1, v0, v1

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    sget v2, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v0, v2

    sub-int v2, v0, v7

    sget v3, Lcom/t4game/Defaults;->RIGHT_TOP:I

    const v5, 0xffd100

    move-object v0, p1

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_1
    return-void
.end method

.method public static paintCommandBack(IIIILjavax/microedition/lcdui/Graphics;)V
    .locals 6

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x17

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    return-void
.end method

.method public static paintCommandBackgroundBottom(IIIIZLjavax/microedition/lcdui/Graphics;)V
    .locals 6

    if-eqz p4, :cond_0

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x1d

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x1c

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    goto :goto_0
.end method

.method public static paintCommandBackgroundLargeBottom(IIIIZLjavax/microedition/lcdui/Graphics;)V
    .locals 6

    if-eqz p4, :cond_0

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x1f

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x1e

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    goto :goto_0
.end method

.method public static paintCommandBackgroundLargeTop(IIIILjavax/microedition/lcdui/Graphics;)V
    .locals 6

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x27

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    return-void
.end method

.method public static paintCommandBackgroundTop(IIIILjavax/microedition/lcdui/Graphics;)V
    .locals 6

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x26

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    return-void
.end method

.method public static paintCommandButton(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIZ)V
    .locals 10

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x17

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    if-eqz p6, :cond_1

    sget-boolean p6, Lcom/t4game/Defaults;->CNL_YUENAN:Z

    if-eqz p6, :cond_0

    sget p6, Lcom/t4game/Defaults;->sfh:I

    sub-int p5, p5, p6

    shr-int/lit8 p5, p5, 0x1

    add-int v3, p3, p5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    const/4 v6, 0x2

    const v7, 0x300506

    const v8, 0xffd100

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    invoke-static/range {v0 .. v9}, Lcom/t4game/DraftingUtil;->paintStringInScrollTypeInMiddle(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIIIZ)V

    :goto_0
    return-void

    :cond_0
    div-int/lit8 p4, p4, 0x2

    add-int v1, p2, p4

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v4, 0x300506

    const v5, 0xffd100

    move-object v0, p1

    move v2, p3

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :cond_1
    sget-boolean p6, Lcom/t4game/Defaults;->CNL_YUENAN:Z

    if-eqz p6, :cond_2

    sget p6, Lcom/t4game/Defaults;->sfh:I

    sub-int p5, p5, p6

    shr-int/lit8 p5, p5, 0x1

    add-int v3, p3, p5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    const/4 v6, 0x2

    const v7, 0xffc700

    const/4 v8, -0x1

    const/4 v9, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p4

    invoke-static/range {v0 .. v9}, Lcom/t4game/DraftingUtil;->paintStringInScrollTypeInMiddle(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIIIZ)V

    goto :goto_0

    :cond_2
    div-int/lit8 p4, p4, 0x2

    add-int v1, p2, p4

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v4, 0xffc700

    const/4 v5, -0x1

    move-object v0, p1

    move v2, p3

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0
.end method

.method public static paintCommandButtonGeneralWithHotspot(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;ZI)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    invoke-static {p7, p1, p2, p3, p4}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    return-void
.end method

.method public static paintCommandButtonLargeWithHotspot(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;ZI)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/t4game/DraftingUtil;->paintCommandLarge(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    invoke-static {p7, p1, p2, p3, p4}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    return-void
.end method

.method public static final paintCommandInDefault(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V
    .locals 7

    const/16 v2, 0x5d

    const/16 v3, 0x25

    const/4 v4, 0x0

    move v0, p1

    move v1, p2

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintCommandBackgroundBottom(IIIIZLjavax/microedition/lcdui/Graphics;)V

    if-eqz p6, :cond_0

    add-int/lit8 v1, p1, 0x2e

    const/16 p3, 0x25

    sget p4, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr p3, p4

    shr-int/lit8 p3, p3, 0x1

    add-int v2, p2, p3

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v4, 0x300506

    const v5, 0xffd100

    move-object v0, p0

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_0
    const/16 p0, 0x5d

    const/16 p3, 0x25

    invoke-static {p1, p2, p0, p3, p5}, Lcom/t4game/DraftingUtil;->paintCommandBackgroundTop(IIIILjavax/microedition/lcdui/Graphics;)V

    return-void

    :cond_0
    add-int/lit8 v1, p1, 0x2e

    const/16 p3, 0x25

    sget p4, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr p3, p4

    shr-int/lit8 p3, p3, 0x1

    add-int v2, p2, p3

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v4, 0xffc700

    const/4 v5, -0x1

    move-object v0, p0

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0
.end method

.method public static final paintCommandLarge(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V
    .locals 7

    const/16 v6, 0x25

    move v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p6

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintCommandBackgroundLargeBottom(IIIIZLjavax/microedition/lcdui/Graphics;)V

    if-eqz p6, :cond_0

    add-int/lit8 v1, p1, 0x44

    sget v0, Lcom/t4game/Defaults;->sfh:I

    sub-int v0, v6, v0

    shr-int/lit8 v0, v0, 0x1

    add-int v2, p2, v0

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v4, 0x300506

    const v5, 0xffd100

    move-object v0, p0

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/t4game/DraftingUtil;->paintCommandBackgroundLargeTop(IIIILjavax/microedition/lcdui/Graphics;)V

    return-void

    :cond_0
    add-int/lit8 v1, p1, 0x44

    sget v0, Lcom/t4game/Defaults;->sfh:I

    sub-int v0, v6, v0

    shr-int/lit8 v0, v0, 0x1

    add-int v2, p2, v0

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v4, 0xffc700

    const/4 v5, -0x1

    move-object v0, p0

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0
.end method

.method public static paintCommandWithoutLogo(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V
    .locals 8

    const/4 v2, 0x0

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    sget-short v1, Lcom/t4game/DraftingUtil;->commandRectHight:S

    sub-int v4, v0, v1

    sget v5, Lcom/t4game/Defaults;->CANVAS_W:I

    sget-short v6, Lcom/t4game/DraftingUtil;->commandRectHight:S

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;Ljava/lang/String;ZIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public static paintCommand_FullScreen(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    sget-short v1, Lcom/t4game/DraftingUtil;->commandRectHight:S

    sub-int v4, v0, v1

    sget v5, Lcom/t4game/Defaults;->CANVAS_W:I

    sget-short v6, Lcom/t4game/DraftingUtil;->commandRectHight:S

    move-object v0, p0

    move-object v1, p1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;Ljava/lang/String;ZIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public static paintCutOffRuleH(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 6

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x21

    const/4 v5, 0x2

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    return-void
.end method

.method public static paintCutOffRuleV(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 6

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x20

    const/4 v4, 0x2

    move v2, p1

    move v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    return-void
.end method

.method public static paintDefaultCommandInFullScreen(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V
    .locals 8

    const/16 v1, 0x16

    const/16 v7, 0xa

    const/4 v6, 0x0

    const/16 v3, 0x5d

    const/16 v4, 0x25

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    sub-int/2addr v0, v4

    sub-int v2, v0, v7

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintCommandInDefault(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sub-int/2addr v0, v3

    sub-int v1, v0, v1

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    sub-int/2addr v0, v4

    sub-int v2, v0, v7

    move-object v0, p1

    move-object v5, p2

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintCommandInDefault(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    return-void
.end method

.method public static paintDialog(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V
    .locals 6

    const/4 v2, 0x0

    sget v4, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v5, Lcom/t4game/Defaults;->CANVAS_H:I

    move-object v0, p1

    move-object v1, p0

    move v3, v2

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintDialog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    return-void
.end method

.method public static paintDialog(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;Lcom/t4game/GameUi;)V
    .locals 6

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/t4game/Defaults;->CNL_YUENAN:Z

    if-eqz v0, :cond_1

    iget-short v0, p2, Lcom/t4game/GameUi;->h:S

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x5

    add-int/2addr v0, v1

    move v5, v0

    :goto_1
    iget-short v4, p2, Lcom/t4game/GameUi;->w:S

    iget-short v3, p2, Lcom/t4game/GameUi;->y:S

    iget-short v2, p2, Lcom/t4game/GameUi;->x:S

    move-object v0, p1

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintDialog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    goto :goto_0

    :cond_1
    iget-short v0, p2, Lcom/t4game/GameUi;->h:S

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    move v5, v0

    goto :goto_1
.end method

.method public static paintDialog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V
    .locals 9

    const/4 v1, 0x6

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    sget-short v2, Lcom/t4game/DraftingUtil;->commandRectHight:S

    sub-int v5, p5, v2

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v2

    const/16 v3, 0xb

    add-int/lit8 v4, p2, 0x3

    add-int/lit8 v5, p3, 0x3

    sub-int v6, p4, v1

    sget-short v7, Lcom/t4game/DraftingUtil;->dialogTopLableHight:S

    invoke-virtual/range {v2 .. v7}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    shr-int/lit8 v0, p4, 0x1

    add-int v3, p2, v0

    add-int/lit8 v4, p3, 0x3

    sget v5, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v6, -0x1

    const v7, 0xffc700

    move-object v2, p1

    move-object v8, p0

    invoke-static/range {v2 .. v8}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    add-int v2, p3, p5

    sget-short v3, Lcom/t4game/DraftingUtil;->commandRectHight:S

    sub-int v3, v2, v3

    sget-short v5, Lcom/t4game/DraftingUtil;->commandRectHight:S

    move v2, p2

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    return-void
.end method

.method private static paintDialogBody(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 7

    const/16 v6, 0x1d

    const/16 v5, 0xa

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/4 v1, 0x6

    add-int/lit8 v2, p1, 0xa

    add-int/lit8 v3, p2, 0x1c

    sub-int/2addr v3, v5

    sub-int v4, p3, v5

    sub-int/2addr v4, v5

    const/16 v5, 0x1c

    sub-int v5, p4, v5

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    sget-object v0, Lcom/t4game/Defaults;->fringe_pattern:[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    add-int v1, p2, p4

    sub-int/2addr v1, v6

    sget v2, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p0, v0, p1, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    sget-object v0, Lcom/t4game/Defaults;->fringe_pattern:[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    add-int v1, p1, p3

    const/16 v2, 0x16

    sub-int/2addr v1, v2

    add-int v2, p2, p4

    sub-int/2addr v2, v6

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p0, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    return-void
.end method

.method public static paintDialogInFullScreenType(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V
    .locals 7

    const/16 v6, 0x1d

    const/4 v2, 0x0

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x29

    sget v4, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v5, Lcom/t4game/Defaults;->CANVAS_H:I

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    sget-object v0, Lcom/t4game/Defaults;->fringe_pattern:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v2

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    sub-int/2addr v1, v6

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v2, v1, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    sget-object v0, Lcom/t4game/Defaults;->fringe_pattern:[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sget v1, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v3, 0x16

    sub-int/2addr v1, v3

    sget v3, Lcom/t4game/Defaults;->CANVAS_H:I

    sub-int/2addr v3, v6

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-static {p1, v2, v2, v0, v1}, Lcom/t4game/DraftingUtil;->paintDialogTitleBarInFullScreenType(Ljavax/microedition/lcdui/Graphics;IIII)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    invoke-static {p1, v0, v2, p0}, Lcom/t4game/DraftingUtil;->paintDialogTitleBarString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;)V

    return-void
.end method

.method public static paintDialogNoCommand(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V
    .locals 8

    const/4 v7, 0x0

    const/4 v1, 0x6

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    sget-short v2, Lcom/t4game/DraftingUtil;->commandRectHight:S

    sub-int v5, p5, v2

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v6, 0xb

    add-int/lit8 v2, p2, 0x3

    add-int/lit8 v3, p3, 0x3

    sub-int v4, p4, v1

    sget-short v5, Lcom/t4game/DraftingUtil;->dialogTopLableHight:S

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    shr-int/lit8 v0, p4, 0x1

    add-int v1, p2, v0

    add-int/lit8 v2, p3, 0x3

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v0, p1

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    const/4 v2, 0x0

    add-int v0, p3, p5

    sget-short v1, Lcom/t4game/DraftingUtil;->commandRectHight:S

    sub-int v4, v0, v1

    move-object v0, v7

    move-object v1, v7

    move v3, p2

    move v5, p4

    move v6, p5

    move-object v7, p0

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;Ljava/lang/String;ZIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public static paintDialogTitleBar(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 6

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0xb

    const/16 v5, 0x1c

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    return-void
.end method

.method public static paintDialogTitleBarInFullScreenType(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 6

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v5, 0x1c

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    return-void
.end method

.method public static paintDialogTitleBarString(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;)V
    .locals 7

    add-int/lit8 v2, p2, 0xa

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v0, p3

    move v1, p1

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public static paintDialogWith2Frames(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V
    .locals 7

    const/16 v3, 0x1c

    const v4, 0x2b2825

    move v0, p2

    move v1, p3

    move v2, p4

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintFaceBoxBig(IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v1, p3, 0x1c

    sub-int v3, p5, v3

    const v4, 0x121212

    move v0, p2

    move v2, p4

    move-object v5, p0

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintFaceBox(IIIIILjavax/microedition/lcdui/Graphics;)V

    div-int/lit8 v0, p4, 0x2

    add-int v1, p2, v0

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v0, p1

    move v2, p3

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public static paintDialogWith3rdPannelAndDefaultButton(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V
    .locals 8

    const/16 v7, 0xa

    invoke-static {p0, p1}, Lcom/t4game/DraftingUtil;->paintDialogWithDefaultButton(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x5

    const/16 v3, 0x21

    sget v4, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v5, 0xf

    sub-int/2addr v4, v5

    const/16 v5, 0xe

    sub-int/2addr v4, v5

    sget v5, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v6, 0x1c

    sub-int/2addr v5, v6

    const/16 v6, 0x25

    sub-int/2addr v5, v6

    sub-int/2addr v5, v7

    sub-int/2addr v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    return-void
.end method

.method public static paintDialogWithDefaultButton(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V
    .locals 2

    invoke-static {p0, p1}, Lcom/t4game/DraftingUtil;->paintDialogInFullScreenType(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    const-string v0, "\u786e\u5b9a"

    const-string v1, "\u8fd4\u56de"

    invoke-static {v0, v1, p1}, Lcom/t4game/DraftingUtil;->paintDefaultCommandInFullScreen(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public static paintDialog_SplitFloating_H2(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;I)V
    .locals 13

    const/16 v4, 0x168

    const/16 v8, 0x23

    const/4 v6, 0x7

    const/4 v12, 0x6

    const/4 v11, 0x3

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/4 v3, 0x4

    const/16 v5, 0x104

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintDialog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/16 v1, 0xc8

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v5

    add-int/lit8 v7, v0, 0x3

    sub-int v9, p2, v11

    sub-int v10, v1, v12

    invoke-virtual/range {v5 .. v10}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v5

    add-int v7, v0, p2

    sub-int v0, v4, p2

    sub-int v9, v0, v11

    sub-int v10, v1, v12

    invoke-virtual/range {v5 .. v10}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    return-void
.end method

.method public static paintDialog_SplitFloating_H2_NoCommand(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;I)V
    .locals 13

    const/16 v8, 0x23

    const/4 v6, 0x7

    const/4 v12, 0x6

    const/4 v11, 0x3

    const/16 v4, 0x168

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/4 v3, 0x4

    const/16 v5, 0x104

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintDialogNoCommand(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/16 v1, 0xc8

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v5

    add-int/lit8 v7, v0, 0x3

    sub-int v9, p2, v11

    sub-int v10, v1, v12

    invoke-virtual/range {v5 .. v10}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :cond_0
    if-eq p2, v4, :cond_1

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v5

    add-int v7, v0, p2

    sub-int v0, v4, p2

    sub-int v9, v0, v11

    sub-int v10, v1, v12

    invoke-virtual/range {v5 .. v10}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :cond_1
    return-void
.end method

.method public static paintExp(Ljavax/microedition/lcdui/Graphics;IIIIIII)V
    .locals 3

    const-string v2, "/"

    const v0, 0x515050

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    invoke-virtual {p0, p3, p4, p5, p6}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    const v0, 0xb76de

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    if-lez p2, :cond_0

    mul-int v0, p5, p1

    div-int/2addr v0, p2

    invoke-virtual {p0, p3, p4, v0, p6}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_0
    const v0, 0xf9df00

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    if-lez p7, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int v1, p3, p7

    sget v2, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p0, v0, v1, p4, v2}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    shr-int/lit8 v1, p5, 0x1

    add-int/2addr v1, p3

    sget v2, Lcom/t4game/Defaults;->TOP_HCENTER:I

    invoke-virtual {p0, v0, v1, p4, v2}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    goto :goto_0
.end method

.method public static paintExpandMenu(Ljavax/microedition/lcdui/Graphics;[Ljava/lang/String;I)V
    .locals 18

    move-object/from16 v0, p1

    array-length v0, v0

    move v2, v0

    const/16 v3, 0x8

    if-le v2, v3, :cond_1

    const/16 v2, 0x8

    :goto_0
    int-to-byte v8, v2

    const/16 v12, 0x1e

    mul-int v2, v8, v12

    add-int/lit8 v5, v2, 0x14

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v17, v4

    move v4, v2

    move/from16 v2, v17

    :goto_1
    move-object/from16 v0, p1

    array-length v0, v0

    move v6, v0

    if-ge v2, v6, :cond_2

    aget-object v6, p1, v2

    invoke-static {v6}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v6

    if-le v6, v4, :cond_0

    move v3, v6

    move v4, v6

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p1

    array-length v0, v0

    move v2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v4, 0x14

    add-int/lit8 v3, v3, 0x14

    const/16 v4, 0x5f

    if-le v2, v4, :cond_5

    move v4, v2

    :goto_2
    sub-int v2, v4, v3

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v13, v2, 0xa

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    sub-int/2addr v2, v4

    shr-int/lit8 v2, v2, 0x1

    sget v3, Lcom/t4game/Defaults;->CANVAS_H:I

    mul-int v6, v8, v12

    sub-int/2addr v3, v6

    const/16 v6, 0x14

    sub-int/2addr v3, v6

    shr-int/lit8 v3, v3, 0x1

    const v6, 0xffc700

    move-object/from16 v7, p0

    invoke-static/range {v2 .. v7}, Lcom/t4game/DraftingUtil;->paintFaceBoxBig(IIIIILjavax/microedition/lcdui/Graphics;)V

    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    if-gtz p2, :cond_6

    const/4 v6, 0x0

    sput v6, Lcom/t4game/PointerUtil;->s_iMenuScrollIndex:I

    :cond_3
    :goto_3
    sget v6, Lcom/t4game/PointerUtil;->s_iMenuScrollIndex:I

    add-int v7, v6, v8

    int-to-byte v7, v7

    if-gez v6, :cond_4

    const/4 v6, 0x0

    if-le v5, v8, :cond_9

    add-int v7, v6, v8

    int-to-byte v7, v7

    :goto_4
    sput v6, Lcom/t4game/PointerUtil;->s_iMenuScrollIndex:I

    :cond_4
    move/from16 v17, v7

    move v7, v6

    move/from16 v6, v17

    const/4 v9, 0x1

    sub-int v9, v5, v9

    if-le v6, v9, :cond_d

    if-le v5, v8, :cond_a

    sub-int/2addr v5, v8

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    add-int v6, v5, v8

    move/from16 v17, v6

    move v6, v5

    move/from16 v5, v17

    :goto_5
    sput v6, Lcom/t4game/PointerUtil;->s_iMenuScrollIndex:I

    move v14, v5

    move v15, v6

    :goto_6
    add-int/lit8 v5, v2, 0x3

    sput v5, Lcom/t4game/PointerUtil;->s_iMenuX:I

    add-int/lit8 v5, v3, 0xa

    sput v5, Lcom/t4game/PointerUtil;->s_iMenuY:I

    sput v4, Lcom/t4game/PointerUtil;->s_iMenuWidth:I

    sput v12, Lcom/t4game/PointerUtil;->s_iMenuSpace:I

    mul-int v5, v8, v12

    sput v5, Lcom/t4game/PointerUtil;->s_iMenuHeight:I

    move/from16 v16, v15

    :goto_7
    move/from16 v0, v16

    move v1, v14

    if-ge v0, v1, :cond_c

    move/from16 v0, p2

    move/from16 v1, v16

    if-ne v0, v1, :cond_b

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v5

    const/16 v6, 0xa

    add-int/lit8 v7, v2, 0x3

    add-int/lit8 v8, v3, 0xa

    sub-int v9, v16, v15

    mul-int/2addr v9, v12

    add-int/2addr v8, v9

    const/4 v9, 0x6

    sub-int v9, v4, v9

    sget v10, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v5 .. v10}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    aget-object v5, p1, v16

    add-int v6, v2, v13

    add-int/lit8 v7, v3, 0xa

    sub-int v8, v16, v15

    mul-int/2addr v8, v12

    add-int/2addr v7, v8

    const/16 v8, 0x14

    const/4 v9, -0x1

    const v10, 0xffee00

    move-object/from16 v11, p0

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_8
    add-int/lit8 v5, v16, 0x1

    move/from16 v16, v5

    goto :goto_7

    :cond_5
    const/16 v2, 0x5f

    move v4, v2

    goto/16 :goto_2

    :cond_6
    move/from16 v0, p2

    move v1, v5

    if-lt v0, v1, :cond_7

    sub-int v6, v5, v8

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    sput v6, Lcom/t4game/PointerUtil;->s_iMenuScrollIndex:I

    goto/16 :goto_3

    :cond_7
    sget v6, Lcom/t4game/PointerUtil;->s_iMenuScrollIndex:I

    move/from16 v0, p2

    move v1, v6

    if-ne v0, v1, :cond_8

    sget v6, Lcom/t4game/PointerUtil;->s_iMenuScrollIndex:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    sput v6, Lcom/t4game/PointerUtil;->s_iMenuScrollIndex:I

    goto/16 :goto_3

    :cond_8
    sget v6, Lcom/t4game/PointerUtil;->s_iMenuScrollIndex:I

    add-int/2addr v6, v8

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move/from16 v0, p2

    move v1, v6

    if-ne v0, v1, :cond_3

    sget v6, Lcom/t4game/PointerUtil;->s_iMenuScrollIndex:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/t4game/PointerUtil;->s_iMenuScrollIndex:I

    goto/16 :goto_3

    :cond_9
    add-int v7, v6, v5

    int-to-byte v7, v7

    goto/16 :goto_4

    :cond_a
    const/4 v6, 0x0

    goto/16 :goto_5

    :cond_b
    aget-object v5, p1, v16

    add-int v6, v2, v13

    add-int/lit8 v7, v3, 0xa

    sub-int v8, v16, v15

    mul-int/2addr v8, v12

    add-int/2addr v7, v8

    const/16 v8, 0x14

    const/4 v9, -0x1

    const v10, 0xffffff

    move-object/from16 v11, p0

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_8

    :cond_c
    return-void

    :cond_d
    move v14, v6

    move v15, v7

    goto/16 :goto_6
.end method

.method public static final paintFaceBox(IIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 6

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/4 v1, 0x7

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    return-void
.end method

.method public static paintFaceBoxAndString(IIIILjava/lang/String;Ljavax/microedition/lcdui/Graphics;)V
    .locals 10

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x5

    sget v1, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v2, 0xa

    sub-int/2addr v1, v2

    move v2, v1

    :goto_0
    move v1, p0

    move v3, p2

    move v4, p3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintFaceBox(IIIIILjavax/microedition/lcdui/Graphics;)V

    invoke-virtual {p5}, Ljavax/microedition/lcdui/Graphics;->getClipX()I

    move-result v6

    invoke-virtual {p5}, Ljavax/microedition/lcdui/Graphics;->getClipY()I

    move-result v7

    invoke-virtual {p5}, Ljavax/microedition/lcdui/Graphics;->getClipWidth()I

    move-result v8

    invoke-virtual {p5}, Ljavax/microedition/lcdui/Graphics;->getClipHeight()I

    move-result v9

    invoke-virtual {p5, v0, p0, v2, p2}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    const v3, 0xffffff

    move v1, p0

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->drawStringWithWrap(IIIILjava/lang/String;Ljavax/microedition/lcdui/Graphics;)I

    invoke-virtual {p5, v6, v7, v8, v9}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    return-void

    :cond_0
    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sub-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x1

    move v2, p1

    goto :goto_0
.end method

.method public static final paintFaceBoxBig(IIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 6

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/4 v1, 0x6

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    return-void
.end method

.method public static final paintFaceBoxBig2(IIIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 21

    const/16 v13, 0x11

    const/16 v14, 0xd

    const/4 v10, -0x1

    move/from16 v0, p4

    move v1, v10

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p6

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    move-object/from16 v0, p6

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_0
    const/16 p4, 0x0

    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const/16 p4, 0x1

    sub-int p4, p2, p4

    const/16 p5, 0x1

    sub-int p5, p3, p5

    move-object/from16 v0, p6

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    add-int/lit8 p4, p0, 0x2

    add-int/lit8 p5, p1, 0x2

    const/4 v10, 0x5

    sub-int v10, p2, v10

    const/4 v11, 0x5

    sub-int v11, p3, v11

    move-object/from16 v0, p6

    move/from16 v1, p4

    move/from16 v2, p5

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    const p4, 0x7a654a

    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int/lit8 p4, p0, 0x1

    add-int/lit8 p5, p1, 0x1

    const/4 v10, 0x3

    sub-int v10, p2, v10

    const/4 v11, 0x3

    sub-int v11, p3, v11

    move-object/from16 v0, p6

    move/from16 v1, p4

    move/from16 v2, p5

    move v3, v10

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    const p4, 0x7a654a

    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int p4, p1, p3

    const/16 p5, 0x2

    sub-int p4, p4, p5

    move-object/from16 v0, p6

    move/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p0

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int p4, p0, p2

    add-int p5, p0, p2

    add-int v10, p1, p3

    const/4 v11, 0x2

    sub-int/2addr v10, v11

    move-object/from16 v0, p6

    move/from16 v1, p4

    move/from16 v2, p1

    move/from16 v3, p5

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    const/16 p4, 0x0

    move-object/from16 v0, p6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int/lit8 p4, p0, 0x1

    add-int/lit8 p5, p0, 0x1

    add-int v10, p1, p3

    const/4 v11, 0x2

    sub-int/2addr v10, v11

    move-object/from16 v0, p6

    move/from16 v1, p4

    move/from16 v2, p1

    move/from16 v3, p5

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int p4, p0, p2

    const/16 p5, 0x1

    sub-int p4, p4, p5

    add-int p5, p0, p2

    const/4 v10, 0x1

    sub-int p5, p5, v10

    add-int v10, p1, p3

    const/4 v11, 0x2

    sub-int/2addr v10, v11

    move-object/from16 v0, p6

    move/from16 v1, p4

    move/from16 v2, p1

    move/from16 v3, p5

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    sget-object v10, Lcom/t4game/Defaults;->bigBoxTop:Ljavax/microedition/lcdui/Image;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    sget v18, Lcom/t4game/Defaults;->TOP_LEFT:I

    move/from16 v16, p0

    move/from16 v17, p1

    move-object/from16 v0, p6

    move-object v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    sget-object v10, Lcom/t4game/Defaults;->bigBoxTop:Ljavax/microedition/lcdui/Image;

    const/4 v12, 0x0

    const/4 v15, 0x0

    sub-int p4, p0, v13

    add-int v16, p4, p2

    sget v18, Lcom/t4game/Defaults;->TOP_LEFT:I

    move v11, v13

    move/from16 v17, p1

    move-object/from16 v0, p6

    move-object v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    sget-object v10, Lcom/t4game/Defaults;->bigBoxTop:Ljavax/microedition/lcdui/Image;

    const/4 v11, 0x0

    const/4 v15, 0x0

    add-int p4, p1, p3

    sub-int v17, p4, v14

    sget v18, Lcom/t4game/Defaults;->TOP_LEFT:I

    move v12, v14

    move/from16 v16, p0

    move-object/from16 v0, p6

    move-object v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    sget-object v12, Lcom/t4game/Defaults;->bigBoxTop:Ljavax/microedition/lcdui/Image;

    const/16 v17, 0x0

    sub-int p0, p0, v13

    add-int v18, p0, p2

    add-int p0, p1, p3

    sub-int v19, p0, v14

    sget v20, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v11, p6

    move v15, v13

    move/from16 v16, v14

    invoke-static/range {v11 .. v20}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    return-void
.end method

.method public static final paintFaceBoxImage(IIIILjavax/microedition/lcdui/Graphics;)V
    .locals 21

    const/16 v13, 0x15

    const/16 v14, 0x16

    sget-object v10, Lcom/t4game/Defaults;->medBoxTop:Ljavax/microedition/lcdui/Image;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    sget v18, Lcom/t4game/Defaults;->TOP_LEFT:I

    move/from16 v16, p0

    move/from16 v17, p1

    move-object/from16 v0, p4

    move-object v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    sget-object v10, Lcom/t4game/Defaults;->medBoxTop:Ljavax/microedition/lcdui/Image;

    const/4 v12, 0x0

    const/4 v15, 0x0

    sub-int v11, p0, v13

    add-int v16, v11, p2

    sget v18, Lcom/t4game/Defaults;->TOP_LEFT:I

    move v11, v13

    move/from16 v17, p1

    move-object/from16 v0, p4

    move-object v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    sget-object v10, Lcom/t4game/Defaults;->medBoxTop:Ljavax/microedition/lcdui/Image;

    const/4 v11, 0x0

    const/4 v15, 0x0

    add-int v12, p1, p3

    sub-int/2addr v12, v14

    const/16 v16, 0x1

    sub-int v17, v12, v16

    sget v18, Lcom/t4game/Defaults;->TOP_LEFT:I

    move v12, v14

    move/from16 v16, p0

    move-object/from16 v0, p4

    move-object v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    sget-object v12, Lcom/t4game/Defaults;->medBoxTop:Ljavax/microedition/lcdui/Image;

    const/16 v17, 0x0

    sub-int p0, p0, v13

    add-int v18, p0, p2

    add-int p0, p1, p3

    sub-int p0, p0, v14

    const/16 p1, 0x1

    sub-int v19, p0, p1

    sget v20, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v11, p4

    move v15, v13

    move/from16 v16, v14

    invoke-static/range {v11 .. v20}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    return-void
.end method

.method public static final paintFaceBoxNoTop(IIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 6

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x8

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    return-void
.end method

.method public static final paintFaceBoxSmall(IIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 6

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x8

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    return-void
.end method

.method public static paintFloatingDailog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V
    .locals 6

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/4 v3, 0x4

    const/16 v4, 0x168

    const/16 v5, 0x104

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintDialog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    return-void
.end method

.method public static paintFloatingDailogNoCommand(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V
    .locals 6

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/4 v3, 0x4

    const/16 v4, 0x168

    const/16 v5, 0x104

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintDialogNoCommand(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    return-void
.end method

.method public static final paintFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p7, p1, p2, p5, p6}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    if-eqz p0, :cond_0

    sub-int v0, p1, p3

    sub-int v1, p2, p4

    const/16 v2, 0x14

    invoke-virtual {p7, p0, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_0
    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual {p7, v3, v3, v0, v1}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    return-void
.end method

.method public static final paintFullScreenUPDNarrow(Ljavax/microedition/lcdui/Graphics;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v2, 0x0

    sget-object v0, Lcom/t4game/Defaults;->arrow_up0_s:Ljavax/microedition/lcdui/Image;

    sget v1, Lcom/t4game/PointerUtil;->FULLSCREEN_UPARROW_X:I

    sget v3, Lcom/t4game/PointerUtil;->FULLSCREEN_ARROW_Y:I

    invoke-virtual {p0, v0, v1, v3, v9}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    sget-object v1, Lcom/t4game/Defaults;->arrow_up0_s:Ljavax/microedition/lcdui/Image;

    const/16 v4, 0x19

    const/16 v5, 0x1b

    const/4 v6, 0x1

    sget v7, Lcom/t4game/PointerUtil;->FULLSCREEN_DNARROW_X:I

    sget v8, Lcom/t4game/PointerUtil;->FULLSCREEN_ARROW_Y:I

    move-object v0, p0

    move v3, v2

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    return-void
.end method

.method public static final paintFunctionBlockSelect(IILjavax/microedition/lcdui/Graphics;)V
    .locals 4

    const/4 v3, 0x3

    sget v0, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v0, v0, 0x6

    if-ge v0, v3, :cond_0

    sget-object v0, Lcom/t4game/Defaults;->goodboxM0:Ljavax/microedition/lcdui/Image;

    add-int/lit8 v1, p0, 0xc

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, p1, 0xc

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/t4game/Defaults;->goodboxM1:Ljavax/microedition/lcdui/Image;

    add-int/lit8 v1, p0, 0xc

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, p1, 0xc

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p2, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto :goto_0
.end method

.method public static paintFunctionEndAlert(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V
    .locals 8

    const/16 v3, 0xeb

    const/16 v4, 0x64

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x17

    sget v2, Lcom/t4game/Defaults;->CANVAS_WW:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v2, v5

    const/16 v5, 0xa

    sub-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x14

    sget-short v5, Lcom/t4game/DraftingUtil;->commandRectHight:S

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    sget v2, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget v4, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v5, -0x1

    const v6, 0xffffff

    move-object v1, p0

    move-object v7, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public static paintFunctionFullScreenEndAlert(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V
    .locals 7

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v0, v1

    const/4 v1, 0x3

    sub-int v3, v0, v1

    invoke-static {p0}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v4

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x17

    sget v2, Lcom/t4game/Defaults;->CANVAS_WW:I

    div-int/lit8 v5, v4, 0x2

    sub-int/2addr v2, v5

    const/16 v5, 0xa

    sub-int/2addr v2, v5

    add-int/lit8 v4, v4, 0x14

    sget-short v5, Lcom/t4game/DraftingUtil;->commandRectHight:S

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/lit8 v2, v3, 0x1

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v4, -0x1

    const v5, 0xffffff

    move-object v0, p0

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public static paintHighColor(IILjava/lang/String;[Ljava/lang/String;ILjavax/microedition/lcdui/Graphics;Z)V
    .locals 19

    if-nez p3, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p3

    array-length v0, v0

    move v6, v0

    if-eqz v6, :cond_0

    const/16 p6, 0x2

    move v0, v6

    move/from16 v1, p6

    filled-new-array {v0, v1}, [I

    move-result-object p6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object v0, v5

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, [[I

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v9, p6, v5

    const/4 v10, 0x0

    aget-object v11, p3, v5

    move-object/from16 v0, p2

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    aput v11, v9, v10

    aget-object v9, p6, v5

    const/4 v10, 0x1

    aget-object v11, p6, v5

    const/4 v12, 0x0

    aget v11, v11, v12

    aget-object v12, p3, v5

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int/2addr v11, v12

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    aput v11, v9, v10

    aget-object v9, p6, v5

    const/4 v10, 0x0

    aget v9, v9, v10

    const/4 v10, -0x1

    if-ne v9, v10, :cond_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    sget v5, Lcom/t4game/Defaults;->CANVAS_W:I

    mul-int/lit8 v9, p0, 0x2

    sub-int/2addr v5, v9

    sget-object v9, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    move-object/from16 v0, p2

    move v1, v5

    move-object v2, v9

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    const/4 v5, 0x2

    filled-new-array {v10, v5}, [I

    move-result-object v5

    sget-object v11, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[S

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_5

    if-nez v11, :cond_4

    aget-object v12, v5, v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput-short v14, v12, v13

    aget-object v12, v5, v11

    const/4 v13, 0x1

    aget-object v14, v9, v11

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    int-to-short v14, v14

    aput-short v14, v12, v13

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    aget-object v12, v5, v11

    const/4 v13, 0x0

    const/4 v14, 0x1

    sub-int v14, v11, v14

    aget-object v14, v5, v14

    const/4 v15, 0x1

    aget-short v14, v14, v15

    add-int/lit8 v14, v14, 0x1

    int-to-short v14, v14

    aput-short v14, v12, v13

    aget-object v12, v5, v11

    const/4 v13, 0x1

    aget-object v14, v5, v11

    const/4 v15, 0x0

    aget-short v14, v14, v15

    aget-object v15, v9, v11

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    const/4 v15, 0x1

    sub-int/2addr v14, v15

    int-to-short v14, v14

    aput-short v14, v12, v13

    goto :goto_2

    :cond_5
    const/4 v9, 0x0

    :goto_3
    if-ge v9, v6, :cond_c

    aget-object v10, p6, v9

    const/4 v11, 0x0

    aget v10, v10, v11

    const/4 v11, -0x1

    if-eq v10, v11, :cond_6

    aget-object v10, p6, v9

    const/4 v11, 0x0

    aget v10, v10, v11

    int-to-short v10, v10

    invoke-static {v5, v10}, Lcom/t4game/Util;->getlineNum([[SS)S

    move-result v10

    aget-object v11, p6, v9

    const/4 v12, 0x0

    aget v11, v11, v12

    aget-object v12, v5, v10

    const/4 v13, 0x0

    aget-short v12, v12, v13

    sub-int/2addr v11, v12

    int-to-short v11, v11

    aget-object v12, p6, v9

    const/4 v13, 0x1

    aget v12, v12, v13

    int-to-short v12, v12

    invoke-static {v5, v12}, Lcom/t4game/Util;->getlineNum([[SS)S

    move-result v12

    if-ne v10, v12, :cond_8

    aget-object v12, p3, v9

    invoke-virtual {v7, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v12, 0x2

    new-array v12, v12, [S

    if-nez v11, :cond_7

    const/4 v11, 0x0

    move/from16 v0, p0

    int-to-short v0, v0

    move v13, v0

    aput-short v13, v12, v11

    const/4 v11, 0x1

    sget v13, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v10, v13

    add-int v10, v10, p1

    int-to-short v10, v10

    aput-short v10, v12, v11

    :goto_4
    invoke-virtual {v8, v12}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_7
    aget-object v11, v5, v10

    const/4 v13, 0x0

    aget-short v11, v11, v13

    aget-object v13, p6, v9

    const/4 v14, 0x0

    aget v13, v13, v14

    move-object/from16 v0, p2

    move v1, v11

    move v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    invoke-static {v11}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v11

    add-int v11, v11, p0

    int-to-short v11, v11

    aput-short v11, v12, v13

    const/4 v11, 0x1

    sget v13, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v10, v13

    add-int v10, v10, p1

    int-to-short v10, v10

    aput-short v10, v12, v11

    goto :goto_4

    :cond_8
    sub-int v13, v12, v10

    const/4 v14, 0x0

    :goto_5
    if-gt v14, v13, :cond_6

    if-nez v14, :cond_a

    aget-object v15, p6, v9

    const/16 v16, 0x0

    aget v15, v15, v16

    aget-object v16, v5, v10

    const/16 v17, 0x1

    aget-short v16, v16, v17

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p2

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v15, 0x2

    new-array v15, v15, [S

    if-nez v11, :cond_9

    const/16 v16, 0x0

    move/from16 v0, p0

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v15, v16

    const/16 v16, 0x1

    sget v17, Lcom/t4game/Defaults;->sfh:I

    mul-int v17, v17, v10

    add-int v17, v17, p1

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v15, v16

    :goto_6
    invoke-virtual {v8, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_9
    aget-object v16, v5, v10

    const/16 v17, 0x0

    aget-short v16, v16, v17

    aget-object v17, p6, v9

    const/16 v18, 0x0

    aget v17, v17, v18

    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    invoke-static/range {v16 .. v16}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v16

    add-int v16, v16, p0

    move/from16 v0, v16

    int-to-short v0, v0

    move/from16 v16, v0

    aput-short v16, v15, v17

    const/16 v16, 0x1

    sget v17, Lcom/t4game/Defaults;->sfh:I

    mul-int v17, v17, v10

    add-int v17, v17, p1

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v15, v16

    goto :goto_6

    :cond_a
    if-ne v14, v13, :cond_b

    aget-object v15, v5, v12

    const/16 v16, 0x0

    aget-short v15, v15, v16

    aget-object v16, p6, v9

    const/16 v17, 0x1

    aget v16, v16, v17

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p2

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v15, 0x2

    new-array v15, v15, [S

    const/16 v16, 0x0

    move/from16 v0, p0

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v15, v16

    const/16 v16, 0x1

    sget v17, Lcom/t4game/Defaults;->sfh:I

    mul-int v17, v17, v12

    add-int v17, v17, p1

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v15, v16

    invoke-virtual {v8, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_7

    :cond_b
    aget-object v15, v5, v14

    const/16 v16, 0x0

    aget-short v15, v15, v16

    aget-object v16, v5, v14

    const/16 v17, 0x1

    aget-short v16, v16, v17

    add-int/lit8 v16, v16, 0x1

    move-object/from16 v0, p2

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v15, 0x2

    new-array v15, v15, [S

    const/16 v16, 0x0

    move/from16 v0, p0

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v15, v16

    const/16 v16, 0x1

    add-int v17, v10, v14

    sget v18, Lcom/t4game/Defaults;->sfh:I

    mul-int v17, v17, v18

    add-int v17, v17, p1

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v15, v16

    invoke-virtual {v8, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_c
    const/16 p0, 0x0

    move/from16 p2, p0

    :goto_8
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result p0

    move/from16 v0, p2

    move/from16 v1, p0

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p5

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    move-object v0, v7

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v0, v8

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [S

    check-cast p1, [S

    const/16 p3, 0x0

    aget-short p3, p1, p3

    move-object v0, v8

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [S

    check-cast p1, [S

    const/16 p6, 0x1

    aget-short p1, p1, p6

    const/16 p6, 0x14

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v3, p1

    move/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    const p0, 0xffff00

    move-object/from16 v0, p5

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    move-object v0, v8

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    check-cast p0, [S

    const/16 p1, 0x0

    aget-short p1, p0, p1

    move-object v0, v8

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    check-cast p0, [S

    const/16 p3, 0x1

    aget-short p0, p0, p3

    sget p3, Lcom/t4game/Defaults;->sfh:I

    add-int p3, p3, p0

    move-object v0, v8

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    check-cast p0, [S

    const/16 p6, 0x0

    aget-short p6, p0, p6

    move-object v0, v7

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result p0

    add-int p6, p6, p0

    move-object v0, v8

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [S

    check-cast p0, [S

    const/4 v5, 0x1

    aget-short p0, p0, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    add-int p0, p0, v5

    move-object/from16 v0, p5

    move/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p6

    move/from16 v4, p0

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int/lit8 p0, p2, 0x1

    move/from16 p2, p0

    goto/16 :goto_8
.end method

.method public static paintIconBlock(IILjavax/microedition/lcdui/Graphics;)V
    .locals 6

    const/16 v4, 0x18

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/4 v1, 0x4

    move v2, p0

    move v3, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    return-void
.end method

.method public static paintIconBlockNoOpen(IILjavax/microedition/lcdui/Graphics;)V
    .locals 6

    const/16 v4, 0x18

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x1b

    move v2, p0

    move v3, p1

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    return-void
.end method

.method public static paintIconBlock_withColor(IILjavax/microedition/lcdui/Graphics;II)V
    .locals 3

    const/16 v0, 0x18

    invoke-virtual {p2, p3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int/lit8 v1, p0, 0x1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v1, v2, v0, v0}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    invoke-virtual {p2, p4}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int/lit8 v1, p0, 0x1

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p2, v1, v2, v0, v0}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    return-void
.end method

.method public static final paintInput(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;)V
    .locals 18

    const/16 v3, 0x14

    const/16 v12, 0xa

    sget v4, Lcom/t4game/Defaults;->CANVAS_W:I

    mul-int/lit8 v5, v3, 0x2

    sub-int v5, v4, v5

    mul-int/lit8 v4, v12, 0x2

    sub-int v4, v5, v4

    sget-object v6, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    move-object/from16 v0, p1

    move v1, v4

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object p1

    sget v4, Lcom/t4game/Defaults;->sfh:I

    move-object/from16 v0, p1

    array-length v0, v0

    move v6, v0

    mul-int v7, v4, v6

    const/4 v13, 0x3

    sget v4, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v14, v4, 0x5

    sget v4, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v9, v4, 0x2

    add-int v4, v7, v9

    add-int/2addr v4, v14

    mul-int/lit8 v6, v13, 0x4

    add-int/lit8 v4, v4, 0xc

    add-int/lit8 v6, v4, 0x8

    sget v4, Lcom/t4game/Defaults;->CANVAS_H:I

    sub-int/2addr v4, v6

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v7, v4

    mul-int/lit8 v8, v13, 0x2

    add-int/lit8 v15, v7, 0x6

    add-int v7, v15, v9

    add-int/2addr v7, v13

    add-int/lit8 v16, v7, 0x8

    const/4 v7, -0x2

    move-object/from16 v8, p0

    invoke-static/range {v3 .. v8}, Lcom/t4game/DraftingUtil;->paintAlertBox(IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int v6, v3, v12

    mul-int/lit8 v7, v12, 0x2

    sub-int v8, v5, v7

    const v10, 0x7a654a

    move v7, v15

    move-object/from16 v11, p0

    invoke-static/range {v6 .. v11}, Lcom/t4game/DraftingUtil;->paintFaceBoxNoTop(IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v6, Lcom/t4game/DraftingUtil;->inputArea:[I

    const/4 v7, 0x0

    add-int v8, v3, v12

    aput v8, v6, v7

    sget-object v6, Lcom/t4game/DraftingUtil;->inputArea:[I

    const/4 v7, 0x1

    aput v15, v6, v7

    sget-object v6, Lcom/t4game/DraftingUtil;->inputArea:[I

    const/4 v7, 0x2

    add-int v8, v3, v12

    add-int/lit8 v5, v5, 0x1e

    mul-int/lit8 v8, v12, 0x2

    sub-int/2addr v5, v8

    aput v5, v6, v7

    sget-object v5, Lcom/t4game/DraftingUtil;->inputArea:[I

    const/4 v6, 0x3

    add-int v7, v15, v9

    aput v7, v5, v6

    const/4 v5, 0x0

    move/from16 v17, v5

    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_0

    aget-object v5, p1, v17

    add-int v6, v3, v12

    add-int v7, v4, v13

    sget v8, Lcom/t4game/Defaults;->sfh:I

    mul-int v8, v8, v17

    add-int/2addr v7, v8

    sget v8, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v9, -0x1

    const v10, 0xfbaf5d

    move-object/from16 v11, p0

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v5, v17, 0x1

    move/from16 v17, v5

    goto :goto_0

    :cond_0
    add-int p1, v3, v12

    add-int/lit8 v5, p1, 0x2

    add-int/lit8 v6, v15, 0x1

    sget v7, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v8, -0x1

    const v9, 0x121212

    move-object/from16 v4, p2

    move-object/from16 v10, p0

    invoke-static/range {v4 .. v10}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    const-string v4, "\u786e\u5b9a"

    add-int/lit8 v5, v3, 0xa

    sget p1, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 v7, p1, 0xe

    const/4 v10, 0x0

    move/from16 v6, v16

    move v8, v14

    move-object/from16 v9, p0

    invoke-static/range {v4 .. v10}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    const-string v4, "\u8fd4\u56de"

    sget p1, Lcom/t4game/Defaults;->CANVAS_W:I

    sub-int p1, p1, v3

    sget p2, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 p2, p2, 0x3

    sub-int v5, p1, p2

    sget p1, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 p1, p1, 0x1

    add-int/lit8 v7, p1, 0xe

    const/4 v10, 0x0

    move/from16 v6, v16

    move v8, v14

    move-object/from16 v9, p0

    invoke-static/range {v4 .. v10}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    sget-object p1, Lcom/t4game/DraftingUtil;->commandArea:[[I

    const/16 p2, 0x0

    aget-object p1, p1, p2

    const/16 p2, 0x0

    add-int/lit8 v4, v3, 0xa

    aput v4, p1, p2

    sget-object p1, Lcom/t4game/DraftingUtil;->commandArea:[[I

    const/16 p2, 0x0

    aget-object p1, p1, p2

    const/16 p2, 0x1

    aput v16, p1, p2

    sget-object p1, Lcom/t4game/DraftingUtil;->commandArea:[[I

    const/16 p2, 0x0

    aget-object p1, p1, p2

    const/16 p2, 0x2

    add-int/lit8 v4, v3, 0xa

    sget v4, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v4, v4, 0x1

    add-int/lit8 v4, v4, 0x1e

    add-int/lit8 v4, v4, 0xe

    aput v4, p1, p2

    sget-object p1, Lcom/t4game/DraftingUtil;->commandArea:[[I

    const/16 p2, 0x0

    aget-object p1, p1, p2

    const/16 p2, 0x3

    add-int v4, v16, v14

    aput v4, p1, p2

    sget-object p1, Lcom/t4game/DraftingUtil;->commandArea:[[I

    const/16 p2, 0x1

    aget-object p1, p1, p2

    const/16 p2, 0x0

    sget v4, Lcom/t4game/Defaults;->CANVAS_W:I

    sub-int/2addr v4, v3

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v5, v5, 0x3

    sub-int/2addr v4, v5

    aput v4, p1, p2

    sget-object p1, Lcom/t4game/DraftingUtil;->commandArea:[[I

    const/16 p2, 0x1

    aget-object p1, p1, p2

    const/16 p2, 0x1

    aput v16, p1, p2

    sget-object p1, Lcom/t4game/DraftingUtil;->commandArea:[[I

    const/16 p2, 0x1

    aget-object p1, p1, p2

    const/16 p2, 0x2

    sget v4, Lcom/t4game/Defaults;->CANVAS_W:I

    sub-int v3, v4, v3

    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0xe

    aput v3, p1, p2

    sget-object p1, Lcom/t4game/DraftingUtil;->commandArea:[[I

    const/16 p2, 0x1

    aget-object p1, p1, p2

    const/16 p2, 0x3

    add-int v3, v16, v14

    aput v3, p1, p2

    sget-object p1, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/t4game/Texter;->paint(Ljavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public static final paintLable(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;ZI)V
    .locals 7

    const/4 v6, -0x1

    if-eqz p6, :cond_0

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x13

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    div-int/lit8 v0, p3, 0x2

    add-int v1, p1, v0

    add-int/lit8 v2, p2, 0x1

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v5, 0xf7941d

    move-object v0, p0

    move v4, v6

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x12

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    div-int/lit8 v0, p3, 0x2

    add-int v1, p1, v0

    add-int/lit8 v2, p2, 0x1

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    if-ne p7, v6, :cond_1

    const v0, 0x5c5c5e    # 8.482001E-39f

    move v5, v0

    :goto_1
    move-object v0, p0

    move v4, v6

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :cond_1
    move v5, p7

    goto :goto_1
.end method

.method public static paintLoading(Ljavax/microedition/lcdui/Graphics;)V
    .locals 7

    const/4 v5, 0x3

    const/4 v4, 0x0

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    :try_start_0
    sget-object v2, Lcom/t4game/DraftingUtil;->loading1:Ljavax/microedition/lcdui/Image;

    if-nez v2, :cond_0

    const-string v2, "/loading1.png"

    invoke-static {v2}, Ljavax/microedition/lcdui/Image;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    sput-object v2, Lcom/t4game/DraftingUtil;->loading1:Ljavax/microedition/lcdui/Image;

    :cond_0
    sget-object v2, Lcom/t4game/DraftingUtil;->loading2:Ljavax/microedition/lcdui/Image;

    if-nez v2, :cond_1

    const-string v2, "/loading2.png"

    invoke-static {v2}, Ljavax/microedition/lcdui/Image;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    sput-object v2, Lcom/t4game/DraftingUtil;->loading2:Ljavax/microedition/lcdui/Image;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const v2, 0x121212

    invoke-virtual {p0, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    invoke-virtual {p0, v4, v4, v0, v1}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    sget-object v0, Lcom/t4game/DraftingUtil;->loading1:Ljavax/microedition/lcdui/Image;

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget v2, Lcom/t4game/Defaults;->CANVAS_HH:I

    const/16 v3, 0x21

    invoke-virtual {p0, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    sget v0, Lcom/t4game/DraftingUtil;->loading_leng_cur:I

    sget v1, Lcom/t4game/Defaults;->CANVAS_HH:I

    add-int/lit8 v1, v1, 0x1e

    invoke-static {v0, v1, p0}, Lcom/t4game/DraftingUtil;->paintLoadingDown(IILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/DraftingUtil;->loading_cur_tick:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/t4game/DraftingUtil;->loading_cur_tick:I

    sget v0, Lcom/t4game/DraftingUtil;->loading_cur_tick:I

    if-le v0, v5, :cond_2

    sput v4, Lcom/t4game/DraftingUtil;->loading_cur_tick:I

    :cond_2
    sget v0, Lcom/t4game/DraftingUtil;->loading_leng_cur:I

    sget v1, Lcom/t4game/DraftingUtil;->loading_leng_max:I

    if-ge v0, v1, :cond_3

    sget v0, Lcom/t4game/DraftingUtil;->loading_cur_tick:I

    if-ne v0, v5, :cond_3

    sget v0, Lcom/t4game/DraftingUtil;->loading_leng_cur:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/t4game/DraftingUtil;->loading_leng_cur:I

    :cond_3
    const-string v0, "\u8bfb\u53d6\u4e2d..."

    sget v1, Lcom/t4game/DraftingUtil;->loading_leng_cur:I

    mul-int/lit8 v1, v1, 0x64

    sget v2, Lcom/t4game/DraftingUtil;->loading_leng_max:I

    div-int/2addr v1, v2

    int-to-byte v1, v1

    const/16 v2, 0x25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget v2, Lcom/t4game/Defaults;->CANVAS_HH:I

    add-int/lit8 v2, v2, 0x32

    const/16 v3, 0x11

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static paintLoadingDown(IILjavax/microedition/lcdui/Graphics;)V
    .locals 12

    const/16 v11, 0xe

    const/16 v5, 0xd

    const/4 v2, 0x0

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget v1, Lcom/t4game/DraftingUtil;->loading_leng_max:I

    div-int/lit8 v1, v1, 0x2

    sub-int v7, v0, v1

    const v0, 0x22430

    invoke-virtual {p2, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v0, Lcom/t4game/DraftingUtil;->loading_leng_max:I

    invoke-virtual {p2, v7, p1, v0, v11}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    sget-object v1, Lcom/t4game/Defaults;->loadingback:Ljavax/microedition/lcdui/Image;

    const/16 v4, 0x10

    add-int/lit8 v8, p1, 0x3

    move v3, v2

    move v6, v2

    move v9, p0

    move v10, v5

    invoke-virtual/range {v0 .. v10}, Lcom/t4game/UIPainter;->fillTile(Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x1a

    const/16 v2, 0x12

    sub-int v2, v7, v2

    sget v3, Lcom/t4game/DraftingUtil;->loading_leng_max:I

    add-int/lit8 v4, v3, 0x24

    move v3, p1

    move v5, v11

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    return-void
.end method

.method public static paintMapName(Ljava/lang/String;IIZLjavax/microedition/lcdui/Graphics;I)V
    .locals 7

    if-eqz p3, :cond_0

    const v0, -0x7796ffc9

    const/16 p3, 0xa

    sub-int v1, p1, p3

    add-int/lit8 v3, p5, 0xa

    sget p3, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v4, p3, 0x4

    move v2, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->drawAlphaImage(IIIIILjavax/microedition/lcdui/Graphics;)V

    const/16 p3, 0xa

    sub-int v0, p1, p3

    add-int/lit8 v2, p5, 0xa

    sget p3, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v3, p3, 0x4

    const/4 v4, -0x1

    move v1, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintMapNameBox(IIIIILjavax/microedition/lcdui/Graphics;)V

    const/4 p3, 0x5

    sub-int v1, p1, p3

    add-int/lit8 v2, p2, 0x2

    const/16 v3, 0x14

    const v4, 0x1b0310

    const v5, 0xf3d7ae

    move-object v0, p0

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_0
    return-void

    :cond_0
    const v0, -0x7f96ffc9

    sub-int p3, p1, p5

    const/16 v1, 0xa

    sub-int v1, p3, v1

    add-int/lit8 v3, p5, 0xa

    sget p3, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v4, p3, 0x4

    move v2, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->drawAlphaImage(IIIIILjavax/microedition/lcdui/Graphics;)V

    sub-int p3, p1, p5

    const/16 v0, 0xa

    sub-int v0, p3, v0

    add-int/lit8 v2, p5, 0xa

    sget p3, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v3, p3, 0x4

    const/4 v4, -0x1

    move v1, p2

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintFaceBoxSmall(IIIIILjavax/microedition/lcdui/Graphics;)V

    sub-int/2addr p1, p5

    const/4 p3, 0x5

    sub-int v1, p1, p3

    add-int/lit8 v2, p2, 0x2

    const/16 v3, 0x14

    const v4, 0x1b0310

    const v5, 0xf3d7ae

    move-object v0, p0

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0
.end method

.method public static final paintMapNameBox(IIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 6

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x16

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    return-void
.end method

.method public static paintMenu(IIIILjava/lang/String;[Ljava/lang/String;ILjavax/microedition/lcdui/Graphics;ZB)V
    .locals 13

    move-object/from16 v0, p5

    array-length v0, v0

    move v9, v0

    move v0, v9

    move/from16 v1, p9

    if-le v0, v1, :cond_2

    add-int/lit8 v2, p6, 0x1

    move v0, v2

    move/from16 v1, p9

    if-le v0, v1, :cond_1

    add-int/lit8 v2, p6, 0x1

    sub-int v2, v2, p9

    int-to-byte v2, v2

    add-int v3, v2, p9

    int-to-byte v3, v3

    move v10, v3

    move v11, v2

    :goto_0
    const/4 v12, 0x0

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int v2, v2, p9

    sub-int p3, p3, v2

    shr-int/lit8 p3, p3, 0x1

    add-int p2, p2, p3

    sget p3, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v2, 0x168

    sub-int p3, p3, v2

    shr-int/lit8 v4, p3, 0x1

    const/4 v5, 0x4

    const/16 v6, 0x168

    const/16 v7, 0x104

    move-object/from16 v2, p7

    move-object/from16 v3, p4

    invoke-static/range {v2 .. v7}, Lcom/t4game/DraftingUtil;->paintDialog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    sput p0, Lcom/t4game/PointerUtil;->s_iMenuX:I

    sput p2, Lcom/t4game/PointerUtil;->s_iMenuY:I

    sput p1, Lcom/t4game/PointerUtil;->s_iMenuWidth:I

    sget p3, Lcom/t4game/Defaults;->sfh:I

    sput p3, Lcom/t4game/PointerUtil;->s_iMenuSpace:I

    sget p3, Lcom/t4game/PointerUtil;->s_iMenuSpace:I

    sub-int p4, v10, v11

    mul-int p3, p3, p4

    sput p3, Lcom/t4game/PointerUtil;->s_iMenuHeight:I

    sput v11, Lcom/t4game/PointerUtil;->s_iMenuScrollIndex:I

    move/from16 p3, v11

    :goto_1
    move/from16 v0, p3

    move v1, v10

    if-ge v0, v1, :cond_4

    move/from16 v0, p6

    move/from16 v1, p3

    if-ne v0, v1, :cond_3

    if-eqz p8, :cond_0

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v2

    const/16 v3, 0xa

    add-int/lit8 v4, p0, 0x1e

    sub-int p4, p3, v11

    add-int p4, p4, v12

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int p4, p4, v5

    add-int v5, p2, p4

    const/16 v6, 0x12c

    sget v7, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v2 .. v7}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :cond_0
    aget-object v2, p5, p3

    add-int/lit8 v3, p0, 0x1e

    sub-int p4, p3, v11

    add-int p4, p4, v12

    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int p4, p4, v4

    add-int v4, p2, p4

    sget v5, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v6, 0x0

    const v7, 0xf9df00

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    move/from16 v10, p9

    move v11, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    int-to-byte v3, v9

    move v10, v3

    move v11, v2

    goto :goto_0

    :cond_3
    aget-object v2, p5, p3

    add-int/lit8 v3, p0, 0x1e

    sub-int p4, p3, v11

    add-int p4, p4, v12

    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int p4, p4, v4

    add-int v4, p2, p4

    sget v5, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v6, 0x0

    const v7, 0xffffff

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_2

    :cond_4
    add-int v5, p0, p1

    sget p0, Lcom/t4game/Defaults;->sfh:I

    mul-int v7, p9, p0

    move v2, v9

    move/from16 v3, p9

    move/from16 v4, p6

    move v6, p2

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public static paintMenu(SSLjava/lang/String;[Ljava/lang/String;SLjavax/microedition/lcdui/Graphics;S)V
    .locals 9

    const/16 v1, 0x20

    const/16 v7, 0xa

    move v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    move v8, p6

    invoke-static/range {v0 .. v8}, Lcom/t4game/DraftingUtil;->paintMenu(SSSLjava/lang/String;[Ljava/lang/String;SLjavax/microedition/lcdui/Graphics;BS)V

    return-void
.end method

.method public static paintMenu(SSSLjava/lang/String;[Ljava/lang/String;SLjavax/microedition/lcdui/Graphics;BS)V
    .locals 18

    move-object/from16 v0, p4

    array-length v0, v0

    move v5, v0

    const/16 v6, 0x28

    sub-int v6, p2, v6

    sget-object v7, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    move-object/from16 v0, p3

    move v1, v6

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object p3

    move-object/from16 v0, p3

    array-length v0, v0

    move v12, v0

    add-int v6, v5, v12

    move v0, v6

    move/from16 v1, p7

    if-le v0, v1, :cond_1

    add-int v6, p5, v12

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    move/from16 v1, p7

    if-le v0, v1, :cond_0

    add-int v6, p5, v12

    add-int/lit8 v6, v6, 0x1

    sub-int v6, v6, p7

    sub-int v6, v5, v6

    int-to-byte v6, v6

    sub-int v7, p7, v12

    add-int/2addr v7, v6

    int-to-byte v7, v7

    if-lt v7, v5, :cond_8

    int-to-byte v7, v5

    move v13, v7

    move v14, v6

    :goto_0
    add-int v6, v5, v12

    move v0, v6

    move/from16 v1, p7

    if-lt v0, v1, :cond_2

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int p7, p7, v5

    :goto_1
    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v5

    const/4 v6, 0x6

    add-int/lit8 v10, p7, 0xa

    move/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    invoke-virtual/range {v5 .. v10}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    add-int/lit8 p0, p0, 0x14

    move/from16 v0, p0

    int-to-short v0, v0

    move/from16 p0, v0

    const/16 p7, 0x0

    :goto_2
    move-object/from16 v0, p3

    array-length v0, v0

    move v5, v0

    move/from16 v0, p7

    move v1, v5

    if-ge v0, v1, :cond_3

    aget-object v5, p3, p7

    add-int/lit8 v6, p0, 0x5

    add-int/lit8 v7, p1, 0x5

    sget v8, Lcom/t4game/Defaults;->sfh:I

    mul-int v8, v8, p7

    add-int/2addr v7, v8

    sget v8, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v9, 0x0

    const v10, 0xffc700

    move-object/from16 v11, p6

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 p7, p7, 0x1

    goto :goto_2

    :cond_0
    const/4 v6, 0x0

    sub-int v7, p7, v12

    int-to-byte v7, v7

    move v13, v7

    move v14, v6

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    int-to-byte v7, v5

    move v13, v7

    move v14, v6

    goto :goto_0

    :cond_2
    add-int p7, v5, v12

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int p7, p7, v5

    goto :goto_1

    :cond_3
    add-int/lit8 p3, p0, 0x5

    sput p3, Lcom/t4game/PointerUtil;->s_iMenuX:I

    add-int/lit8 p3, p1, 0x5

    sget p7, Lcom/t4game/Defaults;->sfh:I

    mul-int p7, p7, v12

    add-int p3, p3, p7

    sput p3, Lcom/t4game/PointerUtil;->s_iMenuY:I

    const/16 p3, 0xa

    sub-int p3, p2, p3

    sput p3, Lcom/t4game/PointerUtil;->s_iMenuWidth:I

    sub-int p3, v13, v14

    sget p7, Lcom/t4game/Defaults;->sfh:I

    mul-int p3, p3, p7

    sput p3, Lcom/t4game/PointerUtil;->s_iMenuHeight:I

    sget p3, Lcom/t4game/Defaults;->sfh:I

    sput p3, Lcom/t4game/PointerUtil;->s_iMenuSpace:I

    sput v14, Lcom/t4game/PointerUtil;->s_iMenuScrollIndex:I

    move/from16 p3, v14

    :goto_3
    move/from16 v0, p3

    move v1, v13

    if-ge v0, v1, :cond_7

    invoke-virtual/range {p6 .. p6}, Ljavax/microedition/lcdui/Graphics;->getClipX()I

    move-result p7

    invoke-virtual/range {p6 .. p6}, Ljavax/microedition/lcdui/Graphics;->getClipY()I

    move-result v15

    invoke-virtual/range {p6 .. p6}, Ljavax/microedition/lcdui/Graphics;->getClipWidth()I

    move-result v16

    invoke-virtual/range {p6 .. p6}, Ljavax/microedition/lcdui/Graphics;->getClipHeight()I

    move-result v17

    move/from16 v0, p8

    move/from16 v1, p3

    if-ne v0, v1, :cond_5

    move/from16 v0, p5

    move/from16 v1, p8

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v5

    const/16 v6, 0xa

    add-int/lit8 v7, p0, 0x5

    add-int/lit8 v8, p1, 0x5

    sub-int v9, p3, v14

    add-int/2addr v9, v12

    sget v10, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    const/16 v9, 0xa

    sub-int v9, p2, v9

    sget v10, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v5 .. v10}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sub-int v6, p3, v14

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p4, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, p0, 0x5

    add-int/lit8 v7, p1, 0x5

    sub-int v8, p3, v14

    add-int/2addr v8, v12

    sget v9, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    sget v8, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v9, 0x0

    const v10, 0x362f2d

    move-object/from16 v11, p6

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_4
    move-object/from16 v0, p6

    move/from16 v1, p7

    move v2, v15

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    :cond_5
    move/from16 v0, p5

    move/from16 v1, p3

    if-ne v0, v1, :cond_6

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v5

    const/16 v6, 0xa

    add-int/lit8 v7, p0, 0x5

    add-int/lit8 v8, p1, 0x5

    sub-int v9, p3, v14

    add-int/2addr v9, v12

    sget v10, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    const/16 v9, 0x28

    sub-int v9, p2, v9

    sget v10, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v5 .. v10}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, p3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p4, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, p0, 0x5

    add-int/lit8 v7, p1, 0x5

    sub-int v8, p3, v14

    add-int/2addr v8, v12

    sget v9, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    sget v8, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v9, 0x0

    const v10, 0xf9df00

    move-object/from16 v11, p6

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_4

    :cond_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, p3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p4, p3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, p0, 0x5

    add-int/lit8 v7, p1, 0x5

    sub-int v8, p3, v14

    add-int/2addr v8, v12

    sget v9, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    sget v8, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v9, 0x0

    const v10, 0xffffff

    move-object/from16 v11, p6

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_4

    :cond_7
    return-void

    :cond_8
    move v13, v7

    move v14, v6

    goto/16 :goto_0
.end method

.method public static paintMenuFullFloatDialog(Ljava/lang/String;[Ljava/lang/String;ILjavax/microedition/lcdui/Graphics;B)V
    .locals 15

    move-object/from16 v0, p1

    array-length v0, v0

    move v9, v0

    move v0, v9

    move/from16 v1, p4

    if-le v0, v1, :cond_1

    add-int/lit8 v2, p2, 0x1

    move v0, v2

    move/from16 v1, p4

    if-le v0, v1, :cond_0

    add-int/lit8 v2, p2, 0x1

    sub-int v2, v2, p4

    int-to-byte v2, v2

    add-int v3, v2, p4

    int-to-byte v3, v3

    move v10, v3

    move v11, v2

    :goto_0
    const/4 v12, 0x0

    sget v13, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/16 v14, 0x28

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v3, 0x168

    sub-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    const/4 v5, 0x4

    const/16 v6, 0x168

    const/16 v7, 0x104

    move-object/from16 v2, p3

    move-object v3, p0

    invoke-static/range {v2 .. v7}, Lcom/t4game/DraftingUtil;->paintDialog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    move p0, v11

    :goto_1
    if-ge p0, v10, :cond_3

    move/from16 v0, p2

    move v1, p0

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v2

    const/16 v3, 0xa

    add-int/lit8 v4, v13, 0x5

    sub-int v5, p0, v11

    add-int/2addr v5, v12

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v6

    add-int/2addr v5, v14

    const/16 v6, 0x15e

    sget v7, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v2 .. v7}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    aget-object v2, p1, p0

    add-int/lit8 v3, v13, 0x1e

    sub-int v4, p0, v11

    add-int/2addr v4, v12

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v14

    sget v5, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v6, 0x0

    const v7, 0xf9df00

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move/from16 v10, p4

    move v11, v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    int-to-byte v3, v9

    move v10, v3

    move v11, v2

    goto :goto_0

    :cond_2
    aget-object v2, p1, p0

    add-int/lit8 v3, v13, 0x1e

    sub-int v4, p0, v11

    add-int/2addr v4, v12

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v14

    sget v5, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v6, 0x0

    const v7, 0xffffff

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_2

    :cond_3
    sget p0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 p0, p0, 0x168

    const/16 p1, 0xe

    sub-int p0, p0, p1

    const/16 p1, 0x3

    sub-int v5, p0, p1

    sget p0, Lcom/t4game/Defaults;->sfh:I

    mul-int v7, p4, p0

    move v2, v9

    move/from16 v3, p4

    move/from16 v4, p2

    move v6, v14

    move-object/from16 v8, p3

    invoke-static/range {v2 .. v8}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public static paintMenuInFullScreen(IIIILjava/lang/String;[Ljava/lang/String;ILjavax/microedition/lcdui/Graphics;ZB)V
    .locals 14

    move-object/from16 v0, p5

    array-length v0, v0

    move v10, v0

    move v0, v10

    move/from16 v1, p9

    if-le v0, v1, :cond_2

    add-int/lit8 v3, p6, 0x1

    move v0, v3

    move/from16 v1, p9

    if-le v0, v1, :cond_1

    add-int/lit8 v3, p6, 0x1

    sub-int v3, v3, p9

    int-to-byte v3, v3

    add-int v4, v3, p9

    int-to-byte v4, v4

    move v11, v4

    move v12, v3

    :goto_0
    const/4 v13, 0x0

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int v3, v3, p9

    sub-int p3, p3, v3

    shr-int/lit8 p3, p3, 0x1

    add-int p2, p2, p3

    sget p3, Lcom/t4game/Defaults;->sfh:I

    add-int p2, p2, p3

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget v7, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v8, Lcom/t4game/Defaults;->CANVAS_H:I

    move-object/from16 v3, p7

    move-object/from16 v4, p4

    invoke-static/range {v3 .. v8}, Lcom/t4game/DraftingUtil;->paintDialog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    sget p3, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 p4, 0x168

    sub-int p3, p3, p4

    shr-int/lit8 p3, p3, 0x1

    sput p3, Lcom/t4game/PointerUtil;->s_iMenuX:I

    sput p2, Lcom/t4game/PointerUtil;->s_iMenuY:I

    const/16 p3, 0x168

    sput p3, Lcom/t4game/PointerUtil;->s_iMenuWidth:I

    sget p3, Lcom/t4game/Defaults;->sfh:I

    sput p3, Lcom/t4game/PointerUtil;->s_iMenuSpace:I

    sget p3, Lcom/t4game/PointerUtil;->s_iMenuSpace:I

    sub-int p4, v11, v12

    mul-int p3, p3, p4

    sput p3, Lcom/t4game/PointerUtil;->s_iMenuHeight:I

    sput v12, Lcom/t4game/PointerUtil;->s_iMenuScrollIndex:I

    move/from16 p3, v12

    :goto_1
    move/from16 v0, p3

    move v1, v11

    if-ge v0, v1, :cond_4

    move/from16 v0, p6

    move/from16 v1, p3

    if-ne v0, v1, :cond_3

    if-eqz p8, :cond_0

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v3

    const/16 v4, 0x9

    sget p4, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v5, 0x168

    sub-int p4, p4, v5

    add-int/lit8 p4, p4, 0x3c

    shr-int/lit8 v5, p4, 0x1

    sub-int p4, p3, v12

    add-int p4, p4, v13

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int p4, p4, v6

    add-int v6, p2, p4

    const/16 v7, 0x12c

    sget v8, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v3 .. v8}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :cond_0
    aget-object v3, p5, p3

    sget v4, Lcom/t4game/Defaults;->CANVAS_WW:I

    sub-int p4, p3, v12

    add-int p4, p4, v13

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int p4, p4, v5

    add-int v5, p2, p4

    sget v6, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v7, 0x0

    const v8, 0xf9df00

    move-object/from16 v9, p7

    invoke-static/range {v3 .. v9}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    move/from16 v11, p9

    move v12, v3

    goto/16 :goto_0

    :cond_2
    const/4 v3, 0x0

    int-to-byte v4, v10

    move v11, v4

    move v12, v3

    goto/16 :goto_0

    :cond_3
    aget-object v3, p5, p3

    sget v4, Lcom/t4game/Defaults;->CANVAS_WW:I

    sub-int p4, p3, v12

    add-int p4, p4, v13

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int p4, p4, v5

    add-int v5, p2, p4

    sget v6, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v7, 0x0

    const v8, 0xffffff

    move-object/from16 v9, p7

    invoke-static/range {v3 .. v9}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_2

    :cond_4
    add-int v6, p0, p1

    sget p0, Lcom/t4game/Defaults;->sfh:I

    mul-int v8, p9, p0

    move v3, v10

    move/from16 v4, p9

    move/from16 v5, p6

    move/from16 v7, p2

    move-object/from16 v9, p7

    invoke-static/range {v3 .. v9}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    const-string p0, "\u786e\u5b9a"

    const-string p1, "\u8fd4\u56de"

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p7

    invoke-static {v0, v1, v2}, Lcom/t4game/DraftingUtil;->paintCommand_FullScreen(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public static final paintMissonBox(IIIILjavax/microedition/lcdui/Graphics;)V
    .locals 25

    sget-object v10, Lcom/t4game/Defaults;->MissionBox:Ljavax/microedition/lcdui/Image;

    if-nez v10, :cond_0

    const-string v10, "ui/box.png"

    invoke-static {v10}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v10

    :cond_0
    const/4 v11, 0x4

    const/4 v12, 0x4

    const/4 v13, 0x0

    move/from16 v23, v13

    :goto_0
    const/16 v13, 0x8

    sub-int v13, p2, v13

    shr-int/lit8 v13, v13, 0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v23

    move v1, v13

    if-ge v0, v1, :cond_2

    const/4 v13, 0x0

    move/from16 v24, v13

    :goto_1
    const/16 v13, 0x8

    sub-int v13, p3, v13

    shr-int/lit8 v13, v13, 0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v24

    move v1, v13

    if-ge v0, v1, :cond_1

    const/4 v13, 0x2

    const/4 v14, 0x2

    const/4 v15, 0x0

    add-int v16, p0, v11

    shl-int/lit8 v17, v23, 0x1

    add-int v16, v16, v17

    add-int v17, p1, v12

    shl-int/lit8 v18, v24, 0x1

    add-int v17, v17, v18

    sget v18, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v0, p4

    move-object v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    const/4 v15, 0x0

    const/16 v18, 0x2

    const/16 v19, 0x0

    add-int v13, p1, v12

    shl-int/lit8 v14, v24, 0x1

    add-int v21, v13, v14

    sget v22, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v13, p4

    move-object v14, v10

    move/from16 v16, v12

    move/from16 v17, v11

    move/from16 v20, p0

    invoke-static/range {v13 .. v22}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    const/4 v15, 0x6

    const/16 v18, 0x2

    const/16 v19, 0x0

    add-int v13, p0, p2

    sub-int v20, v13, v11

    add-int v13, p1, v12

    shl-int/lit8 v14, v24, 0x1

    add-int v21, v13, v14

    sget v22, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v13, p4

    move-object v14, v10

    move/from16 v16, v12

    move/from16 v17, v11

    invoke-static/range {v13 .. v22}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    add-int/lit8 v13, v24, 0x1

    move/from16 v24, v13

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    const/16 v17, 0x2

    const/16 v19, 0x0

    add-int v13, p0, v11

    shl-int/lit8 v14, v23, 0x1

    add-int v20, v13, v14

    sget v22, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v13, p4

    move-object v14, v10

    move v15, v11

    move/from16 v18, v12

    move/from16 v21, p1

    invoke-static/range {v13 .. v22}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    const/16 v16, 0x6

    const/16 v17, 0x2

    const/16 v19, 0x0

    add-int v13, p0, v11

    shl-int/lit8 v14, v23, 0x1

    add-int v20, v13, v14

    add-int v13, p1, p3

    sub-int v21, v13, v12

    sget v22, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v13, p4

    move-object v14, v10

    move v15, v11

    move/from16 v18, v12

    invoke-static/range {v13 .. v22}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    add-int/lit8 v13, v23, 0x1

    move/from16 v23, v13

    goto/16 :goto_0

    :cond_2
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v19, 0x0

    sget v22, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v13, p4

    move-object v14, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move/from16 v20, p0

    move/from16 v21, p1

    invoke-static/range {v13 .. v22}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    const/4 v15, 0x6

    const/16 v16, 0x0

    const/16 v19, 0x0

    sub-int v13, p0, v11

    add-int v20, v13, p2

    sget v22, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v13, p4

    move-object v14, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move/from16 v21, p1

    invoke-static/range {v13 .. v22}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    const/4 v15, 0x0

    const/16 v16, 0x6

    const/16 v19, 0x0

    add-int v13, p1, p3

    sub-int v21, v13, v12

    sget v22, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v13, p4

    move-object v14, v10

    move/from16 v17, v11

    move/from16 v18, v12

    move/from16 v20, p0

    invoke-static/range {v13 .. v22}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    const/4 v15, 0x6

    const/16 v16, 0x6

    const/16 v19, 0x0

    sub-int p0, p0, v11

    add-int v20, p0, p2

    add-int p0, p1, p3

    sub-int v21, p0, v12

    sget v22, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v13, p4

    move-object v14, v10

    move/from16 v17, v11

    move/from16 v18, v12

    invoke-static/range {v13 .. v22}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    return-void
.end method

.method public static final paintMissonFont(IIBLjavax/microedition/lcdui/Graphics;)V
    .locals 19

    sget-object v10, Lcom/t4game/Defaults;->MissionFont:Ljavax/microedition/lcdui/Image;

    if-nez v10, :cond_0

    const-string v10, "ui/MissionFont.png"

    invoke-static {v10}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v10

    :cond_0
    if-nez p2, :cond_2

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result p2

    shr-int/lit8 v13, p2, 0x2

    invoke-virtual {v10}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v14

    const/4 v15, 0x0

    sget v18, Lcom/t4game/Defaults;->TOP_LEFT:I

    move/from16 v16, p0

    move/from16 v17, p1

    move-object/from16 v0, p3

    move-object v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    invoke-virtual {v10}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result p2

    shr-int/lit8 v11, p2, 0x1

    const/4 v12, 0x0

    invoke-virtual {v10}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result p2

    shr-int/lit8 v13, p2, 0x1

    invoke-virtual {v10}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v10}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result p2

    shr-int/lit8 p2, p2, 0x2

    add-int v16, p0, p2

    sget v18, Lcom/t4game/Defaults;->TOP_LEFT:I

    move/from16 v17, p1

    move-object/from16 v0, p3

    move-object v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v11, 0x2

    move/from16 v0, p2

    move v1, v11

    if-ne v0, v1, :cond_1

    invoke-virtual {v10}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result p2

    shr-int/lit8 v11, p2, 0x2

    const/4 v12, 0x0

    invoke-virtual {v10}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result p2

    shr-int/lit8 p2, p2, 0x2

    mul-int/lit8 v13, p2, 0x3

    invoke-virtual {v10}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v14

    const/4 v15, 0x0

    sget v18, Lcom/t4game/Defaults;->TOP_LEFT:I

    move/from16 v16, p0

    move/from16 v17, p1

    move-object/from16 v0, p3

    move-object v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_0
.end method

.method public static paintMoney(Ljavax/microedition/lcdui/Graphics;JIIZZ)V
    .locals 17

    sget-object v0, Lcom/t4game/Defaults;->moneyCoin:Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/t4game/Defaults;->createMoneyIcon(Z)V

    :cond_0
    const/4 v8, 0x0

    const-wide/16 v0, 0x2710

    div-long v9, p1, v0

    const-wide/16 v0, 0x2710

    mul-long/2addr v0, v9

    sub-long p1, p1, v0

    const-wide/16 v0, 0x64

    div-long v11, p1, v0

    const-wide/16 v0, 0x64

    mul-long/2addr v0, v11

    sub-long p1, p1, v0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v3, v9, v3

    if-ltz v3, :cond_13

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v0

    if-eqz p5, :cond_13

    add-int/lit8 v3, v0, 0xc

    sub-int v3, p3, v3

    move v13, v0

    move v0, v3

    :goto_0
    const-wide/16 v3, 0x0

    cmp-long v3, v11, v3

    if-ltz v3, :cond_12

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v1

    if-eqz p5, :cond_12

    add-int/lit8 v3, v1, 0xc

    sub-int/2addr v0, v3

    move v14, v1

    :goto_1
    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-ltz v1, :cond_11

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v1

    if-eqz p5, :cond_10

    add-int/lit8 v2, v1, 0xc

    sub-int/2addr v0, v2

    move v15, v1

    move v1, v0

    :goto_2
    const/16 v16, 0x3

    const-wide/16 v2, 0x0

    cmp-long v0, v9, v2

    if-ltz v0, :cond_1

    if-eqz p6, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v0, v9, v2

    if-gtz v0, :cond_3

    add-int/lit8 v0, v13, 0xc

    move v8, v0

    :cond_1
    :goto_3
    const-wide/16 v0, 0x0

    cmp-long v0, v11, v0

    if-ltz v0, :cond_8

    if-eqz p6, :cond_4

    const-wide/16 v0, 0x0

    cmp-long p6, v9, v0

    if-gtz p6, :cond_4

    const-wide/16 v0, 0x0

    cmp-long p6, v11, v0

    if-gtz p6, :cond_4

    add-int/lit8 p6, v14, 0xc

    add-int p6, p6, v8

    :goto_4
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    if-eqz p5, :cond_b

    sub-int p5, p3, v15

    const/16 v0, 0xc

    sub-int p5, p5, v0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sub-int v1, p5, p6

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffffff

    move/from16 v2, p4

    move-object/from16 v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->moneyCoin:Ljavax/microedition/lcdui/Image;

    const/16 p1, 0xc

    sub-int p1, p3, p1

    sub-int v1, p1, p6

    add-int v2, p4, v16

    const/16 v3, 0x18

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/16 v6, 0xc

    move-object/from16 v7, p0

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_2
    :goto_5
    return-void

    :cond_3
    add-int v7, v1, v13

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffffff

    move/from16 v2, p4

    move-object/from16 v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->moneyCoin:Ljavax/microedition/lcdui/Image;

    add-int v2, p4, v16

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/16 v6, 0xc

    move v1, v7

    move-object/from16 v7, p0

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_3

    :cond_4
    if-eqz p5, :cond_7

    sub-int p6, p3, v15

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_5

    const/16 v0, 0xc

    :goto_6
    sub-int p6, p6, v0

    sub-int p6, p6, v14

    const/16 v0, 0xc

    sub-int p6, p6, v0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sub-int v1, p6, v8

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffffff

    move/from16 v2, p4

    move-object/from16 v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->moneyCoin:Ljavax/microedition/lcdui/Image;

    sub-int p6, p3, v15

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-ltz v1, :cond_6

    const/16 v1, 0xc

    :goto_7
    sub-int p6, p6, v1

    const/16 v1, 0xc

    sub-int p6, p6, v1

    sub-int v1, p6, v8

    add-int v2, p4, v16

    const/16 v3, 0xc

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/16 v6, 0xc

    move-object/from16 v7, p0

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    move/from16 p6, v8

    goto/16 :goto_4

    :cond_5
    const/4 v0, 0x0

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    goto :goto_7

    :cond_7
    add-int p6, p3, v13

    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-ltz v0, :cond_9

    const/16 v0, 0xc

    :goto_8
    add-int p6, p6, v0

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sub-int v1, p6, v8

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffffff

    move/from16 v2, p4

    move-object/from16 v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->moneyCoin:Ljavax/microedition/lcdui/Image;

    add-int p6, p3, v13

    add-int p6, p6, v14

    const-wide/16 v1, 0x0

    cmp-long v1, v9, v1

    if-ltz v1, :cond_a

    const/16 v1, 0xc

    :goto_9
    add-int p6, p6, v1

    sub-int v1, p6, v8

    add-int v2, p4, v16

    const/16 v3, 0xc

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/16 v6, 0xc

    move-object/from16 v7, p0

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_8
    move/from16 p6, v8

    goto/16 :goto_4

    :cond_9
    const/4 v0, 0x0

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    goto :goto_9

    :cond_b
    add-int p5, p3, v13

    const-wide/16 v0, 0x0

    cmp-long v0, v9, v0

    if-ltz v0, :cond_c

    const/16 v0, 0xc

    :goto_a
    add-int p5, p5, v0

    add-int p5, p5, v14

    const-wide/16 v0, 0x0

    cmp-long v0, v11, v0

    if-ltz v0, :cond_d

    const/16 v0, 0xc

    :goto_b
    add-int p5, p5, v0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    sub-int v1, p5, p6

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffffff

    move/from16 v2, p4

    move-object/from16 v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v0, Lcom/t4game/Defaults;->moneyCoin:Ljavax/microedition/lcdui/Image;

    add-int p1, p3, v13

    const-wide/16 p2, 0x0

    cmp-long p2, v9, p2

    if-ltz p2, :cond_e

    const/16 p2, 0xc

    :goto_c
    add-int p1, p1, p2

    add-int p1, p1, v14

    const-wide/16 p2, 0x0

    cmp-long p2, v11, p2

    if-ltz p2, :cond_f

    const/16 p2, 0xc

    :goto_d
    add-int p1, p1, p2

    add-int p1, p1, v15

    sub-int v1, p1, p6

    add-int v2, p4, v16

    const/16 v3, 0x18

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/16 v6, 0xc

    move-object/from16 v7, p0

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_5

    :cond_c
    const/4 v0, 0x0

    goto :goto_a

    :cond_d
    const/4 v0, 0x0

    goto :goto_b

    :cond_e
    const/16 p2, 0x0

    goto :goto_c

    :cond_f
    const/16 p2, 0x0

    goto :goto_d

    :cond_10
    move v15, v1

    move v1, v0

    goto/16 :goto_2

    :cond_11
    move v1, v0

    move v15, v2

    goto/16 :goto_2

    :cond_12
    move v14, v1

    goto/16 :goto_1

    :cond_13
    move v13, v0

    move/from16 v0, p3

    goto/16 :goto_0
.end method

.method public static paintMoneyInScrollType(Ljavax/microedition/lcdui/Graphics;JIIIIIZ)I
    .locals 19

    sget p7, Lcom/t4game/GameWorld;->tickCounter:I

    sget-object v5, Lcom/t4game/Defaults;->moneyCoin:Ljavax/microedition/lcdui/Image;

    if-nez v5, :cond_0

    const/4 v5, 0x1

    invoke-static {v5}, Lcom/t4game/Defaults;->createMoneyIcon(Z)V

    :cond_0
    const-wide/16 v5, 0x2710

    div-long v8, p1, v5

    const-wide/16 v5, 0x2710

    mul-long/2addr v5, v8

    sub-long p1, p1, v5

    const-wide/16 v5, 0x64

    div-long v13, p1, v5

    const-wide/16 v5, 0x64

    mul-long/2addr v5, v13

    sub-long p1, p1, v5

    const/16 v15, 0xc

    const/16 v16, 0xc

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    cmp-long v11, v8, v11

    if-ltz v11, :cond_9

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v5

    add-int v11, v5, v15

    add-int/2addr v10, v11

    move v12, v5

    move v5, v10

    :goto_0
    const-wide/16 v10, 0x0

    cmp-long v10, v13, v10

    if-ltz v10, :cond_8

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v6

    add-int v10, v6, v15

    add-int/2addr v5, v10

    move/from16 v17, v6

    :goto_1
    const-wide/16 v10, 0x0

    cmp-long v6, p1, v10

    if-ltz v6, :cond_7

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v6

    add-int v7, v6, v15

    add-int/2addr v5, v7

    move/from16 v18, v6

    :goto_2
    const/4 v7, 0x2

    add-int v6, p3, v15

    shl-int/lit8 v10, v15, 0x1

    sub-int v10, p5, v10

    if-le v5, v10, :cond_4

    shl-int/lit8 v10, v15, 0x1

    add-int/lit8 v5, v5, 0x18

    sub-int v5, v5, p5

    :goto_3
    if-eqz p8, :cond_6

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    if-eqz v5, :cond_5

    rem-int p3, p7, v5

    :goto_4
    sub-int v6, v6, p3

    add-int v7, v7, p4

    const-wide/16 p4, 0x0

    cmp-long p4, v8, p4

    if-ltz p4, :cond_1

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    sget v8, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v9, -0x1

    const v10, 0xffffff

    move-object/from16 v11, p0

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/2addr v6, v12

    sget-object v5, Lcom/t4game/Defaults;->moneyCoin:Ljavax/microedition/lcdui/Image;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v15

    move/from16 v11, v16

    move-object/from16 v12, p0

    invoke-static/range {v5 .. v12}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    add-int p4, v6, v15

    move/from16 v6, p4

    :cond_1
    const-wide/16 p4, 0x0

    cmp-long p4, v13, p4

    if-ltz p4, :cond_2

    invoke-static {v13, v14}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    sget v8, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v9, -0x1

    const v10, 0xffffff

    move-object/from16 v11, p0

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int v6, v6, v17

    sget-object v5, Lcom/t4game/Defaults;->moneyCoin:Ljavax/microedition/lcdui/Image;

    const/4 v9, 0x0

    move v8, v15

    move v10, v15

    move/from16 v11, v16

    move-object/from16 v12, p0

    invoke-static/range {v5 .. v12}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    add-int p4, v6, v15

    move/from16 v6, p4

    :cond_2
    const-wide/16 p4, 0x0

    cmp-long p4, p1, p4

    if-ltz p4, :cond_3

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    sget v8, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v9, -0x1

    const v10, 0xffffff

    move-object/from16 v11, p0

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int v6, v6, v18

    sget-object v5, Lcom/t4game/Defaults;->moneyCoin:Ljavax/microedition/lcdui/Image;

    shl-int/lit8 v8, v15, 0x1

    const/4 v9, 0x0

    move v10, v15

    move/from16 v11, v16

    move-object/from16 v12, p0

    invoke-static/range {v5 .. v12}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    add-int p1, v6, v15

    :cond_3
    const/16 p1, 0x0

    const/16 p2, 0x0

    sget p4, Lcom/t4game/Defaults;->CANVAS_W:I

    sget p5, Lcom/t4game/Defaults;->CANVAS_H:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    return p3

    :cond_4
    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_5
    const/16 p3, 0x0

    goto/16 :goto_4

    :cond_6
    move/from16 p3, p7

    goto/16 :goto_4

    :cond_7
    move/from16 v18, v7

    goto/16 :goto_2

    :cond_8
    move/from16 v17, v6

    goto/16 :goto_1

    :cond_9
    move v12, v5

    move v5, v10

    goto/16 :goto_0
.end method

.method public static paintOtherMoney(IIIBLjavax/microedition/lcdui/Graphics;)V
    .locals 15

    sget-object v2, Lcom/t4game/Defaults;->moneyCoin:Ljavax/microedition/lcdui/Image;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/t4game/Defaults;->createMoneyIcon(Z)V

    :cond_0
    if-eqz p3, :cond_1

    const/4 v2, 0x1

    move/from16 v0, p3

    move v1, v2

    if-ne v0, v1, :cond_6

    :cond_1
    div-int/lit8 v2, p0, 0x64

    int-to-long v10, v2

    int-to-long v2, p0

    const-wide/16 v4, 0x64

    mul-long/2addr v4, v10

    sub-long/2addr v2, v4

    long-to-int p0, v2

    int-to-long v12, p0

    const/4 p0, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v3, v10, v3

    if-lez v3, :cond_2

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result p0

    :cond_2
    const-wide/16 v3, 0x0

    cmp-long v3, v12, v3

    if-ltz v3, :cond_7

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v2

    move v14, v2

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-lez v2, :cond_3

    add-int v9, p1, p0

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    sget v5, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v6, -0x1

    const v7, 0xffffff

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v8, p4

    invoke-static/range {v2 .. v8}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v2, Lcom/t4game/Defaults;->moneyCoin:Ljavax/microedition/lcdui/Image;

    add-int/lit8 v4, p2, 0x3

    mul-int/lit8 v3, p3, 0x2

    add-int/lit8 v3, v3, 0x3

    mul-int/lit8 v5, v3, 0xc

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/16 v8, 0xc

    move v3, v9

    move-object/from16 v9, p4

    invoke-static/range {v2 .. v9}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_3
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-ltz v2, :cond_4

    add-int p0, p0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v10, v2

    if-lez p1, :cond_5

    const/16 p1, 0xc

    :goto_1
    add-int v3, p0, p1

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    sget v5, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v6, -0x1

    const v7, 0xffffff

    move/from16 v4, p2

    move-object/from16 v8, p4

    invoke-static/range {v2 .. v8}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v2, Lcom/t4game/Defaults;->moneyCoin:Ljavax/microedition/lcdui/Image;

    add-int/2addr v3, v14

    add-int/lit8 v4, p2, 0x3

    mul-int/lit8 p0, p3, 0x2

    add-int/lit8 p0, p0, 0x3

    add-int/lit8 p0, p0, 0x1

    mul-int/lit8 v5, p0, 0xc

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/16 v8, 0xc

    move-object/from16 v9, p4

    invoke-static/range {v2 .. v9}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    const/16 p1, 0x0

    goto :goto_1

    :cond_6
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget v5, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v6, -0x1

    const v7, 0xffffff

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v8, p4

    invoke-static/range {v2 .. v8}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v2, Lcom/t4game/Defaults;->moneyCoin:Ljavax/microedition/lcdui/Image;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result p0

    add-int v3, p1, p0

    add-int/lit8 v4, p2, 0x3

    const/16 v5, 0x54

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/16 v8, 0xc

    move-object/from16 v9, p4

    invoke-static/range {v2 .. v9}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_2

    :cond_7
    move v14, v2

    goto/16 :goto_0
.end method

.method public static paintPageNumberAndTriangle(Ljavax/microedition/lcdui/Graphics;IIIIIZ)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v4, 0x0

    const v5, 0xffc700

    move v1, p4

    move v2, p5

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-eqz p6, :cond_2

    const/16 v0, 0x17

    sub-int v1, p4, v0

    add-int/lit8 v2, p5, 0x6

    const/4 v3, 0x0

    const v5, 0xffc700

    move-object v0, p0

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintTriangleAnimation(Ljavax/microedition/lcdui/Graphics;IIBII)V

    :cond_0
    :goto_0
    add-int/lit8 p1, p1, 0x1

    if-eq p1, p2, :cond_1

    if-eqz p6, :cond_3

    add-int/lit8 v1, p4, 0x14

    add-int/lit8 v2, p5, 0x6

    const/4 v3, 0x1

    const v5, 0xffc700

    move-object v0, p0

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintTriangleAnimation(Ljavax/microedition/lcdui/Graphics;IIBII)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/16 v0, 0x14

    sub-int v1, p4, v0

    add-int/lit8 v2, p5, 0x6

    const/4 v3, 0x2

    const v5, 0xffc700

    move-object v0, p0

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintTriangleAnimation(Ljavax/microedition/lcdui/Graphics;IIBII)V

    goto :goto_0

    :cond_3
    add-int/lit8 v1, p4, 0x14

    add-int/lit8 v2, p5, 0x6

    const/4 v3, 0x3

    const v5, 0xffc700

    move-object v0, p0

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintTriangleAnimation(Ljavax/microedition/lcdui/Graphics;IIBII)V

    goto :goto_1
.end method

.method public static paintPageUpDownFlag(IILjavax/microedition/lcdui/Graphics;III)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_0

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int v1, p1, p5

    invoke-static {v0, v1, v3, p2}, Lcom/t4game/DraftingUtil;->paintTriangle(IIZLjavax/microedition/lcdui/Graphics;)V

    :goto_0
    return-void

    :cond_0
    sub-int v0, p4, v2

    if-ne p3, v0, :cond_1

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int v1, p0, p5

    invoke-static {v0, v1, v2, p2}, Lcom/t4game/DraftingUtil;->paintTriangle(IIZLjavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int v1, p1, p5

    invoke-static {v0, v1, v3, p2}, Lcom/t4game/DraftingUtil;->paintTriangle(IIZLjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int v1, p0, p5

    invoke-static {v0, v1, v2, p2}, Lcom/t4game/DraftingUtil;->paintTriangle(IIZLjavax/microedition/lcdui/Graphics;)V

    goto :goto_0
.end method

.method public static paintReading(ILjavax/microedition/lcdui/Graphics;)V
    .locals 24

    const/16 v19, 0x9

    const/16 v14, 0x9

    const/16 v15, 0xa

    div-int/lit8 v17, v19, 0x2

    mul-int v10, v19, v15

    mul-int/lit8 v10, v10, 0x2

    move/from16 v0, v19

    add-int/lit16 v0, v0, 0xb4

    move/from16 v20, v0

    const/16 v10, 0x11

    sget v11, Lcom/t4game/Defaults;->CANVAS_WW:I

    div-int/lit8 v12, v20, 0x2

    sub-int v21, v11, v12

    sget v11, Lcom/t4game/Defaults;->CANVAS_HH:I

    add-int/lit8 v16, v11, 0x3

    const/16 v13, 0x22

    const v11, 0x62832

    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v11, Lcom/t4game/Defaults;->CANVAS_HH:I

    move-object/from16 v0, p1

    move/from16 v1, v21

    move v2, v11

    move/from16 v3, v20

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    mul-int/lit8 v11, v15, 0x4

    rem-int p0, p0, v11

    div-int v22, p0, v15

    const/4 v11, 0x1

    move/from16 v0, v22

    move v1, v11

    if-gt v0, v1, :cond_1

    sget v11, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget v12, Lcom/t4game/Defaults;->CANVAS_HH:I

    div-int/lit8 v18, v20, 0x2

    move-object/from16 v0, p1

    move v1, v11

    move v2, v12

    move/from16 v3, v18

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    :goto_0
    if-nez v22, :cond_2

    sget-object v10, Lcom/t4game/Defaults;->scrollball:Ljavax/microedition/lcdui/Image;

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v15, Lcom/t4game/Defaults;->CANVAS_WW:I

    mul-int p0, p0, v19

    add-int p0, p0, v15

    add-int p0, p0, v17

    sub-int p0, p0, v13

    add-int v15, p0, v19

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    :cond_0
    :goto_1
    const/16 p0, 0x0

    const/4 v10, 0x0

    sget v11, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v12, Lcom/t4game/Defaults;->CANVAS_H:I

    move-object/from16 v0, p1

    move/from16 v1, p0

    move v2, v10

    move v3, v11

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    const/16 p0, 0x1

    move/from16 v0, v22

    move/from16 v1, p0

    if-gt v0, v1, :cond_5

    sget-object v10, Lcom/t4game/Defaults;->scrollball:Ljavax/microedition/lcdui/Image;

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget p0, Lcom/t4game/Defaults;->CANVAS_WW:I

    div-int/lit8 v13, v19, 0x2

    sub-int p0, p0, v13

    add-int/lit8 v15, p0, 0x4

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v13, v19

    move-object/from16 v0, p1

    move-object v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    :goto_2
    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v10

    const/16 v11, 0x19

    const/16 p0, 0x8

    sub-int v12, v21, p0

    sget v13, Lcom/t4game/Defaults;->CANVAS_HH:I

    add-int/lit8 v14, v20, 0x10

    const/16 v15, 0x14

    invoke-virtual/range {v10 .. v15}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    return-void

    :cond_1
    sget v11, Lcom/t4game/Defaults;->CANVAS_HH:I

    div-int/lit8 v12, v20, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v21

    move v2, v11

    move v3, v12

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto/16 :goto_0

    :cond_2
    const/4 v10, 0x1

    move/from16 v0, v22

    move v1, v10

    if-ne v0, v1, :cond_3

    sget-object v10, Lcom/t4game/Defaults;->scrollball:Ljavax/microedition/lcdui/Image;

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v18, Lcom/t4game/Defaults;->CANVAS_WW:I

    mul-int/lit8 v15, v15, 0x2

    sub-int p0, v15, p0

    const/4 v15, 0x1

    sub-int p0, p0, v15

    mul-int p0, p0, v19

    add-int p0, p0, v18

    add-int v15, p0, v17

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    goto/16 :goto_1

    :cond_3
    const/4 v10, 0x2

    move/from16 v0, v22

    move v1, v10

    if-ne v0, v1, :cond_4

    sget-object v10, Lcom/t4game/Defaults;->scrollball:Ljavax/microedition/lcdui/Image;

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v18, Lcom/t4game/Defaults;->CANVAS_WW:I

    mul-int v15, v15, v22

    sub-int p0, p0, v15

    add-int/lit8 p0, p0, 0x1

    mul-int p0, p0, v19

    sub-int p0, v18, p0

    sub-int v15, p0, v17

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    goto/16 :goto_1

    :cond_4
    const/4 v10, 0x3

    move/from16 v0, v22

    move v1, v10

    if-ne v0, v1, :cond_0

    sget-object v10, Lcom/t4game/Defaults;->scrollball:Ljavax/microedition/lcdui/Image;

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget v18, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/lit8 v23, v22, 0x1

    mul-int v15, v15, v23

    sub-int p0, v15, p0

    mul-int p0, p0, v19

    sub-int p0, v18, p0

    sub-int p0, p0, v17

    sub-int p0, p0, v13

    add-int v15, p0, v19

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    goto/16 :goto_1

    :cond_5
    sget-object v10, Lcom/t4game/Defaults;->scrollball:Ljavax/microedition/lcdui/Image;

    const/4 v11, 0x0

    const/4 v12, 0x0

    sget p0, Lcom/t4game/Defaults;->CANVAS_WW:I

    div-int/lit8 v13, v19, 0x2

    sub-int p0, p0, v13

    const/4 v13, 0x4

    sub-int v15, p0, v13

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v13, v19

    move-object/from16 v0, p1

    move-object v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIZZ)V

    goto/16 :goto_2
.end method

.method public static paintScrollScreenMenu(SSS[Ljava/lang/String;BLjavax/microedition/lcdui/Graphics;BZ)V
    .locals 16

    move-object/from16 v0, p3

    array-length v0, v0

    move v12, v0

    move v0, v12

    move/from16 v1, p6

    if-le v0, v1, :cond_3

    add-int/lit8 v2, p4, 0x1

    move v0, v2

    move/from16 v1, p6

    if-le v0, v1, :cond_2

    add-int/lit8 v2, p4, 0x1

    sub-int v2, v2, p6

    int-to-byte v2, v2

    add-int v3, v2, p6

    if-le v3, v12, :cond_0

    sub-int v2, v12, p6

    int-to-byte v2, v2

    :cond_0
    add-int v3, v2, p6

    int-to-byte v3, v3

    move v13, v3

    move v14, v2

    :goto_0
    add-int/lit8 v2, p0, 0x3

    sput v2, Lcom/t4game/PointerUtil;->s_iMenuX:I

    add-int/lit8 v2, p1, 0xa

    sput v2, Lcom/t4game/PointerUtil;->s_iMenuY:I

    sput p2, Lcom/t4game/PointerUtil;->s_iMenuWidth:I

    sget v2, Lcom/t4game/Defaults;->sfh:I

    sput v2, Lcom/t4game/PointerUtil;->s_iMenuSpace:I

    sub-int v2, v13, v14

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v2, v3

    sput v2, Lcom/t4game/PointerUtil;->s_iMenuHeight:I

    sput v14, Lcom/t4game/PointerUtil;->s_iMenuScrollIndex:I

    const/16 v2, 0xe

    sub-int p2, p2, v2

    move/from16 v0, p2

    int-to-short v0, v0

    move/from16 p2, v0

    move v15, v14

    :goto_1
    if-ge v15, v13, :cond_7

    aget-object v2, p3, v15

    invoke-static {v2}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v8

    move/from16 v0, p4

    move v1, v15

    if-ne v0, v1, :cond_5

    if-eqz p7, :cond_1

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v2

    const/16 v3, 0xa

    add-int/lit8 v4, p0, 0x3

    add-int/lit8 v5, p1, 0xc

    sub-int v6, v15, v14

    sget v7, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/lit8 v6, p2, 0x6

    sget v7, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v2 .. v7}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :cond_1
    move v0, v8

    move/from16 v1, p2

    if-le v0, v1, :cond_4

    aget-object v3, p3, v15

    add-int/lit8 v4, p0, 0xa

    add-int/lit8 v2, p1, 0xc

    sub-int v5, v15, v14

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v6

    add-int/2addr v5, v2

    const/16 v2, 0xe

    sub-int v2, p2, v2

    const/16 v6, 0x19

    sub-int v6, v2, v6

    sget v7, Lcom/t4game/Defaults;->sfh:I

    const/16 v8, 0xa

    const/4 v9, -0x1

    const v10, 0xf9df00

    const/4 v11, 0x1

    move-object/from16 v2, p5

    invoke-static/range {v2 .. v11}, Lcom/t4game/DraftingUtil;->paintStringInScrollType(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIIIZ)V

    :goto_2
    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    move/from16 v13, p6

    move v14, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    int-to-byte v3, v12

    move v13, v3

    move v14, v2

    goto :goto_0

    :cond_4
    aget-object v2, p3, v15

    add-int/lit8 v3, p0, 0xa

    add-int/lit8 v4, p1, 0xa

    sub-int v5, v15, v14

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    const/16 v5, 0x14

    const/4 v6, -0x1

    const v7, 0xf9df00

    move-object/from16 v8, p5

    invoke-static/range {v2 .. v8}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_2

    :cond_5
    move v0, v8

    move/from16 v1, p2

    if-le v0, v1, :cond_6

    aget-object v3, p3, v15

    add-int/lit8 v4, p0, 0xa

    add-int/lit8 v2, p1, 0xc

    sub-int v5, v15, v14

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v6

    add-int/2addr v5, v2

    const/16 v2, 0xe

    sub-int v2, p2, v2

    const/16 v6, 0x19

    sub-int v6, v2, v6

    sget v7, Lcom/t4game/Defaults;->sfh:I

    const/16 v8, 0xa

    const/4 v9, -0x1

    const v10, 0xffffff

    const/4 v11, 0x1

    move-object/from16 v2, p5

    invoke-static/range {v2 .. v11}, Lcom/t4game/DraftingUtil;->paintStringInScrollType(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIIIZ)V

    goto :goto_2

    :cond_6
    aget-object v2, p3, v15

    add-int/lit8 v3, p0, 0xa

    add-int/lit8 v4, p1, 0xa

    sub-int v5, v15, v14

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    const/16 v5, 0x14

    const/4 v6, -0x1

    const v7, 0xffffff

    move-object/from16 v8, p5

    invoke-static/range {v2 .. v8}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_2

    :cond_7
    add-int p0, p0, p2

    const/16 p2, 0x5

    sub-int v5, p0, p2

    add-int/lit8 v6, p1, 0xa

    sget p0, Lcom/t4game/Defaults;->sfh:I

    mul-int v7, p6, p0

    move v2, v12

    move/from16 v3, p6

    move/from16 v4, p4

    move-object/from16 v8, p5

    invoke-static/range {v2 .. v8}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public static paintScrollScreenMenu(SS[Ljava/lang/String;BLjavax/microedition/lcdui/Graphics;BZ)V
    .locals 13

    array-length v9, p2

    move v0, v9

    move/from16 v1, p5

    if-le v0, v1, :cond_3

    add-int/lit8 v2, p3, 0x2

    move v0, v2

    move/from16 v1, p5

    if-le v0, v1, :cond_2

    add-int/lit8 v2, p3, 0x2

    sub-int v2, v2, p5

    int-to-byte v2, v2

    add-int v3, v2, p5

    if-le v3, v9, :cond_0

    sub-int v2, v9, p5

    int-to-byte v2, v2

    :cond_0
    add-int v3, v2, p5

    int-to-byte v3, v3

    move v10, v3

    move v11, v2

    :goto_0
    add-int/lit8 v2, p0, 0x3

    sput v2, Lcom/t4game/PointerUtil;->s_iMenuX:I

    add-int/lit8 v2, p1, 0xa

    sput v2, Lcom/t4game/PointerUtil;->s_iMenuY:I

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    shl-int/lit8 v3, p0, 0x1

    sub-int/2addr v2, v3

    sput v2, Lcom/t4game/PointerUtil;->s_iMenuWidth:I

    sget v2, Lcom/t4game/Defaults;->sfh:I

    sput v2, Lcom/t4game/PointerUtil;->s_iMenuSpace:I

    sub-int v2, v10, v11

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v2, v3

    sput v2, Lcom/t4game/PointerUtil;->s_iMenuHeight:I

    sput v11, Lcom/t4game/PointerUtil;->s_iMenuScrollIndex:I

    move v12, v11

    :goto_1
    if-ge v12, v10, :cond_5

    move/from16 v0, p3

    move v1, v12

    if-ne v0, v1, :cond_4

    if-eqz p6, :cond_1

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v2

    const/16 v3, 0xa

    add-int/lit8 v4, p0, 0x3

    add-int/lit8 v5, p1, 0xc

    sub-int v6, v12, v11

    sget v7, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    sget v6, Lcom/t4game/Defaults;->CANVAS_W:I

    shl-int/lit8 v7, p0, 0x1

    sub-int/2addr v6, v7

    sget v7, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual/range {v2 .. v7}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :cond_1
    aget-object v2, p2, v12

    add-int/lit8 v3, p0, 0xa

    add-int/lit8 v4, p1, 0xa

    sub-int v5, v12, v11

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    const/16 v5, 0x14

    const/4 v6, -0x1

    const v7, 0xf9df00

    move-object/from16 v8, p4

    invoke-static/range {v2 .. v8}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_2
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    move/from16 v10, p5

    move v11, v2

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    int-to-byte v3, v9

    move v10, v3

    move v11, v2

    goto :goto_0

    :cond_4
    aget-object v2, p2, v12

    add-int/lit8 v3, p0, 0xa

    add-int/lit8 v4, p1, 0xa

    sub-int v5, v12, v11

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    const/16 v5, 0x14

    const/4 v6, -0x1

    const v7, 0xffffff

    move-object/from16 v8, p4

    invoke-static/range {v2 .. v8}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_2

    :cond_5
    sget p0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 p0, p0, 0x168

    const/16 p2, 0xe

    sub-int/2addr p0, p2

    const/4 p2, 0x5

    sub-int v5, p0, p2

    add-int/lit8 v6, p1, 0xa

    sget p0, Lcom/t4game/Defaults;->sfh:I

    mul-int v7, p5, p0

    move v2, v9

    move/from16 v3, p5

    move/from16 v4, p3

    move-object/from16 v8, p4

    invoke-static/range {v2 .. v8}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public static paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 9

    const/4 v4, -0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x1e

    const/16 v1, 0x28

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v2, p0}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v5, p3, -0x5

    if-le v2, v5, :cond_8

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {p0, v5, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v2

    move v5, v3

    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    aget-object v7, v2, v3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    div-int/lit8 v7, v7, 0x3

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_6

    sget-boolean v6, Lcom/t4game/DraftingUtil;->isScroll:Z

    if-eqz v6, :cond_5

    sget v6, Lcom/t4game/DraftingUtil;->strIndex:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    aget-object v8, v2, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    div-int/lit8 v8, v8, 0x3

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_3

    sget v6, Lcom/t4game/DraftingUtil;->tick:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Lcom/t4game/DraftingUtil;->tick:I

    if-le v6, v0, :cond_2

    sget v6, Lcom/t4game/DraftingUtil;->strIndex:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/t4game/DraftingUtil;->strIndex:I

    sput v3, Lcom/t4game/DraftingUtil;->tick:I

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    sget v6, Lcom/t4game/DraftingUtil;->strIndex:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    aget-object v8, v2, v3

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    div-int/lit8 v8, v8, 0x3

    sub-int/2addr v7, v8

    if-ne v6, v7, :cond_4

    sget v6, Lcom/t4game/DraftingUtil;->tick:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Lcom/t4game/DraftingUtil;->tick:I

    if-le v6, v0, :cond_2

    sput-boolean v3, Lcom/t4game/DraftingUtil;->isScroll:Z

    sput v3, Lcom/t4game/DraftingUtil;->strIndex:I

    sput v3, Lcom/t4game/DraftingUtil;->tick:I

    goto :goto_2

    :cond_4
    sput-boolean v3, Lcom/t4game/DraftingUtil;->isScroll:Z

    sput v3, Lcom/t4game/DraftingUtil;->strIndex:I

    sput v3, Lcom/t4game/DraftingUtil;->tick:I

    goto :goto_2

    :cond_5
    sget v6, Lcom/t4game/DraftingUtil;->tick:I

    add-int/lit8 v7, v6, 0x1

    sput v7, Lcom/t4game/DraftingUtil;->tick:I

    if-le v6, v1, :cond_2

    const/4 v6, 0x1

    sput-boolean v6, Lcom/t4game/DraftingUtil;->isScroll:Z

    sput v3, Lcom/t4game/DraftingUtil;->tick:I

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Lcom/t4game/DraftingUtil;->strIndex:I

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v1, v5

    if-lt v0, v1, :cond_7

    sget v0, Lcom/t4game/DraftingUtil;->strIndex:I

    sget v1, Lcom/t4game/DraftingUtil;->strIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_3
    move v1, p1

    move v2, p2

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_0

    :cond_7
    sget v0, Lcom/t4game/DraftingUtil;->strIndex:I

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_8
    const/16 v3, 0x14

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_0
.end method

.method public static paintScrollString(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;)V
    .locals 7

    const v5, 0xffffff

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public static paintScrollTextListInTheMiddleInVertDir(Ljavax/microedition/lcdui/Graphics;[Ljava/lang/String;IIIIII)V
    .locals 13

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    aget-object v3, p1, v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    div-int v10, p6, p7

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p5

    move/from16 v9, p7

    invoke-static/range {v3 .. v9}, Lcom/t4game/LogicalMapping;->setHotspotPosition(IIIIIII)V

    move-object v0, p1

    array-length v0, v0

    move/from16 p6, v0

    move v0, p2

    move v1, v10

    move/from16 v2, p6

    invoke-static {v0, v1, v2}, Lcom/t4game/LogicalMapping;->setHotspotInfo(III)V

    invoke-static {p2}, Lcom/t4game/LogicalMapping;->getHotspotInfoStartingRow(I)I

    move-result p6

    invoke-static {p2}, Lcom/t4game/LogicalMapping;->getHotspotInfoEndLine(I)I

    move-result v10

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-static {v3}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v3

    sub-int v3, p5, v3

    shr-int/lit8 v3, v3, 0x1

    add-int v11, p3, v3

    move/from16 v12, p6

    :goto_0
    if-ge v12, v10, :cond_0

    invoke-static {p2}, Lcom/t4game/LogicalMapping;->getHotspotInfoCurrentRow(I)I

    move-result v3

    add-int v3, v3, p6

    if-ne v12, v3, :cond_2

    invoke-static {p2}, Lcom/t4game/LogicalMapping;->isFocused(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v3

    const/16 v4, 0x9

    sub-int v5, v12, p6

    mul-int v5, v5, p7

    add-int v6, p4, v5

    move/from16 v5, p3

    move/from16 v7, p5

    move/from16 v8, p7

    invoke-virtual/range {v3 .. v8}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :cond_2
    aget-object v3, p1, v12

    sub-int v4, v12, p6

    mul-int v4, v4, p7

    add-int v5, p4, v4

    sget v6, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v7, -0x1

    const v8, 0xf9df00

    move v4, v11

    move-object v9, p0

    invoke-static/range {v3 .. v9}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v3, v12, 0x1

    move v12, v3

    goto :goto_0
.end method

.method public static paintScrollTextListInVertDir(Ljavax/microedition/lcdui/Graphics;[Ljava/lang/String;IIIIII)V
    .locals 10

    div-int v7, p6, p7

    move v0, p2

    move v1, p3

    move v2, p4

    move v3, p5

    move/from16 v4, p6

    move v5, p5

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcom/t4game/LogicalMapping;->setHotspotPosition(IIIIIII)V

    array-length v0, p1

    invoke-static {p2, v7, v0}, Lcom/t4game/LogicalMapping;->setHotspotInfo(III)V

    invoke-static {p2}, Lcom/t4game/LogicalMapping;->getHotspotInfoStartingRow(I)I

    move-result v7

    invoke-static {p2}, Lcom/t4game/LogicalMapping;->getHotspotInfoEndLine(I)I

    move-result v8

    move v9, v7

    :goto_0
    if-ge v9, v8, :cond_1

    invoke-static {p2}, Lcom/t4game/LogicalMapping;->getHotspotInfoCurrentRow(I)I

    move-result v0

    add-int/2addr v0, v7

    if-ne v9, v0, :cond_0

    invoke-static {p2}, Lcom/t4game/LogicalMapping;->isFocused(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x9

    sub-int v2, v9, v7

    mul-int v2, v2, p7

    add-int v3, p4, v2

    move v2, p3

    move v4, p5

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :cond_0
    aget-object v0, p1, v9

    sub-int v1, v9, v7

    mul-int v1, v1, p7

    add-int v2, p4, v1

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xf9df00

    move v1, p3

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lcom/t4game/LogicalMapping;->getHotspotInfoIndexQuantity(I)I

    move-result v0

    invoke-static {p2}, Lcom/t4game/LogicalMapping;->getHotspotInfoNumPerScreen(I)I

    move-result v1

    invoke-static {p2}, Lcom/t4game/LogicalMapping;->getIndexInAll(I)I

    move-result v2

    add-int p1, p3, p5

    const/16 p2, 0xe

    sub-int v3, p1, p2

    move v4, p4

    move/from16 v5, p6

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public static paintScrollTextListInVertDir(Ljavax/microedition/lcdui/Graphics;[Ljava/lang/String;IIIIIIIIZ)V
    .locals 13

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move v11, v12

    invoke-static/range {v0 .. v11}, Lcom/t4game/DraftingUtil;->paintScrollTextListInVertDir(Ljavax/microedition/lcdui/Graphics;[Ljava/lang/String;IIIIIIIIZZ)V

    return-void
.end method

.method public static paintScrollTextListInVertDir(Ljavax/microedition/lcdui/Graphics;[Ljava/lang/String;IIIIIIIIZZ)V
    .locals 13

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    div-int v7, p6, p7

    move v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p5

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcom/t4game/LogicalMapping;->setHotspotPosition(IIIIIII)V

    array-length v0, p1

    invoke-static {p2, v7, v0}, Lcom/t4game/LogicalMapping;->setHotspotInfo(III)V

    invoke-static {p2}, Lcom/t4game/LogicalMapping;->getHotspotInfoStartingRow(I)I

    move-result v10

    invoke-static {p2}, Lcom/t4game/LogicalMapping;->getHotspotInfoEndLine(I)I

    move-result v11

    move v12, v10

    :goto_1
    if-ge v12, v11, :cond_3

    if-eqz p10, :cond_1

    invoke-static {p2}, Lcom/t4game/LogicalMapping;->getHotspotInfoCurrentRow(I)I

    move-result v0

    add-int/2addr v0, v10

    if-ne v12, v0, :cond_1

    invoke-static {p2}, Lcom/t4game/LogicalMapping;->isFocused(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x9

    sub-int v2, v12, v10

    mul-int v2, v2, p7

    add-int v3, p4, v2

    move/from16 v2, p3

    move/from16 v4, p5

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :cond_1
    if-eqz p11, :cond_2

    aget-object v1, p1, v12

    sub-int v0, v12, v10

    mul-int v0, v0, p7

    add-int v3, p4, v0

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move/from16 v2, p3

    move/from16 v4, p5

    move/from16 v5, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-static/range {v0 .. v9}, Lcom/t4game/DraftingUtil;->paintStringInScrollType(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIIIZ)V

    :goto_2
    add-int/lit8 v0, v12, 0x1

    move v12, v0

    goto :goto_1

    :cond_2
    aget-object v0, p1, v12

    sub-int v1, v12, v10

    mul-int v1, v1, p7

    add-int v2, p4, v1

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    move/from16 v1, p3

    move/from16 v4, p8

    move/from16 v5, p9

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lcom/t4game/LogicalMapping;->getHotspotInfoIndexQuantity(I)I

    move-result v0

    invoke-static {p2}, Lcom/t4game/LogicalMapping;->getHotspotInfoNumPerScreen(I)I

    move-result v1

    invoke-static {p2}, Lcom/t4game/LogicalMapping;->getIndexInAll(I)I

    move-result v2

    add-int p1, p3, p5

    const/16 p2, 0xe

    sub-int v3, p1, p2

    move/from16 v4, p4

    move/from16 v5, p6

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_0
.end method

.method public static paintScrollTextListInVertDir(Ljavax/microedition/lcdui/Graphics;[[Ljava/lang/String;[[I[[IIIIIII)V
    .locals 12

    const/4 v11, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move v10, v11

    invoke-static/range {v0 .. v10}, Lcom/t4game/DraftingUtil;->paintScrollTextListInVertDir(Ljavax/microedition/lcdui/Graphics;[[Ljava/lang/String;[[I[[IIIIIIIZ)V

    return-void
.end method

.method public static paintScrollTextListInVertDir(Ljavax/microedition/lcdui/Graphics;[[Ljava/lang/String;[[I[[IIIIIIIZ)V
    .locals 21

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v5, 0x0

    aget-object v5, p1, v5

    if-nez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    div-int v12, p8, p9

    move-object/from16 v0, p1

    array-length v0, v0

    move v13, v0

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p7

    move/from16 v11, p9

    invoke-static/range {v5 .. v11}, Lcom/t4game/LogicalMapping;->setHotspotPosition(IIIIIII)V

    move/from16 v0, p4

    move v1, v12

    move v2, v13

    invoke-static {v0, v1, v2}, Lcom/t4game/LogicalMapping;->setHotspotInfo(III)V

    invoke-static/range {p4 .. p4}, Lcom/t4game/LogicalMapping;->getHotspotInfoStartingRow(I)I

    move-result p8

    invoke-static/range {p4 .. p4}, Lcom/t4game/LogicalMapping;->getHotspotInfoEndLine(I)I

    move-result v15

    sub-int v5, v15, p8

    invoke-static/range {p4 .. p4}, Lcom/t4game/LogicalMapping;->getHotspotInfoRowTotal(I)I

    move-result v6

    if-ne v5, v6, :cond_3

    const/4 v5, 0x0

    move/from16 v16, v5

    :goto_0
    move/from16 v17, p8

    :goto_1
    move/from16 v0, v17

    move v1, v15

    if-ge v0, v1, :cond_0

    const/4 v5, 0x0

    aget-object v6, p1, v17

    if-nez v6, :cond_4

    :cond_2
    add-int/lit8 v5, v17, 0x1

    move/from16 v17, v5

    goto :goto_1

    :cond_3
    const/4 v5, 0x1

    move/from16 v16, v5

    goto :goto_0

    :cond_4
    aget-object v6, p1, v17

    move-object v0, v6

    array-length v0, v0

    move/from16 v18, v0

    const/4 v6, 0x0

    move/from16 v19, v6

    :goto_2
    move/from16 v0, v19

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    add-int v7, p5, v5

    invoke-static/range {p4 .. p4}, Lcom/t4game/LogicalMapping;->getHotspotInfoCurrentRow(I)I

    move-result v6

    add-int v6, v6, p8

    move/from16 v0, v17

    move v1, v6

    if-ne v0, v1, :cond_5

    invoke-static/range {p4 .. p4}, Lcom/t4game/LogicalMapping;->isFocused(I)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v16, :cond_5

    sget-object v6, Lcom/t4game/Data;->color:[I

    const/4 v8, 0x4

    aget v6, v6, v8

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sub-int v6, v17, p8

    mul-int v6, v6, p9

    add-int v6, v6, p6

    move-object/from16 v0, p0

    move v1, v7

    move v2, v6

    move/from16 v3, p7

    move/from16 v4, p9

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_5
    move v0, v5

    move/from16 v1, p7

    if-lt v0, v1, :cond_6

    :goto_3
    add-int/lit8 v6, v19, 0x1

    move/from16 v19, v6

    goto :goto_2

    :cond_6
    aget-object v6, p3, v17

    aget v6, v6, v19

    if-gez v6, :cond_8

    aget-object v6, p1, v17

    aget-object v6, v6, v19

    invoke-static {v6}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v6

    add-int v8, v5, v6

    move v0, v8

    move/from16 v1, p7

    if-le v0, v1, :cond_7

    sub-int v6, p7, v5

    add-int/2addr v5, v6

    :goto_4
    move/from16 v20, v5

    :goto_5
    move/from16 v0, v20

    move/from16 v1, p7

    if-le v0, v1, :cond_a

    move/from16 v5, v20

    goto :goto_3

    :cond_7
    add-int/2addr v5, v6

    goto :goto_4

    :cond_8
    aget-object v6, p3, v17

    aget v6, v6, v19

    add-int/2addr v6, v5

    move v0, v6

    move/from16 v1, p7

    if-le v0, v1, :cond_9

    sub-int v6, p7, v5

    add-int/2addr v5, v6

    move/from16 v20, v5

    goto :goto_5

    :cond_9
    aget-object v6, p3, v17

    aget v6, v6, v19

    add-int/2addr v5, v6

    move/from16 v20, v5

    goto :goto_5

    :cond_a
    aget-object v5, p2, v17

    aget v5, v5, v19

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    aget-object v5, p1, v17

    aget-object v6, v5, v19

    sub-int v5, v17, p8

    mul-int v5, v5, p9

    add-int v8, p6, v5

    sub-int v5, v20, v7

    add-int v9, v5, p5

    const/4 v11, 0x0

    const/4 v12, -0x1

    aget-object v5, p2, v17

    aget v13, v5, v19

    move-object/from16 v5, p0

    move/from16 v10, p9

    move/from16 v14, p10

    invoke-static/range {v5 .. v14}, Lcom/t4game/DraftingUtil;->paintStringInScrollType(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIIIZ)V

    move/from16 v5, v20

    goto :goto_3
.end method

.method public static paintScrollTextListInVertDirWithoutScrossFlag(Ljavax/microedition/lcdui/Graphics;[Ljava/lang/String;IIIIII)V
    .locals 9

    div-int v7, p6, p7

    move v0, p2

    move v1, p3

    move v2, p4

    move v3, p5

    move v4, p6

    move v5, p5

    move/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lcom/t4game/LogicalMapping;->setHotspotPosition(IIIIIII)V

    array-length p6, p1

    invoke-static {p2, v7, p6}, Lcom/t4game/LogicalMapping;->setHotspotInfo(III)V

    invoke-static {p2}, Lcom/t4game/LogicalMapping;->getHotspotInfoStartingRow(I)I

    move-result p6

    invoke-static {p2}, Lcom/t4game/LogicalMapping;->getHotspotInfoEndLine(I)I

    move-result v7

    move v8, p6

    :goto_0
    if-ge v8, v7, :cond_1

    invoke-static {p2}, Lcom/t4game/LogicalMapping;->getHotspotInfoCurrentRow(I)I

    move-result v0

    add-int/2addr v0, p6

    if-ne v8, v0, :cond_0

    invoke-static {p2}, Lcom/t4game/LogicalMapping;->isFocused(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x9

    sub-int v2, v8, p6

    mul-int v2, v2, p7

    add-int v3, p4, v2

    move v2, p3

    move v4, p5

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :cond_0
    aget-object v0, p1, v8

    sub-int v1, v8, p6

    mul-int v1, v1, p7

    add-int v2, p4, v1

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xf9df00

    move v1, p3

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 20

    move/from16 v0, p0

    move/from16 v1, p1

    if-gt v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object p1, Lcom/t4game/Defaults;->scroll_head0:Ljavax/microedition/lcdui/Image;

    if-eqz p1, :cond_0

    const/16 v13, 0xe

    sget-object p1, Lcom/t4game/Defaults;->scroll_head0:Ljavax/microedition/lcdui/Image;

    const/4 v10, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    sget-object v10, Lcom/t4game/Defaults;->scroll_head0:Ljavax/microedition/lcdui/Image;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x1

    add-int p1, p4, p5

    sub-int v17, p1, v13

    const/16 v18, 0x0

    move v14, v13

    move/from16 v16, p3

    move-object/from16 v0, p6

    move-object v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v14

    const/4 v15, 0x5

    add-int v17, p4, v13

    const/16 v18, 0xe

    mul-int/lit8 p1, v13, 0x2

    sub-int v19, p5, p1

    move/from16 v16, p3

    invoke-virtual/range {v14 .. v19}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    add-int p1, p4, v13

    add-int/lit8 p1, p1, 0x2

    const/4 v10, 0x1

    sub-int v10, p0, v10

    move/from16 v0, p2

    move v1, v10

    if-lt v0, v1, :cond_3

    add-int p0, p4, p5

    sub-int p0, p0, v13

    const/16 p1, 0x16

    sub-int p0, p0, p1

    :cond_2
    :goto_1
    sget-object p1, Lcom/t4game/Defaults;->scroll_block0:Ljavax/microedition/lcdui/Image;

    add-int/lit8 p2, p3, 0x2

    const/16 p3, 0x0

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p0

    move/from16 v4, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto :goto_0

    :cond_3
    if-lez p2, :cond_4

    mul-int/lit8 v10, v13, 0x2

    sub-int v10, p5, v10

    const/16 v11, 0x18

    sub-int/2addr v10, v11

    mul-int p2, p2, v10

    const/4 v10, 0x1

    sub-int p0, p0, v10

    div-int p0, p2, p0

    add-int p0, p0, p1

    add-int p1, p4, p5

    sub-int p1, p1, v13

    const/16 p2, 0x16

    sub-int p1, p1, p2

    move/from16 v0, p0

    move/from16 v1, p1

    if-le v0, v1, :cond_2

    add-int p0, p4, p5

    sub-int p0, p0, v13

    const/16 p1, 0x16

    sub-int p0, p0, p1

    goto :goto_1

    :cond_4
    move/from16 p0, p1

    goto :goto_1
.end method

.method public static paintScrossFlagByLogicalMapping(Ljavax/microedition/lcdui/Graphics;III)V
    .locals 2

    invoke-static {}, Lcom/t4game/LogicalMapping;->getHotspotIndex()B

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/t4game/DraftingUtil;->paintScrossFlagByLogicalMapping(Ljavax/microedition/lcdui/Graphics;IIII)V

    :cond_0
    return-void
.end method

.method public static paintScrossFlagByLogicalMapping(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 7

    invoke-static {p1}, Lcom/t4game/LogicalMapping;->getHotspotInfoIndexQuantity(I)I

    move-result v0

    invoke-static {p1}, Lcom/t4game/LogicalMapping;->getHotspotInfoNumPerScreen(I)I

    move-result v1

    invoke-static {p1}, Lcom/t4game/LogicalMapping;->getIndexInAll(I)I

    move-result v2

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public static paintSplitDialogWith3rdPannelAndDefaultButtonH2(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;I)V
    .locals 5

    const/16 v4, 0xa

    invoke-static {p1, p0}, Lcom/t4game/DraftingUtil;->paintDialogWith3rdPannelAndDefaultButton(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    const/16 v0, 0x21

    const/4 v1, 0x2

    sget v2, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v3, 0x1c

    sub-int/2addr v2, v3

    const/16 v3, 0x25

    sub-int/2addr v2, v3

    sub-int/2addr v2, v4

    sub-int/2addr v2, v4

    invoke-static {p0, p2, v0, v1, v2}, Lcom/t4game/DraftingUtil;->paintCutOffRuleV(Ljavax/microedition/lcdui/Graphics;IIII)V

    return-void
.end method

.method public static paintSplitString(IILjava/lang/String;Ljavax/microedition/lcdui/Graphics;Z)V
    .locals 9

    const/4 v4, 0x0

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    mul-int/lit8 v1, p0, 0x2

    sub-int/2addr v0, v1

    sget-object v1, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {p2, v0, v1}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v7

    move v8, v4

    :goto_0
    array-length v0, v7

    if-ge v8, v0, :cond_0

    aget-object v0, v7, v8

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v1, v8

    add-int v2, p1, v1

    const/16 v3, 0x14

    const v5, 0xffffff

    move v1, p0

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static paintString(IILjava/lang/String;Ljavax/microedition/lcdui/Graphics;)V
    .locals 11

    const/4 v2, 0x0

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {p2, p1, v0}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    array-length v0, v7

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v0, v7, v2

    invoke-static {v0}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v8

    array-length v0, v7

    int-to-byte v9, v0

    move v10, v2

    :goto_0
    if-ge v10, v9, :cond_0

    aget-object v0, v7, v10

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    shr-int/lit8 v2, v8, 0x1

    sub-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v2, v10

    add-int/2addr v2, p0

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    invoke-virtual {p3}, Ljavax/microedition/lcdui/Graphics;->getColor()I

    move-result v5

    move-object v6, p3

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v10, 0x1

    int-to-byte v0, v0

    move v10, v0

    goto :goto_0
.end method

.method public static paintString(Ljava/lang/String;IIIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 8

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {p0, p3, v0}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object p0

    array-length p3, p0

    int-to-byte p3, p3

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, p3, :cond_0

    aget-object v0, p0, v7

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v1, v7

    add-int v2, p2, v1

    move v1, p1

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v7, 0x1

    int-to-byte v0, v0

    move v7, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static paintStringInScrollType(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIIIZ)V
    .locals 7

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Graphics;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    if-gez p6, :cond_2

    const/4 p6, 0x0

    :cond_2
    sget v1, Lcom/t4game/Defaults;->sfh:I

    sub-int v1, p5, v1

    shr-int/lit8 v2, v1, 0x1

    const/4 v1, 0x0

    if-eqz p9, :cond_4

    shl-int/lit8 v3, p6, 0x1

    sub-int v3, p4, v3

    if-le v0, v3, :cond_4

    sub-int/2addr v0, p4

    shl-int/lit8 v3, p6, 0x2

    add-int/2addr v0, v3

    if-lez v0, :cond_3

    sget v1, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int v0, v1, v0

    :goto_1
    add-int v1, p2, p6

    add-int v3, p3, v2

    shl-int/lit8 v4, p6, 0x1

    sub-int/2addr p4, v4

    invoke-virtual {p0, v1, v3, p4, p5}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    move p4, v0

    :goto_2
    add-int/2addr p2, p6

    sub-int v1, p2, p4

    add-int/2addr v2, p3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object v0, p1

    move v4, p7

    move v5, p8

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    if-eqz p9, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    sget p3, Lcom/t4game/Defaults;->CANVAS_W:I

    sget p4, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual {p0, p1, p2, p3, p4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move p4, v1

    goto :goto_2
.end method

.method public static paintStringInScrollTypeInMiddle(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIIIZ)V
    .locals 8

    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v7

    if-gez p6, :cond_2

    const/4 p6, 0x0

    :cond_2
    sget v0, Lcom/t4game/Defaults;->sfh:I

    sub-int v0, p5, v0

    shr-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz p9, :cond_4

    shl-int/lit8 v2, p6, 0x1

    sub-int v2, p4, v2

    if-le v7, v2, :cond_4

    sub-int v2, v7, p4

    shl-int/lit8 v3, p6, 0x2

    add-int/2addr v2, v3

    if-lez v2, :cond_3

    sget v1, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/2addr v1, v2

    :cond_3
    add-int v2, p2, p6

    add-int v3, p3, v0

    shl-int/lit8 v4, p6, 0x1

    sub-int v4, p4, v4

    invoke-virtual {p0, v2, v3, v4, p5}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    :cond_4
    move p5, v1

    if-eqz p9, :cond_6

    shl-int/lit8 v1, p6, 0x1

    sub-int v1, p4, v1

    if-le v7, v1, :cond_5

    add-int/2addr p2, p6

    sub-int v1, p2, p5

    add-int v2, p3, v0

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object v0, p1

    move v4, p7

    move/from16 v5, p8

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_1
    if-eqz p9, :cond_0

    shl-int/lit8 p1, p6, 0x1

    sub-int p1, p4, p1

    if-le v7, p1, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    sget p3, Lcom/t4game/Defaults;->CANVAS_W:I

    sget p4, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual {p0, p1, p2, p3, p4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto :goto_0

    :cond_5
    shr-int/lit8 p5, p4, 0x1

    add-int v1, p2, p5

    add-int v2, p3, v0

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    move-object v0, p1

    move v4, p7

    move/from16 v5, p8

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_1

    :cond_6
    shr-int/lit8 p5, p4, 0x1

    add-int v1, p2, p5

    add-int v2, p3, v0

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    move-object v0, p1

    move v4, p7

    move/from16 v5, p8

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_1
.end method

.method public static paintStringInSpecifiedBox(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIII)V
    .locals 7

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    if-gez p6, :cond_0

    const/4 p6, 0x0

    :cond_0
    sget v1, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr p5, v1

    shr-int/lit8 p5, p5, 0x1

    if-le p4, v0, :cond_1

    sub-int/2addr p4, v0

    shr-int/lit8 p4, p4, 0x1

    add-int v1, p2, p4

    add-int v2, p3, p5

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object v0, p1

    move v4, p7

    move v5, p8

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_0
    return-void

    :cond_1
    add-int v0, p2, p6

    add-int v1, p3, p5

    shl-int/lit8 v2, p6, 0x1

    sub-int/2addr p4, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual {p0, v0, v1, p4, v2}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    add-int v1, p2, p6

    add-int v2, p3, p5

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object v0, p1

    move v4, p7

    move v5, p8

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    const/4 p1, 0x0

    const/4 p2, 0x0

    sget p3, Lcom/t4game/Defaults;->CANVAS_W:I

    sget p4, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual {p0, p1, p2, p3, p4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto :goto_0
.end method

.method public static final paintStringWithKeyColorAndImage(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;I[Ljava/lang/String;[I)V
    .locals 15

    if-eqz p3, :cond_0

    const-string v4, ""

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, -0x2

    if-eqz p5, :cond_5

    if-eqz p6, :cond_5

    const/4 v6, 0x0

    move v14, v6

    move v6, v4

    move v4, v14

    :goto_1
    move-object/from16 v0, p5

    array-length v0, v0

    move v7, v0

    if-ge v4, v7, :cond_3

    aget-object v7, p5, v4

    move-object/from16 v0, p3

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-le v6, v7, :cond_2

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    move v5, v4

    move v6, v7

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const-string v4, "="

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_6

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    sub-int/2addr v7, v8

    if-ge v4, v7, :cond_6

    if-le v6, v4, :cond_6

    const/4 v5, -0x1

    move v12, v5

    move v13, v4

    :goto_2
    const/4 v4, 0x0

    move-object/from16 v0, p3

    move v1, v4

    move v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, -0x1

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v9, p4

    move-object v10, p0

    invoke-static/range {v4 .. v10}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    const/4 v5, -0x2

    if-eq v12, v5, :cond_0

    if-ltz v12, :cond_4

    aget-object v5, p5, v12

    invoke-static {v4}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v6

    add-int v6, v6, p1

    const/4 v8, 0x0

    const/4 v9, -0x1

    aget v10, p6, v12

    move/from16 v7, p2

    move-object v11, p0

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    invoke-static {v4}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v4

    add-int p1, p1, v4

    aget-object v4, p5, v12

    invoke-static {v4}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v4

    add-int v5, p1, v4

    aget-object p1, p5, v12

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int p1, p1, v13

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v4, p0

    move/from16 v6, p2

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lcom/t4game/DraftingUtil;->paintStringWithKeyColorAndImage(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;I[Ljava/lang/String;[I)V

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v5, v13, 0x1

    add-int/lit8 v6, v13, 0x3

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    div-int/lit8 v7, v5, 0x10

    rem-int/lit8 v8, v5, 0x10

    sget-object v5, Lcom/t4game/Defaults;->chatFaceImg:[Ljavax/microedition/lcdui/Image;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    sget-object v6, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v6, v4}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v6

    add-int v6, v6, p1

    sget v9, Lcom/t4game/Defaults;->expression_sub_w:I

    mul-int/2addr v8, v9

    sget v9, Lcom/t4game/Defaults;->expression_sub_h:I

    mul-int/2addr v9, v7

    sget v10, Lcom/t4game/Defaults;->expression_sub_w:I

    sget v11, Lcom/t4game/Defaults;->expression_sub_h:I

    move/from16 v7, p2

    move-object v12, p0

    invoke-static/range {v5 .. v12}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v5, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v5, v4}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v4

    add-int p1, p1, v4

    sget v4, Lcom/t4game/Defaults;->expression_sub_w:I

    add-int v5, p1, v4

    add-int/lit8 p1, v13, 0x3

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    move-object v4, p0

    move/from16 v6, p2

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lcom/t4game/DraftingUtil;->paintStringWithKeyColorAndImage(Ljavax/microedition/lcdui/Graphics;IILjava/lang/String;I[Ljava/lang/String;[I)V

    goto/16 :goto_0

    :cond_5
    move-object v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    move-object v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p1

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/DraftingUtil;->drawStringWithImage(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;II)V

    goto/16 :goto_0

    :cond_6
    move v12, v5

    move v13, v6

    goto/16 :goto_2
.end method

.method public static paintTextListInVertDirByPagination(Ljavax/microedition/lcdui/Graphics;[Ljava/lang/String;IIIIIIIIBBZ)I
    .locals 14

    if-nez p1, :cond_0

    const/4 p0, -0x1

    :goto_0
    return p0

    :cond_0
    div-int v0, p5, p9

    const/4 v1, 0x1

    sub-int v9, v0, v1

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    invoke-static/range {v0 .. v13}, Lcom/t4game/DraftingUtil;->paintTextListInVertDirByPagination(Ljavax/microedition/lcdui/Graphics;[Ljava/lang/String;IIIIIIIIIBBZ)I

    move-result p0

    goto :goto_0
.end method

.method public static paintTextListInVertDirByPagination(Ljavax/microedition/lcdui/Graphics;[Ljava/lang/String;IIIIIIIIIBBZ)I
    .locals 15

    if-eqz p1, :cond_0

    if-gtz p9, :cond_1

    :cond_0
    const/4 p0, -0x1

    :goto_0
    return p0

    :cond_1
    if-gtz p8, :cond_2

    const/16 p8, 0x1

    :cond_2
    const/4 v2, 0x1

    sub-int v2, p8, v2

    mul-int v2, v2, p9

    move-object/from16 v0, p1

    array-length v0, v0

    move v3, v0

    if-le v2, v3, :cond_3

    move-object/from16 v0, p1

    array-length v0, v0

    move v2, v0

    sub-int v2, v2, p9

    :cond_3
    add-int v3, v2, p9

    move-object/from16 v0, p1

    array-length v0, v0

    move v4, v0

    if-le v3, v4, :cond_4

    move-object/from16 v0, p1

    array-length v0, v0

    move v3, v0

    move v12, v3

    :goto_1
    const/4 v3, 0x1

    move v13, v2

    move v14, v3

    move/from16 v5, p3

    :goto_2
    if-ge v13, v12, :cond_6

    if-eqz p13, :cond_5

    aget-object v3, p1, v13

    const/4 v8, 0x0

    move-object v2, p0

    move/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p10

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p13

    invoke-static/range {v2 .. v11}, Lcom/t4game/DraftingUtil;->paintStringInScrollType(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIIIZ)V

    :goto_3
    add-int/lit8 v2, v14, 0x1

    add-int v3, v5, p10

    add-int/lit8 v4, v13, 0x1

    move v13, v4

    move v14, v2

    move v5, v3

    goto :goto_2

    :cond_4
    add-int v3, v2, p9

    move v12, v3

    goto :goto_1

    :cond_5
    aget-object v3, p1, v13

    sget v6, Lcom/t4game/Defaults;->TOP_LEFT:I

    move/from16 v4, p2

    move/from16 v7, p6

    move/from16 v8, p7

    move-object v9, p0

    invoke-static/range {v3 .. v9}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_3

    :cond_6
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 p6, v0

    div-int p6, p6, p9

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 p1, v0

    rem-int p1, p1, p9

    if-lez p1, :cond_9

    add-int/lit8 p1, p6, 0x1

    :goto_4
    add-int p3, p3, p5

    sub-int v4, p3, p10

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, "/"

    move-object/from16 v0, p3

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    move-object/from16 v0, p3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result p3

    sub-int p4, p4, p3

    shr-int/lit8 p4, p4, 0x1

    add-int v3, p2, p4

    sget v5, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v6, -0x1

    const v7, 0xffc700

    move-object v8, p0

    invoke-static/range {v2 .. v8}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    const/16 p2, 0x1

    move/from16 v0, p8

    move/from16 v1, p2

    if-le v0, v1, :cond_7

    const p2, 0xffc700

    move-object v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget p2, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 p2, p2, 0x1

    sub-int v6, v3, p2

    shr-int/lit8 p2, p10, 0x1

    add-int v7, v4, p2

    sget p2, Lcom/t4game/Defaults;->sfw:I

    add-int v8, v6, p2

    add-int v11, v4, p10

    move-object v5, p0

    move v9, v4

    move v10, v8

    invoke-virtual/range {v5 .. v11}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(IIIIII)V

    sget v8, Lcom/t4game/Defaults;->sfw:I

    sget v10, Lcom/t4game/Defaults;->sfw:I

    move/from16 v5, p11

    move v7, v4

    move/from16 v9, p10

    move/from16 v11, p10

    invoke-static/range {v5 .. v11}, Lcom/t4game/LogicalMapping;->setHotspotPosition(IIIIIII)V

    :cond_7
    move/from16 v0, p8

    move/from16 v1, p1

    if-ge v0, v1, :cond_8

    const p2, 0xffc700

    move-object v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int p2, v3, p3

    sget p3, Lcom/t4game/Defaults;->sfw:I

    add-int v3, p2, p3

    sget p2, Lcom/t4game/Defaults;->sfw:I

    add-int v7, v3, p2

    add-int v6, v4, p10

    shr-int/lit8 p2, p10, 0x1

    add-int v8, v4, p2

    move-object v2, p0

    move v5, v3

    invoke-virtual/range {v2 .. v8}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(IIIIII)V

    sget v5, Lcom/t4game/Defaults;->sfw:I

    sget v7, Lcom/t4game/Defaults;->sfw:I

    move/from16 v2, p12

    move/from16 v6, p10

    move/from16 v8, p10

    invoke-static/range {v2 .. v8}, Lcom/t4game/LogicalMapping;->setHotspotPosition(IIIIIII)V

    :cond_8
    move/from16 p0, p1

    goto/16 :goto_0

    :cond_9
    move/from16 p1, p6

    goto/16 :goto_4
.end method

.method public static paintTime(JLjavax/microedition/lcdui/Graphics;II)V
    .locals 10

    const/4 v5, 0x0

    const/16 v7, 0xa

    const/4 v6, 0x2

    const-string v9, "0"

    const-string v8, ""

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    long-to-int v0, v0

    rem-int/lit8 v1, v0, 0x3c

    div-int/lit8 v0, v0, 0x3c

    rem-int/lit8 v2, v0, 0x3c

    div-int/lit8 v0, v0, 0x3c

    invoke-virtual {p2, v5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget-object v3, Lcom/t4game/OneRow_EMAIL_RECEIVE;->email_img_time:Ljavax/microedition/lcdui/Image;

    const/4 v4, 0x1

    sub-int v4, p4, v4

    invoke-virtual {p2, v3, p3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    add-int/lit8 v3, p3, 0xa

    if-ge v0, v7, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    sget-object v4, Lcom/t4game/Defaults;->norMalNumImag:Ljavax/microedition/lcdui/Image;

    invoke-static {v3, p4, v0, p2, v4}, Lcom/t4game/DraftingUtil;->showNumberString(IILjava/lang/String;Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;)V

    add-int/lit8 v0, v3, 0xc

    add-int/lit8 v3, p4, 0x1

    invoke-virtual {p2, v0, v3, v6, v6}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    add-int/lit8 v3, p4, 0x4

    invoke-virtual {p2, v0, v3, v6, v6}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    add-int/lit8 v0, v0, 0x5

    if-ge v2, v7, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_2
    sget-object v3, Lcom/t4game/Defaults;->norMalNumImag:Ljavax/microedition/lcdui/Image;

    invoke-static {v0, p4, v2, p2, v3}, Lcom/t4game/DraftingUtil;->showNumberString(IILjava/lang/String;Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;)V

    add-int/lit8 v0, v0, 0xc

    add-int/lit8 v2, p4, 0x1

    invoke-virtual {p2, v0, v2, v6, v6}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    add-int/lit8 v2, p4, 0x4

    invoke-virtual {p2, v0, v2, v6, v6}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    add-int/lit8 v0, v0, 0x5

    if-ge v1, v7, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    sget-object v2, Lcom/t4game/Defaults;->norMalNumImag:Ljavax/microedition/lcdui/Image;

    invoke-static {v0, p4, v1, p2, v2}, Lcom/t4game/DraftingUtil;->showNumberString(IILjava/lang/String;Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;)V

    goto/16 :goto_0

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static paintTriangle(IIZLjavax/microedition/lcdui/Graphics;)V
    .locals 7

    const/4 v1, 0x5

    const v0, 0xffc700

    invoke-virtual {p3, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    if-eqz p2, :cond_0

    sub-int v3, p0, v1

    add-int/lit8 v4, p1, 0x5

    add-int/lit8 v5, p0, 0x5

    add-int/lit8 v6, p1, 0x5

    move-object v0, p3

    move v1, p0

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(IIIIII)V

    :goto_0
    return-void

    :cond_0
    sub-int v3, p0, v1

    sub-int v4, p1, v1

    add-int/lit8 v5, p0, 0x5

    sub-int v6, p1, v1

    move-object v0, p3

    move v1, p0

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(IIIIII)V

    goto :goto_0
.end method

.method public static paintTriangleAnimation(Ljavax/microedition/lcdui/Graphics;IIBII)V
    .locals 7

    const/4 v0, 0x5

    invoke-virtual {p0, p5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    packed-switch p3, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sub-int v2, p2, p4

    sub-int v3, p1, v0

    add-int/lit8 v0, p2, 0x5

    sub-int v4, v0, p4

    add-int/lit8 v5, p1, 0x5

    add-int/lit8 v0, p2, 0x5

    sub-int v6, v0, p4

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(IIIIII)V

    goto :goto_0

    :pswitch_1
    add-int/lit8 v1, p1, 0x3

    add-int/lit8 v0, p2, 0x5

    add-int v2, v0, p4

    const/4 v0, 0x2

    sub-int v3, p1, v0

    add-int v4, p2, p4

    add-int/lit8 v5, p1, 0x8

    add-int v6, p2, p4

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(IIIIII)V

    goto :goto_0

    :pswitch_2
    sub-int v1, p1, p4

    add-int/lit8 v2, p2, 0x7

    sub-int v3, p1, p4

    sub-int v0, p1, v0

    sub-int v5, v0, p4

    add-int/lit8 v6, p2, 0x3

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(IIIIII)V

    goto :goto_0

    :pswitch_3
    add-int v1, p1, p4

    add-int/lit8 v2, p2, 0x7

    add-int v3, p1, p4

    add-int/lit8 v0, p1, 0x5

    add-int v5, v0, p4

    add-int/lit8 v6, p2, 0x3

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(IIIIII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static paintTriangleAnimation(Ljavax/microedition/lcdui/Graphics;IIBIII)V
    .locals 9

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x5

    invoke-virtual {p0, p5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    packed-switch p3, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, p6}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    packed-switch p3, :pswitch_data_1

    :goto_1
    return-void

    :pswitch_0
    sub-int v0, p2, p4

    sub-int v2, v0, v7

    const/4 v0, 0x7

    sub-int v3, p1, v0

    add-int/lit8 v0, p2, 0x7

    sub-int v4, v0, p4

    add-int/lit8 v5, p1, 0x7

    add-int/lit8 v0, p2, 0x7

    sub-int v6, v0, p4

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(IIIIII)V

    goto :goto_0

    :pswitch_1
    add-int/lit8 v1, p1, 0x3

    add-int/lit8 v0, p2, 0x8

    add-int v2, v0, p4

    sub-int v3, p1, v7

    add-int v0, p2, p4

    sub-int v4, v0, v6

    add-int/lit8 v5, p1, 0xb

    add-int v0, p2, p4

    sub-int v6, v0, v6

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(IIIIII)V

    goto :goto_0

    :pswitch_2
    sub-int v1, p1, p4

    add-int/lit8 v2, p2, 0x7

    sub-int v3, p1, p4

    sub-int v0, p1, v7

    sub-int v5, v0, p4

    add-int/lit8 v6, p2, 0x3

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(IIIIII)V

    goto :goto_0

    :pswitch_3
    add-int v1, p1, p4

    add-int/lit8 v2, p2, 0x7

    add-int v3, p1, p4

    add-int/lit8 v0, p1, 0x5

    add-int v5, v0, p4

    add-int/lit8 v6, p2, 0x3

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(IIIIII)V

    goto :goto_0

    :pswitch_4
    sub-int v0, p2, p4

    sub-int v2, v0, v8

    sub-int v3, p1, v7

    add-int/lit8 v0, p2, 0x5

    sub-int v4, v0, p4

    add-int/lit8 v5, p1, 0x5

    add-int/lit8 v0, p2, 0x5

    sub-int v6, v0, p4

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(IIIIII)V

    goto :goto_1

    :pswitch_5
    add-int/lit8 v1, p1, 0x3

    add-int/lit8 v0, p2, 0x6

    add-int v2, v0, p4

    sub-int v3, p1, v8

    add-int v4, p2, p4

    add-int/lit8 v5, p1, 0x8

    add-int v6, p2, p4

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(IIIIII)V

    goto :goto_1

    :pswitch_6
    sub-int v1, p1, p4

    add-int/lit8 v2, p2, 0x7

    sub-int v3, p1, p4

    sub-int v0, p1, v7

    sub-int v5, v0, p4

    add-int/lit8 v6, p2, 0x3

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(IIIIII)V

    goto/16 :goto_1

    :pswitch_7
    add-int v1, p1, p4

    add-int/lit8 v2, p2, 0x7

    add-int v3, p1, p4

    add-int/lit8 v0, p1, 0x5

    add-int v5, v0, p4

    add-int/lit8 v6, p2, 0x3

    move-object v0, p0

    move v4, p2

    invoke-virtual/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(IIIIII)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static paintWordInput(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIII)V
    .locals 7

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x14

    add-int/lit8 v2, p2, 0x4

    const/4 p6, 0x1

    sub-int v3, p3, p6

    const/4 p6, 0x2

    sub-int v4, p4, p6

    const/4 p4, 0x2

    sub-int v5, p5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    add-int/lit8 v1, p2, 0x8

    const/16 v3, 0x14

    const/4 v4, -0x1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Graphics;->getColor()I

    move-result v5

    move-object v0, p1

    move v2, p3

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public static paintWordInputWithFocuse(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIII)V
    .locals 7

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x14

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    if-ne p6, p7, :cond_1

    sget p4, Lcom/t4game/GameUi;->tick:I

    rem-int/lit8 p4, p4, 0x6

    const/4 p5, 0x3

    if-ge p4, p5, :cond_0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Graphics;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object p4

    const/4 p5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p6

    invoke-virtual {p1, p5, p6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result p4

    add-int/lit8 p4, p4, 0xa

    const p5, 0xffffff

    invoke-virtual {p0, p5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int/2addr p4, p2

    const/4 p5, 0x2

    sget p6, Lcom/t4game/Defaults;->sfh:I

    invoke-virtual {p0, p4, p3, p5, p6}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_0
    :goto_0
    add-int/lit8 v1, p2, 0x5

    const/16 v3, 0x14

    const/4 v4, -0x1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Graphics;->getColor()I

    move-result v5

    move-object v0, p1

    move v2, p3

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    return-void

    :cond_1
    sget p4, Lcom/t4game/Defaults;->C_WORD_UNSELECT:I

    invoke-virtual {p0, p4}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto :goto_0
.end method

.method public static paintWordInput_haveFocuse(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIII)V
    .locals 7

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x14

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    if-ne p6, p7, :cond_1

    sget p4, Lcom/t4game/GameUi;->tick:I

    rem-int/lit8 p4, p4, 0x6

    const/4 p5, 0x3

    if-ge p4, p5, :cond_0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Graphics;->getFont()Ljavax/microedition/lcdui/Font;

    move-result-object p4

    const/4 p5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p6

    invoke-virtual {p1, p5, p6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result p4

    add-int/lit8 p4, p4, 0x4

    const p5, 0xffffff

    invoke-virtual {p0, p5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int/2addr p4, p2

    add-int/lit8 p4, p4, 0x3

    add-int/lit8 p5, p3, 0x3

    const/4 p6, 0x2

    sget p7, Lcom/t4game/Defaults;->sfh:I

    const/16 v0, 0x8

    sub-int/2addr p7, v0

    invoke-virtual {p0, p4, p5, p6, p7}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_0
    :goto_0
    add-int/lit8 v1, p2, 0x2

    const/16 v3, 0x14

    const/4 v4, -0x1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Graphics;->getColor()I

    move-result v5

    move-object v0, p1

    move v2, p3

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    return-void

    :cond_1
    sget p4, Lcom/t4game/Defaults;->C_WORD_UNSELECT:I

    invoke-virtual {p0, p4}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto :goto_0
.end method

.method public static final showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 19

    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v10

    add-int v11, p3, p5

    if-ge v10, v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v10

    add-int v11, p4, p6

    if-lt v10, v11, :cond_0

    const/4 v15, 0x0

    const/16 v18, 0x14

    move-object/from16 v10, p0

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p6

    move/from16 v16, p1

    move/from16 v17, p2

    move-object/from16 v0, p7

    move-object v1, v10

    move v2, v11

    move v3, v12

    move v4, v13

    move v5, v14

    move v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-static/range {v0 .. v9}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_0
.end method

.method public static showNumber(IIIZBLjavax/microedition/lcdui/Graphics;I)V
    .locals 12

    if-gez p2, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    new-array v11, v10, [I

    const/4 v2, 0x3

    move/from16 v0, p4

    move v1, v2

    if-ge v0, v1, :cond_4

    if-eqz p3, :cond_1

    sget-object p3, Lcom/t4game/Defaults;->numSmallImg:[Ljavax/microedition/lcdui/Image;

    aget-object v2, p3, p4

    const/16 p3, 0x8

    sub-int v3, p0, p3

    const/16 v5, 0x58

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/16 v8, 0x8

    move v4, p1

    move-object/from16 v9, p5

    invoke-static/range {v2 .. v9}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_0
    const/4 p3, 0x0

    :goto_1
    if-ge p3, v10, :cond_8

    add-int/lit8 v2, p3, 0x1

    invoke-virtual {p2, p3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v11, p3

    const/4 v2, 0x3

    move/from16 v0, p6

    move v1, v2

    if-ne v0, v1, :cond_3

    sget-object v2, Lcom/t4game/Defaults;->numSmallImg:[Ljavax/microedition/lcdui/Image;

    aget-object v2, v2, p4

    mul-int/lit8 v3, p3, 0x8

    add-int/2addr v3, p0

    aget v4, v11, p3

    mul-int/lit8 v5, v4, 0x8

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/16 v8, 0x8

    move v4, p1

    move-object/from16 v9, p5

    invoke-static/range {v2 .. v9}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x3

    move/from16 v0, p6

    move v1, p3

    if-ne v0, v1, :cond_2

    sget-object p3, Lcom/t4game/Defaults;->numSmallImg:[Ljavax/microedition/lcdui/Image;

    aget-object v2, p3, p4

    const/16 p3, 0x8

    sub-int v3, p0, p3

    const/16 v5, 0x50

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/16 v8, 0x8

    move v4, p1

    move-object/from16 v9, p5

    invoke-static/range {v2 .. v9}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :cond_2
    sget-object p3, Lcom/t4game/Defaults;->attImage:[Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x0

    aget-object v2, p3, v2

    const/16 p3, 0x8

    sub-int v3, p0, p3

    const/16 v5, 0x50

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/16 v8, 0x8

    move v4, p1

    move-object/from16 v9, p5

    invoke-static/range {v2 .. v9}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/t4game/Defaults;->attImage:[Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    mul-int/lit8 v3, p3, 0x8

    add-int/2addr v3, p0

    aget v4, v11, p3

    mul-int/lit8 v5, v4, 0x8

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/16 v8, 0x8

    move v4, p1

    move-object/from16 v9, p5

    invoke-static/range {v2 .. v9}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_2

    :cond_4
    const/4 v2, 0x3

    move/from16 v0, p4

    move v1, v2

    if-ne v0, v1, :cond_8

    if-eqz p3, :cond_5

    sget-object v2, Lcom/t4game/Defaults;->numBigImg:Ljavax/microedition/lcdui/Image;

    const/16 p3, 0xb

    sub-int v3, p0, p3

    const/16 v5, 0x79

    const/4 v6, 0x0

    const/16 v7, 0xb

    const/16 v8, 0xb

    move v4, p1

    move-object/from16 v9, p5

    invoke-static/range {v2 .. v9}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_3
    const/4 p3, 0x0

    :goto_4
    if-ge p3, v10, :cond_8

    add-int/lit8 p4, p3, 0x1

    invoke-virtual/range {p2 .. p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p4

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    aput p4, v11, p3

    const/16 p4, 0x3

    move/from16 v0, p6

    move/from16 v1, p4

    if-ne v0, v1, :cond_7

    sget-object v2, Lcom/t4game/Defaults;->numBigImg:Ljavax/microedition/lcdui/Image;

    mul-int/lit8 p4, p3, 0xb

    add-int v3, p0, p4

    aget p4, v11, p3

    mul-int/lit8 v5, p4, 0xb

    const/4 v6, 0x0

    const/16 v7, 0xb

    const/16 v8, 0xb

    move v4, p1

    move-object/from16 v9, p5

    invoke-static/range {v2 .. v9}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_5
    add-int/lit8 p3, p3, 0x1

    goto :goto_4

    :cond_5
    const/4 p3, 0x3

    move/from16 v0, p6

    move v1, p3

    if-ne v0, v1, :cond_6

    sget-object v2, Lcom/t4game/Defaults;->numBigImg:Ljavax/microedition/lcdui/Image;

    const/16 p3, 0xb

    sub-int v3, p0, p3

    const/16 v5, 0x6e

    const/4 v6, 0x0

    const/16 v7, 0xb

    const/16 v8, 0xb

    move v4, p1

    move-object/from16 v9, p5

    invoke-static/range {v2 .. v9}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_3

    :cond_6
    sget-object p3, Lcom/t4game/Defaults;->attImage:[Ljavax/microedition/lcdui/Image;

    const/16 p4, 0x1

    aget-object v2, p3, p4

    const/16 p3, 0xb

    sub-int v3, p0, p3

    const/16 v5, 0x6e

    const/4 v6, 0x0

    const/16 v7, 0xb

    const/16 v8, 0xb

    move v4, p1

    move-object/from16 v9, p5

    invoke-static/range {v2 .. v9}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_3

    :cond_7
    sget-object p4, Lcom/t4game/Defaults;->attImage:[Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x1

    aget-object v2, p4, v2

    mul-int/lit8 p4, p3, 0xb

    add-int v3, p0, p4

    aget p4, v11, p3

    mul-int/lit8 v5, p4, 0xb

    const/4 v6, 0x0

    const/16 v7, 0xb

    const/16 v8, 0xb

    move v4, p1

    move-object/from16 v9, p5

    invoke-static/range {v2 .. v9}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_5

    :cond_8
    return-void
.end method

.method public static final showNumberBig(IIILjavax/microedition/lcdui/Graphics;)V
    .locals 12

    const/16 v5, 0xd

    const/4 v4, 0x0

    if-gez p2, :cond_1

    move v0, v4

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    new-array v10, v9, [I

    move v11, v4

    :goto_1
    if-ge v11, v9, :cond_0

    add-int/lit8 v0, v11, 0x1

    invoke-virtual {v8, v11, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v10, v11

    sget-object v0, Lcom/t4game/Defaults;->numBigImg:Ljavax/microedition/lcdui/Image;

    mul-int/lit8 v1, v11, 0xd

    add-int/2addr v1, p0

    aget v2, v10, v11

    mul-int/lit8 v3, v2, 0xd

    move v2, p1

    move v6, v5

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto :goto_1

    :cond_0
    return-void

    :cond_1
    move v0, p2

    goto :goto_0
.end method

.method public static showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V
    .locals 2

    if-gez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/t4game/Defaults;->norMalNumImag:Ljavax/microedition/lcdui/Image;

    invoke-static {p0, p1, v0, p3, v1}, Lcom/t4game/DraftingUtil;->showNumberString(IILjava/lang/String;Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;)V

    return-void

    :cond_0
    move v0, p2

    goto :goto_0
.end method

.method public static showNumberString(IILjava/lang/String;Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;)V
    .locals 11

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p4}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    div-int/lit8 v5, v0, 0xa

    invoke-virtual {p4}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v6

    new-array v9, v8, [I

    move v10, v4

    :goto_0
    if-ge v10, v8, :cond_0

    add-int/lit8 v0, v10, 0x1

    invoke-virtual {p2, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v9, v10

    mul-int v0, v10, v5

    add-int v1, p0, v0

    aget v0, v9, v10

    mul-int v3, v0, v5

    move-object v0, p4

    move v2, p1

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    :cond_0
    return-void
.end method
