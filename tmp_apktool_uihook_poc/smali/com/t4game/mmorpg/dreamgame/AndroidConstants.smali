.class public Lcom/t4game/mmorpg/dreamgame/AndroidConstants;
.super Ljava/lang/Object;


# static fields
.field public static final OUTFIT_IMAGEPOS_MAPPING:[B

.field public static final OUTFIT_TYPE_NAMES:[Ljava/lang/String;

.field public static final OUTFIT_TYPE_NUM:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u5e3d\u5b50"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u4e0a\u8863"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u88e4\u5b50"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u6b66\u5668"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u62ab\u98ce"

    aput-object v2, v0, v1

    sput-object v0, Lcom/t4game/mmorpg/dreamgame/AndroidConstants;->OUTFIT_TYPE_NAMES:[Ljava/lang/String;

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/t4game/mmorpg/dreamgame/AndroidConstants;->OUTFIT_IMAGEPOS_MAPPING:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
        -0x1t
        0x3t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x4t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
