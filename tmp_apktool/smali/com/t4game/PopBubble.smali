.class public Lcom/t4game/PopBubble;
.super Ljava/lang/Object;


# static fields
.field private static final ANCHOR_H:B = 0x10t

.field private static final ANCHOR_W:B = 0xat

.field private static final BUBBLE_H:S

.field private static final BUBBLE_OS:B = 0x5t

.field private static final BUBBLE_W:S

.field private static final COLOR_ALPHA:I = -0x77d3daee

.field private static final COLOR_ANCHOR:I = 0xd6ff37

.field private static final COLOR_RECT:I = 0x121212

.field public static final DIR_LD:B = 0x1t

.field public static final DIR_LU:B = 0x0t

.field public static final DIR_MD:B = 0x5t

.field public static final DIR_MU:B = 0x4t

.field public static final DIR_RD:B = 0x3t

.field public static final DIR_RU:B = 0x2t

.field public static final FLASH_INTERVAL:B = 0x14t

.field private static final TICK_ALLTIME:S

.field public static final TICK_ALL_TIME:B


# instance fields
.field private dir:B

.field private h:I

.field private lineCount:S

.field private lines:[Ljava/lang/String;

.field private tick:S

.field private tickMax:J

.field private visible:Z

.field private w:I

.field private x:S

.field private y:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    sput-short v0, Lcom/t4game/PopBubble;->BUBBLE_H:S

    sget v0, Lcom/t4game/Defaults;->sfw:I

    mul-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    sput-short v0, Lcom/t4game/PopBubble;->BUBBLE_W:S

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/t4game/PopBubble;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/t4game/PopBubble;-><init>(S)V

    return-void
.end method

.method public constructor <init>(S)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/t4game/PopBubble;->dir:B

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/t4game/PopBubble;->tickMax:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/PopBubble;->visible:Z

    iput-short v0, p0, Lcom/t4game/PopBubble;->lineCount:S

    invoke-virtual {p0}, Lcom/t4game/PopBubble;->release()V

    return-void
.end method

.method public init(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/t4game/Util;->empty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/t4game/PopBubble;->w:I

    iget v0, p0, Lcom/t4game/PopBubble;->w:I

    sget-short v1, Lcom/t4game/PopBubble;->BUBBLE_W:S

    if-le v0, v1, :cond_1

    sget-short v0, Lcom/t4game/PopBubble;->BUBBLE_W:S

    :goto_1
    iput v0, p0, Lcom/t4game/PopBubble;->w:I

    iget v0, p0, Lcom/t4game/PopBubble;->w:I

    sget-object v1, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {p1, v0, v1}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4game/Util;->refreashChat([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/PopBubble;->lines:[Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/PopBubble;->lines:[Ljava/lang/String;

    array-length v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/PopBubble;->lineCount:S

    iget-short v0, p0, Lcom/t4game/PopBubble;->lineCount:S

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/PopBubble;->h:I

    iget v0, p0, Lcom/t4game/PopBubble;->h:I

    sget-short v1, Lcom/t4game/PopBubble;->BUBBLE_H:S

    if-le v0, v1, :cond_2

    sget-short v0, Lcom/t4game/PopBubble;->BUBBLE_H:S

    :goto_2
    iput v0, p0, Lcom/t4game/PopBubble;->h:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/PopBubble;->visible:Z

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/t4game/PopBubble;->tick:S

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/t4game/PopBubble;->w:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/t4game/PopBubble;->h:I

    goto :goto_2
.end method

.method public init(Ljava/lang/String;SSB)V
    .locals 0

    iput-byte p4, p0, Lcom/t4game/PopBubble;->dir:B

    iput-short p2, p0, Lcom/t4game/PopBubble;->x:S

    iput-short p3, p0, Lcom/t4game/PopBubble;->y:S

    invoke-virtual {p0, p1}, Lcom/t4game/PopBubble;->init(Ljava/lang/String;)V

    return-void
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 28

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->tick:S

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    int-to-short v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput-short v0, v1, Lcom/t4game/PopBubble;->tick:S

    int-to-long v5, v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/t4game/PopBubble;->tickMax:J

    move-wide v7, v0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/t4game/PopBubble;->tickMax:J

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/t4game/PopBubble;->visible:Z

    move v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->lineCount:S

    move v5, v0

    if-lez v5, :cond_0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->tick:S

    move v5, v0

    rem-int/lit8 v5, v5, 0x14

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/PopBubble;->dir:B

    move v13, v0

    packed-switch v13, :pswitch_data_0

    move/from16 v20, v12

    move/from16 v21, v11

    move/from16 v22, v10

    move/from16 v23, v9

    move/from16 v24, v8

    move/from16 v25, v7

    move/from16 v26, v6

    move/from16 v27, v5

    :goto_0
    const/4 v5, 0x5

    sub-int v6, v27, v5

    const/4 v5, 0x5

    sub-int v7, v26, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/PopBubble;->w:I

    move v5, v0

    add-int/lit8 v8, v5, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/PopBubble;->h:I

    move v5, v0

    add-int/lit8 v9, v5, 0xa

    const/high16 v5, -0x78000000

    move-object/from16 v10, p1

    invoke-static/range {v5 .. v10}, Lcom/t4game/DraftingUtil;->drawAlphaImage(IIIIILjavax/microedition/lcdui/Graphics;)V

    const v5, 0x121212

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int/lit8 v5, v6, 0x1

    add-int/lit8 v10, v7, 0x1

    const/4 v11, 0x2

    sub-int v11, v8, v11

    const/4 v12, 0x2

    sub-int v12, v9, v12

    move-object/from16 v0, p1

    move v1, v5

    move v2, v10

    move v3, v11

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    const v5, 0xd6ff37

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const/4 v5, 0x1

    sub-int v5, v8, v5

    const/4 v10, 0x1

    sub-int v10, v9, v10

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move v3, v5

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    sget-object v11, Lcom/t4game/Defaults;->smallBoxTop:Ljavax/microedition/lcdui/Image;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/16 v19, 0x0

    move-object/from16 v10, p1

    move/from16 v17, v6

    move/from16 v18, v7

    invoke-virtual/range {v10 .. v19}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    sget-object v11, Lcom/t4game/Defaults;->smallBoxTop:Ljavax/microedition/lcdui/Image;

    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x3

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/4 v5, 0x3

    sub-int v5, v6, v5

    add-int v17, v5, v8

    const/16 v19, 0x0

    move-object/from16 v10, p1

    move/from16 v18, v7

    invoke-virtual/range {v10 .. v19}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    sget-object v11, Lcom/t4game/Defaults;->smallBoxTop:Ljavax/microedition/lcdui/Image;

    const/4 v12, 0x0

    const/4 v13, 0x3

    const/4 v14, 0x3

    const/4 v15, 0x3

    const/16 v16, 0x0

    add-int v5, v7, v9

    const/4 v10, 0x3

    sub-int v18, v5, v10

    const/16 v19, 0x0

    move-object/from16 v10, p1

    move/from16 v17, v6

    invoke-virtual/range {v10 .. v19}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    sget-object v15, Lcom/t4game/Defaults;->smallBoxTop:Ljavax/microedition/lcdui/Image;

    const/16 v16, 0x3

    const/16 v17, 0x3

    const/16 v18, 0x3

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v5, 0x3

    sub-int v5, v6, v5

    add-int v12, v5, v8

    add-int v5, v7, v9

    const/4 v6, 0x3

    sub-int v13, v5, v6

    const/4 v14, 0x0

    move-object/from16 v5, p1

    move-object v6, v15

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v9, v18

    invoke-virtual/range {v5 .. v14}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    const v5, 0xd6ff37

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    move-object/from16 v5, p1

    move/from16 v6, v25

    move/from16 v7, v24

    move/from16 v8, v23

    move/from16 v9, v22

    move/from16 v10, v21

    move/from16 v11, v20

    invoke-virtual/range {v5 .. v11}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(IIIIII)V

    const v5, 0xf9df00

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->lineCount:S

    move v6, v0

    if-ge v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/PopBubble;->lines:[Ljava/lang/String;

    move-object v6, v0

    aget-object v6, v6, v5

    sget v7, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v7, v5

    add-int v7, v7, v26

    move-object/from16 v0, p1

    move-object v1, v6

    move/from16 v2, v27

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/DraftingUtil;->drawStringWithImage(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :pswitch_0
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->x:S

    move v5, v0

    add-int/lit8 v5, v5, 0xa

    add-int/lit8 v6, v5, 0xa

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->y:S

    move v7, v0

    add-int/lit8 v7, v7, 0x10

    add-int/lit8 v8, v7, 0x5

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->x:S

    move v9, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->y:S

    move v10, v0

    move/from16 v20, v7

    move/from16 v21, v6

    move/from16 v22, v7

    move/from16 v23, v5

    move/from16 v24, v10

    move/from16 v25, v9

    move/from16 v26, v8

    move/from16 v27, v5

    goto/16 :goto_0

    :pswitch_1
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->x:S

    move v5, v0

    add-int/lit8 v5, v5, 0xa

    add-int/lit8 v6, v5, 0xa

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->y:S

    move v7, v0

    const/16 v8, 0x10

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/PopBubble;->h:I

    move v8, v0

    add-int/lit8 v8, v8, 0x5

    sub-int v8, v7, v8

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->x:S

    move v9, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->y:S

    move v10, v0

    move/from16 v20, v10

    move/from16 v21, v9

    move/from16 v22, v7

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v5

    move/from16 v26, v8

    move/from16 v27, v5

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->x:S

    move v5, v0

    const/16 v6, 0xa

    sub-int/2addr v5, v6

    const/16 v6, 0xa

    sub-int v6, v5, v6

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->y:S

    move v7, v0

    add-int/lit8 v7, v7, 0x10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/PopBubble;->w:I

    move v8, v0

    sub-int v8, v5, v8

    add-int/lit8 v9, v7, 0x5

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->x:S

    move v10, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->y:S

    move v11, v0

    move/from16 v20, v7

    move/from16 v21, v5

    move/from16 v22, v7

    move/from16 v23, v6

    move/from16 v24, v11

    move/from16 v25, v10

    move/from16 v26, v9

    move/from16 v27, v8

    goto/16 :goto_0

    :pswitch_3
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->x:S

    move v5, v0

    const/16 v6, 0xa

    sub-int/2addr v5, v6

    const/16 v6, 0xa

    sub-int v6, v5, v6

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->y:S

    move v7, v0

    const/16 v8, 0x10

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/PopBubble;->w:I

    move v8, v0

    sub-int v8, v5, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/PopBubble;->h:I

    move v9, v0

    add-int/lit8 v9, v9, 0x5

    sub-int v9, v7, v9

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->x:S

    move v10, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->y:S

    move v11, v0

    move/from16 v20, v11

    move/from16 v21, v10

    move/from16 v22, v7

    move/from16 v23, v5

    move/from16 v24, v7

    move/from16 v25, v6

    move/from16 v26, v9

    move/from16 v27, v8

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->x:S

    move v5, v0

    const/4 v6, 0x6

    sub-int/2addr v5, v6

    const/16 v6, 0xa

    sub-int v6, v5, v6

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->y:S

    move v7, v0

    add-int/lit8 v7, v7, 0x10

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->x:S

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/PopBubble;->w:I

    move v9, v0

    shr-int/lit8 v9, v9, 0x1

    sub-int/2addr v8, v9

    add-int/lit8 v9, v7, 0x5

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->x:S

    move v10, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->y:S

    move v11, v0

    move/from16 v20, v7

    move/from16 v21, v5

    move/from16 v22, v7

    move/from16 v23, v6

    move/from16 v24, v11

    move/from16 v25, v10

    move/from16 v26, v9

    move/from16 v27, v8

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->x:S

    move v5, v0

    const/4 v6, 0x6

    sub-int/2addr v5, v6

    const/16 v6, 0xa

    sub-int v6, v5, v6

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->y:S

    move v7, v0

    const/16 v8, 0x10

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->x:S

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/PopBubble;->w:I

    move v9, v0

    shr-int/lit8 v9, v9, 0x1

    sub-int/2addr v8, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/PopBubble;->h:I

    move v9, v0

    add-int/lit8 v9, v9, 0x5

    sub-int v9, v7, v9

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->x:S

    move v10, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/PopBubble;->y:S

    move v11, v0

    move/from16 v20, v11

    move/from16 v21, v10

    move/from16 v22, v7

    move/from16 v23, v5

    move/from16 v24, v7

    move/from16 v25, v6

    move/from16 v26, v9

    move/from16 v27, v8

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;SS)V
    .locals 0

    iput-short p2, p0, Lcom/t4game/PopBubble;->x:S

    iput-short p3, p0, Lcom/t4game/PopBubble;->y:S

    invoke-virtual {p0, p1}, Lcom/t4game/PopBubble;->paint(Ljavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/PopBubble;->lines:[Ljava/lang/String;

    return-void
.end method

.method public repeat()V
    .locals 1

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/t4game/PopBubble;->tick:S

    return-void
.end method
