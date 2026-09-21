.class public Ljavax/microedition/lcdui/Graphics;
.super Ljava/lang/Object;


# static fields
.field public static final BASELINE:I = 0x40

.field public static final BOTTOM:I = 0x20

.field public static final DOTTED:I = 0x1

.field public static final HCENTER:I = 0x1

.field public static final LEFT:I = 0x4

.field public static final RIGHT:I = 0x8

.field public static final SOLID:I = 0x0

.field public static final TOP:I = 0x10

.field public static final VCENTER:I = 0x2


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field public canvas:Landroid/graphics/Canvas;

.field private font:Ljavax/microedition/lcdui/Font;

.field private paint:Landroid/graphics/Paint;

.field private strokeStyle:I

.field private tx:I

.field private ty:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0, p1}, Ljavax/microedition/lcdui/Graphics;-><init>(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/Graphics;->setFont(Ljavax/microedition/lcdui/Font;)V

    iput-object p1, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    iput-object p2, p0, Ljavax/microedition/lcdui/Graphics;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    return-void
.end method

.method private drawRegionByRotateCanvas(Landroid/graphics/Bitmap;IIIIIIII)V
    .locals 9

    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch p6, :pswitch_data_0

    :goto_0
    move v8, v2

    move v2, v1

    move v1, v8

    :goto_1
    iget-object v3, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    sub-int v4, p7, v2

    sub-int v5, p8, v1

    sub-int v6, p7, v2

    add-int/2addr v6, p4

    sub-int v7, p8, v1

    add-int/2addr v7, p5

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v3, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    sub-int v2, p7, v2

    sub-int/2addr v2, p2

    int-to-float v2, v2

    sub-int v1, p8, v1

    sub-int/2addr v1, p3

    int-to-float v1, v1

    iget-object v4, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1, v2, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :pswitch_0
    move v8, v2

    move v2, v1

    move v1, v8

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    const/high16 v3, 0x42b40000    # 90.0f

    move/from16 v0, p7

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, p8

    int-to-float v0, v0

    move v5, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    move v2, v1

    move v1, p5

    goto :goto_1

    :pswitch_2
    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    const/high16 v2, 0x43340000    # 180.0f

    move/from16 v0, p7

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, p8

    int-to-float v0, v0

    move v4, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    move v1, p5

    move v2, p4

    goto :goto_1

    :pswitch_3
    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    const/high16 v3, 0x43870000    # 270.0f

    move/from16 v0, p7

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, p8

    int-to-float v0, v0

    move v5, v0

    invoke-virtual {v1, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    move v1, v2

    move v2, p4

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v0, p7

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, p8

    int-to-float v0, v0

    move v6, v0

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    move v1, v2

    move v2, p4

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    move/from16 v0, p7

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, p8

    int-to-float v0, v0

    move v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    const/high16 v2, 0x43870000    # 270.0f

    move/from16 v0, p7

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, p8

    int-to-float v0, v0

    move v4, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    move v1, p5

    move v2, p4

    goto/16 :goto_1

    :pswitch_6
    iget-object v2, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    move/from16 v0, p7

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, p8

    int-to-float v0, v0

    move v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v2, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    const/high16 v3, 0x43340000    # 180.0f

    move/from16 v0, p7

    int-to-float v0, v0

    move v4, v0

    move/from16 v0, p8

    int-to-float v0, v0

    move v5, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Canvas;->rotate(FFF)V

    move v2, v1

    move v1, p5

    goto/16 :goto_1

    :pswitch_7
    iget-object v3, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    move/from16 v0, p7

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, p8

    int-to-float v0, v0

    move v7, v0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget-object v3, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    const/high16 v4, 0x42b40000    # 90.0f

    move/from16 v0, p7

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, p8

    int-to-float v0, v0

    move v6, v0

    invoke-virtual {v3, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_7
        :pswitch_1
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method static getAnchor(Landroid/graphics/Bitmap;I)Landroid/graphics/Point;
    .locals 8

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-nez p1, :cond_d

    const/16 v2, 0x14

    :goto_0
    and-int/lit8 v3, v2, 0x7f

    if-ne v3, v2, :cond_0

    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_c

    :cond_0
    move v3, v5

    :goto_1
    and-int/lit8 v4, v2, 0x10

    if-eqz v4, :cond_1

    and-int/lit8 v1, v2, 0x22

    if-eqz v1, :cond_b

    move v1, v5

    move v3, v6

    :goto_2
    and-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_5

    and-int/lit8 v0, v2, 0x9

    if-eqz v0, :cond_a

    move v0, v5

    move v1, v6

    :goto_3
    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad Anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    and-int/lit8 v4, v2, 0x20

    if-eqz v4, :cond_3

    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_2

    move v1, v5

    move v3, v6

    goto :goto_2

    :cond_2
    sub-int/2addr v1, v5

    sub-int v1, v6, v1

    move v7, v3

    move v3, v1

    move v1, v7

    goto :goto_2

    :cond_3
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_4

    sub-int/2addr v1, v5

    ushr-int/lit8 v1, v1, 0x1

    sub-int v1, v6, v1

    move v7, v3

    move v3, v1

    move v1, v7

    goto :goto_2

    :cond_4
    move v1, v5

    move v3, v6

    goto :goto_2

    :cond_5
    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_7

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    move v0, v5

    move v1, v6

    goto :goto_3

    :cond_6
    sub-int/2addr v0, v5

    sub-int v0, v6, v0

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_3

    :cond_7
    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    sub-int/2addr v0, v5

    ushr-int/lit8 v0, v0, 0x1

    sub-int v0, v6, v0

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_3

    :cond_8
    move v0, v5

    move v1, v6

    goto :goto_3

    :cond_9
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v0

    :cond_a
    move v0, v1

    move v1, v6

    goto :goto_3

    :cond_b
    move v1, v3

    move v3, v6

    goto :goto_2

    :cond_c
    move v3, v6

    goto :goto_1

    :cond_d
    move v2, p1

    goto :goto_0
.end method


# virtual methods
.method public clipRect(IIII)V
    .locals 3

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    add-int v1, p1, p3

    add-int v2, p2, p4

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    iput-object v0, p0, Ljavax/microedition/lcdui/Graphics;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method public drawArc(IIIIII)V
    .locals 6

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v0, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    int-to-float v2, p5

    int-to-float v3, p6

    const/4 v4, 0x0

    iget-object v5, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawChar(CIII)V
    .locals 3

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    aput-char p1, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v0, p2, p3, p4}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    return-void
.end method

.method public drawChars([CIIIII)V
    .locals 1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v0, p4, p5, p6}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    return-void
.end method

.method public drawImage(Ljavax/microedition/lcdui/Image;III)V
    .locals 5

    if-nez p4, :cond_4

    const/16 v0, 0x14

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    sub-int v1, p2, v1

    :goto_1
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    sub-int v0, p3, v0

    :goto_2
    iget-object v2, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    int-to-float v1, v1

    int-to-float v0, v0

    iget-object v4, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void

    :cond_0
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int v1, p2, v1

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p3, v0

    goto :goto_2

    :cond_2
    move v0, p3

    goto :goto_2

    :cond_3
    move v1, p2

    goto :goto_1

    :cond_4
    move v0, p4

    goto :goto_0
.end method

.method public drawLine(IIII)V
    .locals 6

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    int-to-float v3, p3

    int-to-float v4, p4

    iget-object v5, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRGB([IIIIIIIZ)V
    .locals 10

    if-nez p3, :cond_0

    move/from16 v3, p6

    :goto_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    iget-object v9, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    move v2, p2

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawBitmap([IIIIIIIZLandroid/graphics/Paint;)V

    return-void

    :cond_0
    move v3, p3

    goto :goto_0
.end method

.method public drawRect(IIII)V
    .locals 6

    new-instance v5, Landroid/graphics/Paint;

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-direct {v5, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V
    .locals 10

    add-int v0, p2, p4

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    if-gt v0, v1, :cond_0

    add-int v0, p3, p5

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    if-ltz p4, :cond_0

    if-ltz p5, :cond_0

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Area out of Image"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    and-int/lit8 v0, p9, 0x2

    if-eqz v0, :cond_2

    div-int/lit8 v0, p5, 0x2

    sub-int v0, p8, v0

    move v8, v0

    :goto_0
    and-int/lit8 v0, p9, 0x8

    if-eqz v0, :cond_3

    sub-int v0, p7, p4

    move v7, v0

    :goto_1
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->isRegionBufferActive()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p1 .. p6}, Ljavax/microedition/lcdui/Image;->getRegion(IIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    int-to-float v2, v7

    int-to-float v3, v8

    iget-object v4, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_2
    return-void

    :cond_2
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_6

    sub-int v0, p8, p5

    move v8, v0

    goto :goto_0

    :cond_3
    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_5

    div-int/lit8 v0, p4, 0x2

    sub-int v0, p7, v0

    move v7, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegionByRotateCanvas(Landroid/graphics/Bitmap;IIIIIIII)V

    goto :goto_2

    :cond_5
    move/from16 v7, p7

    goto :goto_1

    :cond_6
    move/from16 v8, p8

    goto :goto_0
.end method

.method public drawRoundRect(IIIIII)V
    .locals 6

    new-instance v0, Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    iget-object v2, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v2, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    int-to-float v3, p5

    int-to-float v4, p6

    iget-object v5, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method public drawString(Ljava/lang/String;III)V
    .locals 4

    if-nez p4, :cond_1

    const/16 v0, 0x14

    :goto_0
    and-int/lit8 v1, v0, 0xd

    sparse-switch v1, :sswitch_data_0

    :goto_1
    :sswitch_0
    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->font:Ljavax/microedition/lcdui/Font;

    if-nez v1, :cond_0

    invoke-static {}, Ljavax/microedition/lcdui/Font;->getDefaultFont()Ljavax/microedition/lcdui/Font;

    move-result-object v1

    iput-object v1, p0, Ljavax/microedition/lcdui/Graphics;->font:Ljavax/microedition/lcdui/Font;

    :cond_0
    and-int/lit8 v0, v0, 0x72

    sparse-switch v0, :sswitch_data_1

    move v0, p3

    :goto_2
    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    int-to-float v2, p2

    int-to-float v0, v0

    iget-object v3, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void

    :sswitch_1
    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    :sswitch_2
    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    goto :goto_1

    :sswitch_3
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getBaselinePosition()I

    move-result v0

    add-int/2addr v0, p3

    goto :goto_2

    :sswitch_4
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v0

    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Font;->getBaselinePosition()I

    move-result v1

    sub-int/2addr v0, v1

    sub-int v0, p3, v0

    goto :goto_2

    :sswitch_5
    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Font;->getHeight()I

    move-result v0

    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->font:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Font;->getBaselinePosition()I

    move-result v1

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    sub-int v0, p3, v0

    goto :goto_2

    :cond_1
    move v0, p4

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x4 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x2 -> :sswitch_5
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public drawSubstring(Ljava/lang/String;IIIII)V
    .locals 1

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p4, p5, p6}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    return-void
.end method

.method public fillArc(IIIIII)V
    .locals 6

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v0, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    int-to-float v2, p5

    int-to-float v3, p6

    const/4 v4, 0x1

    iget-object v5, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public fillRect(IIII)V
    .locals 6

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    iget-object v5, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public fillRoundRect(IIIIII)V
    .locals 6

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v2, p1

    int-to-float v3, p2

    add-int v4, p1, p3

    int-to-float v4, v4

    add-int v5, p2, p4

    int-to-float v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v2, p5

    int-to-float v3, p6

    iget-object v4, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public fillTriangle(IIIIII)V
    .locals 3

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    int-to-float v1, p3

    int-to-float v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v1, p5

    int-to-float v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    iget-object v2, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getBlueComponent()I
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getCanvas()Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public getClipHeight()I
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public getClipWidth()I
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public getClipX()I
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->left:I

    return v0
.end method

.method public getClipY()I
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method

.method public getColor()I
    .locals 2

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const v1, 0xffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public getDisplayColor(I)I
    .locals 0

    return p1
.end method

.method public getFont()Ljavax/microedition/lcdui/Font;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->font:Ljavax/microedition/lcdui/Font;

    return-object v0
.end method

.method public getGrayScale()I
    .locals 2

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Graphics;->getRedComponent()I

    move-result v0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Graphics;->getGreenComponent()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Graphics;->getBlueComponent()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getGreenComponent()I
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getRedComponent()I
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getStrokeStyle()I
    .locals 1

    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->strokeStyle:I

    return v0
.end method

.method public getTranslateX()I
    .locals 1

    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->tx:I

    return v0
.end method

.method public getTranslateY()I
    .locals 1

    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->ty:I

    return v0
.end method

.method public resizeImage(Ljavax/microedition/lcdui/Image;IIII)V
    .locals 5

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    new-instance v2, Landroid/graphics/Rect;

    add-int/2addr v0, p2

    add-int/2addr v1, p3

    invoke-direct {v2, p2, p3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    add-int v1, p2, p4

    add-int v3, p3, p5

    invoke-direct {v0, p2, p3, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget-object v4, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public setClip(IIII)V
    .locals 3

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    iget v1, p0, Ljavax/microedition/lcdui/Graphics;->tx:I

    int-to-float v1, v1

    iget v2, p0, Ljavax/microedition/lcdui/Graphics;->ty:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    add-int v1, p1, p3

    add-int v2, p2, p4

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    return-void
.end method

.method public setColor(I)V
    .locals 2

    shr-int/lit8 v0, p1, 0x18

    if-nez v0, :cond_0

    const/high16 v0, -0x1000000

    or-int/2addr v0, p1

    :goto_0
    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public setColor(III)V
    .locals 2

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1, p1, p2, p3}, Landroid/graphics/Paint;->setARGB(IIII)V

    return-void
.end method

.method public setFont(Ljavax/microedition/lcdui/Font;)V
    .locals 3

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Font;->getTypefacePaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->isUnderlineText()Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    :goto_0
    iput-object p1, p0, Ljavax/microedition/lcdui/Graphics;->font:Ljavax/microedition/lcdui/Font;

    return-void

    :cond_0
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, Ljavax/microedition/lcdui/Graphics;->paint:Landroid/graphics/Paint;

    goto :goto_0
.end method

.method public setGrayScale(I)V
    .locals 2

    shl-int/lit8 v0, p1, 0x10

    shl-int/lit8 v1, p1, 0x7

    or-int/2addr v0, v1

    or-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    return-void
.end method

.method public setStrokeStyle(I)V
    .locals 0

    iput p1, p0, Ljavax/microedition/lcdui/Graphics;->strokeStyle:I

    return-void
.end method

.method public translate(II)V
    .locals 3

    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->tx:I

    add-int/2addr v0, p1

    iput v0, p0, Ljavax/microedition/lcdui/Graphics;->tx:I

    iget v0, p0, Ljavax/microedition/lcdui/Graphics;->ty:I

    add-int/2addr v0, p2

    iput v0, p0, Ljavax/microedition/lcdui/Graphics;->ty:I

    iget-object v0, p0, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method
