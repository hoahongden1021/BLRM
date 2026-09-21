.class public Ljavax/microedition/lcdui/Image;
.super Ljava/lang/Object;


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private isActivityRegionBuffer:Z

.field private regionBuffer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/microedition/lcdui/Image;->regionBuffer:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/microedition/lcdui/Image;->isActivityRegionBuffer:Z

    iput-object p1, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method protected constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    iput-boolean p2, p0, Ljavax/microedition/lcdui/Image;->isActivityRegionBuffer:Z

    return-void
.end method

.method private static createBitmap(Landroid/graphics/Bitmap;IIIII)Landroid/graphics/Bitmap;
    .locals 7

    const/high16 v4, 0x43870000    # 270.0f

    const/high16 v3, 0x43340000    # 180.0f

    const/high16 v2, 0x42b40000    # 90.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v0, -0x40800000    # -1.0f

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5}, Landroid/graphics/Matrix;->reset()V

    packed-switch p5, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :pswitch_4
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :pswitch_6
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v5, v3}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

    :pswitch_7
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    invoke-virtual {v5, v4}, Landroid/graphics/Matrix;->postRotate(F)Z

    goto :goto_0

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

.method public static createImage(II)Ljavax/microedition/lcdui/Image;
    .locals 3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;Z)V

    return-object v1
.end method

.method public static createImage(Ljava/io/InputStream;)Ljavax/microedition/lcdui/Image;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljavax/microedition/lcdui/Image;

    invoke-direct {v1, v0}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v0, Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Ljavax/microedition/lcdui/Image;->createImage(Ljava/io/InputStream;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static createImage(Ljavax/microedition/lcdui/Image;IIIII)Ljavax/microedition/lcdui/Image;
    .locals 7

    new-instance v6, Ljavax/microedition/lcdui/Image;

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Ljavax/microedition/lcdui/Image;->createBitmap(Landroid/graphics/Bitmap;IIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v6, v0}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v6
.end method

.method public static createImage([BII)Ljavax/microedition/lcdui/Image;
    .locals 2

    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljavax/microedition/lcdui/Image;

    invoke-direct {v1, v0}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1
.end method

.method public static final createRGBImage([IIIZ)Ljavax/microedition/lcdui/Image;
    .locals 2

    if-eqz p3, :cond_0

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    :goto_0
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljavax/microedition/lcdui/Image;

    invoke-direct {v1, v0}, Ljavax/microedition/lcdui/Image;-><init>(Landroid/graphics/Bitmap;)V

    return-object v1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getGraphics()Ljavax/microedition/lcdui/Graphics;
    .locals 2

    new-instance v0, Ljavax/microedition/lcdui/Graphics;

    iget-object v1, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Ljavax/microedition/lcdui/Graphics;-><init>(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public getRGB([IIIIIII)V
    .locals 8

    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    return-void
.end method

.method public getRegion(IIIII)Landroid/graphics/Bitmap;
    .locals 8

    const-wide/16 v6, 0x0

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-ne p4, v0, :cond_1

    if-nez p5, :cond_1

    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    int-to-long v0, p1

    or-long/2addr v0, v6

    const/16 v2, 0x30

    shl-long v2, v0, v2

    or-long/2addr v2, v6

    and-long/2addr v0, v6

    int-to-long v4, p2

    or-long/2addr v0, v4

    const/16 v4, 0x20

    shl-long v4, v0, v4

    or-long/2addr v2, v4

    and-long/2addr v0, v6

    int-to-long v4, p3

    or-long/2addr v0, v4

    const/16 v4, 0x12

    shl-long v4, v0, v4

    or-long/2addr v2, v4

    and-long/2addr v0, v6

    int-to-long v4, p4

    or-long/2addr v0, v4

    const/4 v4, 0x4

    shl-long v4, v0, v4

    or-long/2addr v2, v4

    and-long/2addr v0, v6

    int-to-long v4, p5

    or-long/2addr v0, v4

    or-long v6, v2, v0

    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->regionBuffer:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Ljavax/microedition/lcdui/Image;->createBitmap(Landroid/graphics/Bitmap;IIIII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Ljavax/microedition/lcdui/Image;->regionBuffer:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Image;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    return v0
.end method

.method public isRegionBufferActive()Z
    .locals 1

    iget-boolean v0, p0, Ljavax/microedition/lcdui/Image;->isActivityRegionBuffer:Z

    return v0
.end method
