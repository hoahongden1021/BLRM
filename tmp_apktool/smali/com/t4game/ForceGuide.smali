.class public Lcom/t4game/ForceGuide;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_ACCEPT_QUEST:B = 0x20t

.field public static final ACTION_ACCEPT_SET:B = 0x1ft

.field public static final ACTION_ATTACK_MONSTER:B = 0xat

.field public static final ACTION_ENTER_GENIUS:B = 0x13t

.field public static final ACTION_ENTER_QUESTDES:B = 0x3t

.field public static final ACTION_ENTER_QUESTLIST:B = 0x5t

.field public static final ACTION_ENTER_QUESTMENU:B = 0x6t

.field public static final ACTION_ENTER_SELF_BATTLE:B = 0x1ct

.field public static final ACTION_ENTER_SETKEY:B = 0x16t

.field public static final ACTION_EQUIP_ITEMS:B = 0xft

.field public static final ACTION_EQUIP_PACK_RETURN:B = 0x10t

.field public static final ACTION_FIRST_MOVE:B = 0x0t

.field public static final ACTION_NPC_FUNCTION:B = 0x2t

.field public static final ACTION_OPEN_EQUIPMENU:B = 0xet

.field public static final ACTION_OPEN_EQUIPPACK:B = 0xdt

.field public static final ACTION_OPEN_MENU:B = 0x4t

.field public static final ACTION_OPEN_MENU_GENIUS:B = 0x11t

.field public static final ACTION_OPEN_MENU_GENIUSTREE:B = 0x12t

.field public static final ACTION_OPEN_MENU_PACK:B = 0xbt

.field public static final ACTION_OPEN_MENU_SELF_BATTLE:B = 0x1bt

.field public static final ACTION_OPEN_MENU_SYSTEM_SET:B = 0x15t

.field public static final ACTION_OPEN_QUICK_KEY:B = 0x1at

.field public static final ACTION_OPEN_SUBMENU:B = 0xct

.field public static final ACTION_QUEST_COMPLETED:B = 0x8t

.field public static final ACTION_QUEST_LEADING:B = 0x7t

.field public static final ACTION_SAVE_SET:B = 0x19t

.field public static final ACTION_SELECT_MONSTER:B = 0x9t

.field public static final ACTION_SELECT_NORMAL_ATTACK:B = 0x1dt

.field public static final ACTION_SELECT_NPC:B = 0x1t

.field public static final ACTION_SELECT_SKILL:B = 0x17t

.field public static final ACTION_SET_ATTACK_NUM:B = 0x1et

.field public static final ACTION_SET_NUM:B = 0x18t

.field public static final ACTION_STUDY_GENIUS:B = 0x14t

.field public static final ACTIVE:B = 0x0t

.field public static final CLOSED:B = 0x2t

.field public static final GROUP_ACCEPT_QUEST_LEADING:B = 0x9t

.field public static GROUP_ACTION:[[B = null

.field public static final GROUP_EQUIPED_ITEM:B = 0x5t

.field public static final GROUP_FIRST_DELIVERY_QUEST:B = 0x3t

.field public static final GROUP_FIRST_KILL_MONSTER:B = 0x4t

.field public static final GROUP_FIRST_MOVE:B = 0x0t

.field public static final GROUP_GENIUS_ADD:B = 0x6t

.field public static final GROUP_POP_QUEST_LIST:B = 0x1t

.field public static final GROUP_QUEST_LEADING:B = 0x2t

.field public static final GROUP_SET_CUSTOM_BATTLE:B = 0x8t

.field public static final GROUP_SET_KEYBOARD:B = 0x7t

.field private static final TICK_MAX:S = 0x0s

.field public static final UNIT_NULL:B = -0x1t

.field public static final WAITING:B = 0x1t


# instance fields
.field private BUBBLE_TXT:[Ljava/lang/String;

.field public KEY_VALUE:[[B

.field private bubble:Lcom/t4game/PopBubble;

.field public idOfAction:B

.field public idOfGroup:B

.field public idxOfGroup:B

.field public isAnimOver:Z

.field public isFirstLeadOn:Z

.field public isLocked:Z

.field private npcNames:[Ljava/lang/String;

.field private showTime:J

.field private startTime:J

.field public state:B

.field private userPopFlag:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v0, 0xa

    new-array v0, v0, [[B

    new-array v1, v5, [B

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [B

    aput-byte v5, v1, v4

    aput-object v1, v0, v3

    const/4 v1, 0x2

    new-array v2, v6, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [B

    const/16 v2, 0x8

    aput-byte v2, v1, v4

    aput-object v1, v0, v5

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v2, v7, [B

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v1, v6, [B

    fill-array-data v1, :array_4

    aput-object v1, v0, v7

    const/4 v1, 0x7

    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v7, [B

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [B

    const/16 v3, 0x20

    aput-byte v3, v2, v4

    aput-object v2, v0, v1

    sput-object v0, Lcom/t4game/ForceGuide;->GROUP_ACTION:[[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
    .end array-data

    :array_1
    .array-data 1
        0x4t
        0x5t
        0x6t
        0x7t
    .end array-data

    :array_2
    .array-data 1
        0x9t
        0xat
    .end array-data

    nop

    :array_3
    .array-data 1
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
    .end array-data

    nop

    :array_4
    .array-data 1
        0x11t
        0x12t
        0x13t
        0x14t
    .end array-data

    :array_5
    .array-data 1
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v3, -0x5

    const/4 v7, -0x6

    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v4, p0, Lcom/t4game/ForceGuide;->userPopFlag:B

    iput-boolean v4, p0, Lcom/t4game/ForceGuide;->isLocked:Z

    iput-boolean v4, p0, Lcom/t4game/ForceGuide;->isAnimOver:Z

    const/16 v0, 0x21

    new-array v0, v0, [[B

    const/4 v1, 0x4

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v6, [B

    aput-byte v3, v1, v4

    aput-object v1, v0, v6

    new-array v1, v6, [B

    aput-byte v3, v1, v4

    aput-object v1, v0, v5

    const/4 v1, 0x3

    new-array v2, v5, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v6, [B

    aput-byte v7, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [B

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v5, [B

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v5, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v6, [B

    aput-byte v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v6, [B

    aput-byte v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v6, [B

    aput-byte v7, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v5, [B

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v5, [B

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v5, [B

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v5, [B

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v6, [B

    const/4 v3, -0x7

    aput-byte v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v6, [B

    aput-byte v7, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v5, [B

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v5, [B

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v5, [B

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v6, [B

    aput-byte v7, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v5, [B

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v6, [B

    const/4 v3, -0x4

    aput-byte v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v6, [B

    const/16 v3, 0x31

    aput-byte v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v6, [B

    aput-byte v7, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v6, [B

    aput-byte v7, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v5, [B

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v5, [B

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v6, [B

    const/4 v3, -0x4

    aput-byte v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v6, [B

    const/16 v3, 0x31

    aput-byte v3, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v6, [B

    aput-byte v7, v2, v4

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v5, [B

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/t4game/ForceGuide;->KEY_VALUE:[[B

    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u6309\u5bfc\u822a\u952e\u79fb\u52a8\uff0c\u5411\u5de6\u79fb\u5411\u5f69\u4e91\u4ed9\u5b50"

    aput-object v1, v0, v4

    const-string v1, "\u6309\u4e2d\u952e\u9009\u4e2d\u5f69\u4e91\u4ed9\u5b50"

    aput-object v1, v0, v6

    const-string v1, "\u6309\u4e2d\u952e\u548c\u5f69\u4e91\u4ed9\u5b50\u5bf9\u8bdd"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "\u6309\u5de6\u8f6f\u952e\u6216\u4e2d\u952e\u67e5\u770b\u4efb\u52a1\u8be6\u60c5"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u6309\u5de6\u8f6f\u952e\u6253\u5f00\u64cd\u4f5c\u83dc\u5355"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u6309\u5de6\u8f6f\u952e\u6216\u4e2d\u952e\u8fdb\u5165\u4efb\u52a1\u5217\u8868"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u6309\u5de6\u8f6f\u952e\u6216\u4e2d\u952e\u6253\u5f00\u64cd\u4f5c\u83dc\u5355"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u6309\u5de6\u8f6f\u952e\u6216\u4e2d\u952e\u8fdb\u884c\u4efb\u52a1\u5bfb\u5f84"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u6309\u5de6\u8f6f\u952e\u6216\u4e2d\u952e\u5b8c\u6210\u4efb\u52a1"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u4e2d\u952e\u9009\u62e9\u602a\u7269"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u524d\u884c\u6309\u4e2d\u952e\u653b\u51fb\u602a\u7269"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u6309\u5de6\u8f6f\u952e\u6253\u5f00\u83dc\u5355"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u5de6\u8f6f\u952e\u6216\u4e2d\u952e\u6253\u5f00\u80cc\u5305"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u5de6\u952e\u6216\u4e2d\u952e\u8fdb\u5165\u7269\u54c1\u5305\u88f9"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u6309\u5de6\u8f6f\u952e\u6253\u5f00\u64cd\u4f5c\u83dc\u5355"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u6309\u5de6\u8f6f\u952e\u6216\u4e2d\u952e\u88c5\u5907\u6b66\u5668"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u6309\u53f3\u952e\u8fd4\u56de"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u5de6\u8f6f\u952e\u8fdb\u884c\u64cd\u4f5c"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u5de6\u8f6f\u952e\u6216\u8005\u4e2d\u952e\u64cd\u4f5c"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u5de6\u8f6f\u952e\u6216\u4e2d\u952e\u5b66\u4e60\u5929\u8d4b"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "\u5de6\u8f6f\u952e\u6216\u4e2d\u952e\u8fdb\u884c\u5b66\u4e60"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "\u5de6\u8f6f\u952e\u8fdb\u884c\u64cd\u4f5c"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "\u5de6\u8f6f\u952e\u6216\u4e2d\u952e\u8fdb\u884c\u8bbe\u7f6e"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "\u6309\u65b9\u5411\u952e\u53f3\u952e\u9009\u62e9\u6280\u80fd"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "\u6309\u6570\u5b57\u952e1\u8bbe\u7f6e\u6309\u952e"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "\u6309\u5de6\u8f6f\u952e\u63d0\u4ea4\u8bbe\u7f6e"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "\u5de6\u8f6f\u952e\u6253\u5f00\u83dc\u5355"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "\u5de6\u8f6f\u952e\u6216\u4e2d\u952e\u64cd\u4f5c"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "\u5de6\u8f6f\u952e\u6216\u4e2d\u952e\u64cd\u4f5c"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "\u6309\u65b9\u5411\u952e\u53f3\u952e\u9009\u62e9\u6280\u80fd"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "\u6309\u6570\u5b57\u952e1\u8bbe\u7f6e\u81ea\u5b9a\u4e49\u653b\u51fb"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "\u6309\u5de6\u8f6f\u952e\u63d0\u4ea4\u8bbe\u7f6e"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "\u6309\u5de6\u8f6f\u952e\u6216\u4e2d\u952e\u786e\u5b9a\u63a5\u53d7\u4efb\u52a1"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/t4game/ForceGuide;->BUBBLE_TXT:[Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/t4game/ForceGuide;->showTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/t4game/ForceGuide;->startTime:J

    new-instance v0, Lcom/t4game/PopBubble;

    invoke-direct {v0, v4}, Lcom/t4game/PopBubble;-><init>(S)V

    iput-object v0, p0, Lcom/t4game/ForceGuide;->bubble:Lcom/t4game/PopBubble;

    iput-boolean v4, p0, Lcom/t4game/ForceGuide;->isFirstLeadOn:Z

    iput-byte v5, p0, Lcom/t4game/ForceGuide;->state:B

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u5f69\u4e91\u4ed9\u5b50"

    aput-object v1, v0, v4

    const-string v1, "\u706b\u72d0\u5996"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/t4game/ForceGuide;->npcNames:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        -0x3t
        -0x4t
        -0x1t
        -0x2t
    .end array-data

    :array_1
    .array-data 1
        -0x5t
        -0x6t
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x5t
        -0x6t
    .end array-data

    nop

    :array_3
    .array-data 1
        -0x5t
        -0x6t
    .end array-data

    nop

    :array_4
    .array-data 1
        -0x5t
        -0x6t
    .end array-data

    nop

    :array_5
    .array-data 1
        -0x5t
        -0x6t
    .end array-data

    nop

    :array_6
    .array-data 1
        -0x5t
        -0x6t
    .end array-data

    nop

    :array_7
    .array-data 1
        -0x5t
        -0x6t
    .end array-data

    nop

    :array_8
    .array-data 1
        -0x5t
        -0x6t
    .end array-data

    nop

    :array_9
    .array-data 1
        -0x5t
        -0x6t
    .end array-data

    nop

    :array_a
    .array-data 1
        -0x5t
        -0x6t
    .end array-data

    nop

    :array_b
    .array-data 1
        -0x5t
        -0x6t
    .end array-data

    nop

    :array_c
    .array-data 1
        -0x5t
        -0x6t
    .end array-data

    nop

    :array_d
    .array-data 1
        -0x5t
        -0x6t
    .end array-data

    nop

    :array_e
    .array-data 1
        -0x5t
        -0x6t
    .end array-data

    nop

    :array_f
    .array-data 1
        -0x5t
        -0x6t
    .end array-data

    nop

    :array_10
    .array-data 1
        -0x5t
        -0x6t
    .end array-data
.end method

.method private closeActionDynaminc(Lcom/t4game/GameWorld;)V
    .locals 1

    iget-byte v0, p0, Lcom/t4game/ForceGuide;->idOfAction:B

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p1}, Lcom/t4game/GameWorld;->stopUserMove()V

    invoke-direct {p0, p1}, Lcom/t4game/ForceGuide;->closeUserPop(Lcom/t4game/GameWorld;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private closeActionStatic(Lcom/t4game/GameWorld;)V
    .locals 1

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/ForceGuide;->state:B

    iget-byte v0, p0, Lcom/t4game/ForceGuide;->idOfAction:B

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcom/t4game/ForceGuide;->bubble:Lcom/t4game/PopBubble;

    invoke-virtual {v0}, Lcom/t4game/PopBubble;->close()V

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/t4game/ForceGuide;->closeUserPop(Lcom/t4game/GameWorld;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0x11 -> :sswitch_0
        0x15 -> :sswitch_0
        0x1a -> :sswitch_0
    .end sparse-switch
.end method

.method private closeUserPop(Lcom/t4game/GameWorld;)V
    .locals 3

    const/4 v1, 0x0

    iput-byte v1, p0, Lcom/t4game/ForceGuide;->userPopFlag:B

    iget-object v0, p1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iput-byte v1, v0, Lcom/t4game/GUser;->SayInPop:B

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/t4game/GUser;->StartPop:J

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/t4game/GUser;->words:Ljava/lang/String;

    return-void
.end method

.method private getUnitDynamic(Lcom/t4game/GameWorld;)B
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/t4game/ForceGuide;->isFirstLeadOn:Z

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/t4game/ForceGuide;->isAnimOver:Z

    iput-boolean v2, p0, Lcom/t4game/ForceGuide;->isFirstLeadOn:Z

    move v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/t4game/ForceGuide;->npcNames:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/t4game/ForceGuide;->npcNames:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-direct {p0, v1, p1}, Lcom/t4game/ForceGuide;->isNpcInUserView(Ljava/lang/String;Lcom/t4game/GameWorld;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/t4game/ForceGuide;->npcNames:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/t4game/ForceGuide;->npcNames:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {p0, v1, p1}, Lcom/t4game/ForceGuide;->isNpcInUserView(Ljava/lang/String;Lcom/t4game/GameWorld;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0xa

    goto :goto_0
.end method

.method private isActionDynamicDone(Lcom/t4game/GameWorld;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-byte v0, p0, Lcom/t4game/ForceGuide;->idOfAction:B

    sparse-switch v0, :sswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :sswitch_0
    iget-object v0, p0, Lcom/t4game/ForceGuide;->npcNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/ForceGuide;->npcNames:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-direct {p0, v0, p1}, Lcom/t4game/ForceGuide;->isNpcInUserView(Ljava/lang/String;Lcom/t4game/GameWorld;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/t4game/ForceGuide;->npcNames:[Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/ForceGuide;->npcNames:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-direct {p0, v0, p1}, Lcom/t4game/ForceGuide;->isNpcInUserView(Ljava/lang/String;Lcom/t4game/GameWorld;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method private isActionStaticDone(ILcom/t4game/GameScreen;)Z
    .locals 6

    const/4 v5, -0x5

    const/4 v4, -0x6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-byte v0, p0, Lcom/t4game/ForceGuide;->idOfAction:B

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-byte v0, p0, Lcom/t4game/ForceGuide;->idOfAction:B

    if-eqz v0, :cond_5

    move v0, v3

    :goto_0
    return v0

    :pswitch_1
    iget-byte v0, p2, Lcom/t4game/GameScreen;->State:B

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    iget-object v0, p2, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_1

    if-eq p1, v4, :cond_0

    if-ne p1, v5, :cond_1

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :pswitch_2
    iget-byte v0, p2, Lcom/t4game/GameScreen;->State:B

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    iget-object v0, p2, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_3

    if-eq p1, v4, :cond_2

    if-ne p1, v5, :cond_3

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :pswitch_3
    iget-byte v0, p2, Lcom/t4game/GameScreen;->State:B

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isNpcInUserView(Ljava/lang/String;Lcom/t4game/GameWorld;)Z
    .locals 8

    const/4 v7, 0x0

    invoke-static {p1}, Lcom/t4game/Util;->empty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    iget-object v0, p2, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, p2, Lcom/t4game/GameWorld;->scene:Lcom/t4game/GScene;

    iget-object v1, v1, Lcom/t4game/GScene;->npcs:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/GSprite;

    iget-object v2, p0, Lcom/t4game/GSprite;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-short v2, p0, Lcom/t4game/GSprite;->mapX:S

    iget-short v3, p0, Lcom/t4game/GSprite;->mapY:S

    iget-short v4, v0, Lcom/t4game/GUser;->mapX:S

    iget-short v5, v0, Lcom/t4game/GUser;->mapY:S

    iget v6, v0, Lcom/t4game/GUser;->viewRadius:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/t4game/Util;->testInterRound(IIIII)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/t4game/GSprite;->visibleReady:Z

    if-eqz v2, :cond_1

    iget-byte v2, p0, Lcom/t4game/GSprite;->canSelect:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-short v1, p0, Lcom/t4game/GSprite;->mapX:S

    iget-short v2, p0, Lcom/t4game/GSprite;->mapY:S

    iget-short v3, v0, Lcom/t4game/GUser;->mapX:S

    iget-short v0, v0, Lcom/t4game/GUser;->mapY:S

    const/16 v4, 0x32

    invoke-static {v1, v2, v3, v0, v4}, Lcom/t4game/Util;->testInterRound(IIIII)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_0
.end method

.method private isReady(B)Z
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    iget-boolean v0, p0, Lcom/t4game/ForceGuide;->isFirstLeadOn:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    packed-switch p1, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private isTimingOver()Z
    .locals 4

    invoke-static {}, Lcom/t4game/Util;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/t4game/ForceGuide;->startTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/t4game/ForceGuide;->showTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keyProcess(ILcom/t4game/GameWorld;)V
    .locals 1

    iget-object v0, p2, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    invoke-direct {p0, p1, v0}, Lcom/t4game/ForceGuide;->isActionStaticDone(ILcom/t4game/GameScreen;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/ForceGuide;->isLocked:Z

    :cond_0
    return-void
.end method

.method private nextAction(Lcom/t4game/GameWorld;)V
    .locals 4

    const/4 v3, -0x1

    iget-byte v0, p0, Lcom/t4game/ForceGuide;->idxOfGroup:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/ForceGuide;->idxOfGroup:B

    sget-object v1, Lcom/t4game/ForceGuide;->GROUP_ACTION:[[B

    iget-byte v2, p0, Lcom/t4game/ForceGuide;->idOfGroup:B

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/t4game/ForceGuide;->GROUP_ACTION:[[B

    iget-byte v1, p0, Lcom/t4game/ForceGuide;->idOfGroup:B

    aget-object v0, v0, v1

    iget-byte v1, p0, Lcom/t4game/ForceGuide;->idxOfGroup:B

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/t4game/ForceGuide;->idOfAction:B

    invoke-direct {p0, p1}, Lcom/t4game/ForceGuide;->startAction(Lcom/t4game/GameWorld;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/t4game/ForceGuide;->state:B

    iput-byte v3, p0, Lcom/t4game/ForceGuide;->idOfAction:B

    iput-byte v3, p0, Lcom/t4game/ForceGuide;->idOfGroup:B

    iput-byte v3, p0, Lcom/t4game/ForceGuide;->idxOfGroup:B

    invoke-direct {p0, p1}, Lcom/t4game/ForceGuide;->send_ROLE_GUIDE_FLAG_MESSAGE(Lcom/t4game/GameWorld;)Z

    goto :goto_0
.end method

.method private send_ROLE_GUIDE_FLAG_MESSAGE(Lcom/t4game/GameWorld;)Z
    .locals 3

    iget-object v0, p1, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v1, p1, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v2, 0x1ab

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method private startAction(Lcom/t4game/GameWorld;)V
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x4

    const/16 v2, 0x7c

    const/4 v4, 0x5

    const/4 v3, 0x0

    iget-byte v0, p0, Lcom/t4game/ForceGuide;->idOfAction:B

    packed-switch v0, :pswitch_data_0

    move v0, v4

    move v1, v3

    move v2, v3

    :goto_0
    if-lez v2, :cond_0

    if-lez v1, :cond_0

    iget-object v3, p0, Lcom/t4game/ForceGuide;->bubble:Lcom/t4game/PopBubble;

    iget-object v4, p0, Lcom/t4game/ForceGuide;->BUBBLE_TXT:[Ljava/lang/String;

    iget-byte v5, p0, Lcom/t4game/ForceGuide;->idOfAction:B

    aget-object v4, v4, v5

    int-to-short v2, v2

    int-to-short v1, v1

    invoke-virtual {v3, v4, v2, v1, v0}, Lcom/t4game/PopBubble;->init(Ljava/lang/String;SSB)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/ForceGuide;->bubble:Lcom/t4game/PopBubble;

    invoke-virtual {v0}, Lcom/t4game/PopBubble;->repeat()V

    return-void

    :pswitch_0
    iget-object v0, p1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iput-byte v6, p0, Lcom/t4game/ForceGuide;->userPopFlag:B

    iput-byte v6, v0, Lcom/t4game/GUser;->SayInPop:B

    invoke-static {}, Lcom/t4game/Util;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/t4game/GUser;->StartPop:J

    iget-object v1, p0, Lcom/t4game/ForceGuide;->BUBBLE_TXT:[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/ForceGuide;->idOfAction:B

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/t4game/GUser;->words:Ljava/lang/String;

    move v0, v4

    move v1, v3

    move v2, v3

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/t4game/Defaults;->sfw:I

    add-int/lit8 v0, v0, 0x5

    sget v1, Lcom/t4game/Defaults;->SceneHight:I

    add-int/lit8 v1, v1, 0xe

    move v2, v0

    move v0, v6

    goto :goto_0

    :pswitch_2
    sget v0, Lcom/t4game/Defaults;->sfw:I

    sget v1, Lcom/t4game/Defaults;->SceneHight:I

    move v2, v0

    move v0, v6

    goto :goto_0

    :pswitch_3
    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v1, Lcom/t4game/Defaults;->sfw:I

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->SceneHight:I

    const/4 v2, 0x3

    move v7, v2

    move v2, v0

    move v0, v7

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x3d

    const/16 v1, 0xc2

    move v2, v0

    move v0, v5

    goto :goto_0

    :pswitch_5
    const/16 v0, 0x7b

    const/4 v1, 0x2

    move v7, v1

    move v1, v2

    move v2, v0

    move v0, v7

    goto :goto_0

    :pswitch_6
    const/16 v0, 0xaf

    move v1, v0

    move v0, v4

    goto :goto_0

    :pswitch_7
    const/16 v0, 0x32

    const/16 v1, 0x9f

    move v2, v0

    move v0, v3

    goto :goto_0

    :pswitch_8
    const/16 v0, 0x1d

    const/16 v1, 0x9e

    move v2, v0

    move v0, v3

    goto :goto_0

    :pswitch_9
    const/16 v0, 0x55

    const/16 v1, 0x5d

    move v2, v0

    move v0, v3

    goto :goto_0

    :pswitch_a
    const/16 v0, 0x69

    move v1, v0

    move v0, v5

    goto :goto_0

    :pswitch_b
    const/16 v0, 0x7e

    const/16 v1, 0xc2

    move v2, v0

    move v0, v4

    goto/16 :goto_0

    :pswitch_c
    const/16 v0, 0x7d

    const/16 v1, 0x8b

    const/4 v2, 0x2

    move v7, v2

    move v2, v0

    move v0, v7

    goto/16 :goto_0

    :pswitch_d
    const/16 v0, 0xce

    move v1, v0

    move v0, v4

    goto/16 :goto_0

    :pswitch_e
    const/16 v0, 0x6b

    move v1, v0

    move v0, v4

    goto/16 :goto_0

    :pswitch_f
    const/16 v0, 0x8a

    move v1, v0

    move v0, v5

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p1, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->getUI_PageLable(I)Lcom/t4game/UI_PageLable;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/t4game/UI_PageLable;->getUI_Goods(I)Lcom/t4game/UI_GoodsBox;

    move-result-object v0

    iget-short v1, v0, Lcom/t4game/UI_GoodsBox;->x:S

    add-int/lit8 v1, v1, 0x12

    int-to-short v1, v1

    iget-short v0, v0, Lcom/t4game/UI_GoodsBox;->y:S

    add-int/lit8 v0, v0, 0x12

    int-to-short v0, v0

    move v2, v1

    move v1, v0

    move v0, v3

    goto/16 :goto_0

    :pswitch_11
    const/16 v0, 0x62

    const/16 v1, 0x80

    move v2, v0

    move v0, v4

    goto/16 :goto_0

    :pswitch_12
    const/16 v0, 0x78

    const/16 v1, 0x50

    move v2, v0

    move v0, v5

    goto/16 :goto_0

    :pswitch_13
    const/16 v0, 0x30

    const/16 v1, 0xa0

    move v2, v0

    move v0, v3

    goto/16 :goto_0

    :pswitch_14
    const/16 v0, 0x62

    const/16 v1, 0x32

    move v2, v0

    move v0, v5

    goto/16 :goto_0

    :pswitch_15
    const/16 v0, 0x41

    const/16 v1, 0x5c

    move v2, v0

    move v0, v3

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_12
        :pswitch_13
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_3
        :pswitch_0
        :pswitch_a
        :pswitch_c
        :pswitch_14
        :pswitch_0
        :pswitch_b
        :pswitch_8
        :pswitch_7
        :pswitch_2
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_15
        :pswitch_9
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public isInitOver(Lcom/t4game/GameWorld;)Z
    .locals 5

    const/16 v2, 0x1e

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p1, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iget-byte v1, p0, Lcom/t4game/ForceGuide;->idOfAction:B

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v0, v3

    :goto_0
    return v0

    :pswitch_1
    iget-byte v1, v0, Lcom/t4game/GameScreen;->State:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/t4game/ForceGuide;->setMenuByStateH(Lcom/t4game/GameScreen;)V

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_0

    :pswitch_2
    iget-byte v1, v0, Lcom/t4game/GameScreen;->State:B

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    iget-object v1, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/t4game/ForceGuide;->setMenuByStateH2(Lcom/t4game/GameScreen;)V

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0

    :pswitch_3
    iget-byte v1, v0, Lcom/t4game/GameScreen;->State:B

    if-ne v1, v2, :cond_2

    iget-byte v1, v0, Lcom/t4game/GameScreen;->dialogId:B

    invoke-virtual {p0, v1, v0}, Lcom/t4game/ForceGuide;->setByDialogId(BLcom/t4game/GameScreen;)V

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v4

    goto :goto_0

    :pswitch_4
    iget-byte v1, v0, Lcom/t4game/GameScreen;->State:B

    if-ne v1, v2, :cond_3

    iget-object v1, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-eqz v1, :cond_3

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    if-ne v0, v3, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0

    :pswitch_5
    iget-byte v1, v0, Lcom/t4game/GameScreen;->State:B

    if-ne v1, v2, :cond_4

    iget-object v1, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-eqz v1, :cond_4

    iget-byte v1, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v4

    goto :goto_0

    :pswitch_6
    iget-byte v1, v0, Lcom/t4game/GameScreen;->State:B

    if-ne v1, v2, :cond_5

    iget-object v1, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-eqz v1, :cond_5

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    if-nez v0, :cond_5

    move v0, v3

    goto :goto_0

    :cond_5
    move v0, v4

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public keyFilter(ILcom/t4game/GameWorld;)I
    .locals 4

    const/16 v3, -0x3e8

    sget-boolean v0, Lcom/t4game/Defaults;->lockKeyPress:Z

    if-nez v0, :cond_0

    iget-byte v0, p2, Lcom/t4game/GameWorld;->loading:B

    sget-byte v1, Lcom/t4game/GameWorld;->NOLOADING:B

    if-eq v0, v1, :cond_1

    :cond_0
    move v0, v3

    :goto_0
    return v0

    :cond_1
    iget-byte v0, p0, Lcom/t4game/ForceGuide;->state:B

    if-eqz v0, :cond_2

    iget-byte v0, p0, Lcom/t4game/ForceGuide;->state:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    :cond_2
    iget-boolean v0, p2, Lcom/t4game/GameWorld;->commBulletinOn:Z

    if-eqz v0, :cond_4

    :cond_3
    move v0, p1

    goto :goto_0

    :cond_4
    iget-byte v0, p0, Lcom/t4game/ForceGuide;->idOfAction:B

    if-gez v0, :cond_5

    move v0, p1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/t4game/ForceGuide;->KEY_VALUE:[[B

    iget-byte v2, p0, Lcom/t4game/ForceGuide;->idOfAction:B

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Lcom/t4game/ForceGuide;->KEY_VALUE:[[B

    iget-byte v2, p0, Lcom/t4game/ForceGuide;->idOfAction:B

    aget-object v1, v1, v2

    aget-byte v1, v1, v0

    if-ne p1, v1, :cond_6

    invoke-direct {p0, p1, p2}, Lcom/t4game/ForceGuide;->keyProcess(ILcom/t4game/GameWorld;)V

    move v0, p1

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    move v0, v3

    goto :goto_0
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;Lcom/t4game/GameWorld;)V
    .locals 2

    iget-byte v0, p0, Lcom/t4game/ForceGuide;->state:B

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/ForceGuide;->state:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p2, Lcom/t4game/GameWorld;->commBulletinOn:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/t4game/ForceGuide;->bubble:Lcom/t4game/PopBubble;

    invoke-virtual {v0, p1}, Lcom/t4game/PopBubble;->paint(Ljavax/microedition/lcdui/Graphics;)V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/t4game/ForceGuide;->bubble:Lcom/t4game/PopBubble;

    invoke-virtual {v1}, Lcom/t4game/PopBubble;->release()V

    iput-object v2, p0, Lcom/t4game/ForceGuide;->bubble:Lcom/t4game/PopBubble;

    iput-object v2, p0, Lcom/t4game/ForceGuide;->npcNames:[Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[B

    move-object v1, v0

    sput-object v1, Lcom/t4game/ForceGuide;->GROUP_ACTION:[[B

    move-object v0, v2

    check-cast v0, [[B

    move-object v3, v0

    iput-object v3, p0, Lcom/t4game/ForceGuide;->KEY_VALUE:[[B

    iput-object v2, p0, Lcom/t4game/ForceGuide;->BUBBLE_TXT:[Ljava/lang/String;

    return-void
.end method

.method public setByDialogId(BLcom/t4game/GameScreen;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x2

    const/4 v2, 0x2

    iget-byte v0, p2, Lcom/t4game/GameScreen;->State:B

    const/16 v1, 0x1e

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-byte v0, p0, Lcom/t4game/ForceGuide;->idOfGroup:B

    if-ne v0, v2, :cond_0

    invoke-virtual {p2, v4}, Lcom/t4game/GameScreen;->getUI_PageLable(I)Lcom/t4game/UI_PageLable;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/t4game/UI_PageLable;->keyEvent(I)V

    goto :goto_0

    :pswitch_2
    iget-byte v0, p0, Lcom/t4game/ForceGuide;->idOfGroup:B

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p2, v2}, Lcom/t4game/GameScreen;->getUI_PageLable(I)Lcom/t4game/UI_PageLable;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/t4game/UI_PageLable;->keyEvent(I)V

    invoke-virtual {p2, v2}, Lcom/t4game/GameScreen;->getUI_PageLable(I)Lcom/t4game/UI_PageLable;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/t4game/UI_PageLable;->getUI_Goods(I)Lcom/t4game/UI_GoodsBox;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setMenuByStateH(Lcom/t4game/GameScreen;)V
    .locals 2

    iget-byte v0, p0, Lcom/t4game/ForceGuide;->idOfAction:B

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    const/4 v1, 0x5

    iput-byte v1, v0, Lcom/t4game/UI_Menu;->index:B

    goto :goto_0

    :sswitch_1
    iget-object v0, p1, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    const/4 v1, 0x3

    iput-byte v1, v0, Lcom/t4game/UI_Menu;->index:B

    goto :goto_0

    :sswitch_2
    iget-object v0, p1, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    const/4 v1, 0x6

    iput-byte v1, v0, Lcom/t4game/UI_Menu;->index:B

    goto :goto_0

    :sswitch_3
    iget-object v0, p1, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    const/4 v1, 0x2

    iput-byte v1, v0, Lcom/t4game/UI_Menu;->index:B

    goto :goto_0

    :sswitch_4
    iget-object v0, p1, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    const/4 v1, 0x7

    iput-byte v1, v0, Lcom/t4game/UI_Menu;->index:B

    goto :goto_0

    :sswitch_5
    iget-object v0, p1, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    const/16 v1, 0x8

    iput-byte v1, v0, Lcom/t4game/UI_Menu;->index:B

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
        0xb -> :sswitch_2
        0x11 -> :sswitch_3
        0x15 -> :sswitch_4
        0x1a -> :sswitch_5
    .end sparse-switch
.end method

.method public setMenuByStateH2(Lcom/t4game/GameScreen;)V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x0

    iget-byte v0, p0, Lcom/t4game/ForceGuide;->idOfAction:B

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iput-byte v2, v0, Lcom/t4game/UI_Menu;->index:B

    goto :goto_0

    :sswitch_1
    iget-object v0, p1, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    const/4 v1, 0x3

    iput-byte v1, v0, Lcom/t4game/UI_Menu;->index:B

    goto :goto_0

    :sswitch_2
    iget-object v0, p1, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iput-byte v1, v0, Lcom/t4game/UI_Menu;->index:B

    goto :goto_0

    :sswitch_3
    iget-object v0, p1, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    const/4 v1, 0x1

    iput-byte v1, v0, Lcom/t4game/UI_Menu;->index:B

    goto :goto_0

    :sswitch_4
    iget-object v0, p1, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iput-byte v1, v0, Lcom/t4game/UI_Menu;->index:B

    goto :goto_0

    :sswitch_5
    iget-object v0, p1, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iput-byte v2, v0, Lcom/t4game/UI_Menu;->index:B

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_1
        0xc -> :sswitch_2
        0x10 -> :sswitch_3
        0x12 -> :sswitch_4
        0x16 -> :sswitch_5
        0x1b -> :sswitch_0
    .end sparse-switch
.end method

.method public startGroup(BLcom/t4game/GameWorld;)V
    .locals 2

    iget-byte v0, p0, Lcom/t4game/ForceGuide;->state:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/t4game/ForceGuide;->isReady(B)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-byte p1, p0, Lcom/t4game/ForceGuide;->idOfGroup:B

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/ForceGuide;->idxOfGroup:B

    sget-object v0, Lcom/t4game/ForceGuide;->GROUP_ACTION:[[B

    iget-byte v1, p0, Lcom/t4game/ForceGuide;->idOfGroup:B

    aget-object v0, v0, v1

    iget-byte v1, p0, Lcom/t4game/ForceGuide;->idxOfGroup:B

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/t4game/ForceGuide;->idOfAction:B

    invoke-direct {p0, p2}, Lcom/t4game/ForceGuide;->startAction(Lcom/t4game/GameWorld;)V

    invoke-virtual {p2}, Lcom/t4game/GameWorld;->stopUserMove()V

    goto :goto_0
.end method

.method public update(Lcom/t4game/GameWorld;)V
    .locals 8

    const/4 v7, 0x2

    const-wide/16 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-byte v0, p0, Lcom/t4game/ForceGuide;->state:B

    if-ne v0, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/ForceGuide;->state:B

    if-nez v0, :cond_6

    iget-byte v0, p0, Lcom/t4game/ForceGuide;->userPopFlag:B

    if-ne v0, v3, :cond_2

    iget-object v0, p1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v1, v0, Lcom/t4game/GUser;->SayInPop:B

    if-nez v1, :cond_2

    invoke-static {}, Lcom/t4game/Util;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/t4game/GUser;->StartPop:J

    iput-byte v3, v0, Lcom/t4game/GUser;->SayInPop:B

    :cond_2
    iget-byte v0, p0, Lcom/t4game/ForceGuide;->idOfGroup:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    iget-wide v0, p0, Lcom/t4game/ForceGuide;->showTime:J

    cmp-long v0, v0, v5

    if-nez v0, :cond_3

    const-wide/16 v0, 0x1f40

    iput-wide v0, p0, Lcom/t4game/ForceGuide;->showTime:J

    invoke-static {}, Lcom/t4game/Util;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/t4game/ForceGuide;->startTime:J

    iget-object v0, p1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iput-byte v3, p0, Lcom/t4game/ForceGuide;->userPopFlag:B

    iput-byte v3, v0, Lcom/t4game/GUser;->SayInPop:B

    invoke-static {}, Lcom/t4game/Util;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/t4game/GUser;->StartPop:J

    iget-object v1, p0, Lcom/t4game/ForceGuide;->BUBBLE_TXT:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/t4game/GUser;->words:Ljava/lang/String;

    :cond_3
    invoke-direct {p0}, Lcom/t4game/ForceGuide;->isTimingOver()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/t4game/ForceGuide;->closeUserPop(Lcom/t4game/GameWorld;)V

    iput-byte v7, p0, Lcom/t4game/ForceGuide;->state:B

    iput-byte v4, p0, Lcom/t4game/ForceGuide;->idOfAction:B

    iput-byte v4, p0, Lcom/t4game/ForceGuide;->idOfGroup:B

    iput-byte v4, p0, Lcom/t4game/ForceGuide;->idxOfGroup:B

    iput-wide v5, p0, Lcom/t4game/ForceGuide;->showTime:J

    iput-wide v5, p0, Lcom/t4game/ForceGuide;->startTime:J

    invoke-direct {p0, p1}, Lcom/t4game/ForceGuide;->send_ROLE_GUIDE_FLAG_MESSAGE(Lcom/t4game/GameWorld;)Z

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/t4game/ForceGuide;->isActionDynamicDone(Lcom/t4game/GameWorld;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/t4game/ForceGuide;->closeActionDynaminc(Lcom/t4game/GameWorld;)V

    invoke-direct {p0, p1}, Lcom/t4game/ForceGuide;->nextAction(Lcom/t4game/GameWorld;)V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/t4game/ForceGuide;->isLocked:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/t4game/ForceGuide;->isInitOver(Lcom/t4game/GameWorld;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/ForceGuide;->isLocked:Z

    invoke-direct {p0, p1}, Lcom/t4game/ForceGuide;->closeActionStatic(Lcom/t4game/GameWorld;)V

    invoke-direct {p0, p1}, Lcom/t4game/ForceGuide;->nextAction(Lcom/t4game/GameWorld;)V

    goto :goto_0

    :cond_6
    iget-byte v0, p0, Lcom/t4game/ForceGuide;->state:B

    if-ne v0, v3, :cond_0

    invoke-direct {p0, p1}, Lcom/t4game/ForceGuide;->getUnitDynamic(Lcom/t4game/GameWorld;)B

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/t4game/ForceGuide;->startGroup(BLcom/t4game/GameWorld;)V

    goto/16 :goto_0
.end method
