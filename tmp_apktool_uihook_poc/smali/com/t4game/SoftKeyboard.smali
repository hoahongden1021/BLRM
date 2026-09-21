.class public Lcom/t4game/SoftKeyboard;
.super Ljava/lang/Object;


# static fields
.field private static final ARROWBORAD_WH:S = 0x7es

.field private static final ARROW_H:S = 0x23s

.field private static final ARROW_W:S = 0x38s

.field private static final CANCEL_WH:S = 0x2fs

.field public static final MODE_CHANGEGOLE:B = 0x1t

.field public static final MODE_NOMAL:B = 0x0t

.field private static final OK_WH:S = 0x3ds

.field public static final POSITION_H:B = 0x3t

.field public static final POSITION_W:B = 0x2t

.field public static final POSITION_X:B = 0x0t

.field public static final POSITION_Y:B = 0x1t

.field public static final RECT_DN:B = 0x1t

.field public static final RECT_LF:B = 0x2t

.field private static final RECT_NUM:B = 0x6t

.field public static final RECT_OK:B = 0x4t

.field public static final RECT_RSOFT:B = 0x5t

.field public static final RECT_RT:B = 0x3t

.field public static final RECT_UP:B = 0x0t

.field private static final SUPPER_CONTINUEKEYEVENT:Z = true

.field private static final TIME_NEXT_KEYEVENT:S = 0x1es

.field private static instance:Lcom/t4game/SoftKeyboard; = null

.field private static final offerLX:S = 0x3s

.field private static final offerLY:S = 0x12s

.field private static final offerRX:S = 0x6s

.field private static final offerRY:S = 0x6s

.field public static rectData:[[I

.field public static rectKeyCode:[[I


# instance fields
.field private holder:Lcom/t4game/SoftKeyBoardHolder;

.field private key:[Ljavax/microedition/lcdui/Image;

.field private keyImg:[Ljavax/microedition/lcdui/Image;

.field private lh:I

.field private lw:I

.field private lx:I

.field private ly:I

.field private mode:B

.field private rectIndex:I

.field private releaseCount:I

.field private rh:I

.field private rw:I

.field private rx:I

.field private ry:I

.field private timeCnt:I

.field private trans:[I

.field private visible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v4, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [[I

    new-array v1, v4, [I

    const/16 v2, 0x26

    aput v2, v1, v5

    sget v2, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v3, 0x12

    sub-int/2addr v2, v3

    const/16 v3, 0x7e

    sub-int/2addr v2, v3

    aput v2, v1, v6

    const/16 v2, 0x38

    aput v2, v1, v7

    const/16 v2, 0x23

    aput v2, v1, v8

    aput-object v1, v0, v5

    new-array v1, v4, [I

    const/16 v2, 0x26

    aput v2, v1, v5

    sget v2, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v3, 0x12

    sub-int/2addr v2, v3

    const/16 v3, 0x23

    sub-int/2addr v2, v3

    aput v2, v1, v6

    const/16 v2, 0x38

    aput v2, v1, v7

    const/16 v2, 0x23

    aput v2, v1, v8

    aput-object v1, v0, v6

    new-array v1, v4, [I

    aput v8, v1, v5

    sget v2, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v3, 0x12

    sub-int/2addr v2, v3

    const/16 v3, 0x7e

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x23

    aput v2, v1, v6

    const/16 v2, 0x23

    aput v2, v1, v7

    const/16 v2, 0x38

    aput v2, v1, v8

    aput-object v1, v0, v7

    new-array v1, v4, [I

    const/16 v2, 0x5e

    aput v2, v1, v5

    sget v2, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v3, 0x12

    sub-int/2addr v2, v3

    const/16 v3, 0x7e

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x23

    aput v2, v1, v6

    const/16 v2, 0x23

    aput v2, v1, v7

    const/16 v2, 0x38

    aput v2, v1, v8

    aput-object v1, v0, v8

    new-array v1, v4, [I

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    const/4 v3, 0x6

    sub-int/2addr v2, v3

    const/16 v3, 0x3d

    sub-int/2addr v2, v3

    aput v2, v1, v5

    sget v2, Lcom/t4game/Defaults;->CANVAS_H:I

    const/4 v3, 0x6

    sub-int/2addr v2, v3

    const/16 v3, 0x3d

    sub-int/2addr v2, v3

    aput v2, v1, v6

    const/16 v2, 0x3d

    aput v2, v1, v7

    const/16 v2, 0x3d

    aput v2, v1, v8

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v4, [I

    sget v3, Lcom/t4game/Defaults;->CANVAS_W:I

    const/4 v4, 0x6

    sub-int/2addr v3, v4

    const/16 v4, 0x2f

    sub-int/2addr v3, v4

    aput v3, v2, v5

    const/16 v3, 0x77

    aput v3, v2, v6

    const/16 v3, 0x2f

    aput v3, v2, v7

    const/16 v3, 0x2f

    aput v3, v2, v8

    aput-object v2, v0, v1

    sput-object v0, Lcom/t4game/SoftKeyboard;->rectData:[[I

    new-array v0, v7, [[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    const/4 v1, 0x6

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    sput-object v0, Lcom/t4game/SoftKeyboard;->rectKeyCode:[[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x2
        -0x3
        -0x4
        -0x5
        -0x7
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x2
        -0x3
        -0x4
        -0x5
        0x30
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/SoftKeyboard;->visible:Z

    iput-byte v1, p0, Lcom/t4game/SoftKeyboard;->mode:B

    const/4 v0, -0x1

    iput v0, p0, Lcom/t4game/SoftKeyboard;->rectIndex:I

    iput v1, p0, Lcom/t4game/SoftKeyboard;->releaseCount:I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/t4game/SoftKeyboard;->trans:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x4
        0x4
        0x7
        0x7
    .end array-data
.end method

.method public static getInstance()Lcom/t4game/SoftKeyboard;
    .locals 1

    sget-object v0, Lcom/t4game/SoftKeyboard;->instance:Lcom/t4game/SoftKeyboard;

    if-nez v0, :cond_0

    new-instance v0, Lcom/t4game/SoftKeyboard;

    invoke-direct {v0}, Lcom/t4game/SoftKeyboard;-><init>()V

    sput-object v0, Lcom/t4game/SoftKeyboard;->instance:Lcom/t4game/SoftKeyboard;

    :cond_0
    sget-object v0, Lcom/t4game/SoftKeyboard;->instance:Lcom/t4game/SoftKeyboard;

    return-object v0
.end method

.method private getRectImage(IZ)Ljavax/microedition/lcdui/Image;
    .locals 2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/SoftKeyboard;->mode:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/t4game/SoftKeyboard;->keyImg:[Ljavax/microedition/lcdui/Image;

    const/16 v1, 0xd

    aget-object v0, v0, v1

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/SoftKeyboard;->keyImg:[Ljavax/microedition/lcdui/Image;

    const/16 v1, 0xc

    aget-object v0, v0, v1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/t4game/SoftKeyboard;->keyImg:[Ljavax/microedition/lcdui/Image;

    mul-int/lit8 v1, p1, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/SoftKeyboard;->keyImg:[Ljavax/microedition/lcdui/Image;

    mul-int/lit8 v1, p1, 0x2

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private getRectIndex(II)I
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x3

    const/4 v8, 0x0

    iget v3, p0, Lcom/t4game/SoftKeyboard;->lx:I

    iget v4, p0, Lcom/t4game/SoftKeyboard;->ly:I

    iget v5, p0, Lcom/t4game/SoftKeyboard;->lw:I

    iget v6, p0, Lcom/t4game/SoftKeyboard;->lh:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/t4game/SoftKeyboard;->isInRect(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    move v7, v8

    :goto_0
    if-gt v7, v9, :cond_5

    sget-object v0, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v0, v0, v7

    aget v3, v0, v8

    sget-object v0, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v0, v0, v7

    aget v4, v0, v11

    sget-object v0, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v0, v0, v7

    aget v5, v0, v12

    sget-object v0, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v0, v0, v7

    aget v6, v0, v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/t4game/SoftKeyboard;->isInRect(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    :goto_1
    if-ne v0, v10, :cond_0

    iget v0, p0, Lcom/t4game/SoftKeyboard;->lx:I

    add-int/lit8 v0, v0, 0x23

    iget v1, p0, Lcom/t4game/SoftKeyboard;->ly:I

    add-int/lit8 v1, v1, 0x23

    sub-int v0, p1, v0

    sub-int v1, p2, v1

    const/16 v2, 0x38

    invoke-direct {p0, v2, v0, v1}, Lcom/t4game/SoftKeyboard;->isInSquare(III)B

    move-result v0

    :cond_0
    :goto_2
    return v0

    :cond_1
    add-int/lit8 v0, v7, 0x1

    int-to-byte v0, v0

    move v7, v0

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/t4game/SoftKeyboard;->rx:I

    iget v4, p0, Lcom/t4game/SoftKeyboard;->ry:I

    iget v5, p0, Lcom/t4game/SoftKeyboard;->rw:I

    iget v6, p0, Lcom/t4game/SoftKeyboard;->rh:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/t4game/SoftKeyboard;->isInRect(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    move v7, v0

    :goto_3
    const/4 v0, 0x5

    if-gt v7, v0, :cond_4

    sget-object v0, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v0, v0, v7

    aget v3, v0, v8

    sget-object v0, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v0, v0, v7

    aget v4, v0, v11

    sget-object v0, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v0, v0, v7

    aget v5, v0, v12

    sget-object v0, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v0, v0, v7

    aget v6, v0, v9

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/t4game/SoftKeyboard;->isInRect(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v7

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v7, 0x1

    int-to-byte v0, v0

    move v7, v0

    goto :goto_3

    :cond_4
    move v0, v10

    goto :goto_2

    :cond_5
    move v0, v10

    goto :goto_1
.end method

.method private getRectKeyCode(I)I
    .locals 2

    sget-object v0, Lcom/t4game/SoftKeyboard;->rectKeyCode:[[I

    iget-byte v1, p0, Lcom/t4game/SoftKeyboard;->mode:B

    aget-object v0, v0, v1

    aget v0, v0, p1

    return v0
.end method

.method private initKeyData()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v0, v0, v6

    aget v0, v0, v3

    iput v0, p0, Lcom/t4game/SoftKeyboard;->lx:I

    sget-object v0, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v0, v0, v3

    aget v0, v0, v2

    iput v0, p0, Lcom/t4game/SoftKeyboard;->ly:I

    sget-object v0, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v0, v0, v5

    aget v0, v0, v3

    sget-object v1, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v1, v1, v5

    aget v1, v1, v6

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/SoftKeyboard;->lx:I

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput v0, p0, Lcom/t4game/SoftKeyboard;->lw:I

    sget-object v0, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v0, v0, v2

    aget v0, v0, v2

    sget-object v1, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v1, v1, v2

    aget v1, v1, v5

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/SoftKeyboard;->ly:I

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput v0, p0, Lcom/t4game/SoftKeyboard;->lh:I

    sget-object v0, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v0, v0, v4

    aget v0, v0, v3

    iput v0, p0, Lcom/t4game/SoftKeyboard;->rx:I

    sget-object v0, Lcom/t4game/SoftKeyboard;->rectData:[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget v0, v0, v2

    iput v0, p0, Lcom/t4game/SoftKeyboard;->ry:I

    sget-object v0, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v0, v0, v4

    aget v0, v0, v3

    sget-object v1, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v1, v1, v4

    aget v1, v1, v6

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/SoftKeyboard;->rx:I

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput v0, p0, Lcom/t4game/SoftKeyboard;->rw:I

    sget-object v0, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v0, v0, v4

    aget v0, v0, v2

    sget-object v1, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v1, v1, v4

    aget v1, v1, v5

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/SoftKeyboard;->ry:I

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput v0, p0, Lcom/t4game/SoftKeyboard;->rh:I

    return-void
.end method

.method private initKeyImg()V
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/SoftKeyboard;->key:[Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/SoftKeyboard;->key:[Ljavax/microedition/lcdui/Image;

    const-string v2, "/softkey/key_n.png"

    invoke-static {v2}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/t4game/SoftKeyboard;->key:[Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x1

    const-string v3, "/softkey/key_s.png"

    invoke-static {v3}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v3

    aput-object v3, v0, v2

    const/16 v0, 0xe

    new-array v0, v0, [Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/SoftKeyboard;->keyImg:[Ljavax/microedition/lcdui/Image;

    move v6, v1

    :goto_0
    iget-object v0, p0, Lcom/t4game/SoftKeyboard;->keyImg:[Ljavax/microedition/lcdui/Image;

    array-length v0, v0

    if-ge v6, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/SoftKeyboard;->trans:[I

    array-length v0, v0

    if-ge v6, v0, :cond_0

    iget-object v7, p0, Lcom/t4game/SoftKeyboard;->keyImg:[Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/SoftKeyboard;->key:[Ljavax/microedition/lcdui/Image;

    rem-int/lit8 v2, v6, 0x2

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/t4game/SoftKeyboard;->key:[Ljavax/microedition/lcdui/Image;

    rem-int/lit8 v3, v6, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/t4game/SoftKeyboard;->key:[Ljavax/microedition/lcdui/Image;

    rem-int/lit8 v4, v6, 0x2

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    iget-object v2, p0, Lcom/t4game/SoftKeyboard;->trans:[I

    aget v5, v2, v6

    move v2, v1

    invoke-static/range {v0 .. v5}, Ljavax/microedition/lcdui/Image;->createImage(Ljavax/microedition/lcdui/Image;IIIII)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    aput-object v0, v7, v6

    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/SoftKeyboard;->keyImg:[Ljavax/microedition/lcdui/Image;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/softkey/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    aput-object v2, v0, v6

    goto :goto_1

    :cond_1
    return-void
.end method

.method private final isInRect(IIIIII)Z
    .locals 1

    if-le p1, p3, :cond_0

    add-int v0, p3, p5

    if-ge p1, v0, :cond_0

    if-le p2, p4, :cond_0

    add-int v0, p4, p6

    if-ge p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final isInSquare(III)B
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-lez p2, :cond_0

    if-lez p3, :cond_0

    if-gt p2, p1, :cond_0

    if-le p3, p1, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    add-int v0, p2, p3

    if-ge v0, p1, :cond_2

    move v0, v3

    :goto_1
    if-le p2, p3, :cond_3

    move v1, v3

    :goto_2
    if-eqz v0, :cond_5

    if-eqz v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    if-eqz v1, :cond_6

    const/4 v0, 0x3

    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_0
.end method

.method private pressedKey(I)V
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-gt p1, v0, :cond_0

    const/16 v0, 0x1e

    iput v0, p0, Lcom/t4game/SoftKeyboard;->timeCnt:I

    :cond_0
    iput p1, p0, Lcom/t4game/SoftKeyboard;->rectIndex:I

    iget-object v0, p0, Lcom/t4game/SoftKeyboard;->holder:Lcom/t4game/SoftKeyBoardHolder;

    iget v1, p0, Lcom/t4game/SoftKeyboard;->rectIndex:I

    invoke-direct {p0, v1}, Lcom/t4game/SoftKeyboard;->getRectKeyCode(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/t4game/SoftKeyBoardHolder;->invokeKeyPressed(I)V

    return-void
.end method

.method private releasedKey()V
    .locals 3

    const/4 v2, -0x1

    iget v0, p0, Lcom/t4game/SoftKeyboard;->rectIndex:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/t4game/SoftKeyboard;->holder:Lcom/t4game/SoftKeyBoardHolder;

    iget v1, p0, Lcom/t4game/SoftKeyboard;->rectIndex:I

    invoke-direct {p0, v1}, Lcom/t4game/SoftKeyboard;->getRectKeyCode(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/t4game/SoftKeyBoardHolder;->invokeKeyReleased(I)V

    :cond_0
    iput v2, p0, Lcom/t4game/SoftKeyboard;->rectIndex:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/SoftKeyboard;->timeCnt:I

    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 10

    const/16 v8, 0x14

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/t4game/SoftKeyboard;->visible:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual {p1, v6, v6, v0, v1}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    sget-object v0, Lcom/t4game/SoftKeyboard;->rectData:[[I

    array-length v0, v0

    move v1, v6

    move v2, v6

    move v3, v6

    move v4, v6

    :goto_1
    if-ge v1, v0, :cond_3

    packed-switch v1, :pswitch_data_0

    :goto_2
    iget v5, p0, Lcom/t4game/SoftKeyboard;->rectIndex:I

    if-ne v5, v1, :cond_2

    move v5, v7

    :goto_3
    invoke-direct {p0, v1, v5}, Lcom/t4game/SoftKeyboard;->getRectImage(IZ)Ljavax/microedition/lcdui/Image;

    move-result-object v5

    invoke-virtual {p1, v5, v4, v3, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :pswitch_0
    iget v2, p0, Lcom/t4game/SoftKeyboard;->lx:I

    add-int/lit8 v2, v2, 0x3f

    iget v3, p0, Lcom/t4game/SoftKeyboard;->ly:I

    const/16 v4, 0x11

    move v9, v4

    move v4, v2

    move v2, v9

    goto :goto_2

    :pswitch_1
    iget v2, p0, Lcom/t4game/SoftKeyboard;->lx:I

    add-int/lit8 v2, v2, 0x3f

    iget v3, p0, Lcom/t4game/SoftKeyboard;->ly:I

    add-int/lit8 v3, v3, 0x7e

    const/16 v4, 0x21

    move v9, v4

    move v4, v2

    move v2, v9

    goto :goto_2

    :pswitch_2
    iget v2, p0, Lcom/t4game/SoftKeyboard;->lx:I

    iget v3, p0, Lcom/t4game/SoftKeyboard;->ly:I

    add-int/lit8 v3, v3, 0x3f

    const/4 v4, 0x6

    move v9, v4

    move v4, v2

    move v2, v9

    goto :goto_2

    :pswitch_3
    iget v2, p0, Lcom/t4game/SoftKeyboard;->lx:I

    add-int/lit8 v2, v2, 0x7e

    iget v3, p0, Lcom/t4game/SoftKeyboard;->ly:I

    add-int/lit8 v3, v3, 0x3f

    const/16 v4, 0xa

    move v9, v4

    move v4, v2

    move v2, v9

    goto :goto_2

    :pswitch_4
    sget-object v2, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v2, v2, v1

    aget v2, v2, v6

    sget-object v3, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v3, v3, v1

    aget v3, v3, v7

    iget v4, p0, Lcom/t4game/SoftKeyboard;->rectIndex:I

    if-ne v4, v1, :cond_4

    add-int/lit8 v2, v2, -0x3

    add-int/lit8 v3, v3, -0x3

    move v4, v2

    move v2, v8

    goto :goto_2

    :pswitch_5
    sget-object v2, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v2, v2, v1

    aget v2, v2, v6

    sget-object v3, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v3, v3, v1

    aget v3, v3, v7

    iget v4, p0, Lcom/t4game/SoftKeyboard;->rectIndex:I

    if-ne v4, v1, :cond_4

    add-int/lit8 v2, v2, -0x2

    add-int/lit8 v3, v3, -0x2

    move v4, v2

    move v2, v8

    goto :goto_2

    :cond_2
    move v5, v6

    goto :goto_3

    :cond_3
    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual {p1, v6, v6, v0, v1}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto/16 :goto_0

    :cond_4
    move v4, v2

    move v2, v8

    goto :goto_2

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

.method public initSoftKeyBoard()V
    .locals 0

    invoke-direct {p0}, Lcom/t4game/SoftKeyboard;->initKeyData()V

    invoke-direct {p0}, Lcom/t4game/SoftKeyboard;->initKeyImg()V

    return-void
.end method

.method public isVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/t4game/SoftKeyboard;->visible:Z

    return v0
.end method

.method protected pointerDragged(II)Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/t4game/SoftKeyboard;->visible:Z

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/t4game/SoftKeyboard;->getRectIndex(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/t4game/SoftKeyboard;->rectIndex:I

    if-eq v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/t4game/SoftKeyboard;->pressedKey(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method protected pointerPressed(II)Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/t4game/SoftKeyboard;->visible:Z

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/t4game/SoftKeyboard;->getRectIndex(II)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/t4game/SoftKeyboard;->pressedKey(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/t4game/SoftKeyboard;->releasedKey()V

    move v0, v2

    goto :goto_0
.end method

.method protected pointerReleased(II)Z
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/t4game/SoftKeyboard;->visible:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/t4game/SoftKeyboard;->releaseCount:I

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/t4game/SoftKeyboard;->visible:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/t4game/SoftKeyboard;->releaseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/SoftKeyboard;->releaseCount:I

    :cond_1
    iget v0, p0, Lcom/t4game/SoftKeyboard;->rectIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0}, Lcom/t4game/SoftKeyboard;->releasedKey()V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method public setHolder(Lcom/t4game/SoftKeyBoardHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/SoftKeyboard;->holder:Lcom/t4game/SoftKeyBoardHolder;

    return-void
.end method

.method public setMode(B)V
    .locals 0

    iput-byte p1, p0, Lcom/t4game/SoftKeyboard;->mode:B

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/t4game/SoftKeyboard;->visible:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/SoftKeyboard;->releaseCount:I

    :cond_0
    return-void
.end method

.method public tick()V
    .locals 2

    iget-boolean v0, p0, Lcom/t4game/SoftKeyboard;->visible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/t4game/SoftKeyboard;->timeCnt:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/t4game/SoftKeyboard;->timeCnt:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/SoftKeyboard;->timeCnt:I

    iget v0, p0, Lcom/t4game/SoftKeyboard;->timeCnt:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/t4game/SoftKeyboard;->rectIndex:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/t4game/SoftKeyboard;->rectIndex:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/16 v0, 0x1e

    iput v0, p0, Lcom/t4game/SoftKeyboard;->timeCnt:I

    iget-object v0, p0, Lcom/t4game/SoftKeyboard;->holder:Lcom/t4game/SoftKeyBoardHolder;

    iget v1, p0, Lcom/t4game/SoftKeyboard;->rectIndex:I

    invoke-direct {p0, v1}, Lcom/t4game/SoftKeyboard;->getRectKeyCode(I)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/t4game/SoftKeyBoardHolder;->invokeKeyPressed(I)V

    :cond_0
    return-void
.end method
