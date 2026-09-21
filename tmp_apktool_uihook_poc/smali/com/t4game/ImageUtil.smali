.class public Lcom/t4game/ImageUtil;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static resizeImage(Ljavax/microedition/lcdui/Image;IIZ)Ljavax/microedition/lcdui/Image;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/t4game/ImageUtil;->resizeImage(Ljavax/microedition/lcdui/Image;II)[I

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Ljavax/microedition/lcdui/Image;->createRGBImage([IIIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static resizeImage(Ljavax/microedition/lcdui/Image;II)[I
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v7

    mul-int v0, v3, v7

    new-array v1, v0, [I

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    mul-int v0, v3, v7

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_1

    aget v5, v1, v4

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    aput v2, v1, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    mul-int v0, p1, p2

    new-array v0, v0, [I

    move v4, v2

    :goto_1
    if-ge v4, p2, :cond_3

    move v5, v2

    :goto_2
    if-ge v5, p1, :cond_2

    mul-int v6, v5, v3

    div-int/2addr v6, p1

    mul-int v8, v4, v7

    div-int/2addr v8, p2

    mul-int v9, v4, p1

    add-int/2addr v9, v5

    mul-int/2addr v8, v3

    add-int/2addr v6, v8

    aget v6, v1, v6

    aput v6, v0, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static transparentizeImage([II)[I
    .locals 4

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    const v3, 0xffffff

    and-int/2addr v2, v3

    aput v2, p0, v1

    aget v2, p0, v1

    or-int/2addr v2, p1

    aput v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
