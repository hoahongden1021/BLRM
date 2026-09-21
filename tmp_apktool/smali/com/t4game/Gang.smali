.class public Lcom/t4game/Gang;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_MANAGER_ID_CHANGE_LEADER:I = 0x4

.field public static final ACTION_MANAGER_ID_DEL:I = 0x3

.field public static final ACTION_MANAGER_ID_DEMOTION:I = 0x2

.field public static final ACTION_MANAGER_ID_PROMOTION:I = 0x1

.field public static final ACTION_MANAGER_ID_RETURN:I = 0x5

.field public static final ACTION_MANAGER_ID_SELECT_WAR:I = 0x0

.field public static final GANG_BUILD_STATE_BUILD:I = 0x0

.field public static final GANG_BUILD_STATE_SKILL_RESEARCH:I = 0x1

.field public static final GANG_GENIUS_TREE_ID:S = 0xes

.field public static final GANG_MEMBER_DUTY:B = 0x6t

.field public static final GANG_MEMBER_FENGHAO:B = 0x5t

.field public static final GANG_MEMBER_HONOR:B = 0x7t

.field public static final GANG_MEMBER_ID:B = 0x0t

.field public static final GANG_MEMBER_IS_ONLINE:B = 0xat

.field public static final GANG_MEMBER_IS_WARRIOR:B = 0x8t

.field public static final GANG_MEMBER_LEVEL:B = 0x2t

.field public static final GANG_MEMBER_NAME:B = 0x1t

.field public static final GANG_MEMBER_ONLINE_TIME:B = 0x9t

.field private static final GANG_MEMBER_STATE_ALERT:I = 0x6

.field private static final GANG_MEMBER_STATE_GANGINFO:I = 0x5

.field private static final GANG_MEMBER_STATE_LIST:I = 0x0

.field private static final GANG_MEMBER_STATE_LOOK_INFO:I = 0x3

.field private static final GANG_MEMBER_STATE_MANGER:I = 0x4

.field private static final GANG_MEMBER_STATE_MENU:I = 0x1

.field private static final GANG_MEMBER_STATE_MENU_2lv:I = 0x7

.field private static final GANG_MEMBER_STATE_MENU_3lv:I = 0x9

.field private static final GANG_MEMBER_STATE_RECRUIT:I = 0x8

.field public static final GANG_MEMBER_TYPE:B = 0x3t

.field public static final GANG_MEMBER_WEEK_HONOR:B = 0xbt

.field public static final GANG_MEMBER_XIUWEI:B = 0x4t

.field public static final GANG_SKILL_ICON:B = 0x4t

.field public static final GANG_SKILL_ID:B = 0x0t

.field public static final GANG_SKILL_LEVEL:B = 0x2t

.field public static final GANG_SKILL_MAX_LEVEL:B = 0x3t

.field public static final GANG_SKILL_NAME:B = 0x1t

.field public static final GANG_SUPER_Q:B = 0xct

.field public static final MAX_MEMBER_ATTRIBUTE:B = 0xdt

.field public static focusOfDialog:B

.field public static focus_type:B

.field public static info:[[Ljava/lang/String;


# instance fields
.field GangMember_ActionMenu:[Ljava/lang/String;

.field GangMember_ActionMenu2Lv:[Ljava/lang/String;

.field GangMember_ManagerMenu:[Ljava/lang/String;

.field GangMember_recruitMenu:[Ljava/lang/String;

.field GangString_x:S

.field public bankroll:I

.field private createGongSelect:I

.field public currentlyNumber:[I

.field public dailyBankRoll:I

.field private dialogLableHight:S

.field public enlistedState:B

.field private foucs:I

.field public gameWorld:Lcom/t4game/GameWorld;

.field public gangBuildSelect:I

.field public gangBuildState:I

.field public gangInfo:[[Ljava/lang/String;

.field public gangInfoSelect:I

.field public gangLevelUpText:Ljava/lang/String;

.field private gangMemberManagerMenuIndex:S

.field private gangMemberMenuIndex:S

.field public gangMemberSize:S

.field private gangMemberState:I

.field public gangMessage:[Ljava/lang/String;

.field public gangMessageIndex:I

.field public gangSkillLevelUpText:Ljava/lang/String;

.field public gangSkillSelect:I

.field public gangSkillStudySelect:I

.field public gangbankroll:I

.field public geniusData:Lcom/t4game/GGeniusData;

.field public geniusTree:Lcom/t4game/GGeniusTreeData;

.field public geniusTreeIndex:Ljava/lang/String;

.field private final hightLable:I

.field public inputGangName:Ljava/lang/String;

.field public inputGangNickName:Ljava/lang/String;

.field public inputInviteGangRoleName:Ljava/lang/String;

.field public inviteGangId:I

.field public inviteGangName:Ljava/lang/String;

.field public inviteRoleId:I

.field public inviteRoleNickName:Ljava/lang/String;

.field public job:Ljava/lang/String;

.field public level:I

.field lines:B

.field public manageList:[[I

.field public memberList:Ljava/util/Vector;

.field public memberListMaxPage:I

.field public memberListNowPage:I

.field private member_info:[Ljava/lang/String;

.field public menberState:B

.field public message:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public nickName:Ljava/lang/String;

.field public onSkillList:Ljava/util/Hashtable;

.field public powerControl:[[[I

.field public ranking:B

.field public screen:Lcom/t4game/GameScreen;

.field public selGangMember:I

.field public temp_skillList:[[Ljava/lang/String;

.field private final topLable:I

.field private final topList:I

.field public upgradeBankroll:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput-byte v0, Lcom/t4game/Gang;->focusOfDialog:B

    const/4 v0, 0x0

    sput-byte v0, Lcom/t4game/Gang;->focus_type:B

    return-void
.end method

.method public constructor <init>(Lcom/t4game/GameWorld;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x7

    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [[[I

    new-array v1, v8, [[I

    new-array v2, v8, [I

    fill-array-data v2, :array_0

    aput-object v2, v1, v5

    new-array v2, v8, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v9

    const/4 v2, 0x2

    new-array v3, v8, [I

    fill-array-data v3, :array_2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-array v3, v8, [I

    fill-array-data v3, :array_3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-array v3, v8, [I

    fill-array-data v3, :array_4

    aput-object v3, v1, v2

    new-array v2, v8, [I

    fill-array-data v2, :array_5

    aput-object v2, v1, v6

    new-array v2, v8, [I

    fill-array-data v2, :array_6

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [[I

    new-array v2, v7, [I

    fill-array-data v2, :array_7

    aput-object v2, v1, v5

    new-array v2, v7, [I

    fill-array-data v2, :array_8

    aput-object v2, v1, v9

    const/4 v2, 0x2

    new-array v3, v7, [I

    fill-array-data v3, :array_9

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-array v3, v7, [I

    fill-array-data v3, :array_a

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-array v3, v7, [I

    fill-array-data v3, :array_b

    aput-object v3, v1, v2

    new-array v2, v7, [I

    fill-array-data v2, :array_c

    aput-object v2, v1, v6

    new-array v2, v7, [I

    fill-array-data v2, :array_d

    aput-object v2, v1, v7

    aput-object v1, v0, v9

    const/4 v1, 0x2

    new-array v2, v8, [[I

    new-array v3, v6, [I

    fill-array-data v3, :array_e

    aput-object v3, v2, v5

    new-array v3, v6, [I

    fill-array-data v3, :array_f

    aput-object v3, v2, v9

    const/4 v3, 0x2

    new-array v4, v6, [I

    fill-array-data v4, :array_10

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-array v4, v6, [I

    fill-array-data v4, :array_11

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-array v4, v6, [I

    fill-array-data v4, :array_12

    aput-object v4, v2, v3

    new-array v3, v6, [I

    fill-array-data v3, :array_13

    aput-object v3, v2, v6

    new-array v3, v6, [I

    fill-array-data v3, :array_14

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/t4game/Gang;->powerControl:[[[I

    const/16 v0, 0x1c

    iput v0, p0, Lcom/t4game/Gang;->topLable:I

    const/16 v0, 0x1c

    iput v0, p0, Lcom/t4game/Gang;->hightLable:I

    const/16 v0, 0x3d

    iput v0, p0, Lcom/t4game/Gang;->topList:I

    const/16 v0, 0x1c

    iput-short v0, p0, Lcom/t4game/Gang;->dialogLableHight:S

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/Gang;->name:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/Gang;->nickName:Ljava/lang/String;

    iput v9, p0, Lcom/t4game/Gang;->level:I

    iput-short v5, p0, Lcom/t4game/Gang;->gangMemberSize:S

    iput v5, p0, Lcom/t4game/Gang;->dailyBankRoll:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/Gang;->memberList:Ljava/util/Vector;

    iput v5, p0, Lcom/t4game/Gang;->memberListNowPage:I

    iput v5, p0, Lcom/t4game/Gang;->memberListMaxPage:I

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/Gang;->gangSkillLevelUpText:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/Gang;->gangLevelUpText:Ljava/lang/String;

    iput-byte v5, p0, Lcom/t4game/Gang;->menberState:B

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_15

    iput-object v0, p0, Lcom/t4game/Gang;->currentlyNumber:[I

    iput-byte v5, p0, Lcom/t4game/Gang;->ranking:B

    iput v5, p0, Lcom/t4game/Gang;->gangbankroll:I

    iput v5, p0, Lcom/t4game/Gang;->upgradeBankroll:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/Gang;->job:Ljava/lang/String;

    const/4 v0, 0x0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/t4game/Gang;->manageList:[[I

    iput-byte v5, p0, Lcom/t4game/Gang;->enlistedState:B

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "\u6210\u5458\u5217\u8868"

    aput-object v1, v0, v5

    const-string v1, "\u5b66\u4e60\u6280\u80fd"

    aput-object v1, v0, v9

    const/4 v1, 0x2

    const-string v2, "\u6dfb\u52a0\u5e2e\u4f17"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u62db\u5175\u4e70\u9a6c"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u5e2e\u6d3e\u7559\u8a00"

    aput-object v2, v0, v1

    const-string v1, "\u5e2e\u6d3e\u5efa\u8bbe"

    aput-object v1, v0, v6

    const-string v1, "\u9000\u51fa\u5e2e\u6d3e"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/t4game/Gang;->GangMember_ActionMenu:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "\u6084\u6084\u8bdd"

    aput-object v1, v0, v5

    const-string v1, "\u9080\u8bf7\u7ec4\u961f"

    aput-object v1, v0, v9

    const/4 v1, 0x2

    const-string v2, "\u5e2e\u4f17\u4fe1\u606f"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u5e2e\u4f17\u7ba1\u7406"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u52a0\u4e3a\u597d\u53cb"

    aput-object v2, v0, v1

    const-string v1, "\u52a0\u5165\u9ed1\u540d\u5355"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/t4game/Gang;->GangMember_ActionMenu2Lv:[Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u9080\u8bf7\u5165\u5e2e"

    aput-object v1, v0, v5

    const-string v1, "\u6084\u6084\u8bdd"

    aput-object v1, v0, v9

    const/4 v1, 0x2

    const-string v2, "\u6309\u6761\u4ef6\u641c\u7d22"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/t4game/Gang;->GangMember_recruitMenu:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "\u5e2e\u4f17\u5347\u804c"

    aput-object v1, v0, v5

    const-string v1, "\u5e2e\u4f17\u964d\u804c"

    aput-object v1, v0, v9

    const/4 v1, 0x2

    const-string v2, "\u7981\u8a00/\u89e3\u7981"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u8e22\u51fa\u5e2e\u6d3e"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u9000\u4f4d\u8ba9\u8d24"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/t4game/Gang;->GangMember_ManagerMenu:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/Gang;->inputInviteGangRoleName:Ljava/lang/String;

    iput v5, p0, Lcom/t4game/Gang;->gangMemberState:I

    iput-short v5, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    iput-short v5, p0, Lcom/t4game/Gang;->gangMemberManagerMenuIndex:S

    iput v5, p0, Lcom/t4game/Gang;->selGangMember:I

    iput v5, p0, Lcom/t4game/Gang;->foucs:I

    iput v5, p0, Lcom/t4game/Gang;->gangSkillStudySelect:I

    const/16 v0, 0x10e

    iput-short v0, p0, Lcom/t4game/Gang;->GangString_x:S

    iput v5, p0, Lcom/t4game/Gang;->gangBuildState:I

    iput v5, p0, Lcom/t4game/Gang;->gangBuildSelect:I

    iput v5, p0, Lcom/t4game/Gang;->gangSkillSelect:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/Gang;->inputGangName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/Gang;->inputGangNickName:Ljava/lang/String;

    iput v5, p0, Lcom/t4game/Gang;->createGongSelect:I

    iput-object p1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, p1, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iput-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
    .end array-data

    :array_e
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_f
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_10
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    :array_11
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_12
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_14
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static IsDutyOK(I)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private do_GANG_CHAT(I)V
    .locals 4

    const/4 v3, 0x2

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, v1, Lcom/t4game/GUser;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u4e0d\u80fd\u548c\u81ea\u5df1\u804a\u5929\uff01"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2, v0, v3}, Lcom/t4game/GameScreen;->showFormContr(IZLjava/lang/String;I)V

    goto :goto_0
.end method

.method private do_GANG_DEMOTION(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->send_GANG_DEMOTION_Message(I)Z

    return-void
.end method

.method private do_GANG_MEMBER_GANGINFO(I)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x5

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-boolean v1, v1, Lcom/t4game/GameWorld;->showIntro:Z

    if-eqz v1, :cond_1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    sget-byte v1, Lcom/t4game/GameScreen;->showEquipmentIntroIndex:B

    if-lez v1, :cond_0

    sget-byte v1, Lcom/t4game/GameScreen;->showEquipmentIntroIndex:B

    sub-int/2addr v1, v4

    int-to-byte v1, v1

    sput-byte v1, Lcom/t4game/GameScreen;->showEquipmentIntroIndex:B

    goto :goto_0

    :sswitch_1
    sget-byte v1, Lcom/t4game/GameScreen;->showEquipmentIntroIndex:B

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->skillDetialIntro:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_0

    sget-byte v1, Lcom/t4game/GameScreen;->showEquipmentIntroIndex:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/t4game/GameScreen;->showEquipmentIntroIndex:B

    goto :goto_0

    :sswitch_2
    sput-byte v5, Lcom/t4game/GameScreen;->showEquipmentIntroIndex:B

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v5, v1, Lcom/t4game/GameWorld;->showIntro:Z

    goto :goto_0

    :cond_1
    sparse-switch p1, :sswitch_data_1

    goto :goto_0

    :sswitch_3
    iput v5, p0, Lcom/t4game/Gang;->gangInfoSelect:I

    iput v6, p0, Lcom/t4game/Gang;->gangMemberState:I

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/Gang;->gangInfo:[[Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v1}, Lcom/t4game/GameUi;->release()V

    iget-object v1, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iput-object v2, v1, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    :cond_2
    iget-byte v1, p0, Lcom/t4game/Gang;->menberState:B

    if-nez v1, :cond_5

    const/16 v1, 0x11

    invoke-direct {p0, v1, v4}, Lcom/t4game/Gang;->setState(BZ)V

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/t4game/Gang;->gangMessage:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/t4game/Gang;->gangMessageIndex:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/t4game/Gang;->gangMessageIndex:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/t4game/Gang;->gangMessageIndex:I

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/t4game/Gang;->gangInfoSelect:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/t4game/Gang;->gangInfoSelect:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/t4game/Gang;->gangInfoSelect:I

    goto :goto_0

    :sswitch_5
    iget-object v1, p0, Lcom/t4game/Gang;->gangMessage:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/t4game/Gang;->gangInfoSelect:I

    iget-object v2, p0, Lcom/t4game/Gang;->gangInfo:[[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_4

    iget v1, p0, Lcom/t4game/Gang;->gangInfoSelect:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/t4game/Gang;->gangInfoSelect:I

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/t4game/Gang;->gangMessageIndex:I

    iget-object v2, p0, Lcom/t4game/Gang;->gangMessage:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/t4game/Gang;->gangMessageIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/t4game/Gang;->gangMessageIndex:I

    goto/16 :goto_0

    :sswitch_6
    iget v1, p0, Lcom/t4game/Gang;->gangInfoSelect:I

    sget-object v2, Lcom/t4game/Gang;->info:[[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/t4game/Gang;->getSkillId(I)I

    move-result v2

    invoke-virtual {p0, v1}, Lcom/t4game/Gang;->getSkillIcon(I)I

    move-result v1

    iget-object v3, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    int-to-short v2, v2

    invoke-virtual {v3, v2, v4}, Lcom/t4game/GameWorld;->sendGetMagicGeniusDetial(SS)Z

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    int-to-short v3, v1

    invoke-virtual {v2, v6, v3}, Lcom/t4game/GameWorld;->getOneGoodIcon(BS)V

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iput v1, v2, Lcom/t4game/GameWorld;->questGoodsShowIntroIconId:I

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xa

    invoke-direct {p0, v1, v4}, Lcom/t4game/Gang;->setState(BZ)V

    goto/16 :goto_0

    :sswitch_7
    iput v4, p0, Lcom/t4game/Gang;->gangMemberState:I

    iget-object v1, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    new-instance v2, Lcom/t4game/UI_Menu;

    iget-object v3, p0, Lcom/t4game/Gang;->GangMember_ActionMenu:[Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v2, v1, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iget-object v1, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-direct {p0, v5}, Lcom/t4game/Gang;->get_GangMember_ActionMenu_Color(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/t4game/UI_Menu;->setColor([B)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_2
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x7 -> :sswitch_3
        -0x6 -> :sswitch_7
        -0x5 -> :sswitch_7
        -0x2 -> :sswitch_5
        -0x1 -> :sswitch_4
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method private do_GANG_MEMBER_LOOK_INFO(I)V
    .locals 3

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget v0, p0, Lcom/t4game/Gang;->foucs:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/t4game/Gang;->foucs:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/t4game/Gang;->foucs:I

    goto :goto_0

    :sswitch_1
    iget v0, p0, Lcom/t4game/Gang;->foucs:I

    iget-object v1, p0, Lcom/t4game/Gang;->member_info:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/t4game/Gang;->foucs:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/Gang;->foucs:I

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_2
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_0
    .end sparse-switch
.end method

.method private do_GANG_MEMBER_MANGER(I)V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "\u4f60\u6ca1\u6709\u6743\u9650"

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->keyEvent(I)V

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/Gang;->gangMemberManagerMenuIndex:S

    iget-short v0, p0, Lcom/t4game/Gang;->gangMemberManagerMenuIndex:S

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/t4game/Gang;->gangMemberManagerMenuIndex:S

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    iput-short v3, p0, Lcom/t4game/Gang;->gangMemberManagerMenuIndex:S

    iput v3, p0, Lcom/t4game/Gang;->gangMemberState:I

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    new-instance v1, Lcom/t4game/UI_Menu;

    iget-object v2, p0, Lcom/t4game/Gang;->GangMember_ActionMenu:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->clearCommand()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v0, v0, Lcom/t4game/GUser;->gangDuty:B

    iget-object v1, p0, Lcom/t4game/Gang;->powerControl:[[[I

    const/4 v2, 0x2

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    iget-short v1, p0, Lcom/t4game/Gang;->gangMemberManagerMenuIndex:S

    aget v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v1, 0x55a

    invoke-static {v4, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    iget-short v1, p0, Lcom/t4game/Gang;->gangMemberManagerMenuIndex:S

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->do_GANG_PROMOTION(I)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->do_GANG_DEMOTION(I)V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->send_GANG_MEMBER_SET_UNCHAIN_DONTTALLK_Message(I)Z

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v1, v1, Lcom/t4game/GUser;->gangDuty:B

    if-lt v1, v0, :cond_3

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u4f60\u6ca1\u6709\u6743\u9650"

    invoke-virtual {v0, v5}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    :goto_2
    iput-short v3, p0, Lcom/t4game/Gang;->gangMemberManagerMenuIndex:S

    iput v3, p0, Lcom/t4game/Gang;->gangMemberState:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u4f60\u786e\u5b9a\u8981\u5220\u9664\u5417\uff1f"

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_4
    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v1, v1, Lcom/t4game/GUser;->gangDuty:B

    if-lez v1, :cond_4

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u4f60\u6ca1\u6709\u6743\u9650"

    invoke-virtual {v0, v5}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, v1, Lcom/t4game/GUser;->id:Ljava/lang/String;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u4e0d\u80fd\u5bf9\u81ea\u5df1\u4f7f\u7528"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4f60\u786e\u5b9a\u8981\u8ba9\u4f4d\u7ed9\u3010"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u3011\u5417?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x114

    invoke-virtual {v1, v0, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private do_GANG_MEMBER_SET_WARRIOR(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->send_GANG_MEMBER_SET_WARRIOR_Message(I)Z

    return-void
.end method

.method private do_GANG_PROMOTION(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->send_GANG_PROMOTION_Message(I)Z

    return-void
.end method

.method private do_GangBuild(I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5e2e\u6d3e\u6280\u80fd\u7814\u7a76"

    aput-object v1, v0, v3

    const-string v1, "\u5e2e\u6d3e\u5347\u7ea7"

    aput-object v1, v0, v2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget v1, p0, Lcom/t4game/Gang;->gangBuildSelect:I

    if-lez v1, :cond_1

    iget v0, p0, Lcom/t4game/Gang;->gangBuildSelect:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/t4game/Gang;->gangBuildSelect:I

    goto :goto_0

    :cond_1
    array-length v0, v0

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/t4game/Gang;->gangBuildSelect:I

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lcom/t4game/Gang;->gangBuildSelect:I

    array-length v0, v0

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_2

    iget v0, p0, Lcom/t4game/Gang;->gangBuildSelect:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/Gang;->gangBuildSelect:I

    goto :goto_0

    :cond_2
    iput v3, p0, Lcom/t4game/Gang;->gangBuildSelect:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lcom/t4game/Gang;->gangBuildSelect:I

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/t4game/Gang;->send_GANG_SKILL_LIST_Message()Z

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->send_GET_GENIUS_TREE_Message(S)Z

    iput v2, p0, Lcom/t4game/Gang;->gangBuildState:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/t4game/Gang;->gangBuildSelect:I

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v3}, Lcom/t4game/Gang;->send_GANG_LEVEL_UP_Message(B)Z

    goto :goto_0

    :pswitch_4
    iput v3, p0, Lcom/t4game/Gang;->gangBuildState:I

    iput v3, p0, Lcom/t4game/Gang;->gangBuildSelect:I

    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Lcom/t4game/Gang;->send_GANG_INFO_Message()Z

    :goto_1
    invoke-virtual {p0}, Lcom/t4game/Gang;->clear_GANG_BUILD_Display()V

    goto :goto_0

    :cond_4
    const/16 v0, 0x11

    invoke-direct {p0, v0, v2}, Lcom/t4game/Gang;->setState(BZ)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private do_GangGeniusTree(I)V
    .locals 6

    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-object v0, v0, Lcom/t4game/GGeniusData;->nextGeniusIdList:[S

    aget-short v0, v0, v3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-object v0, v0, Lcom/t4game/GGeniusData;->nextGeniusIdList:[S

    aget-short v0, v0, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/t4game/Gang;->geniusTree:Lcom/t4game/GGeniusTreeData;

    iget-object v0, v0, Lcom/t4game/GGeniusTreeData;->geniusDatas:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GGeniusData;

    iput-object v0, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->startShowTopAletIntro()V

    return-void

    :cond_1
    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-object v0, v0, Lcom/t4game/GGeniusData;->nextGeniusIdList:[S

    aget-short v0, v0, v2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-object v0, v0, Lcom/t4game/GGeniusData;->nextGeniusIdList:[S

    aget-short v0, v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v0, -0x3

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-object v0, v0, Lcom/t4game/GGeniusData;->nextGeniusIdList:[S

    aget-short v0, v0, v5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-object v0, v0, Lcom/t4game/GGeniusData;->nextGeniusIdList:[S

    aget-short v0, v0, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v0, -0x4

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-object v0, v0, Lcom/t4game/GGeniusData;->nextGeniusIdList:[S

    aget-short v0, v0, v4

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-object v0, v0, Lcom/t4game/GGeniusData;->nextGeniusIdList:[S

    aget-short v0, v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    goto :goto_0

    :cond_4
    const/16 v0, 0x30

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->onSkillList:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/RoleSkill;

    iget-object v1, p0, Lcom/t4game/Gang;->geniusTree:Lcom/t4game/GGeniusTreeData;

    iget-object v1, v1, Lcom/t4game/GGeniusTreeData;->geniusDatas:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/t4game/GGeniusData;

    iput-object v1, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    iget-byte v0, v0, Lcom/t4game/RoleSkill;->level:B

    int-to-short v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/t4game/GameWorld;->sendGetMagicGeniusDetial(SS)Z

    :goto_1
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    iput-object v1, v0, Lcom/t4game/GameWorld;->magicGeniusSelect:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-object v1, v1, Lcom/t4game/GGeniusData;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/t4game/GameWorld;->questGoodsShowIntroName:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-short v1, v1, Lcom/t4game/GGeniusData;->iconImageId:S

    iput v1, v0, Lcom/t4game/GameWorld;->questGoodsShowIntroIconId:I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iput v3, v0, Lcom/t4game/GameWorld;->questGoodsShowIntroColor:I

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    sput-byte v3, Lcom/t4game/GameScreen;->showEquipmentIntroIndex:B

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    invoke-virtual {v0, v1, v4}, Lcom/t4game/GameWorld;->sendGetMagicGeniusDetial(SS)Z

    goto :goto_1
.end method

.method private do_GangSkillResearch(I)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-boolean v0, v0, Lcom/t4game/GameWorld;->showIntro:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->pressedFBagCanShowIntro()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    iput v1, p0, Lcom/t4game/Gang;->gangBuildState:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x6

    if-eq p1, v0, :cond_2

    const/4 v0, -0x5

    if-ne p1, v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/t4game/Gang;->send_GANG_SKILL_LEVEL_UP_Message(Ljava/lang/String;B)Z

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/t4game/Gang;->do_GangGeniusTree(I)V

    goto :goto_0
.end method

.method private do_GangSkillStudy(I)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-boolean v0, v0, Lcom/t4game/GameWorld;->showIntro:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->pressedFBagCanShowIntro()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x7

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/t4game/Gang;->send_GANG_INFO_Message()Z

    :goto_1
    invoke-virtual {p0}, Lcom/t4game/Gang;->clear_GANG_BUILD_Display()V

    goto :goto_0

    :cond_1
    const/16 v0, 0x11

    invoke-direct {p0, v0, v1}, Lcom/t4game/Gang;->setState(BZ)V

    goto :goto_1

    :cond_2
    const/4 v0, -0x6

    if-eq p1, v0, :cond_3

    const/4 v0, -0x5

    if-ne p1, v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/t4game/Gang;->onSkillList:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/RoleSkill;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u6280\u80fd\u672a\u7814\u7a76"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/t4game/Gang;->send_GANG_SKILL_STUDY_Message(Ljava/lang/String;B)Z

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1}, Lcom/t4game/Gang;->do_GangGeniusTree(I)V

    goto :goto_0
.end method

.method private draw2Dialog_LOOK_GANG_MEMBER_INFO(Ljavax/microedition/lcdui/Graphics;)V
    .locals 6

    const/4 v5, 0x7

    iget v0, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u540d\u79f0                        "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {p0, v4}, Lcom/t4game/Gang;->getMemberName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u7b49\u7ea7                        "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {p0, v4}, Lcom/t4game/Gang;->getMemberLevel(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u804c\u4e1a                        "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {p0, v4}, Lcom/t4game/Gang;->getMemberType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4fee\u4e3a                        "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {p0, v4}, Lcom/t4game/Gang;->getMemberXIUWEI(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5b98\u804c                        "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {p0, v4}, Lcom/t4game/Gang;->getMemberFENGHAO(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u804c\u52a1                        "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {p0, v4}, Lcom/t4game/Gang;->getMemberDutyName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8d21\u732e                        "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u672c\u5468\u4e0a\u7ebf                 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {p0, v3}, Lcom/t4game/Gang;->getOnlineTime(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u672c\u5468\u8d21\u732e                 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xb

    aget-object v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/t4game/Gang;->member_info:[Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Gang;->member_info:[Ljava/lang/String;

    array-length v0, v0

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x28

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v0, v0, 0x1e

    const-string v0, "\u5e2e\u4f17\u4fe1\u606f"

    iget-object v1, p0, Lcom/t4game/Gang;->member_info:[Ljava/lang/String;

    iget v2, p0, Lcom/t4game/Gang;->foucs:I

    sget-byte v3, Lcom/t4game/Defaults;->linesOfScreen:B

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    invoke-static {v0, v1, v2, p1, v3}, Lcom/t4game/DraftingUtil;->paintMenuFullFloatDialog(Ljava/lang/String;[Ljava/lang/String;ILjavax/microedition/lcdui/Graphics;B)V

    goto/16 :goto_0
.end method

.method private drawGANGInfo(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 11

    invoke-virtual {p0}, Lcom/t4game/Gang;->attributeToInfo()[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Gang;->gangInfo:[[Ljava/lang/String;

    const/16 v0, 0xc8

    sget v1, Lcom/t4game/Defaults;->sfh:I

    div-int/2addr v0, v1

    int-to-byte v5, v0

    const/16 v1, 0x20

    add-int/lit8 v2, p2, 0xa

    iget v0, p0, Lcom/t4game/Gang;->gangInfoSelect:I

    int-to-byte v0, v0

    iget v3, p0, Lcom/t4game/Gang;->gangMessageIndex:I

    if-lez v3, :cond_0

    const/4 v0, -0x1

    move v4, v0

    :goto_0
    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    int-to-short v2, v2

    int-to-short v3, v1

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/t4game/Gang;->gangInfo:[[Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v9, 0x82

    invoke-virtual {p0}, Lcom/t4game/Gang;->getAttributeIcon()[S

    move-result-object v10

    move-object v1, p1

    invoke-virtual/range {v0 .. v10}, Lcom/t4game/GameScreen;->paintScrollScreenMenu(Ljavax/microedition/lcdui/Graphics;SSBBZ[[Ljava/lang/String;[II[S)V

    iget-object v0, p0, Lcom/t4game/Gang;->gangInfo:[[Ljava/lang/String;

    array-length v4, v0

    iget v6, p0, Lcom/t4game/Gang;->gangInfoSelect:I

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0xe6

    const/16 v1, 0xe

    sub-int/2addr v0, v1

    const/4 v1, 0x2

    sub-int v7, v0, v1

    const/16 v8, 0x22

    const/16 v0, 0x1c

    sub-int v0, p5, v0

    const/16 v1, 0x20

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    sub-int v9, v0, v1

    move-object v10, p1

    invoke-static/range {v4 .. v10}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    return-void

    :cond_0
    move v4, v0

    goto :goto_0
.end method

.method private drawGANGMessage(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 11

    iget-object v0, p0, Lcom/t4game/Gang;->message:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/Gang;->message:Ljava/lang/String;

    const/16 v1, 0xf

    sub-int v1, p4, v1

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Gang;->gangMessage:[Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Gang;->gangMessage:[Ljava/lang/String;

    array-length v7, v0

    const/16 v0, 0x1c

    sub-int v0, p5, v0

    const/4 v1, 0x5

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    div-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Gang;->lines:B

    iget v8, p0, Lcom/t4game/Gang;->gangMessageIndex:I

    iget v0, p0, Lcom/t4game/Gang;->gangMessageIndex:I

    iget-byte v1, p0, Lcom/t4game/Gang;->lines:B

    add-int/2addr v0, v1

    if-le v0, v7, :cond_3

    move v9, v7

    :goto_1
    const-string v0, "\u5e2e\u6d3e\u7559\u8a00"

    add-int/lit8 v1, p2, 0xf

    add-int/lit16 v2, p3, 0xc8

    const/16 v3, 0xa

    sub-int/2addr v2, v3

    const/16 v3, 0x64

    const/16 v4, 0x1e

    const/4 v6, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    const/4 v0, 0x1

    add-int/lit8 v1, p2, 0xf

    add-int/lit16 v2, p3, 0xc8

    const/16 v3, 0xf

    sub-int/2addr v2, v3

    const/16 v3, 0x64

    const/16 v4, 0x1e

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    move v10, v8

    :goto_2
    if-ge v10, v9, :cond_1

    iget-object v0, p0, Lcom/t4game/Gang;->gangMessage:[Ljava/lang/String;

    aget-object v0, v0, v10

    add-int/lit8 v1, p2, 0xa

    add-int/lit8 v2, p3, 0x1c

    add-int/lit8 v2, v2, 0x5

    sub-int v3, v10, v8

    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, 0x0

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_2

    :cond_1
    iget v0, p0, Lcom/t4game/Gang;->gangMessageIndex:I

    iget-byte v1, p0, Lcom/t4game/Gang;->lines:B

    if-le v7, v1, :cond_2

    mul-int/2addr v0, v7

    iget-byte v1, p0, Lcom/t4game/Gang;->lines:B

    sub-int v1, v7, v1

    div-int/2addr v0, v1

    move v2, v0

    :goto_3
    iget-byte v1, p0, Lcom/t4game/Gang;->lines:B

    add-int v0, p2, p4

    const/16 v3, 0xe

    sub-int/2addr v0, v3

    add-int/lit8 v3, v0, 0x8

    add-int/lit8 v0, p3, 0x1c

    add-int/lit8 v4, v0, 0x2

    const/16 v0, 0x1c

    sub-int v0, p5, v0

    const/16 v5, 0x20

    sub-int/2addr v0, v5

    const/4 v5, 0x4

    sub-int v5, v0, v5

    move v0, v7

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_0

    :cond_2
    move v2, v0

    goto :goto_3

    :cond_3
    move v9, v0

    goto :goto_1
.end method

.method private gangListItemUpdate(I)V
    .locals 12

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    iget-object v1, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    check-cast v0, Lcom/t4game/UI_List;

    check-cast v0, Lcom/t4game/UI_List;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_List;->getItem(I)[Lcom/t4game/ListItem;

    move-result-object v9

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    aget-object v1, v9, v1

    iget-object v1, v1, Lcom/t4game/ListItem;->Color:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    aput v1, v2, v0

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->getMemberName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->getMemberDutyName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    aget-object v11, v0, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->getMemberLevel(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u7ea7)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    aget-object v0, v9, v0

    const/4 v1, 0x0

    aget-object v1, v9, v1

    iget-object v1, v1, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/t4game/ListItem;->Init(Ljavax/microedition/lcdui/Image;[I[Ljava/lang/String;Ljava/lang/String;[II[Ljava/lang/String;Z)V

    const/4 v0, 0x1

    aget-object v0, v9, v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v10, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/t4game/ListItem;->Init(Ljavax/microedition/lcdui/Image;[I[Ljava/lang/String;Ljava/lang/String;[II[Ljava/lang/String;Z)V

    const/4 v0, 0x2

    aget-object v0, v9, v0

    const/4 v1, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v11, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/t4game/ListItem;->Init(Ljavax/microedition/lcdui/Image;[I[Ljava/lang/String;Ljava/lang/String;[II[Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private getOpenMagicGenius(Lcom/t4game/GGeniusData;Ljava/util/Hashtable;S)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/t4game/GGeniusData;->parentList:Ljava/util/Vector;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/t4game/GGeniusData;->parentList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_3

    move v0, v3

    move v1, v3

    :goto_0
    iget-object v2, p1, Lcom/t4game/GGeniusData;->parentList:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p1, Lcom/t4game/GGeniusData;->parentList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/GGeniusData;

    if-eqz p0, :cond_0

    iget-object v2, p0, Lcom/t4game/GGeniusData;->id:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/RoleSkill;

    if-eqz p0, :cond_0

    iget-byte v2, p0, Lcom/t4game/RoleSkill;->level:B

    if-lez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/t4game/GGeniusData;->parentList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eq v1, v0, :cond_3

    move v0, v3

    :goto_1
    if-eqz v0, :cond_2

    iget-short v0, p1, Lcom/t4game/GGeniusData;->levelLimit:S

    if-lt p3, v0, :cond_2

    move v0, v4

    :goto_2
    return v0

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v4

    goto :goto_1
.end method

.method private get_GangMember_ActionMenu_Color(I)[B
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v0, v0, Lcom/t4game/GUser;->gangDuty:B

    iget-object v1, p0, Lcom/t4game/Gang;->powerControl:[[[I

    aget-object v1, v1, p1

    aget-object v1, v1, v0

    array-length v1, v1

    new-array v1, v1, [B

    move v2, v5

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/t4game/Gang;->powerControl:[[[I

    aget-object v3, v3, p1

    aget-object v3, v3, v0

    aget v3, v3, v2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    aput-byte v5, v1, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    aput-byte v3, v1, v2

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private pointer_do_GANG_MEMBER_GANGINFO()V
    .locals 6

    const/16 v5, 0xa

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-boolean v1, v1, Lcom/t4game/GameWorld;->showIntro:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightSoftKey()Z

    move-result v0

    if-eqz v0, :cond_0

    sput-byte v3, Lcom/t4game/GameScreen;->showEquipmentIntroIndex:B

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v3, v0, Lcom/t4game/GameWorld;->showIntro:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftSoftKey()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iget-byte v1, v1, Lcom/t4game/GameScreen;->dialogId:B

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v1, v1, Lcom/t4game/GUser;->gangDuty:B

    invoke-static {v1}, Lcom/t4game/Gang;->IsDutyOK(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v1, v5, v3, v0, v3}, Lcom/t4game/GameScreen;->showFormContr(IZLjava/lang/String;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v1, 0x55a

    invoke-static {v4, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightSoftKey()Z

    move-result v1

    if-eqz v1, :cond_4

    iput v3, p0, Lcom/t4game/Gang;->gangInfoSelect:I

    iput v4, p0, Lcom/t4game/Gang;->gangMemberState:I

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/Gang;->gangInfo:[[Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-static {v4}, Lcom/t4game/PointerUtil;->isPointerOnButton(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v1, v1, Lcom/t4game/GUser;->gangDuty:B

    invoke-static {v1}, Lcom/t4game/Gang;->IsDutyOK(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v1, v5, v3, v0, v3}, Lcom/t4game/GameScreen;->showFormContr(IZLjava/lang/String;I)V

    :goto_1
    const/4 v0, 0x5

    iput v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u4f60\u6ca1\u6709\u6743\u9650"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private pointer_do_GANG_MEMBER_LIST()V
    .locals 4

    const/4 v3, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftSoftKey()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerConfirmInMenu()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {p0}, Lcom/t4game/Gang;->isMemberEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const/16 v0, 0x9

    iput v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    new-instance v1, Lcom/t4game/UI_Menu;

    iget-object v2, p0, Lcom/t4game/Gang;->GangMember_recruitMenu:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/t4game/Gang;->get_GangMember_ActionMenu_Color(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/UI_Menu;->setColor([B)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    iput v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    new-instance v1, Lcom/t4game/UI_Menu;

    iget-object v2, p0, Lcom/t4game/Gang;->GangMember_ActionMenu2Lv:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-direct {p0, v3}, Lcom/t4game/Gang;->get_GangMember_ActionMenu_Color(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/UI_Menu;->setColor([B)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightSoftKey()Z

    move-result v0

    if-eqz v0, :cond_5

    iput v1, p0, Lcom/t4game/Gang;->selGangMember:I

    iput v1, p0, Lcom/t4game/Gang;->memberListNowPage:I

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->release()V

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    const/16 v0, 0xa

    invoke-direct {p0, v0, v3}, Lcom/t4game/Gang;->setState(BZ)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    sget v2, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameUi;->pointEvent(II)B

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-object v1, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-byte v1, v1, Lcom/t4game/GameUi;->focus:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    check-cast v0, Lcom/t4game/UI_List;

    invoke-virtual {v0}, Lcom/t4game/UI_List;->GetCommand()S

    move-result v0

    iput v0, p0, Lcom/t4game/Gang;->selGangMember:I

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->clearAction()V

    goto/16 :goto_0
.end method

.method private pointer_do_GANG_MEMBER_LOOK_INFO()V
    .locals 1

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightSoftKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    :cond_0
    return-void
.end method

.method private pointer_do_GANG_MEMBER_MANGER(I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerFastViewKey()Z

    move-result v0

    if-eqz v0, :cond_2

    iput-short v3, p0, Lcom/t4game/Gang;->gangMemberManagerMenuIndex:S

    iput v3, p0, Lcom/t4game/Gang;->gangMemberState:I

    :cond_0
    :goto_0
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u5e2e\u6218\u9009\u62e9"

    aput-object v1, v0, v3

    const-string v1, "\u5e2e\u4f17\u5347\u804c"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "\u5e2e\u4f17\u964d\u804c"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u5220\u9664\u5e2e\u4f17"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u9000\u4f4d\u8ba9\u8d24"

    aput-object v2, v0, v1

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftSoftKey()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-short v0, p0, Lcom/t4game/Gang;->gangMemberManagerMenuIndex:S

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    return-void

    :cond_2
    const/16 v0, 0x31

    if-lt p1, v0, :cond_0

    const/16 v0, 0x33

    if-gt p1, v0, :cond_0

    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v0, v4

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/Gang;->gangMemberManagerMenuIndex:S

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->do_GANG_PROMOTION(I)V

    goto :goto_1

    :pswitch_2
    iget v0, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->do_GANG_DEMOTION(I)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->gang:Lcom/t4game/Gang;

    iget v1, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {v0, v1}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v1, v1, Lcom/t4game/GUser;->gangDuty:B

    if-lt v1, v0, :cond_3

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v1, 0x55a

    invoke-static {v4, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u4f60\u786e\u5b9a\u8981\u5220\u9664\u5417\uff1f"

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto :goto_1

    :pswitch_4
    iput-short v3, p0, Lcom/t4game/Gang;->gangMemberManagerMenuIndex:S

    iput v4, p0, Lcom/t4game/Gang;->gangMemberState:I

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightSoftKey()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-short v3, p0, Lcom/t4game/Gang;->gangMemberManagerMenuIndex:S

    iput v4, p0, Lcom/t4game/Gang;->gangMemberState:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private pointerdo_GANG_MEMBER_MANGER()V
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "\u4f60\u6ca1\u6709\u6743\u9650"

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->pointerEvent()V

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/Gang;->gangMemberManagerMenuIndex:S

    iget-short v0, p0, Lcom/t4game/Gang;->gangMemberManagerMenuIndex:S

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-short v0, p0, Lcom/t4game/Gang;->gangMemberManagerMenuIndex:S

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    iput-short v3, p0, Lcom/t4game/Gang;->gangMemberManagerMenuIndex:S

    iput v3, p0, Lcom/t4game/Gang;->gangMemberState:I

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    new-instance v1, Lcom/t4game/UI_Menu;

    iget-object v2, p0, Lcom/t4game/Gang;->GangMember_ActionMenu:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->clearCommand()V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v0, v0, Lcom/t4game/GUser;->gangDuty:B

    iget-object v1, p0, Lcom/t4game/Gang;->powerControl:[[[I

    const/4 v2, 0x2

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    iget-short v1, p0, Lcom/t4game/Gang;->gangMemberManagerMenuIndex:S

    aget v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v1, 0x55a

    invoke-static {v4, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    iget-short v1, p0, Lcom/t4game/Gang;->gangMemberManagerMenuIndex:S

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->do_GANG_PROMOTION(I)V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->do_GANG_DEMOTION(I)V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->send_GANG_MEMBER_SET_UNCHAIN_DONTTALLK_Message(I)Z

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v1, v1, Lcom/t4game/GUser;->gangDuty:B

    if-lt v1, v0, :cond_3

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u4f60\u6ca1\u6709\u6743\u9650"

    invoke-virtual {v0, v5}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    :goto_2
    iput-short v3, p0, Lcom/t4game/Gang;->gangMemberManagerMenuIndex:S

    iput v3, p0, Lcom/t4game/Gang;->gangMemberState:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u4f60\u786e\u5b9a\u8981\u5220\u9664\u5417\uff1f"

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto :goto_2

    :pswitch_4
    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v1, v1, Lcom/t4game/GUser;->gangDuty:B

    if-lez v1, :cond_4

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u4f60\u6ca1\u6709\u6743\u9650"

    invoke-virtual {v0, v5}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, v1, Lcom/t4game/GUser;->id:Ljava/lang/String;

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u4e0d\u80fd\u5bf9\u81ea\u5df1\u4f7f\u7528"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4f60\u786e\u5b9a\u8981\u8ba9\u4f4d\u7ed9\u3010"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, v4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u3011\u5417?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x114

    invoke-virtual {v1, v0, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private pointerdo_GangGeniusTree()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    move v0, v4

    :goto_0
    iget-object v1, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->geniusTreeIconX:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->geniusTreeIconX:[I

    aget v2, v2, v0

    aput v2, v1, v4

    iget-object v2, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->geniusTreeIconY:[I

    aget v2, v2, v0

    aput v2, v1, v5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->geniusTreeIconX:[I

    aget v3, v3, v0

    add-int/lit8 v3, v3, 0x18

    aput v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->geniusTreeIconY:[I

    aget v3, v3, v0

    add-int/lit8 v3, v3, 0x18

    aput v3, v1, v2

    sget v2, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    invoke-static {v2, v3, v1}, Lcom/t4game/PointerUtil;->isPointerInArea(II[I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/t4game/PointerUtil;->clearReleasePointer()V

    iget-object v1, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->geniusIndex:[Ljava/lang/String;

    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    const/4 v1, -0x6

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->keyPressed(I)V

    :cond_0
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerFastViewKey()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Gang;->onSkillList:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/RoleSkill;

    iget-object v1, p0, Lcom/t4game/Gang;->geniusTree:Lcom/t4game/GGeniusTreeData;

    iget-object v1, v1, Lcom/t4game/GGeniusTreeData;->geniusDatas:Ljava/util/Hashtable;

    iget-object v2, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/t4game/GGeniusData;

    iput-object v1, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    iget-byte v0, v0, Lcom/t4game/RoleSkill;->level:B

    int-to-short v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/t4game/GameWorld;->sendGetMagicGeniusDetial(SS)Z

    :goto_1
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    iput-object v1, v0, Lcom/t4game/GameWorld;->magicGeniusSelect:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-object v1, v1, Lcom/t4game/GGeniusData;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/t4game/GameWorld;->questGoodsShowIntroName:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-short v1, v1, Lcom/t4game/GGeniusData;->iconImageId:S

    iput v1, v0, Lcom/t4game/GameWorld;->questGoodsShowIntroIconId:I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iput v4, v0, Lcom/t4game/GameWorld;->questGoodsShowIntroColor:I

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    sput-byte v4, Lcom/t4game/GameScreen;->showEquipmentIntroIndex:B

    :cond_1
    iget-object v0, p0, Lcom/t4game/Gang;->geniusTree:Lcom/t4game/GGeniusTreeData;

    iget-object v0, v0, Lcom/t4game/GGeniusTreeData;->geniusDatas:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GGeniusData;

    iput-object v0, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->startShowTopAletIntro()V

    return-void

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    invoke-virtual {v0, v1, v5}, Lcom/t4game/GameWorld;->sendGetMagicGeniusDetial(SS)Z

    goto :goto_1
.end method

.method private setLoadingState(B)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    return-void
.end method

.method private setState(BZ)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0, p1, p2}, Lcom/t4game/GameScreen;->setState(BZ)V

    return-void
.end method


# virtual methods
.method public addmsg(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    return-void
.end method

.method public attributeToInfo()[[Ljava/lang/String;
    .locals 10

    const/4 v5, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "/"

    const/16 v0, 0x10

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "\u5728\u7ebf\u4eba\u6570"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/t4game/Gang;->currentlyNumber:[I

    aget v3, v3, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/Gang;->currentlyNumber:[I

    aget v3, v3, v7

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "\u5e2e\u6d3e\u540d\u79f0"

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/t4game/Gang;->name:Ljava/lang/String;

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "\u5e2e\u6d3e\u4ee3\u53f7"

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/t4game/Gang;->nickName:Ljava/lang/String;

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "\u5e2e\u6d3e\u7b49\u7ea7"

    aput-object v2, v1, v6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/t4game/Gang;->level:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u7ea7"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    const/4 v1, 0x4

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "\u5e2e\u6d3e\u6392\u540d"

    aput-object v3, v2, v6

    iget-byte v3, p0, Lcom/t4game/Gang;->ranking:B

    if-gtz v3, :cond_0

    const-string v3, "\u65e0"

    :goto_0
    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "\u5e2e\u6d3e\u6210\u5458"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-short v4, p0, Lcom/t4game/Gang;->gangMemberSize:S

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4eba"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "\u7ef4\u62a4\u8d44\u91d1"

    aput-object v3, v2, v6

    iget v3, p0, Lcom/t4game/Gang;->dailyBankRoll:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "\u5e2e\u6d3e\u8d44\u91d1"

    aput-object v3, v2, v6

    iget v3, p0, Lcom/t4game/Gang;->bankroll:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "\u5347\u7ea7\u8d44\u91d1"

    aput-object v3, v2, v6

    iget v3, p0, Lcom/t4game/Gang;->upgradeBankroll:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "\u4e2a\u4eba\u804c\u52a1"

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/t4game/Gang;->job:Ljava/lang/String;

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "----\u7ba1\u7406\u5217\u8868----"

    aput-object v3, v2, v6

    const-string v3, ""

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "\u5e2e\u4e3b"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/t4game/Gang;->manageList:[[I

    aget-object v4, v4, v6

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/t4game/Gang;->manageList:[[I

    aget-object v4, v4, v6

    aget v4, v4, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "\u526f\u5e2e\u4e3b"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/t4game/Gang;->manageList:[[I

    aget-object v4, v4, v7

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/t4game/Gang;->manageList:[[I

    aget-object v4, v4, v7

    aget v4, v4, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "\u957f\u8001"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/t4game/Gang;->manageList:[[I

    aget-object v4, v4, v8

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/t4game/Gang;->manageList:[[I

    aget-object v4, v4, v8

    aget v4, v4, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "\u5802\u4e3b"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/t4game/Gang;->manageList:[[I

    aget-object v4, v4, v5

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/t4game/Gang;->manageList:[[I

    aget-object v4, v4, v5

    aget v4, v4, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "\u603b\u6210\u5458"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/t4game/Gang;->manageList:[[I

    const/4 v5, 0x4

    aget-object v4, v4, v5

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/t4game/Gang;->manageList:[[I

    const/4 v5, 0x4

    aget-object v4, v4, v5

    aget v4, v4, v7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    sput-object v0, Lcom/t4game/Gang;->info:[[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/t4game/Gang;->getSkillShowList()[[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/t4game/Gang;->info:[[Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_0
    iget-byte v3, p0, Lcom/t4game/Gang;->ranking:B

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    :cond_1
    sget-object v1, Lcom/t4game/Gang;->info:[[Ljava/lang/String;

    array-length v1, v1

    array-length v2, v0

    add-int/2addr v1, v2

    filled-new-array {v1, v8}, [I

    move-result-object v1

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Ljava/lang/String;

    sget-object v1, Lcom/t4game/Gang;->info:[[Ljava/lang/String;

    sget-object v2, Lcom/t4game/Gang;->info:[[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v1, v6, p0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v1, Lcom/t4game/Gang;->info:[[Ljava/lang/String;

    array-length v1, v1

    array-length v2, v0

    invoke-static {v0, v6, p0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p0

    goto :goto_1
.end method

.method public checkName(Ljava/lang/String;)Z
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public checkNickName(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearMem()V
    .locals 1

    invoke-virtual {p0}, Lcom/t4game/Gang;->clear_GANG_BUILD_Display()V

    iget-object v0, p0, Lcom/t4game/Gang;->memberList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public clear_GANG_BUILD_Display()V
    .locals 5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    const-string v1, ""

    iput-object v4, p0, Lcom/t4game/Gang;->name:Ljava/lang/String;

    iput v3, p0, Lcom/t4game/Gang;->level:I

    iput-short v3, p0, Lcom/t4game/Gang;->gangMemberSize:S

    iput v3, p0, Lcom/t4game/Gang;->bankroll:I

    iput v3, p0, Lcom/t4game/Gang;->dailyBankRoll:I

    const-string v1, ""

    iput-object v4, p0, Lcom/t4game/Gang;->gangSkillLevelUpText:Ljava/lang/String;

    const-string v1, ""

    iput-object v4, p0, Lcom/t4game/Gang;->gangLevelUpText:Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/Gang;->temp_skillList:[[Ljava/lang/String;

    const/4 v1, -0x1

    sput-byte v1, Lcom/t4game/Gang;->focusOfDialog:B

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    iput-object v2, p0, Lcom/t4game/Gang;->geniusTree:Lcom/t4game/GGeniusTreeData;

    iput-object v2, p0, Lcom/t4game/Gang;->onSkillList:Ljava/util/Hashtable;

    const-string v1, ""

    iput-object v4, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    return-void
.end method

.method public delMember(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/t4game/Gang;->isMemberEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/Gang;->memberList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0
.end method

.method public demotion(IB)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method

.method public do_GANG_CHANGE_LEADER(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->send_GANG_CHANGE_LEADER_Message(I)Z

    return-void
.end method

.method public do_GANG_KICKOUT(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->send_GANG_KICKOUT_Message(I)Z

    return-void
.end method

.method public do_GANG_MEMBER_LIST(I)V
    .locals 5

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1}, Lcom/t4game/GameUi;->keyEvent(I)V

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-object v1, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-byte v1, v1, Lcom/t4game/GameUi;->focus:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-boolean v0, v0, Lcom/t4game/GameScreen;->fromRelationToBang:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    invoke-direct {p0, v2, v3}, Lcom/t4game/Gang;->setState(BZ)V

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iput-boolean v4, v0, Lcom/t4game/GameScreen;->fromRelationToBang:Z

    goto :goto_0

    :pswitch_1
    check-cast v0, Lcom/t4game/UI_List;

    iget-short v0, v0, Lcom/t4game/UI_List;->Sub_Id:S

    iput v0, p0, Lcom/t4game/Gang;->selGangMember:I

    goto :goto_0

    :pswitch_2
    check-cast v0, Lcom/t4game/UI_List;

    iget-short v0, v0, Lcom/t4game/UI_List;->Sub_Id:S

    iput v0, p0, Lcom/t4game/Gang;->selGangMember:I

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/t4game/Gang;->gangMemberListPage(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0, v3}, Lcom/t4game/Gang;->gangMemberListPage(I)V

    goto :goto_0

    :cond_2
    iput v4, p0, Lcom/t4game/Gang;->selGangMember:I

    iput v4, p0, Lcom/t4game/Gang;->memberListNowPage:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    invoke-virtual {p0}, Lcom/t4game/Gang;->send_GANG_INFO_Message()Z

    goto :goto_0

    :pswitch_5
    check-cast v0, Lcom/t4game/UI_List;

    iget-short v0, v0, Lcom/t4game/UI_List;->Sub_Id:S

    iput v0, p0, Lcom/t4game/Gang;->selGangMember:I

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-boolean v0, v0, Lcom/t4game/GameScreen;->FromeEmail:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v0}, Lcom/t4game/GameUi;->release()V

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    :cond_3
    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iput-byte v4, v0, Lcom/t4game/GameScreen;->dialogId:B

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    invoke-direct {p0, v2, v3}, Lcom/t4game/Gang;->setState(BZ)V

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->gang:Lcom/t4game/Gang;

    iget v2, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {v1, v2}, Lcom/t4game/Gang;->getMemberName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/GameScreen;->EMAIL_WRITE_name:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->formcont:Lcom/t4game/FormContr;

    iget-object v1, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->EMAIL_WRITE_title:Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->EMAIL_WRITE_name:Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->EMAIL_WRITE_content:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/FormContr;->setReceiveName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->sg:Lcom/t4game/StartGame;

    iget-object v1, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->formcont:Lcom/t4game/FormContr;

    invoke-virtual {v0, v1}, Lcom/t4game/StartGame;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iput-boolean v4, v0, Lcom/t4game/GameScreen;->gamescreenDraw:Z

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/t4game/Gang;->isMemberEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    const/16 v0, 0x9

    iput v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    new-instance v1, Lcom/t4game/UI_Menu;

    iget-object v2, p0, Lcom/t4game/Gang;->GangMember_recruitMenu:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/t4game/Gang;->get_GangMember_ActionMenu_Color(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/UI_Menu;->setColor([B)V

    goto/16 :goto_0

    :cond_5
    const/4 v0, 0x7

    iput v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    new-instance v1, Lcom/t4game/UI_Menu;

    iget-object v2, p0, Lcom/t4game/Gang;->GangMember_ActionMenu2Lv:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-direct {p0, v3}, Lcom/t4game/Gang;->get_GangMember_ActionMenu_Color(I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/UI_Menu;->setColor([B)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public do_GANG_MEMBER_MENU(I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->keyEvent(I)V

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    iget-short v0, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    if-eq v0, v4, :cond_1

    iget-short v0, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    iput-short v2, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    iput v5, p0, Lcom/t4game/Gang;->gangMemberState:I

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->clearCommand()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v0, v0, Lcom/t4game/GUser;->gangDuty:B

    iget-object v1, p0, Lcom/t4game/Gang;->powerControl:[[[I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    iget-short v1, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    aget v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v1, 0x55a

    invoke-static {v3, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-short v0, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, v3, v4}, Lcom/t4game/Gang;->send_GANG_MEMBER_Message(BB)Z

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->send_GET_GENIUS_TREE_Message(S)Z

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->gang:Lcom/t4game/Gang;

    invoke-virtual {v0}, Lcom/t4game/Gang;->send_GANG_SKILL_STUDY_LIST_Message()Z

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2, v6, v2}, Lcom/t4game/GameScreen;->showFormContr(IZLjava/lang/String;I)V

    iput v5, p0, Lcom/t4game/Gang;->gangMemberState:I

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v2, v4}, Lcom/t4game/Gang;->send_GANG_MEMBER_Message(BB)Z

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v0, v0, Lcom/t4game/GUser;->gangDuty:B

    invoke-static {v0}, Lcom/t4game/Gang;->IsDutyOK(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2, v6, v2}, Lcom/t4game/GameScreen;->showFormContr(IZLjava/lang/String;I)V

    :goto_2
    iput v5, p0, Lcom/t4game/Gang;->gangMemberState:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u4f60\u6ca1\u6709\u6743\u9650"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0}, Lcom/t4game/Gang;->send_GANG_BUILD_Message()Z

    goto :goto_1

    :pswitch_6
    const/4 v0, 0x6

    iput v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iput-byte v3, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    goto :goto_1

    :pswitch_7
    iput-short v2, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    iput v2, p0, Lcom/t4game/Gang;->gangMemberState:I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->gang:Lcom/t4game/Gang;

    iget v2, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {v1, v2}, Lcom/t4game/Gang;->getMemberName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/t4game/GameWorld;->sendAddFriendMessage(ZLjava/lang/String;)Z

    goto/16 :goto_1

    :pswitch_8
    iput-short v2, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    iput v2, p0, Lcom/t4game/Gang;->gangMemberState:I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->gang:Lcom/t4game/Gang;

    iget v2, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {v1, v2}, Lcom/t4game/Gang;->getMemberName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/t4game/GameWorld;->sendAddBlackListMessage(ZLjava/lang/String;)Z

    goto/16 :goto_1

    :pswitch_9
    iput-short v2, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    iput v2, p0, Lcom/t4game/Gang;->gangMemberState:I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public do_PointerFunction_GangSkillResearch()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-boolean v0, v0, Lcom/t4game/GameWorld;->showIntro:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->pressedFBagCanShowIntro()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/t4game/Gang;->pointerdo_GangGeniusTree()V

    goto :goto_0
.end method

.method public do_pointerFunction_GangBuild()V
    .locals 3

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/t4game/PointerUtil;->isPointerOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Lcom/t4game/PointerUtil;->isreleasedOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/t4game/Gang;->send_GANG_SKILL_LIST_Message()Z

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->send_GET_GENIUS_TREE_Message(S)Z

    iput v2, p0, Lcom/t4game/Gang;->gangBuildState:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v1}, Lcom/t4game/PointerUtil;->isPointerOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/t4game/PointerUtil;->isreleasedOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->send_GANG_LEVEL_UP_Message(B)Z

    goto :goto_0
.end method

.method public draw2Dialog_GANGINFO(Ljavax/microedition/lcdui/Graphics;)V
    .locals 12

    const/16 v4, 0xe6

    const/16 v11, 0xc8

    const/4 v10, 0x1

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/4 v3, 0x4

    const/16 v5, 0x104

    const/16 v6, 0x96

    const-string v0, "\u5e2e\u6d3e\u4fe1\u606f"

    invoke-static {p1, v0, v4}, Lcom/t4game/DraftingUtil;->paintDialog_SplitFloating_H2(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;I)V

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/t4game/Gang;->drawGANGInfo(Ljavax/microedition/lcdui/Graphics;IIII)V

    add-int/2addr v2, v4

    const/16 v0, 0x1e

    sub-int v4, v6, v0

    move-object v0, p0

    move-object v1, p1

    move v5, v11

    invoke-direct/range {v0 .. v5}, Lcom/t4game/Gang;->drawGANGMessage(Ljavax/microedition/lcdui/Graphics;IIII)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-boolean v0, v0, Lcom/t4game/GameWorld;->showIntro:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    int-to-short v1, v1

    const/16 v2, 0x20

    const/16 v3, 0x168

    iget-object v4, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v5, v4, Lcom/t4game/GameWorld;->skillDetialIntro:Ljava/util/Vector;

    iget-object v4, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v7, v4, Lcom/t4game/GameWorld;->skillDetialColor:Ljava/util/Vector;

    sget-byte v8, Lcom/t4game/GameScreen;->showEquipmentIntroIndex:B

    iget-object v4, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget v9, v4, Lcom/t4game/GameWorld;->questGoodsShowIntroIconId:I

    move v4, v11

    move-object v6, p1

    invoke-virtual/range {v0 .. v10}, Lcom/t4game/GameScreen;->paintSkillDetial(SSSSLjava/util/Vector;Ljavax/microedition/lcdui/Graphics;Ljava/util/Vector;IIZ)V

    :cond_0
    iget v0, p0, Lcom/t4game/Gang;->gangInfoSelect:I

    sget-object v1, Lcom/t4game/Gang;->info:[[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v10

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "\u67e5\u770b"

    invoke-static {v0, p1}, Lcom/t4game/DraftingUtil;->paintFunctionEndAlert(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    :cond_1
    return-void
.end method

.method public draw2Dialog_NPC_FUNCTION_GANG_BUILD(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2

    iget v0, p0, Lcom/t4game/Gang;->gangBuildState:I

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->draw_GangBuild(Ljavax/microedition/lcdui/Graphics;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/t4game/Gang;->gangBuildState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->draw_GangSkillResearch(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0
.end method

.method public draw2Dialog_NPC_FUNCTION_GANG_MEMBER(Lcom/t4game/GameUi;Lcom/t4game/UI_Menu;Ljavax/microedition/lcdui/Graphics;)V
    .locals 8

    const/16 v3, 0x8

    const/4 v7, 0x7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    if-eq v0, v6, :cond_0

    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    if-eq v0, v7, :cond_0

    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_7

    :cond_0
    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v1, 0x5a

    sub-int/2addr v0, v1

    sget-short v0, Lcom/t4game/DraftingUtil;->dialogTopLableHight:S

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v2, 0x24

    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    const-string v0, ""

    iget v1, p0, Lcom/t4game/Gang;->gangMemberState:I

    if-ne v1, v3, :cond_3

    const-string v0, "[\u62db\u5175\u4e70\u9a6c]"

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u6210\u5458\u5217\u8868"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/t4game/DraftingUtil;->paintFloatingDailog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    if-nez p1, :cond_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, v1, Lcom/t4game/GUser;->bangPaiName:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, v1, Lcom/t4game/GUser;->bangPaiName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p3}, Lcom/t4game/GameUi;->draw(Ljavax/microedition/lcdui/Graphics;)V

    invoke-virtual {p0}, Lcom/t4game/Gang;->isMemberEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const v0, 0xffc700

    invoke-virtual {p3, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v2, 0x24

    sub-int/2addr v1, v2

    const/16 v2, 0xa

    sub-int/2addr v1, v2

    const/16 v2, 0xa

    sub-int v2, v0, v2

    iget v3, p0, Lcom/t4game/Gang;->memberListNowPage:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v1, v3, p3}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v2, v0, 0xa

    iget v3, p0, Lcom/t4game/Gang;->memberListMaxPage:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v1, v3, p3}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    sget-object v2, Lcom/t4game/Data;->color:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    invoke-virtual {p3, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int/lit8 v2, v0, 0x0

    add-int/lit8 v3, v1, 0x5

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v1, v1, 0x0

    invoke-virtual {p3, v2, v3, v0, v1}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    if-eq v0, v7, :cond_5

    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    if-eq v0, v6, :cond_5

    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_6

    :cond_5
    if-eqz p2, :cond_2

    invoke-virtual {p2, p3}, Lcom/t4game/UI_Menu;->draw(Ljavax/microedition/lcdui/Graphics;)V

    :cond_6
    :goto_2
    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    if-ne v0, v4, :cond_8

    if-eqz p2, :cond_2

    invoke-virtual {p2, p3}, Lcom/t4game/UI_Menu;->draw(Ljavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_1

    :cond_7
    invoke-virtual {p0, p3}, Lcom/t4game/Gang;->draw2Dialog_GANGINFO(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_2

    :cond_8
    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    if-ne v0, v5, :cond_9

    invoke-direct {p0, p3}, Lcom/t4game/Gang;->draw2Dialog_LOOK_GANG_MEMBER_INFO(Ljavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_1

    :cond_9
    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    if-ne v0, v4, :cond_2

    const-string v0, "\u60a8\u786e\u5b9a\u8981\u9000\u51fa\u5417\uff1f"

    invoke-static {p3, v0, v5}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    goto/16 :goto_1
.end method

.method public draw2Dialog_NPC_FUNCTION_GANG_NEW(Ljavax/microedition/lcdui/Graphics;)V
    .locals 22

    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v19, v5

    const/4 v5, 0x1

    const-string v6, ""

    aput-object v6, v19, v5

    sget v5, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v20, v5, 0xe

    const/16 v15, 0x2e

    const/16 v6, 0x13c

    const-string v5, "\u5e2e\u6d3e\u540d\u79f0\u6700\u591a6\u4e2a\u5b57\u7b26\uff0c\u5e2e\u6d3e\u4ee3\u53f7\uff08\u5728\u6e38\u620f\u4e2d\u4f1a\u663e\u793a\u5728\u5e2e\u6d3e\u6210\u5458\u5934\u9876\uff09\u53ea\u80fd1\u4e2a\u5b57\u7b26\u3002\u7ec4\u5efa\u5e2e\u6d3e\u9700\u8981200\u91d1\uff0c\u4f60\u662f\u5426\u786e\u5b9a\u8981\u5efa\u7acb\u5e2e\u6d3e\uff1f"

    const/16 v7, 0x1e

    sub-int v7, v6, v7

    sget-object v8, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v5, v7, v8}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v10

    sget v5, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v7, v15, 0x28

    add-int/lit8 v7, v7, 0x1e

    sget v8, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v8, v8, 0x3

    const-string v9, "\u65b0\u5efa\u5e2e\u6d3e"

    sget-byte v11, Lcom/t4game/Gang;->focusOfDialog:B

    const/4 v13, 0x0

    const/4 v14, 0x3

    move-object/from16 v12, p1

    invoke-static/range {v5 .. v14}, Lcom/t4game/DraftingUtil;->paintMenu(IIIILjava/lang/String;[Ljava/lang/String;ILjavax/microedition/lcdui/Graphics;ZB)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string v8, "\u540d\u79f0"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    const-string v8, "\u4ee3\u53f7"

    aput-object v8, v5, v7

    const/4 v7, 0x0

    move/from16 v21, v7

    move v10, v15

    :goto_0
    array-length v7, v5

    move/from16 v0, v21

    move v1, v7

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/Gang;->createGongSelect:I

    move v7, v0

    move/from16 v0, v21

    move v1, v7

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v7

    const/16 v8, 0x9

    sget v12, Lcom/t4game/Defaults;->sfh:I

    move/from16 v9, v20

    move v11, v6

    invoke-virtual/range {v7 .. v12}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :cond_0
    aget-object v8, v5, v21

    sget v11, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v12, -0x1

    const v13, 0xffc700

    move/from16 v9, v20

    move-object/from16 v14, p1

    invoke-static/range {v8 .. v14}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v7, v21, 0x1

    sget v8, Lcom/t4game/Defaults;->sfh:I

    move v0, v7

    move/from16 v1, v20

    move v2, v10

    move v3, v6

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    const-string v7, ""

    if-nez v21, :cond_1

    sget v7, Lcom/t4game/Defaults;->WORD_KUANG_WIDTH:I

    const/16 v8, 0xf

    sub-int/2addr v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->inputGangName:Ljava/lang/String;

    move-object v8, v0

    move-object v12, v8

    :goto_1
    add-int/lit8 v13, v20, 0x32

    const/4 v8, 0x4

    sub-int v14, v10, v8

    add-int/lit8 v15, v7, 0x14

    sget v8, Lcom/t4game/Defaults;->WORD_KUANG_HEIGHT:I

    add-int/lit8 v16, v8, 0x4

    const/16 v17, 0x0

    const/16 v18, 0x3

    move-object/from16 v11, p1

    invoke-static/range {v11 .. v18}, Lcom/t4game/DraftingUtil;->paintWordInput(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIII)V

    aget-object v8, v19, v21

    add-int/lit8 v9, v20, 0x1e

    add-int/2addr v7, v9

    add-int/lit8 v9, v7, 0x5

    sget v11, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v12, -0x1

    const v13, 0xffc700

    move-object/from16 v14, p1

    invoke-static/range {v8 .. v14}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v7, v10, 0x28

    add-int/lit8 v8, v21, 0x1

    move/from16 v21, v8

    move v10, v7

    goto :goto_0

    :cond_1
    const/16 v7, 0x28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->inputGangNickName:Ljava/lang/String;

    move-object v8, v0

    move-object v12, v8

    goto :goto_1

    :cond_2
    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v5, v5, 0x3

    add-int v7, v10, v5

    const-string v5, "\u521b\u5efa"

    sget v6, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/16 v8, 0x3c

    sub-int/2addr v6, v8

    const/16 v8, 0x78

    const/16 v9, 0x1e

    const/4 v11, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    const/4 v5, 0x3

    sget v6, Lcom/t4game/Defaults;->CANVAS_WW:I

    const/16 v8, 0x3c

    sub-int/2addr v6, v8

    const/16 v8, 0x78

    const/16 v9, 0x1e

    invoke-static {v5, v6, v7, v8, v9}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    return-void
.end method

.method draw_GangBuild(Ljavax/microedition/lcdui/Graphics;)V
    .locals 11

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget v0, v0, Lcom/t4game/GUser;->gangId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    const-string v0, "\u5e2e\u6d3e\u5efa\u8bbe"

    const/16 v1, 0xe6

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintDialog_SplitFloating_H2_NoCommand(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;I)V

    const/4 v0, 0x6

    new-array v7, v0, [[Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u5e2e\u6d3e\u540d\u79f0"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/t4game/Gang;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    aput-object v1, v7, v0

    const/4 v0, 0x1

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u5e2e\u6d3e\u7b49\u7ea7"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/t4game/Gang;->level:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v1, v7, v0

    const/4 v0, 0x2

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u5e2e\u6d3e\u6210\u5458"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-short v3, p0, Lcom/t4game/Gang;->gangMemberSize:S

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v1, v7, v0

    const/4 v0, 0x3

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u5e2e\u6d3e\u8d44\u91d1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/t4game/Gang;->bankroll:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v1, v7, v0

    const/4 v0, 0x4

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u5347\u7ea7\u8d44\u91d1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/t4game/Gang;->upgradeBankroll:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v1, v7, v0

    const/4 v0, 0x5

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u7ef4\u62a4\u8d44\u91d1"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/t4game/Gang;->dailyBankRoll:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    aput-object v1, v7, v0

    const/16 v0, 0x2e

    const/4 v1, 0x0

    move v8, v1

    move v2, v0

    :goto_0
    array-length v0, v7

    if-ge v8, v0, :cond_3

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v0, v0, 0x1e

    const/4 v1, 0x0

    move v9, v1

    move v10, v0

    :goto_1
    const/4 v0, 0x2

    if-ge v9, v0, :cond_2

    aget-object v0, v7, v8

    aget-object v0, v0, v9

    const/16 v1, 0x19

    sub-int v1, v10, v1

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v10, 0x73

    add-int/lit8 v1, v9, 0x1

    move v9, v1

    move v10, v0

    goto :goto_1

    :cond_2
    sget v0, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v0, v2

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v2, v0

    goto :goto_0

    :cond_3
    const/16 v0, 0x59

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0xe6

    add-int/lit8 v1, v1, 0x5

    const/4 v2, 0x2

    new-array v7, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u5e2e\u6d3e\u6280\u80fd\u7814\u7a76"

    aput-object v3, v7, v2

    const/4 v2, 0x1

    const-string v3, "\u5e2e\u6d3e\u5347\u7ea7"

    aput-object v3, v7, v2

    const/4 v2, 0x0

    move v8, v2

    move v2, v0

    :goto_2
    array-length v0, v7

    if-ge v8, v0, :cond_0

    const v0, 0x764e00

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    aget-object v0, v7, v8

    const/16 v3, 0x78

    const/16 v4, 0x1e

    const/4 v6, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintCommand(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;Z)V

    add-int/lit8 v0, v8, 0x1

    const/16 v3, 0x64

    const/16 v4, 0x1e

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/PointerUtil;->setButtonCoordinate(IIIII)V

    add-int/lit8 v0, v2, 0x3c

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v2, v0

    goto :goto_2
.end method

.method draw_GangInfo(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0

    return-void
.end method

.method public draw_GangSkillResearch(Ljavax/microedition/lcdui/Graphics;)V
    .locals 12

    const/16 v11, 0x168

    const/4 v9, -0x1

    const/4 v10, 0x1

    const/16 v7, 0x25

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x1e

    iget-object v3, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    add-int/lit8 v2, v2, 0x18

    mul-int/lit8 v1, v1, 0x36

    sub-int v1, v11, v1

    iget-object v2, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    const/16 v2, 0x18

    sub-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x42

    shr-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    add-int/lit8 v8, v0, 0x18

    iget-object v0, p0, Lcom/t4game/Gang;->geniusTree:Lcom/t4game/GGeniusTreeData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/Gang;->onSkillList:Ljava/util/Hashtable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v2, p0, Lcom/t4game/Gang;->geniusTree:Lcom/t4game/GGeniusTreeData;

    iget-object v3, p0, Lcom/t4game/Gang;->onSkillList:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->gang:Lcom/t4game/Gang;

    iget v1, v1, Lcom/t4game/Gang;->level:I

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v1, v1, 0xa

    int-to-short v5, v1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GameScreen;->drawGeniusTree(Ljavax/microedition/lcdui/Graphics;Lcom/t4game/GGeniusTreeData;Ljava/util/Hashtable;Ljava/lang/String;S)V

    const/16 v0, 0x108

    sget-short v1, Lcom/t4game/DraftingUtil;->commandRectHight:S

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    sub-int v2, v0, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e2e\u6d3e\u8d44\u91d1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/t4game/Gang;->bankroll:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v1, v1, 0x168

    const/16 v3, 0xb4

    sub-int/2addr v1, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const v5, 0xffffff

    move v4, v9

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->testShowTopAletIntro()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-object v1, v1, Lcom/t4game/GGeniusData;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-byte v2, v2, Lcom/t4game/GGeniusData;->columnIndex:B

    iget-object v3, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-int/lit8 v2, v2, 0x1e

    add-int/2addr v2, v8

    add-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-byte v3, v3, Lcom/t4game/GGeniusData;->rowIndex:B

    iget-object v4, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-int/lit8 v3, v3, 0x14

    add-int/2addr v3, v7

    iget-object v4, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    add-int/lit8 v3, v3, 0x18

    add-int/lit8 v3, v3, 0x3

    const v5, 0xffc700

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GameScreen;->paintFunctionIntro(Ljava/lang/String;IILjavax/microedition/lcdui/Graphics;I)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-boolean v0, v0, Lcom/t4game/GameWorld;->showIntro:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->skillDetialIntro:Ljava/util/Vector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->skillDetialIntro:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "\u9700\u8981\u7b49\u7ea7:"

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->getGangSkillDetialIndex(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v9, :cond_1

    iget-object v0, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-short v0, v0, Lcom/t4game/GGeniusData;->levelLimit:S

    sub-int/2addr v0, v10

    div-int/lit8 v2, v0, 0xa

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->skillDetialIntro:Ljava/util/Vector;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x575

    invoke-static {v10, v4}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->skillDetialColor:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    iget v0, p0, Lcom/t4game/Gang;->level:I

    if-ge v0, v2, :cond_1

    new-instance v0, Ljava/lang/Integer;

    sget-object v2, Lcom/t4game/Defaults;->IntroColor:[I

    aget v2, v2, v10

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->skillDetialColor:Ljava/util/Vector;

    invoke-virtual {v2, v0, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_1
    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    int-to-short v1, v1

    const/16 v2, 0x20

    const/16 v4, 0xc8

    iget-object v3, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v5, v3, Lcom/t4game/GameWorld;->skillDetialIntro:Ljava/util/Vector;

    iget-object v3, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v7, v3, Lcom/t4game/GameWorld;->skillDetialColor:Ljava/util/Vector;

    iget-object v3, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    sget-byte v8, Lcom/t4game/GameScreen;->showEquipmentIntroIndex:B

    iget-object v3, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget v9, v3, Lcom/t4game/GameWorld;->questGoodsShowIntroIconId:I

    move v3, v11

    move-object v6, p1

    invoke-virtual/range {v0 .. v10}, Lcom/t4game/GameScreen;->paintSkillDetial(SSSSLjava/util/Vector;Ljavax/microedition/lcdui/Graphics;Ljava/util/Vector;IIZ)V

    :cond_2
    return-void
.end method

.method public draw_GangSkillStudy(Ljavax/microedition/lcdui/Graphics;)V
    .locals 13

    const/16 v11, 0x168

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string v12, "\u9700\u8981\u89d2\u8272\u7b49\u7ea7:"

    const/16 v7, 0x25

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v2, 0x1e

    iget-object v3, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    add-int/lit8 v2, v2, 0x18

    mul-int/lit8 v1, v1, 0x36

    sub-int v1, v11, v1

    iget-object v2, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    const/16 v2, 0x18

    sub-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x42

    shr-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    add-int/lit8 v8, v0, 0x18

    iget-object v0, p0, Lcom/t4game/Gang;->geniusTree:Lcom/t4game/GGeniusTreeData;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/Gang;->onSkillList:Ljava/util/Hashtable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v2, p0, Lcom/t4game/Gang;->geniusTree:Lcom/t4game/GGeniusTreeData;

    iget-object v3, p0, Lcom/t4game/Gang;->onSkillList:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-short v5, v1, Lcom/t4game/GUser;->grade:S

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GameScreen;->drawGeniusTree(Ljavax/microedition/lcdui/Graphics;Lcom/t4game/GGeniusTreeData;Ljava/util/Hashtable;Ljava/lang/String;S)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5e2e\u6d3e\u8d21\u732e\u5ea6:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget v1, v1, Lcom/t4game/GUser;->gangHonor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v1, v0}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v1

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v2, v2, 0x168

    const/16 v3, 0xe

    sub-int/2addr v2, v3

    sub-int v1, v2, v1

    const/16 v2, 0x108

    sget-short v3, Lcom/t4game/DraftingUtil;->commandRectHight:S

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const v5, 0xf9df00

    move v4, v9

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->testShowTopAletIntro()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-object v1, v1, Lcom/t4game/GGeniusData;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-byte v2, v2, Lcom/t4game/GGeniusData;->columnIndex:B

    iget-object v3, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-int/lit8 v2, v2, 0x1e

    add-int/2addr v2, v8

    add-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-byte v3, v3, Lcom/t4game/GGeniusData;->rowIndex:B

    iget-object v4, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    mul-int/lit8 v3, v3, 0x14

    add-int/2addr v3, v7

    iget-object v4, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    add-int/lit8 v3, v3, 0x18

    add-int/lit8 v3, v3, 0x3

    const v5, 0xffc700

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GameScreen;->paintFunctionIntro(Ljava/lang/String;IILjavax/microedition/lcdui/Graphics;I)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-boolean v0, v0, Lcom/t4game/GameWorld;->showIntro:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->skillDetialIntro:Ljava/util/Vector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->skillDetialIntro:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u9700\u8981\u7b49\u7ea7:"

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->getGangSkillDetialIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v0, -0x1

    if-eq v1, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-short v0, v0, Lcom/t4game/GGeniusData;->levelLimit:S

    sub-int/2addr v0, v10

    div-int/lit8 v2, v0, 0xa

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->skillDetialIntro:Ljava/util/Vector;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x575

    invoke-static {v10, v4}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->skillDetialColor:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    check-cast v0, Ljava/lang/Integer;

    iget v0, p0, Lcom/t4game/Gang;->level:I

    if-ge v0, v2, :cond_1

    new-instance v0, Ljava/lang/Integer;

    sget-object v2, Lcom/t4game/Defaults;->IntroColor:[I

    aget v2, v2, v10

    invoke-direct {v0, v2}, Ljava/lang/Integer;-><init>(I)V

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->skillDetialColor:Ljava/util/Vector;

    invoke-virtual {v2, v0, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_1
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-short v0, v0, Lcom/t4game/GUser;->grade:S

    iget-object v1, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-short v1, v1, Lcom/t4game/GGeniusData;->levelLimit:S

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9700\u8981\u89d2\u8272\u7b49\u7ea7:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-short v2, v2, Lcom/t4game/GGeniusData;->levelLimit:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/t4game/Defaults;->IntroColor:[I

    aget v2, v2, v10

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addSkillDetial(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    int-to-short v1, v1

    const/16 v2, 0x20

    const/16 v4, 0xc8

    iget-object v3, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v5, v3, Lcom/t4game/GameWorld;->skillDetialIntro:Ljava/util/Vector;

    iget-object v3, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v7, v3, Lcom/t4game/GameWorld;->skillDetialColor:Ljava/util/Vector;

    iget-object v3, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    sget-byte v8, Lcom/t4game/GameScreen;->showEquipmentIntroIndex:B

    iget-object v3, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget v9, v3, Lcom/t4game/GameWorld;->questGoodsShowIntroIconId:I

    move v3, v11

    move-object v6, p1

    invoke-virtual/range {v0 .. v10}, Lcom/t4game/GameScreen;->paintSkillDetial(SSSSLjava/util/Vector;Ljavax/microedition/lcdui/Graphics;Ljava/util/Vector;IIZ)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u9700\u8981\u89d2\u8272\u7b49\u7ea7:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-short v2, v2, Lcom/t4game/GGeniusData;->levelLimit:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/t4game/Defaults;->IntroColor:[I

    aget v2, v2, v9

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addSkillDetial(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public gangMemberListPage(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x1

    if-nez p1, :cond_2

    iget v0, p0, Lcom/t4game/Gang;->memberListNowPage:I

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/t4game/Gang;->memberListNowPage:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/t4game/Gang;->memberListNowPage:I

    invoke-virtual {p0, v2, v3}, Lcom/t4game/Gang;->send_GANG_MEMBER_Message(BB)Z

    iput v4, p0, Lcom/t4game/Gang;->selGangMember:I

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_0

    iget v0, p0, Lcom/t4game/Gang;->memberListNowPage:I

    iget v1, p0, Lcom/t4game/Gang;->memberListMaxPage:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/t4game/Gang;->memberListNowPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/Gang;->memberListNowPage:I

    invoke-virtual {p0, v2, v3}, Lcom/t4game/Gang;->send_GANG_MEMBER_Message(BB)Z

    iput v4, p0, Lcom/t4game/Gang;->selGangMember:I

    goto :goto_0
.end method

.method public getAttributeIcon()[S
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/t4game/Gang;->attributeToInfo()[[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [S

    move v1, v3

    :goto_0
    sget-object v2, Lcom/t4game/Gang;->info:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const/4 v2, -0x1

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/t4game/Gang;->temp_skillList:[[Ljava/lang/String;

    if-nez v1, :cond_2

    :cond_1
    return-object v0

    :cond_2
    move v1, v3

    :goto_1
    iget-object v2, p0, Lcom/t4game/Gang;->temp_skillList:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/t4game/Gang;->info:[[Ljava/lang/String;

    array-length v2, v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v1}, Lcom/t4game/Gang;->getSkillIcon(I)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getGangSkillDetialIndex(Ljava/lang/String;)I
    .locals 5

    const/4 v4, 0x0

    move v1, v4

    :goto_0
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->skillDetialIntro:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->skillDetialIntro:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getMember(I)[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/t4game/Gang;->isMemberEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/Gang;->memberList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    move-object v0, p0

    goto :goto_0
.end method

.method public getMemberDutyName(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/t4game/CommonConstants;->GANG_DUTYS:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getMemberFENGHAO(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMemberHONOR(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMemberId(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMemberLevel(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMemberName(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getMemberType(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/t4game/CommonConstants;->OCCUPATION_NAMES:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0
.end method

.method public getMemberXIUWEI(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getOnlineTime(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x9

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getOpenMagicGeniusCanUp(Lcom/t4game/GGeniusData;Ljava/util/Hashtable;S)Z
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/t4game/Gang;->getOpenMagicGenius(Lcom/t4game/GGeniusData;Ljava/util/Hashtable;S)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/t4game/GGeniusData;->id:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/RoleSkill;

    if-eqz p0, :cond_1

    iget-short v1, p1, Lcom/t4game/GGeniusData;->levelLimit:S

    iget-byte v2, p0, Lcom/t4game/RoleSkill;->level:B

    shl-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    :goto_0
    if-lt p3, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget-short v1, p1, Lcom/t4game/GGeniusData;->levelLimit:S

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    invoke-virtual {p0}, Lcom/t4game/Gang;->isMemberEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/Gang;->memberList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getSkillIcon(I)I
    .locals 2

    iget-object v0, p0, Lcom/t4game/Gang;->temp_skillList:[[Ljava/lang/String;

    aget-object v0, v0, p1

    const/4 v1, 0x4

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSkillIconlist()[S
    .locals 3

    iget-object v0, p0, Lcom/t4game/Gang;->temp_skillList:[[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [S

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/t4game/Gang;->temp_skillList:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/t4game/Gang;->getSkillIcon(I)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSkillId(I)I
    .locals 2

    iget-object v0, p0, Lcom/t4game/Gang;->temp_skillList:[[Ljava/lang/String;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSkillLevel(I)I
    .locals 2

    iget-object v0, p0, Lcom/t4game/Gang;->temp_skillList:[[Ljava/lang/String;

    aget-object v0, v0, p1

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSkillList(I)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/t4game/Gang;->temp_skillList:[[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSkillMaxLevel(I)I
    .locals 2

    iget-object v0, p0, Lcom/t4game/Gang;->temp_skillList:[[Ljava/lang/String;

    aget-object v0, v0, p1

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSkillName(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/t4game/Gang;->temp_skillList:[[Ljava/lang/String;

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSkillShowList()[[Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/t4game/Gang;->temp_skillList:[[Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    check-cast p0, [[Ljava/lang/String;

    move-object v0, p0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/t4game/Gang;->temp_skillList:[[Ljava/lang/String;

    array-length v1, v0

    const/4 v0, 0x2

    filled-new-array {v1, v0}, [I

    move-result-object v0

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    move v2, v7

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {p0, v2}, Lcom/t4game/Gang;->getSkillName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    aget-object v3, v0, v2

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Lv."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v2}, Lcom/t4game/Gang;->getSkillLevel(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public initGangSkillIcon()V
    .locals 4

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/t4game/Gang;->getSkillIconlist()[S

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/GameWorld;->getGoodsIcon(B[SZ)V

    return-void
.end method

.method public isMemberEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/t4game/Gang;->memberList:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->memberList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMemberWarrior(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "\u662f"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u5426"

    goto :goto_0
.end method

.method public memberListToAry()[[Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/t4game/Gang;->isMemberEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    check-cast p0, [[Ljava/lang/String;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/Gang;->memberList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v1, v0, [[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public memberListToShowAry()[[Ljava/lang/String;
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/t4game/Gang;->isMemberEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x0

    check-cast p0, [[Ljava/lang/String;

    move-object v0, p0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/t4game/Gang;->memberList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    const/4 v0, 0x4

    filled-new-array {v2, v0}, [I

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    move v3, v8

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v1, v0, v3

    invoke-virtual {p0, v3}, Lcom/t4game/Gang;->getMemberName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v8

    iget-byte v1, p0, Lcom/t4game/Gang;->enlistedState:B

    if-eq v1, v7, :cond_2

    aget-object v4, v0, v3

    iget-object v1, p0, Lcom/t4game/Gang;->memberList:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    const/4 v5, 0x6

    aget-object v1, v1, v5

    aput-object v1, v4, v7

    aget-object v4, v0, v3

    iget-object v1, p0, Lcom/t4game/Gang;->memberList:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v1, v1, v5

    aput-object v1, v4, v9

    :goto_1
    aget-object v1, v0, v3

    const/4 v4, 0x3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0, v3}, Lcom/t4game/Gang;->getMemberLevel(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u7ea7)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    aget-object v1, v0, v3

    invoke-virtual {p0, v3}, Lcom/t4game/Gang;->getMemberDutyName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v7

    aget-object v1, v0, v3

    invoke-virtual {p0, v3}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xb

    aget-object v4, v4, v5

    aput-object v4, v1, v9

    goto :goto_1
.end method

.method public pointerOfDialog_GANG_BUILD()V
    .locals 2

    iget v0, p0, Lcom/t4game/Gang;->gangBuildState:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/t4game/Gang;->do_pointerFunction_GangBuild()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/t4game/Gang;->gangBuildState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/t4game/Gang;->do_PointerFunction_GangSkillResearch()V

    goto :goto_0
.end method

.method public pointerOfDialog_GANG_MEMBER()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, -0x1

    const/4 v2, -0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/t4game/Gang;->pointer_do_GANG_MEMBER_LIST()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    if-ne v0, v4, :cond_3

    invoke-virtual {p0}, Lcom/t4game/Gang;->pointer_do_GANG_MEMBER_MENU()V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    if-ne v0, v6, :cond_4

    invoke-direct {p0}, Lcom/t4game/Gang;->pointer_do_GANG_MEMBER_LOOK_INFO()V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    invoke-direct {p0}, Lcom/t4game/Gang;->pointerdo_GANG_MEMBER_MANGER()V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    invoke-direct {p0}, Lcom/t4game/Gang;->pointer_do_GANG_MEMBER_GANGINFO()V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerConfirm()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftSoftKey()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u5f53\u60a8\u9000\u51fa\u5e2e\u6d3e\u540e\uff0c\u60a8\u7684\u5e2e\u8d21\u5c06\u88ab\u6e05\u96f6\u3002\u786e\u5b9a\u8981\u9000\u51fa\u5e2e\u4f1a\u5417?"

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iput-byte v3, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    iput v4, p0, Lcom/t4game/Gang;->gangMemberState:I

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightSoftKey()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    if-ne v0, v4, :cond_9

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iput-byte v3, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    :cond_9
    iput v4, p0, Lcom/t4game/Gang;->gangMemberState:I

    goto :goto_0

    :cond_a
    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->pointerEvent()V

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    iget-short v0, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    if-eq v0, v5, :cond_b

    iget-short v0, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    if-ne v0, v2, :cond_c

    iput-short v3, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    iput v3, p0, Lcom/t4game/Gang;->gangMemberState:I

    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->clearCommand()V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/t4game/Gang;->isMemberEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v0, v0, Lcom/t4game/GUser;->gangDuty:B

    iget-object v1, p0, Lcom/t4game/Gang;->powerControl:[[[I

    aget-object v1, v1, v4

    aget-object v0, v1, v0

    iget-short v1, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    aget v0, v0, v1

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u4f60\u6ca1\u6709\u6743\u9650"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    iget-short v0, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->do_GANG_CHAT(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->gang:Lcom/t4game/Gang;

    iget v1, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {v0, v1}, Lcom/t4game/Gang;->getMemberName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, v1, Lcom/t4game/GUser;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u4e0d\u80fd\u9080\u8bf7\u81ea\u5df1\u7ec4\u961f\uff01"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v1, v0}, Lcom/t4game/GameWorld;->sendAddPlayerInTeamMessage(Ljava/lang/String;)Z

    goto :goto_1

    :pswitch_2
    iput v6, p0, Lcom/t4game/Gang;->gangMemberState:I

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    new-instance v1, Lcom/t4game/UI_Menu;

    iget-object v2, p0, Lcom/t4game/Gang;->GangMember_ManagerMenu:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    const/4 v0, 0x4

    iput v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    goto :goto_1

    :pswitch_4
    iput-short v3, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    iput v3, p0, Lcom/t4game/Gang;->gangMemberState:I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->gang:Lcom/t4game/Gang;

    iget v2, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {v1, v2}, Lcom/t4game/Gang;->getMemberName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/t4game/GameWorld;->sendAddFriendMessage(ZLjava/lang/String;)Z

    goto :goto_1

    :pswitch_5
    iput-short v3, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    iput v3, p0, Lcom/t4game/Gang;->gangMemberState:I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->gang:Lcom/t4game/Gang;

    iget v2, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {v1, v2}, Lcom/t4game/Gang;->getMemberName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/t4game/GameWorld;->sendAddBlackListMessage(ZLjava/lang/String;)Z

    goto/16 :goto_1

    :cond_f
    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->pointerEvent()V

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    iget-short v0, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    if-eq v0, v5, :cond_10

    iget-short v0, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    if-ne v0, v2, :cond_11

    iput-short v3, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    const/16 v0, 0x8

    iput v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    :cond_10
    :goto_2
    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->clearCommand()V

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p0}, Lcom/t4game/Gang;->isMemberEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-short v0, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_6
    iget v0, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->send_ACCESSION_GANG_INVITE_Message(I)Z

    goto :goto_2

    :pswitch_7
    iget v0, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->do_GANG_CHAT(I)V

    goto :goto_2

    :pswitch_8
    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    const/16 v1, 0x22

    const-string v2, "\u804c\u4e1a\u641c\u7d22"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/t4game/GameScreen;->showFormContr(IZLjava/lang/String;I)V

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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public pointerOfDialog_GANG_NEW()V
    .locals 6

    const/4 v5, 0x2

    const/4 v1, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, ""

    invoke-static {v4}, Lcom/t4game/PointerUtil;->getMenuIndex(Z)B

    move-result v0

    if-eq v0, v1, :cond_2

    sget v1, Lcom/t4game/PointerUtil;->s_iMenuScrollIndex:I

    add-int/2addr v0, v1

    :goto_0
    int-to-byte v0, v0

    sput-byte v0, Lcom/t4game/Gang;->focusOfDialog:B

    invoke-static {v4}, Lcom/t4game/PointerUtil;->isPointerOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {v4}, Lcom/t4game/PointerUtil;->isreleasedOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/t4game/Gang;->createGongSelect:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/t4game/GameScreen;->showFormContr(IZLjava/lang/String;I)V

    :cond_0
    iput v3, p0, Lcom/t4game/Gang;->createGongSelect:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-static {v5}, Lcom/t4game/PointerUtil;->isPointerOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {v5}, Lcom/t4game/PointerUtil;->isreleasedOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/t4game/Gang;->createGongSelect:I

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/t4game/GameScreen;->showFormContr(IZLjava/lang/String;I)V

    :cond_4
    iput v4, p0, Lcom/t4game/Gang;->createGongSelect:I

    goto :goto_1

    :cond_5
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/t4game/PointerUtil;->isPointerOnButton(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/t4game/PointerUtil;->isreleasedOnButton(I)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerConfirmInMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_7
    iget-object v0, p0, Lcom/t4game/Gang;->inputGangName:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/t4game/Gang;->inputGangNickName:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/t4game/Gang;->inputGangName:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/Gang;->inputGangNickName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/t4game/Gang;->send_GANG_NEW_Message(Ljava/lang/String;Ljava/lang/String;)Z

    iput v3, p0, Lcom/t4game/Gang;->gangMemberState:I

    const-string v0, ""

    iput-object v2, p0, Lcom/t4game/Gang;->inputGangName:Ljava/lang/String;

    const-string v0, ""

    iput-object v2, p0, Lcom/t4game/Gang;->inputGangNickName:Ljava/lang/String;

    goto :goto_1
.end method

.method public pointerOfDialog_GANG_SKILL()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    move v0, v4

    :goto_0
    iget-object v1, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->geniusTreeIconX:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->geniusTreeIconX:[I

    aget v2, v2, v0

    aput v2, v1, v4

    iget-object v2, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->geniusTreeIconY:[I

    aget v2, v2, v0

    aput v2, v1, v5

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->geniusTreeIconX:[I

    aget v3, v3, v0

    add-int/lit8 v3, v3, 0x12

    aput v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->geniusTreeIconY:[I

    aget v3, v3, v0

    add-int/lit8 v3, v3, 0x12

    aput v3, v1, v2

    sget v2, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    sget v3, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    invoke-static {v2, v3, v1}, Lcom/t4game/PointerUtil;->isPointerInArea(II[I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/t4game/PointerUtil;->clearReleasePointer()V

    iget-object v1, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->geniusIndex:[Ljava/lang/String;

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-boolean v0, v0, Lcom/t4game/GameWorld;->showIntro:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->pointerFBagCanShowIntro()V

    :goto_1
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightSoftKey()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x11

    invoke-direct {p0, v0, v5}, Lcom/t4game/Gang;->setState(BZ)V

    invoke-virtual {p0}, Lcom/t4game/Gang;->clear_GANG_BUILD_Display()V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftSoftKey()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/t4game/Gang;->onSkillList:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/RoleSkill;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u5e08\u5fb7\u7b49\u7ea7\uff1a"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    invoke-virtual {p0, v0, v4}, Lcom/t4game/Gang;->send_GANG_SKILL_STUDY_Message(Ljava/lang/String;B)Z

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/t4game/Gang;->pointerdo_GangGeniusTree()V

    goto :goto_1
.end method

.method public pointer_do_GANG_MEMBER_MENU()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x5

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->pointerEvent()V

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    iget-short v0, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    if-eq v0, v4, :cond_1

    iget-short v0, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    const/4 v1, -0x2

    if-ne v0, v1, :cond_2

    iput-short v2, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    iput v2, p0, Lcom/t4game/Gang;->gangMemberState:I

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->clearCommand()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v0, v0, Lcom/t4game/GUser;->gangDuty:B

    iget-object v1, p0, Lcom/t4game/Gang;->powerControl:[[[I

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    iget-short v1, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    aget v0, v0, v1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v1, 0x55a

    invoke-static {v3, v1}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-short v0, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, v3, v4}, Lcom/t4game/Gang;->send_GANG_MEMBER_Message(BB)Z

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->send_GET_GENIUS_TREE_Message(S)Z

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->gang:Lcom/t4game/Gang;

    invoke-virtual {v0}, Lcom/t4game/Gang;->send_GANG_SKILL_STUDY_LIST_Message()Z

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2, v6, v2}, Lcom/t4game/GameScreen;->showFormContr(IZLjava/lang/String;I)V

    iput v5, p0, Lcom/t4game/Gang;->gangMemberState:I

    goto :goto_1

    :pswitch_3
    invoke-virtual {p0, v2, v4}, Lcom/t4game/Gang;->send_GANG_MEMBER_Message(BB)Z

    goto :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v0, v0, Lcom/t4game/GUser;->gangDuty:B

    invoke-static {v0}, Lcom/t4game/Gang;->IsDutyOK(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v2, v6, v2}, Lcom/t4game/GameScreen;->showFormContr(IZLjava/lang/String;I)V

    :goto_2
    iput v5, p0, Lcom/t4game/Gang;->gangMemberState:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u4f60\u6ca1\u6709\u6743\u9650"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    invoke-virtual {p0}, Lcom/t4game/Gang;->send_GANG_BUILD_Message()Z

    goto :goto_1

    :pswitch_6
    const/4 v0, 0x6

    iput v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iput-byte v3, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    goto :goto_1

    :pswitch_7
    iput-short v2, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    iput v2, p0, Lcom/t4game/Gang;->gangMemberState:I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->gang:Lcom/t4game/Gang;

    iget v2, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {v1, v2}, Lcom/t4game/Gang;->getMemberName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/t4game/GameWorld;->sendAddFriendMessage(ZLjava/lang/String;)Z

    goto/16 :goto_1

    :pswitch_8
    iput-short v2, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    iput v2, p0, Lcom/t4game/Gang;->gangMemberState:I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->gang:Lcom/t4game/Gang;

    iget v2, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {v1, v2}, Lcom/t4game/Gang;->getMemberName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/t4game/GameWorld;->sendAddBlackListMessage(ZLjava/lang/String;)Z

    goto/16 :goto_1

    :pswitch_9
    iput-short v2, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    iput v2, p0, Lcom/t4game/Gang;->gangMemberState:I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public pressedOfDialog_GANG_BUILD(I)V
    .locals 2

    iget v0, p0, Lcom/t4game/Gang;->gangBuildState:I

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/t4game/Gang;->do_GangBuild(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/t4game/Gang;->gangBuildState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/t4game/Gang;->do_GangSkillResearch(I)V

    goto :goto_0
.end method

.method public pressedOfDialog_GANG_DISMISS(I)V
    .locals 0

    return-void
.end method

.method public pressedOfDialog_GANG_MEMBER(I)V
    .locals 7

    const/4 v6, -0x1

    const/4 v2, -0x2

    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->do_GANG_MEMBER_LIST(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    if-ne v0, v4, :cond_3

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->do_GANG_MEMBER_MENU(I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    invoke-direct {p0, p1}, Lcom/t4game/Gang;->do_GANG_MEMBER_LOOK_INFO(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    invoke-direct {p0, p1}, Lcom/t4game/Gang;->do_GANG_MEMBER_MANGER(I)V

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    if-ne v0, v5, :cond_6

    invoke-direct {p0, p1}, Lcom/t4game/Gang;->do_GANG_MEMBER_GANGINFO(I)V

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_a

    const/4 v0, -0x5

    if-eq p1, v0, :cond_7

    const/4 v0, -0x6

    if-ne p1, v0, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u5f53\u60a8\u9000\u51fa\u5e2e\u6d3e\u540e\uff0c\u60a8\u7684\u5e2e\u8d21\u5c06\u88ab\u6e05\u96f6\u3002\u786e\u5b9a\u8981\u9000\u51fa\u5e2e\u4f1a\u5417?"

    const/16 v2, 0x69

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iput-byte v3, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    iput v5, p0, Lcom/t4game/Gang;->gangMemberState:I

    goto :goto_0

    :cond_8
    const/4 v0, -0x7

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    if-ne v0, v4, :cond_9

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iput-byte v3, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    :cond_9
    iput v5, p0, Lcom/t4game/Gang;->gangMemberState:I

    goto :goto_0

    :cond_a
    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->keyEvent(I)V

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    iget-short v0, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    if-eq v0, v6, :cond_b

    iget-short v0, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    if-ne v0, v2, :cond_c

    iput-short v3, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    iput v3, p0, Lcom/t4game/Gang;->gangMemberState:I

    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->clearCommand()V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/t4game/Gang;->isMemberEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v0, v0, Lcom/t4game/GUser;->gangDuty:B

    iget-object v1, p0, Lcom/t4game/Gang;->powerControl:[[[I

    aget-object v1, v1, v4

    aget-object v0, v1, v0

    iget-short v1, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    aget v0, v0, v1

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u4f60\u6ca1\u6709\u6743\u9650"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    iget-short v0, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->do_GANG_CHAT(I)V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->gang:Lcom/t4game/Gang;

    iget v1, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {v0, v1}, Lcom/t4game/Gang;->getMemberName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, v1, Lcom/t4game/GUser;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u4e0d\u80fd\u9080\u8bf7\u81ea\u5df1\u7ec4\u961f\uff01"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_1

    :cond_e
    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v1, v0}, Lcom/t4game/GameWorld;->sendAddPlayerInTeamMessage(Ljava/lang/String;)Z

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x3

    iput v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    new-instance v1, Lcom/t4game/UI_Menu;

    iget-object v2, p0, Lcom/t4game/Gang;->GangMember_ManagerMenu:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    const/4 v0, 0x4

    iput v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    goto :goto_1

    :pswitch_4
    iput-short v3, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    iput v3, p0, Lcom/t4game/Gang;->gangMemberState:I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->gang:Lcom/t4game/Gang;

    iget v2, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {v1, v2}, Lcom/t4game/Gang;->getMemberName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/t4game/GameWorld;->sendAddFriendMessage(ZLjava/lang/String;)Z

    goto :goto_1

    :pswitch_5
    iput-short v3, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    iput v3, p0, Lcom/t4game/Gang;->gangMemberState:I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->gang:Lcom/t4game/Gang;

    iget v2, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {v1, v2}, Lcom/t4game/Gang;->getMemberName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/t4game/GameWorld;->sendAddBlackListMessage(ZLjava/lang/String;)Z

    goto/16 :goto_1

    :cond_f
    iget v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->keyEvent(I)V

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    iget-short v0, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    if-eq v0, v6, :cond_10

    iget-short v0, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    if-ne v0, v2, :cond_11

    iput-short v3, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    const/16 v0, 0x8

    iput v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    :cond_10
    :goto_2
    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->clearCommand()V

    goto/16 :goto_0

    :cond_11
    invoke-virtual {p0}, Lcom/t4game/Gang;->isMemberEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-short v0, p0, Lcom/t4game/Gang;->gangMemberMenuIndex:S

    packed-switch v0, :pswitch_data_1

    goto :goto_2

    :pswitch_6
    iget v0, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->send_ACCESSION_GANG_INVITE_Message(I)Z

    goto :goto_2

    :pswitch_7
    iget v0, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->do_GANG_CHAT(I)V

    goto :goto_2

    :pswitch_8
    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    const/16 v1, 0x22

    const-string v2, "\u804c\u4e1a\u641c\u7d22"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/t4game/GameScreen;->showFormContr(IZLjava/lang/String;I)V

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

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public pressedOfDialog_GANG_NEW(I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, ""

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u540d\u79f0"

    aput-object v1, v0, v4

    const-string v1, "\u4ee3\u53f7"

    aput-object v1, v0, v5

    const-string v1, "\u5e2e\u6d3e\u540d\u79f0\u6700\u591a6\u4e2a\u5b57\u7b26\uff0c\u5e2e\u6d3e\u4ee3\u53f7\uff08\u5728\u6e38\u620f\u4e2d\u4f1a\u663e\u793a\u5728\u5e2e\u6d3e\u6210\u5458\u5934\u9876\uff09\u53ea\u80fd1\u4e2a\u5b57\u7b26\u3002\u7ec4\u5efa\u5e2e\u6d3e\u9700\u8981200\u91d1\uff0c\u4f60\u662f\u5426\u786e\u5b9a\u8981\u5efa\u7acb\u5e2e\u6d3e\uff1f"

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v3, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v3, v3, 0xe

    shl-int/lit8 v3, v3, 0x1

    sub-int/2addr v2, v3

    sget-object v3, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v1, v2, v3}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    iget v1, p0, Lcom/t4game/Gang;->createGongSelect:I

    array-length v0, v0

    if-eq v1, v0, :cond_1

    sput-byte v7, Lcom/t4game/Gang;->focusOfDialog:B

    :cond_1
    return-void

    :sswitch_0
    sget-byte v1, Lcom/t4game/Gang;->focusOfDialog:B

    if-lez v1, :cond_2

    sget-byte v1, Lcom/t4game/Gang;->focusOfDialog:B

    sub-int/2addr v1, v5

    int-to-byte v1, v1

    sput-byte v1, Lcom/t4game/Gang;->focusOfDialog:B

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/t4game/Gang;->createGongSelect:I

    if-nez v1, :cond_3

    array-length v1, v0

    iput v1, p0, Lcom/t4game/Gang;->createGongSelect:I

    sput-byte v4, Lcom/t4game/Gang;->focusOfDialog:B

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/t4game/Gang;->createGongSelect:I

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/t4game/Gang;->createGongSelect:I

    goto :goto_0

    :sswitch_1
    iget v2, p0, Lcom/t4game/Gang;->createGongSelect:I

    array-length v3, v0

    sub-int/2addr v3, v5

    if-lt v2, v3, :cond_5

    sget-byte v2, Lcom/t4game/Gang;->focusOfDialog:B

    sub-int/2addr v1, v5

    if-ge v2, v1, :cond_4

    sget-byte v1, Lcom/t4game/Gang;->focusOfDialog:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/t4game/Gang;->focusOfDialog:B

    array-length v1, v0

    iput v1, p0, Lcom/t4game/Gang;->createGongSelect:I

    goto :goto_0

    :cond_4
    sput-byte v7, Lcom/t4game/Gang;->focusOfDialog:B

    iput v4, p0, Lcom/t4game/Gang;->createGongSelect:I

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/t4game/Gang;->createGongSelect:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/t4game/Gang;->createGongSelect:I

    goto :goto_0

    :sswitch_2
    iget v1, p0, Lcom/t4game/Gang;->createGongSelect:I

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v4, v8, v4}, Lcom/t4game/GameScreen;->showFormContr(IZLjava/lang/String;I)V

    goto :goto_0

    :cond_6
    iget v1, p0, Lcom/t4game/Gang;->createGongSelect:I

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v4, v8, v4}, Lcom/t4game/GameScreen;->showFormContr(IZLjava/lang/String;I)V

    goto :goto_0

    :sswitch_3
    const/4 v1, 0x5

    iput v1, p0, Lcom/t4game/Gang;->gangMemberState:I

    const/16 v1, 0x11

    invoke-direct {p0, v1, v5}, Lcom/t4game/Gang;->setState(BZ)V

    const-string v1, ""

    iput-object v6, p0, Lcom/t4game/Gang;->inputGangName:Ljava/lang/String;

    const-string v1, ""

    iput-object v6, p0, Lcom/t4game/Gang;->inputGangNickName:Ljava/lang/String;

    goto :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/t4game/Gang;->inputGangName:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v6, :cond_0

    iget-object v1, p0, Lcom/t4game/Gang;->inputGangNickName:Ljava/lang/String;

    const-string v2, ""

    if-eq v1, v6, :cond_0

    iget-object v1, p0, Lcom/t4game/Gang;->inputGangName:Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/Gang;->inputGangNickName:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/t4game/Gang;->send_GANG_NEW_Message(Ljava/lang/String;Ljava/lang/String;)Z

    iput v4, p0, Lcom/t4game/Gang;->gangMemberState:I

    const-string v1, ""

    iput-object v6, p0, Lcom/t4game/Gang;->inputGangName:Ljava/lang/String;

    const-string v1, ""

    iput-object v6, p0, Lcom/t4game/Gang;->inputGangNickName:Ljava/lang/String;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7 -> :sswitch_3
        -0x6 -> :sswitch_4
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_0
        0x23 -> :sswitch_2
    .end sparse-switch
.end method

.method public pressedOfDialog_GANG_SKILL_STUDY(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/t4game/Gang;->do_GangSkillStudy(I)V

    return-void
.end method

.method public processServive_ACCESSION_GANG_INVITE_Message()V
    .locals 2

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/t4game/Gang;->send_GANG_MEMBER_Message(BB)Z

    :cond_0
    return-void
.end method

.method public processServive_GANGS_ACCEPT_Message()V
    .locals 3

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/t4game/Gang;->inviteGangId:I

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/t4game/Gang;->inviteRoleId:I

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/t4game/Gang;->inviteGangName:Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/t4game/Gang;->inviteRoleNickName:Ljava/lang/String;

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v2, 0x62

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public processServive_GANGS_DEMOTION_Message()V
    .locals 2

    sget-byte v0, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget v1, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {p0, v1, v0}, Lcom/t4game/Gang;->demotion(IB)V

    iget v0, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->gangListItemUpdate(I)V

    const-string v0, "\u964d\u804c\u6210\u529f"

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processServive_GANGS_DISMISS_Message()V
    .locals 3

    sget-byte v0, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    const-string v2, ""

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-nez v1, :cond_0

    sget-byte v0, Lcom/t4game/GameWorld;->NOLOADING:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u4f60\u786e\u5b9a\u8981\u89e3\u6563\u5e2e\u6d3e\u5417\uff1f"

    const/16 v2, 0x67

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/t4game/Gang;->quit()V

    sget-byte v0, Lcom/t4game/GameWorld;->NOLOADING:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    const-string v0, "\u5e2e\u6d3e\u5df2\u7ecf\u89e3\u6563"

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    sget-byte v1, Lcom/t4game/GameWorld;->NOLOADING:B

    invoke-direct {p0, v1}, Lcom/t4game/Gang;->setLoadingState(B)V

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processServive_GANGS_INVITE_Message()V
    .locals 2

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "\u9080\u8bf7\u4fe1\u606f\u5df2\u53d1\u9001"

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processServive_GANGS_PROMOTION_Message()V
    .locals 2

    sget-byte v0, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget v1, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {p0, v1, v0}, Lcom/t4game/Gang;->promotion(IB)V

    iget v0, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->gangListItemUpdate(I)V

    const-string v0, "\u5347\u804c\u6210\u529f"

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processServive_GANG_BUILD_Message()V
    .locals 2

    sget-byte v0, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Gang;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput v0, p0, Lcom/t4game/Gang;->level:I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/t4game/Gang;->gangMemberSize:S

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Gang;->bankroll:I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Gang;->dailyBankRoll:I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Gang;->upgradeBankroll:I

    :goto_0
    return-void

    :cond_0
    sget-byte v0, Lcom/t4game/GameWorld;->NOLOADING:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processServive_GANG_CHANGE_LEADER_Message()V
    .locals 1

    sget-byte v0, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "\u4f20\u4f4d\u6210\u529f"

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processServive_GANG_INFO_Message()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-byte v0, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    iput-byte v1, v0, Lcom/t4game/GUser;->gangDuty:B

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/t4game/GUser;->gangId:I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/GUser;->gangNickName:Ljava/lang/String;

    const/4 v0, 0x5

    filled-new-array {v0, v4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/t4game/Gang;->manageList:[[I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v0, v0, Lcom/t4game/GUser;->gangNickName:Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/Gang;->nickName:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Gang;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput v0, p0, Lcom/t4game/Gang;->level:I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/t4game/Gang;->gangMemberSize:S

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Gang;->bankroll:I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Gang;->dailyBankRoll:I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Gang;->message:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Gang;->currentlyNumber:[I

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/t4game/Gang;->currentlyNumber:[I

    iget-short v1, p0, Lcom/t4game/Gang;->gangMemberSize:S

    aput v1, v0, v2

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Gang;->ranking:B

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Gang;->upgradeBankroll:I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Gang;->job:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Gang;->manageList:[[I

    aget-object v0, v0, v3

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/t4game/Gang;->manageList:[[I

    aget-object v0, v0, v3

    aput v2, v0, v2

    iget-object v0, p0, Lcom/t4game/Gang;->manageList:[[I

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/t4game/Gang;->manageList:[[I

    aget-object v0, v0, v2

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/t4game/Gang;->manageList:[[I

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/t4game/Gang;->manageList:[[I

    aget-object v0, v0, v4

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/t4game/Gang;->manageList:[[I

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/t4game/Gang;->manageList:[[I

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    aput v1, v0, v2

    iget-object v0, p0, Lcom/t4game/Gang;->manageList:[[I

    aget-object v0, v0, v6

    iget-short v1, p0, Lcom/t4game/Gang;->gangMemberSize:S

    aput v1, v0, v3

    iget-object v0, p0, Lcom/t4game/Gang;->manageList:[[I

    aget-object v0, v0, v6

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    aput v1, v0, v2

    const/4 v0, 0x5

    iput v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    :goto_0
    return-void

    :cond_0
    sget-byte v0, Lcom/t4game/GameWorld;->NOLOADING:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processServive_GANG_KICKOUT_Message()V
    .locals 2

    sget-byte v0, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->delMember(I)V

    iget-object v0, p0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    check-cast v0, Lcom/t4game/UI_List;

    check-cast v0, Lcom/t4game/UI_List;

    iget v1, p0, Lcom/t4game/Gang;->selGangMember:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/UI_List;->DeletChoice(S)V

    const-string v0, "\u5220\u9664\u6210\u529f"

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processServive_GANG_LEVEL_UP_Message()V
    .locals 3

    sget-byte v0, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "\u5347\u7ea7\u6210\u529f\uff01"

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/t4game/Gang;->send_GANG_BUILD_Message()Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Gang;->gangLevelUpText:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Gang;->gangLevelUpText:Ljava/lang/String;

    const/16 v2, 0xe2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/t4game/Gang;->gangLevelUpText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processServive_GANG_MEMBER_Message()V
    .locals 27

    sget-byte v2, Lcom/t4game/GameWorld;->LOADINGBACK:B

    move-object/from16 v0, p0

    move v1, v2

    invoke-direct {v0, v1}, Lcom/t4game/Gang;->setLoadingState(B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/Gang;->memberList:Ljava/util/Vector;

    const/4 v3, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/t4game/Gang;->enlistedState:B

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object v3, v0

    iget-object v3, v3, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object v3, v0

    iget-object v3, v3, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/t4game/Gang;->memberListMaxPage:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object v3, v0

    iget-object v3, v3, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object v3, v0

    iget-object v3, v3, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/t4game/Gang;->quit()V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object v4, v0

    iget-object v4, v4, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object v5, v0

    iget-object v5, v5, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v5}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v5

    iput v5, v4, Lcom/t4game/GUser;->gangId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object v4, v0

    iget-object v4, v4, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object v5, v0

    iget-object v5, v5, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v5}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/t4game/GUser;->bangPaiName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object v4, v0

    iget-object v4, v4, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object v5, v0

    iget-object v5, v5, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v5}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v5

    iput-byte v5, v4, Lcom/t4game/GUser;->gangDuty:B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object v4, v0

    iget-object v4, v4, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/t4game/Gang;->memberListMaxPage:I

    :cond_4
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4, v3}, Ljava/util/Vector;-><init>(I)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/Gang;->memberList:Ljava/util/Vector;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_9

    const-string v5, ""

    const-string v6, ""

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v19

    const/16 v20, 0x1

    move v0, v2

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object v5, v0

    iget-object v5, v5, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v5}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object v6, v0

    iget-object v6, v6, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v6}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object v7, v0

    iget-object v7, v7, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v7}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object v8, v0

    iget-object v8, v8, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v8}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object v9, v0

    iget-object v9, v9, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v9}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object v10, v0

    iget-object v10, v10, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v10}, Lcom/t4game/IoBuffer;->getUnsignedByte()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object v11, v0

    iget-object v11, v11, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v11}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object v12, v0

    iget-object v12, v12, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v12}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v12

    sget-boolean v20, Lcom/t4game/Defaults;->CNL_TENCENT:Z

    if-eqz v20, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object v15, v0

    iget-object v15, v15, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v15}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v15

    move/from16 v22, v15

    move-object v15, v5

    move/from16 v5, v22

    move/from16 v23, v13

    move v13, v7

    move/from16 v7, v23

    move/from16 v24, v11

    move v11, v9

    move/from16 v9, v24

    move/from16 v25, v8

    move v8, v12

    move/from16 v12, v25

    move-object/from16 v26, v6

    move v6, v14

    move-object/from16 v14, v26

    :goto_2
    const/16 v20, 0xd

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v20, v21

    const/16 v16, 0x1

    aput-object v17, v20, v16

    const/16 v16, 0x2

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v20, v16

    const/16 v16, 0x3

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v20, v16

    const/16 v16, 0x4

    aput-object v15, v20, v16

    const/4 v15, 0x5

    aput-object v14, v20, v15

    const/4 v14, 0x1

    if-ne v2, v14, :cond_8

    const/4 v6, 0x6

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v20, v6

    const/4 v6, 0x7

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v20, v6

    :cond_5
    :goto_3
    const/16 v6, 0x8

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v20, v6

    const/16 v6, 0x9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, "\u5c0f\u65f6"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v20, v6

    const/16 v6, 0xa

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v20, v6

    sget-boolean v6, Lcom/t4game/Defaults;->CNL_TENCENT:Z

    if-eqz v6, :cond_6

    const/16 v6, 0xc

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v20, v6

    :cond_6
    const/16 v5, 0xb

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v20, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->memberList:Ljava/util/Vector;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_7
    if-nez v2, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object v11, v0

    iget-object v11, v11, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v11}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object v13, v0

    iget-object v13, v13, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v13}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    move-object v14, v0

    iget-object v14, v14, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v14}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v14

    move/from16 v22, v15

    move-object v15, v5

    move/from16 v5, v22

    move/from16 v23, v11

    move v11, v9

    move v9, v14

    move-object v14, v6

    move v6, v13

    move v13, v7

    move/from16 v7, v23

    move/from16 v24, v12

    move v12, v8

    move/from16 v8, v24

    goto/16 :goto_2

    :cond_8
    if-nez v2, :cond_5

    const/4 v12, 0x6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v20, v12

    const/4 v7, 0x7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v20, v7

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    move-object v2, v0

    iget-byte v2, v2, Lcom/t4game/GameScreen;->dialogId:B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x4b

    if-ne v2, v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    invoke-virtual {v2}, Lcom/t4game/GameUi;->clearAction()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    move-object v3, v0

    iget-object v3, v3, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-byte v3, v3, Lcom/t4game/GameUi;->focus:B

    invoke-virtual {v2, v3}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v2

    check-cast v2, Lcom/t4game/UI_List;

    move-object v0, v2

    check-cast v0, Lcom/t4game/UI_List;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/t4game/UI_List;->clearAction()V

    invoke-virtual/range {p0 .. p0}, Lcom/t4game/Gang;->memberListToShowAry()[[Ljava/lang/String;

    move-result-object v12

    const/4 v2, 0x0

    move v13, v2

    :goto_4
    array-length v2, v12

    if-ge v13, v2, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->memberList:Ljava/util/Vector;

    move-object v2, v0

    invoke-virtual {v2, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    const/16 v3, 0xa

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v2

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_a

    const v2, 0xffffff

    :goto_5
    aput v2, v4, v3

    invoke-virtual {v11}, Lcom/t4game/UI_List;->getColumn()B

    move-result v2

    new-array v14, v2, [Lcom/t4game/ListItem;

    const/4 v2, 0x0

    move v15, v2

    :goto_6
    invoke-virtual {v11}, Lcom/t4game/UI_List;->getColumn()B

    move-result v2

    if-ge v15, v2, :cond_d

    new-instance v2, Lcom/t4game/ListItem;

    invoke-direct {v2}, Lcom/t4game/ListItem;-><init>()V

    aput-object v2, v14, v15

    aget-object v2, v14, v15

    const/4 v3, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    if-nez v15, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v12, v13

    aget-object v8, v8, v15

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v12, v13

    const/4 v9, 0x3

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_7
    aput-object v7, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    if-nez v15, :cond_c

    const/4 v10, 0x0

    :goto_8
    invoke-virtual/range {v2 .. v10}, Lcom/t4game/ListItem;->Init(Ljavax/microedition/lcdui/Image;[I[Ljava/lang/String;Ljava/lang/String;[II[Ljava/lang/String;Z)V

    add-int/lit8 v2, v15, 0x1

    move v15, v2

    goto :goto_6

    :cond_a
    const v2, 0x888888

    goto :goto_5

    :cond_b
    aget-object v7, v12, v13

    aget-object v7, v7, v15

    goto :goto_7

    :cond_c
    const/4 v10, 0x1

    goto :goto_8

    :cond_d
    invoke-virtual {v11, v14}, Lcom/t4game/UI_List;->addChoice([Lcom/t4game/ListItem;)V

    add-int/lit8 v2, v13, 0x1

    move v13, v2

    goto :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    iget-byte v3, v11, Lcom/t4game/UI_List;->id:B

    invoke-virtual {v2, v3}, Lcom/t4game/GameUi;->setFocus(B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Gang;->screen:Lcom/t4game/GameScreen;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    const/4 v3, 0x2

    iput-byte v3, v2, Lcom/t4game/GameUi;->commandType:B

    goto/16 :goto_0

    :cond_f
    move/from16 v22, v15

    move-object v15, v5

    move/from16 v5, v22

    move/from16 v23, v13

    move v13, v7

    move/from16 v7, v23

    move/from16 v24, v11

    move v11, v9

    move/from16 v9, v24

    move/from16 v25, v8

    move v8, v12

    move/from16 v12, v25

    move-object/from16 v26, v6

    move v6, v14

    move-object/from16 v14, v26

    goto/16 :goto_2

    :cond_10
    move/from16 v22, v15

    move-object v15, v5

    move/from16 v5, v22

    move/from16 v23, v13

    move v13, v7

    move/from16 v7, v23

    move/from16 v24, v11

    move v11, v9

    move/from16 v9, v24

    move/from16 v25, v8

    move v8, v12

    move/from16 v12, v25

    move-object/from16 v26, v6

    move v6, v14

    move-object/from16 v14, v26

    goto/16 :goto_2
.end method

.method public processServive_GANG_MEMBER_SET_WARRIOR_Message()V
    .locals 3

    sget-byte v0, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget v1, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {p0, v1}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    iget v0, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->gangListItemUpdate(I)V

    goto :goto_0
.end method

.method public processServive_GANG_MEMBER_STATE_CHANGE_Message()V
    .locals 3

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/t4game/GUser;->gangId:I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/GUser;->bangPaiName:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/GUser;->gangNickName:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/t4game/GUser;->gangHonor:I

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget v1, v1, Lcom/t4game/GUser;->gangId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/t4game/Gang;->quit()V

    :cond_0
    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-byte v1, v1, Lcom/t4game/GameWorld;->gameScreenState:B

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v1, v1, Lcom/t4game/GUser;->gangDuty:B

    if-le v1, v0, :cond_2

    const-string v1, "\u4f60\u7684\u5e2e\u6d3e\u804c\u52a1\u63d0\u5347\u4e86"

    invoke-virtual {p0, v1}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iput-byte v0, v1, Lcom/t4game/GUser;->gangDuty:B

    return-void

    :cond_2
    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v1, v1, Lcom/t4game/GUser;->gangDuty:B

    if-ge v1, v0, :cond_1

    const-string v1, "\u4f60\u7684\u5e2e\u6d3e\u804c\u52a1\u4e0b\u964d\u4e86"

    invoke-virtual {p0, v1}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processServive_GANG_NEW_Message()V
    .locals 9

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-byte v0, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v1

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getLong()J

    move-result-wide v7

    move-object v0, p0

    move v6, v3

    invoke-virtual/range {v0 .. v6}, Lcom/t4game/Gang;->set(IIILjava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iput-wide v7, v0, Lcom/t4game/GUser;->money:J

    const-string v0, "\u521b\u5efa\u6210\u529f\uff01"

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    const/16 v0, 0x11

    invoke-direct {p0, v0, v2}, Lcom/t4game/Gang;->setState(BZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processServive_GANG_SET_UNCHAIN_DONTTALLK_Message()V
    .locals 3

    const/4 v2, 0x6

    sget-byte v0, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    if-nez v0, :cond_0

    const-string v0, "\u4f60\u6ca1\u6709\u6743\u9650"

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez v1, :cond_1

    const/4 v0, 0x5

    const-string v1, "\u89e3\u7981\u6210\u529f"

    invoke-virtual {p0, v1}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    :goto_1
    iget v1, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-virtual {p0, v1}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    iget v0, p0, Lcom/t4game/Gang;->selGangMember:I

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->gangListItemUpdate(I)V

    goto :goto_0

    :cond_1
    const-string v0, "\u7981\u8a00\u6210\u529f"

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    move v0, v2

    goto :goto_1
.end method

.method public processServive_GANG_SKILL_LEVEL_UP_Message()V
    .locals 3

    sget-byte v0, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "\u5347\u7ea7\u6210\u529f\uff01"

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/Gang;->bankroll:I

    invoke-virtual {p0}, Lcom/t4game/Gang;->send_GANG_SKILL_LIST_Message()Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Gang;->gangSkillLevelUpText:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Gang;->gangSkillLevelUpText:Ljava/lang/String;

    const/16 v2, 0xe3

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/t4game/Gang;->gangSkillLevelUpText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processServive_GANG_SKILL_LIST_Message()V
    .locals 2

    sget-byte v0, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->readGangSkill(Lcom/t4game/IoBuffer;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "\u6ca1\u6709\u5e2e\u6d3e\u6280\u80fd"

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processServive_GANG_SKILL_STUDY_LIST_Message()V
    .locals 2

    sget-byte v0, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v0

    iput v0, p0, Lcom/t4game/Gang;->level:I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/t4game/GUser;->gangHonor:I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->readGangSkill(Lcom/t4game/IoBuffer;)V

    :goto_0
    return-void

    :cond_0
    sget-byte v0, Lcom/t4game/GameWorld;->NOLOADING:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    const-string v0, "\u6ca1\u6709\u5e2e\u6d3e\u6280\u80fd"

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processServive_GANG_SKILL_STUDY_Message()V
    .locals 3

    sget-byte v0, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/t4game/GUser;->money:J

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->readRoleSkill(Lcom/t4game/IoBuffer;)V

    const-string v0, "\u5b66\u4e60\u6210\u529f\uff01"

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/t4game/Gang;->send_GANG_SKILL_STUDY_LIST_Message()Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Gang;->gangSkillLevelUpText:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Gang;->gangSkillLevelUpText:Ljava/lang/String;

    const/16 v2, 0xe4

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/t4game/Gang;->gangSkillLevelUpText:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processServive_GANG_UNCHAIN_Message()V
    .locals 1

    sget-byte v0, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u5e2e\u4e3b\u4e0d\u80fd\u9000\u51fa\u5e2e\u4f1a"

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/t4game/Gang;->quit()V

    const-string v0, "\u9000\u51fa\u6210\u529f"

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public processServive_GANG_UPDATE_BULLETIN_Message()V
    .locals 2

    sget-byte v0, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "\u7559\u8a00\u6210\u529f!"

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public promotion(IB)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->getMember(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-void
.end method

.method public quit()V
    .locals 4

    const/4 v2, 0x0

    const-string v3, ""

    iput v2, p0, Lcom/t4game/Gang;->level:I

    iput v2, p0, Lcom/t4game/Gang;->bankroll:I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    const/4 v1, -0x1

    iput v1, v0, Lcom/t4game/GUser;->gangId:I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    const-string v1, ""

    iput-object v3, v0, Lcom/t4game/GUser;->bangPaiName:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    const-string v1, ""

    iput-object v3, v0, Lcom/t4game/GUser;->gangNickName:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iput v2, v0, Lcom/t4game/GUser;->gangHonor:I

    iget-object v0, p0, Lcom/t4game/Gang;->memberList:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->memberList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    :cond_0
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setState(B)V

    return-void
.end method

.method public readGangSkill(Lcom/t4game/IoBuffer;)V
    .locals 11

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    const/4 v0, 0x5

    filled-new-array {v1, v0}, [I

    move-result-object v0

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/Gang;->temp_skillList:[[Ljava/lang/String;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/t4game/Gang;->onSkillList:Ljava/util/Hashtable;

    move v0, v10

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v2

    iget-object v3, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v4, v4, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v4

    iget-object v5, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v5, v5, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v5}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v5

    iget-object v6, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v6, v6, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v6}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v6

    iget-object v7, p0, Lcom/t4game/Gang;->temp_skillList:[[Ljava/lang/String;

    aget-object v7, v7, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    iget-object v7, p0, Lcom/t4game/Gang;->temp_skillList:[[Ljava/lang/String;

    aget-object v7, v7, v0

    const/4 v8, 0x1

    aput-object v3, v7, v8

    iget-object v7, p0, Lcom/t4game/Gang;->temp_skillList:[[Ljava/lang/String;

    aget-object v7, v7, v0

    const/4 v8, 0x2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    iget-object v7, p0, Lcom/t4game/Gang;->temp_skillList:[[Ljava/lang/String;

    aget-object v7, v7, v0

    const/4 v8, 0x3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    iget-object v7, p0, Lcom/t4game/Gang;->temp_skillList:[[Ljava/lang/String;

    aget-object v7, v7, v0

    const/4 v8, 0x4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    new-instance v7, Lcom/t4game/RoleSkill;

    invoke-direct {v7}, Lcom/t4game/RoleSkill;-><init>()V

    int-to-short v2, v2

    iput-short v2, v7, Lcom/t4game/RoleSkill;->id:S

    iput-object v3, v7, Lcom/t4game/RoleSkill;->name:Ljava/lang/String;

    int-to-byte v2, v4

    iput-byte v2, v7, Lcom/t4game/RoleSkill;->level:B

    int-to-byte v2, v5

    int-to-short v2, v2

    iput-short v2, v7, Lcom/t4game/RoleSkill;->maxLevel:S

    iput-short v6, v7, Lcom/t4game/RoleSkill;->iconId:S

    iget-object v2, p0, Lcom/t4game/Gang;->onSkillList:Ljava/util/Hashtable;

    iget-short v3, v7, Lcom/t4game/RoleSkill;->id:S

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/t4game/Gang;->initGangSkillIcon()V

    return-void
.end method

.method public replaceGangSkillDetialText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->getGangSkillDetialIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->skillDetialIntro:Ljava/util/Vector;

    invoke-virtual {v1, p2, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public send_ACCESSION_GANG_INVITE_Message(I)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x1a0

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public send_GANG_ACCEPT_Message(B)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget v1, p0, Lcom/t4game/Gang;->inviteGangId:I

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget v1, p0, Lcom/t4game/Gang;->inviteRoleId:I

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x62

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public send_GANG_BUILD_Message()Z
    .locals 3

    sget-byte v0, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x6b

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public send_GANG_CHANGE_LEADER_Message(I)Z
    .locals 3

    sget-byte v0, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x114

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public send_GANG_DEMOTION_Message(I)Z
    .locals 3

    sget-byte v0, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x65

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public send_GANG_DISMISS_Message(B)Z
    .locals 3

    sget-byte v0, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x67

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public send_GANG_INFO_Message()Z
    .locals 3

    sget-byte v0, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0xfc

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public send_GANG_INVITE_Message(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x61

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public send_GANG_INVITE_Message1(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/t4game/IoBuffer;

    invoke-direct {v0}, Lcom/t4game/IoBuffer;-><init>()V

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v2, 0x61

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/t4game/GameWorld;->setFormMessage(I[B)V

    return-void
.end method

.method public send_GANG_KICKOUT_Message(I)Z
    .locals 3

    sget-byte v0, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x66

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public send_GANG_LEVEL_UP_Message(B)Z
    .locals 3

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/Gang;->gangLevelUpText:Ljava/lang/String;

    sget-byte v0, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0xe2

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public send_GANG_MEMBER_Message(BB)Z
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v0, v0, Lcom/t4game/GUser;->gangNickName:Ljava/lang/String;

    const-string v1, ""

    if-ne v0, v1, :cond_0

    const-string v0, "\u4f60\u6ca1\u6709\u5e2e\u6d3e"

    invoke-virtual {p0, v0}, Lcom/t4game/Gang;->addmsg(Ljava/lang/String;)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    sget-byte v0, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    if-nez p1, :cond_2

    const/16 v0, 0x8

    iput v0, p0, Lcom/t4game/Gang;->gangMemberState:I

    :goto_1
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget v1, p0, Lcom/t4game/Gang;->memberListNowPage:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putByte(B)V

    :cond_1
    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x63

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/t4game/Gang;->gangMemberState:I

    goto :goto_1
.end method

.method public send_GANG_MEMBER_SET_UNCHAIN_DONTTALLK_Message(I)Z
    .locals 3

    sget-byte v0, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x19f

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public send_GANG_MEMBER_SET_WARRIOR_Message(I)Z
    .locals 3

    sget-byte v0, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x128

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public send_GANG_NEW_Message(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    sget-byte v0, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x60

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public send_GANG_PROMOTION_Message(I)Z
    .locals 3

    sget-byte v0, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x64

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public send_GANG_SKILL_LEVEL_UP_Message(Ljava/lang/String;B)Z
    .locals 3

    sget-byte v0, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0xe3

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public send_GANG_SKILL_LIST_Message()Z
    .locals 3

    sget-byte v0, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0xe1

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public send_GANG_SKILL_STUDY_LIST_Message()Z
    .locals 3

    sget-byte v0, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x6a

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public send_GANG_SKILL_STUDY_Message(Ljava/lang/String;B)Z
    .locals 3

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v0, p0, Lcom/t4game/Gang;->onSkillList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/RoleSkill;

    sget-byte v2, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-direct {p0, v2}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2, v1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1, p2}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v0, v0, Lcom/t4game/RoleSkill;->level:B

    int-to-short v0, v0

    invoke-virtual {v1, v0}, Lcom/t4game/IoBuffer;->putShort(S)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0xe4

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public send_GANG_UNCHAIN_Message()Z
    .locals 3

    sget-byte v0, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-direct {p0, v0}, Lcom/t4game/Gang;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x69

    iget-object v2, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method public send_GANG_UPDATE_BULLETIN_Message()V
    .locals 3

    new-instance v0, Lcom/t4game/IoBuffer;

    invoke-direct {v0}, Lcom/t4game/IoBuffer;-><init>()V

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget v1, v1, Lcom/t4game/GUser;->gangId:I

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v1, p0, Lcom/t4game/Gang;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putString(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v2, 0xfe

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/t4game/GameWorld;->setFormMessage(I[B)V

    return-void
.end method

.method public set(IIILjava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iput p2, p0, Lcom/t4game/Gang;->level:I

    iput p3, p0, Lcom/t4game/Gang;->bankroll:I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iput p1, v0, Lcom/t4game/GUser;->gangId:I

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iput-object p4, v0, Lcom/t4game/GUser;->bangPaiName:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iput-object p5, v0, Lcom/t4game/GUser;->gangNickName:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/Gang;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iput p6, v0, Lcom/t4game/GUser;->gangHonor:I

    return-void
.end method

.method public setGeniusTree(Lcom/t4game/GGeniusTreeData;)V
    .locals 2

    iput-object p1, p0, Lcom/t4game/Gang;->geniusTree:Lcom/t4game/GGeniusTreeData;

    iget-object v0, p1, Lcom/t4game/GGeniusTreeData;->geniusDataList:[Lcom/t4game/GGeniusData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-object v0, p0, Lcom/t4game/Gang;->geniusData:Lcom/t4game/GGeniusData;

    iget-object v0, v0, Lcom/t4game/GGeniusData;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/Gang;->geniusTreeIndex:Ljava/lang/String;

    return-void
.end method

.method public skillLevelUp(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/t4game/Gang;->getSkillId(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/t4game/Gang;->temp_skillList:[[Ljava/lang/String;

    aget-object v1, v1, p1

    const/4 v2, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    return-void
.end method

.method public sortBy(I)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/t4game/Gang;->isMemberEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    move v2, v5

    :goto_0
    iget-object v0, p0, Lcom/t4game/Gang;->memberList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Gang;->memberList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    move v3, v5

    :goto_1
    iget-object v1, p0, Lcom/t4game/Gang;->memberList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v3, v1, :cond_3

    iget-object v1, p0, Lcom/t4game/Gang;->memberList:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    aget-object v1, v1, p1

    aget-object v4, v0, p1

    invoke-virtual {v1, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/t4game/Gang;->memberList:Ljava/util/Vector;

    invoke-virtual {p0, v1, v2, v3}, Lcom/t4game/Gang;->switchElement(Ljava/util/Vector;II)V

    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public switchElement(Ljava/util/Vector;II)V
    .locals 2

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p2, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    if-ltz p3, :cond_0

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt p3, v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, p3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0, p3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_0
.end method
