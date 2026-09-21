.class public Lcom/t4game/mmorpg/dreamgame/Debug;
.super Ljava/lang/Object;


# static fields
.field public static final DEBUG_FLAG_NAMES:[Ljava/lang/String;

.field public static final SHOW_SPRITE_ID_AS_NAME:Z = false

.field public static final SHOW_SPRITE_ID_MAGIC_NUMBER:I = 0x2710

.field public static final debugOpen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u57fa\u672c\u4fe1\u606f"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "\u5c5e\u6027"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u6280\u80fd\u548cBUFFS"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u89c6\u91ce\u4e2d\u7684\u7cbe\u7075"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u526f\u672c\u8bb0\u5f55"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u542f\u52a8\u5929\u707e"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u5173\u95ed\u5929\u707e"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u8ddf\u968f"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u5730\u96f7"

    aput-object v2, v0, v1

    sput-object v0, Lcom/t4game/mmorpg/dreamgame/Debug;->DEBUG_FLAG_NAMES:[Ljava/lang/String;

    move v0, v3

    :goto_0
    sget-object v1, Lcom/t4game/mmorpg/dreamgame/Debug;->DEBUG_FLAG_NAMES:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/t4game/mmorpg/dreamgame/Debug;->DEBUG_FLAG_NAMES:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/t4game/mmorpg/dreamgame/Debug;->DEBUG_FLAG_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
