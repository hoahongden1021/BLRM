.class public Lcom/t4game/ExtUtils;
.super Ljava/lang/Object;


# static fields
.field private static final INT_MARKS:[I

.field public static final MAX_INT_STATUS_IDX:I = 0x7

.field public static final MAX_INT_TOGGLE_IDX:I = 0x1f

.field public static final MAX_LONG_TOGGLE_IDX:I = 0x3f

.field private static final rand:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/t4game/ExtUtils;->INT_MARKS:[I

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/t4game/ExtUtils;->rand:Ljava/util/Random;

    return-void

    nop

    :array_0
    .array-data 4
        -0x10
        -0xf1
        -0xf01
        -0xf001
        -0xf0001
        -0xf00001
        -0xf000001
        0xfffffff
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBit(JI)Z
    .locals 5

    const/4 v4, 0x0

    if-ltz p2, :cond_1

    const/16 v0, 0x3f

    if-gt p2, v0, :cond_1

    const-wide/16 v0, 0x1

    shl-long/2addr v0, p2

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method public static getStatus(II)I
    .locals 1

    if-ltz p1, :cond_0

    const/4 v0, 0x7

    if-gt p1, v0, :cond_0

    shl-int/lit8 v0, p1, 0x2

    ushr-int v0, p0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getToggle(II)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_1

    const/16 v0, 0x1f

    if-gt p1, v0, :cond_1

    shl-int v0, v2, p1

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static randomValue(I)I
    .locals 1

    if-lez p0, :cond_0

    sget-object v0, Lcom/t4game/ExtUtils;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    and-int/2addr v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static rectCollision(IIIIIIII)Z
    .locals 1

    add-int v0, p4, p6

    if-ge p0, v0, :cond_0

    add-int v0, p0, p2

    if-ge p4, v0, :cond_0

    add-int v0, p5, p7

    if-ge p1, v0, :cond_0

    add-int v0, p1, p3

    if-ge p5, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setBit(JZI)J
    .locals 3

    const-wide/16 v1, 0x1

    if-ltz p3, :cond_1

    const/16 v0, 0x3f

    if-gt p3, v0, :cond_1

    if-eqz p2, :cond_0

    shl-long v0, v1, p3

    or-long/2addr v0, p0

    :goto_0
    return-wide v0

    :cond_0
    shl-long v0, v1, p3

    xor-long/2addr v0, p0

    goto :goto_0

    :cond_1
    move-wide v0, p0

    goto :goto_0
.end method

.method public static setStatus(III)I
    .locals 2

    if-ltz p2, :cond_0

    const/4 v0, 0x7

    if-gt p2, v0, :cond_0

    if-ltz p1, :cond_0

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/t4game/ExtUtils;->INT_MARKS:[I

    aget v0, v0, p2

    and-int/2addr v0, p0

    shl-int/lit8 v1, p2, 0x2

    shl-int v1, p1, v1

    or-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, p0

    goto :goto_0
.end method

.method public static setToggle(IZI)I
    .locals 2

    const/4 v1, 0x1

    if-ltz p2, :cond_1

    const/16 v0, 0x1f

    if-gt p2, v0, :cond_1

    if-eqz p1, :cond_0

    shl-int v0, v1, p2

    or-int/2addr v0, p0

    :goto_0
    return v0

    :cond_0
    shl-int v0, v1, p2

    xor-int/2addr v0, p0

    goto :goto_0

    :cond_1
    move v0, p0

    goto :goto_0
.end method
