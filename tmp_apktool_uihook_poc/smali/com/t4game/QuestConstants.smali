.class public Lcom/t4game/QuestConstants;
.super Ljava/lang/Object;


# static fields
.field public static CONDITION_LIMITTYPE_BAISHI:B = 0x0t

.field public static CONDITION_LIMITTYPE_CHAIN:B = 0x0t

.field public static CONDITION_LIMITTYPE_CHENGSHEN:B = 0x0t

.field public static CONDITION_LIMITTYPE_CHENGXIAN:B = 0x0t

.field public static CONDITION_LIMITTYPE_CONFLICTQUEST:B = 0x0t

.field public static CONDITION_LIMITTYPE_COUNTRY:B = 0x0t

.field public static CONDITION_LIMITTYPE_EXISTQUEST:B = 0x0t

.field public static CONDITION_LIMITTYPE_GANG:B = 0x0t

.field public static CONDITION_LIMITTYPE_LEVEL:B = 0x0t

.field public static CONDITION_LIMITTYPE_MARRIAGE:B = 0x0t

.field public static CONDITION_LIMITTYPE_OCCUPATION:B = 0x0t

.field public static CONDITION_LIMITTYPE_PERIODRANGE:B = 0x0t

.field public static CONDITION_LIMITTYPE_PREQUEST:B = 0x0t

.field public static CONDITION_LIMITTYPE_SEX:B = 0x0t

.field public static CONDITION_LIMITTYPE_SHOUTU:B = 0x0t

.field public static CONDITION_LIMITTYPE_SWORN:B = 0x0t

.field public static CONDITION_LIMITTYPE_TEACHER:B = 0x0t

.field public static CONDITION_LIMITTYPE_UNACCEPT:B = 0x0t

.field public static CONDITION_LIMITTYPE_VIP:B = 0x0t

.field public static final QUEST_ITEM_BRANCH:B = 0x1t

.field public static final QUEST_ITEM_CHAIN:B = 0x7t

.field public static final QUEST_ITEM_COUNTRY:B = 0x4t

.field public static final QUEST_ITEM_FEAST:B = 0x5t

.field public static final QUEST_ITEM_GANG:B = 0x3t

.field public static final QUEST_ITEM_MAIN:B = 0x0t

.field public static final QUEST_ITEM_NAMES:[Ljava/lang/String;

.field public static final QUEST_ITEM_NUM:B = 0x8t

.field public static final QUEST_ITEM_OCCUPATION:B = 0x6t

.field public static final QUEST_ITEM_SCENARIO:B = 0x2t

.field public static final QUEST_ORDER_CATCH:B = 0x5t

.field public static final QUEST_ORDER_CONVOY:B = 0x7t

.field public static final QUEST_ORDER_CORPS:B = 0x8t

.field public static final QUEST_ORDER_DESTORY:B = 0x6t

.field public static final QUEST_ORDER_EXPLORE:B = 0x4t

.field public static final QUEST_ORDER_FAMILY:B = 0x9t

.field public static final QUEST_ORDER_GIVE:B = 0x3t

.field public static final QUEST_ORDER_KILL:B = 0x1t

.field public static final QUEST_ORDER_LOOT:B = 0x2t

.field public static final QUEST_ORDER_NAMES:[Ljava/lang/String;

.field public static final QUEST_ORDER_NUM:B = 0x8t

.field public static final QUEST_ORDER_TALK:B = 0x0t

.field public static final QUEST_ORDER_shitu:B = 0xat

.field public static final QUEST_SPRITE_GROUP:B = 0x0t

.field public static final QUEST_SPRITE_NAMES:[Ljava/lang/String;

.field public static final QUEST_SPRITE_NPC:B = 0x1t

.field public static final QUEST_SPRITE_NUM:B = 0x2t

.field public static final QUEST_STATE_NAME:[Ljava/lang/String;

.field public static final QUEST_TRIGGER_NPC:B = 0x0t

.field public static final QUEST_TRIGGER_THING:B = 0x1t

.field public static final ROLE_QUEST_STATE_COMPLETE:B = 0x1t

.field public static final ROLE_QUEST_STATE_DELIVER:B = 0x2t

.field public static final ROLE_QUEST_STATE_FAILED:B = 0x3t

.field public static final ROLE_QUEST_STATE_GIVEUP:B = 0x4t

.field public static final ROLE_QUEST_STATE_MISSED:B = 0x5t

.field public static final ROLE_QUEST_STATE_UNCOMPLETE:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u4e3b"

    aput-object v1, v0, v3

    const-string v1, "\u652f"

    aput-object v1, v0, v4

    const-string v1, "\u526f"

    aput-object v1, v0, v5

    const-string v1, "\u5e2e"

    aput-object v1, v0, v6

    const-string v1, "\u56fd"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u8282"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u804c"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u73af"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u56e2"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u5bb6"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u5e08"

    aput-object v2, v0, v1

    sput-object v0, Lcom/t4game/QuestConstants;->QUEST_ITEM_NAMES:[Ljava/lang/String;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u8c08\u8bdd"

    aput-object v1, v0, v3

    const-string v1, "\u6740\u602a"

    aput-object v1, v0, v4

    const-string v1, "\u6536\u96c6"

    aput-object v1, v0, v5

    const-string v1, "\u9001\u4e1c\u897f"

    aput-object v1, v0, v6

    const-string v1, "\u63a2\u7d22"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u6355\u6349"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u6467\u6bc1"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u62a4\u9001"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u672a\u63a5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/t4game/QuestConstants;->QUEST_ORDER_NAMES:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u672a\u5b8c\u6210"

    aput-object v1, v0, v3

    const-string v1, "\u5b8c\u6210"

    aput-object v1, v0, v4

    const-string v1, "\u5df2\u4ea4\u8fc7"

    aput-object v1, v0, v5

    const-string v1, "\u5931\u8d25"

    aput-object v1, v0, v6

    const-string v1, "\u653e\u5f03"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "\u672a\u63a5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/t4game/QuestConstants;->QUEST_STATE_NAME:[Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u7cbe\u7075\u7ec4"

    aput-object v1, v0, v3

    const-string v1, "\u6307\u5b9aNPC"

    aput-object v1, v0, v4

    sput-object v0, Lcom/t4game/QuestConstants;->QUEST_SPRITE_NAMES:[Ljava/lang/String;

    const/4 v0, -0x1

    sput-byte v0, Lcom/t4game/QuestConstants;->CONDITION_LIMITTYPE_LEVEL:B

    const/4 v0, -0x2

    sput-byte v0, Lcom/t4game/QuestConstants;->CONDITION_LIMITTYPE_UNACCEPT:B

    const/4 v0, -0x3

    sput-byte v0, Lcom/t4game/QuestConstants;->CONDITION_LIMITTYPE_EXISTQUEST:B

    const/4 v0, -0x4

    sput-byte v0, Lcom/t4game/QuestConstants;->CONDITION_LIMITTYPE_OCCUPATION:B

    const/4 v0, -0x5

    sput-byte v0, Lcom/t4game/QuestConstants;->CONDITION_LIMITTYPE_SEX:B

    const/4 v0, -0x6

    sput-byte v0, Lcom/t4game/QuestConstants;->CONDITION_LIMITTYPE_PREQUEST:B

    const/4 v0, -0x7

    sput-byte v0, Lcom/t4game/QuestConstants;->CONDITION_LIMITTYPE_CONFLICTQUEST:B

    const/4 v0, -0x8

    sput-byte v0, Lcom/t4game/QuestConstants;->CONDITION_LIMITTYPE_MARRIAGE:B

    const/16 v0, -0x9

    sput-byte v0, Lcom/t4game/QuestConstants;->CONDITION_LIMITTYPE_GANG:B

    const/16 v0, -0xa

    sput-byte v0, Lcom/t4game/QuestConstants;->CONDITION_LIMITTYPE_CHENGXIAN:B

    const/16 v0, -0xb

    sput-byte v0, Lcom/t4game/QuestConstants;->CONDITION_LIMITTYPE_CHENGSHEN:B

    const/16 v0, -0xc

    sput-byte v0, Lcom/t4game/QuestConstants;->CONDITION_LIMITTYPE_SHOUTU:B

    const/16 v0, -0xd

    sput-byte v0, Lcom/t4game/QuestConstants;->CONDITION_LIMITTYPE_BAISHI:B

    const/16 v0, -0xe

    sput-byte v0, Lcom/t4game/QuestConstants;->CONDITION_LIMITTYPE_CHAIN:B

    const/16 v0, -0xf

    sput-byte v0, Lcom/t4game/QuestConstants;->CONDITION_LIMITTYPE_SWORN:B

    const/16 v0, -0x10

    sput-byte v0, Lcom/t4game/QuestConstants;->CONDITION_LIMITTYPE_COUNTRY:B

    const/16 v0, -0x11

    sput-byte v0, Lcom/t4game/QuestConstants;->CONDITION_LIMITTYPE_PERIODRANGE:B

    const/16 v0, -0x12

    sput-byte v0, Lcom/t4game/QuestConstants;->CONDITION_LIMITTYPE_TEACHER:B

    const/16 v0, -0x13

    sput-byte v0, Lcom/t4game/QuestConstants;->CONDITION_LIMITTYPE_VIP:B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
