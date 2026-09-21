.class public Lcom/t4game/PlayerFunctionViewManager;
.super Ljava/lang/Object;


# static fields
.field public static final PLAY_CHAKANBAGUA:B = 0x4t

.field public static final PLAY_CHAKANCONSTELLATION:B = 0x5t

.field public static final PLAY_CHAKANFABAO:B = 0x1t

.field public static final PLAY_CHAKANJINGJIE:B = 0x3t

.field public static final PLAY_CHAKANLIANHUN:B = 0x8t

.field public static final PLAY_CHAKANSANHUA:B = 0x9t

.field public static final PLAY_CHAKANSHENWEI:B = 0x6t

.field public static final PLAY_CHAKANWUXING:B = 0xbt

.field public static final PLAY_CHAKANZHUANGBEI:B = 0x0t

.field public static final PLAY_CHAKANZUOQI:B = 0x2t

.field public static final PLAY_CHAKAN_TOTALNUM:B = 0xct

.field public static final PLAY_CHAKAN_YOUMENGYING:B = 0xat

.field public static final PLAY_CHAKAN_lINGWEN:B = 0x7t

.field private static manager:Lcom/t4game/PlayerFunctionViewManager;


# instance fields
.field public final MenuState_Excute:B

.field public final MenuState_First:B

.field public final MenuState_Secend:B

.field private menuIndex:B

.field private menuState:B

.field private playerFunctionOpenGrade:[B

.field private playerFunctionView:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v6, 0xc

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "\u67e5\u770b\u88c5\u5907"

    aput-object v1, v0, v3

    const-string v1, "\u67e5\u770b\u6cd5\u5b9d"

    aput-object v1, v0, v4

    const-string v1, "\u67e5\u770b\u5750\u9a91"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "\u67e5\u770b\u5883\u754c"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u67e5\u770b\u516b\u5366"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\u67e5\u770b\u661f\u5bbf"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u67e5\u770b\u795e\u4f4d"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u67e5\u770b\u7075\u7eb9"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u67e5\u770b\u9b42\u4f4d"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u67e5\u770b\u4e09\u82b1"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u67e5\u770b\u5e7d\u68a6\u5f71"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u67e5\u770b\u4e94\u884c"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/t4game/PlayerFunctionViewManager;->playerFunctionView:[Ljava/lang/String;

    new-array v0, v6, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/t4game/PlayerFunctionViewManager;->playerFunctionOpenGrade:[B

    iput-byte v3, p0, Lcom/t4game/PlayerFunctionViewManager;->MenuState_Excute:B

    iput-byte v4, p0, Lcom/t4game/PlayerFunctionViewManager;->MenuState_First:B

    iput-byte v5, p0, Lcom/t4game/PlayerFunctionViewManager;->MenuState_Secend:B

    iput-byte v4, p0, Lcom/t4game/PlayerFunctionViewManager;->menuState:B

    iput-byte v3, p0, Lcom/t4game/PlayerFunctionViewManager;->menuIndex:B

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x14t
        0x14t
        0x1ct
        0x1et
        0x28t
        0x32t
        0x37t
        0x3ct
        0x3ct
        0x3ct
        0x46t
    .end array-data
.end method

.method public static getInstence()Lcom/t4game/PlayerFunctionViewManager;
    .locals 1

    sget-object v0, Lcom/t4game/PlayerFunctionViewManager;->manager:Lcom/t4game/PlayerFunctionViewManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/t4game/PlayerFunctionViewManager;

    invoke-direct {v0}, Lcom/t4game/PlayerFunctionViewManager;-><init>()V

    sput-object v0, Lcom/t4game/PlayerFunctionViewManager;->manager:Lcom/t4game/PlayerFunctionViewManager;

    :cond_0
    sget-object v0, Lcom/t4game/PlayerFunctionViewManager;->manager:Lcom/t4game/PlayerFunctionViewManager;

    return-object v0
.end method


# virtual methods
.method public excute(Lcom/t4game/GameWorld;Lcom/t4game/GameScreen;Ljava/lang/String;IB)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-byte v0, p0, Lcom/t4game/PlayerFunctionViewManager;->menuState:B

    if-nez v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/PlayerFunctionViewManager;->menuIndex:B

    packed-switch v0, :pswitch_data_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "========this.menuIndex===="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/t4game/PlayerFunctionViewManager;->menuIndex:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p1, p3, p4}, Lcom/t4game/GameWorld;->sendViewOtherPlayerInfoMessage(Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_1
    iput-boolean v1, p1, Lcom/t4game/GameWorld;->getFabaoPackFromPack:Z

    const/4 v0, -0x1

    invoke-virtual {p1, v1, p4, v0}, Lcom/t4game/GameWorld;->sendFaBaoPackMessage(BII)Z

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1, p4}, Lcom/t4game/GameWorld;->sendLOOK_ROLE_HORSE_ATTRIBUTE(I)Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1, p4, v3}, Lcom/t4game/GameWorld;->sendJingJieMessage(IZ)Z

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1, p4, v3}, Lcom/t4game/GameWorld;->sendBaGuaMessage(IZ)Z

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1, p4}, Lcom/t4game/GameWorld;->sendShenWeiMessage(I)Z

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1, p4, v3}, Lcom/t4game/GameWorld;->sendBATTLE_SOUL_MANAGER(IB)Z

    goto :goto_0

    :pswitch_7
    invoke-virtual {p1, p4}, Lcom/t4game/GameWorld;->sendSANHUA(I)Z

    goto :goto_0

    :pswitch_8
    invoke-virtual {p1, p4}, Lcom/t4game/GameWorld;->sendWuXing(I)Z

    goto :goto_0

    :pswitch_9
    new-instance v0, Lcom/t4game/Constellation;

    invoke-direct {v0, p2}, Lcom/t4game/Constellation;-><init>(Lcom/t4game/GameScreen;)V

    iput-object v0, p2, Lcom/t4game/GameScreen;->cons:Lcom/t4game/Constellation;

    iget-object v0, p2, Lcom/t4game/GameScreen;->cons:Lcom/t4game/Constellation;

    iget-byte v1, p2, Lcom/t4game/GameScreen;->State:B

    iget-byte v2, p2, Lcom/t4game/GameScreen;->dialogId:B

    invoke-virtual {v0, v1, v2, p5}, Lcom/t4game/Constellation;->setPreState(BBB)V

    iget-object v0, p2, Lcom/t4game/GameScreen;->cons:Lcom/t4game/Constellation;

    invoke-virtual {v0, p4, v3}, Lcom/t4game/Constellation;->sendMessageCONSTELLATIONS_VIEW_MSG(IZ)V

    goto :goto_0

    :pswitch_a
    iput-object v2, p1, Lcom/t4game/GameWorld;->viewUser:Lcom/t4game/GUser;

    new-instance v0, Lcom/t4game/GUser;

    invoke-direct {v0}, Lcom/t4game/GUser;-><init>()V

    iput-object v0, p1, Lcom/t4game/GameWorld;->viewUser:Lcom/t4game/GUser;

    iget-object v0, p1, Lcom/t4game/GameWorld;->viewUser:Lcom/t4game/GUser;

    iput-boolean v1, v0, Lcom/t4game/GUser;->visible:Z

    iget-object v0, p1, Lcom/t4game/GameWorld;->viewUser:Lcom/t4game/GUser;

    iput-object p3, v0, Lcom/t4game/GUser;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/t4game/GameWorld;->viewUser:Lcom/t4game/GUser;

    iput p4, v0, Lcom/t4game/GUser;->intId:I

    invoke-static {}, Lcom/t4game/SoulPattern;->getInstance()Lcom/t4game/SoulPattern;

    move-result-object v0

    invoke-virtual {v0, v3, p4}, Lcom/t4game/SoulPattern;->sendMsg_SOUL_PATTERN_PASTE_VIEW_MSG(BI)Z

    goto :goto_0

    :pswitch_b
    iput-object v2, p1, Lcom/t4game/GameWorld;->viewUser:Lcom/t4game/GUser;

    new-instance v0, Lcom/t4game/GUser;

    invoke-direct {v0}, Lcom/t4game/GUser;-><init>()V

    iput-object v0, p1, Lcom/t4game/GameWorld;->viewUser:Lcom/t4game/GUser;

    iget-object v0, p1, Lcom/t4game/GameWorld;->viewUser:Lcom/t4game/GUser;

    iput-boolean v1, v0, Lcom/t4game/GUser;->visible:Z

    iget-object v0, p1, Lcom/t4game/GameWorld;->viewUser:Lcom/t4game/GUser;

    iput-object p3, v0, Lcom/t4game/GUser;->name:Ljava/lang/String;

    iget-object v0, p1, Lcom/t4game/GameWorld;->viewUser:Lcom/t4game/GUser;

    iput p4, v0, Lcom/t4game/GUser;->intId:I

    invoke-static {}, Lcom/t4game/DreamShadow;->getInstance()Lcom/t4game/DreamShadow;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/t4game/DreamShadow;->getContext(Lcom/t4game/GameScreen;)V

    invoke-static {}, Lcom/t4game/DreamShadow;->getInstance()Lcom/t4game/DreamShadow;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/t4game/DreamShadow;->sendMessageDREAMSHADOWS_UPDATE_BAG_MSG(I)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_9
        :pswitch_5
        :pswitch_a
        :pswitch_6
        :pswitch_7
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public getMenuIndex()B
    .locals 1

    iget-byte v0, p0, Lcom/t4game/PlayerFunctionViewManager;->menuIndex:B

    return v0
.end method

.method public getMenuState()B
    .locals 1

    iget-byte v0, p0, Lcom/t4game/PlayerFunctionViewManager;->menuState:B

    return v0
.end method

.method public getRoleFunctionViewMenu(I[Ljava/lang/String;)Lcom/t4game/UI_Menu;
    .locals 8

    const/16 v6, 0x8

    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "10-59\u7ea7"

    iget-byte v0, p0, Lcom/t4game/PlayerFunctionViewManager;->menuState:B

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-byte v1, p0, Lcom/t4game/PlayerFunctionViewManager;->menuState:B

    const/16 v0, 0x3c

    if-ge p1, v0, :cond_0

    new-instance v0, Lcom/t4game/UI_Menu;

    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "10-59\u7ea7"

    aput-object v3, v1, v4

    invoke-direct {v0, v1}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/t4game/UI_Menu;

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "10-59\u7ea7"

    aput-object v3, v1, v4

    const-string v2, "60-100\u7ea7"

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-byte v4, p0, Lcom/t4game/PlayerFunctionViewManager;->menuState:B

    iget-byte v0, p0, Lcom/t4game/PlayerFunctionViewManager;->menuIndex:B

    if-nez v0, :cond_4

    move v0, v4

    move v1, v4

    :goto_1
    if-ge v0, v6, :cond_1

    iget-object v2, p0, Lcom/t4game/PlayerFunctionViewManager;->playerFunctionOpenGrade:[B

    aget-byte v2, v2, v0

    add-int/lit8 v3, p1, 0x1

    if-ge v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    :cond_1
    new-array v0, v1, [Ljava/lang/String;

    new-array v1, v1, [B

    move v2, v4

    :goto_2
    array-length v3, v0

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/t4game/PlayerFunctionViewManager;->playerFunctionView:[Ljava/lang/String;

    aget-object v3, v3, v2

    aput-object v3, v0, v2

    int-to-byte v3, v2

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_3
    if-eqz p2, :cond_3

    array-length v2, p2

    if-ge v2, v5, :cond_6

    :cond_3
    new-instance v2, Lcom/t4game/UI_Menu;

    invoke-direct {v2, v1, v0}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;[B)V

    move-object v0, v2

    goto :goto_0

    :cond_4
    move v0, v6

    move v1, v4

    :goto_4
    iget-object v2, p0, Lcom/t4game/PlayerFunctionViewManager;->playerFunctionOpenGrade:[B

    array-length v2, v2

    if-ge v0, v2, :cond_5

    iget-object v2, p0, Lcom/t4game/PlayerFunctionViewManager;->playerFunctionOpenGrade:[B

    aget-byte v2, v2, v0

    add-int/lit8 v3, p1, 0x1

    if-ge v2, v3, :cond_5

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_4

    :cond_5
    new-array v0, v1, [Ljava/lang/String;

    new-array v1, v1, [B

    move v2, v4

    :goto_5
    array-length v3, v0

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lcom/t4game/PlayerFunctionViewManager;->playerFunctionView:[Ljava/lang/String;

    add-int/lit8 v4, v2, 0x8

    aget-object v3, v3, v4

    aput-object v3, v0, v2

    add-int/lit8 v3, v2, 0x8

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    new-instance v2, Lcom/t4game/UI_Menu;

    invoke-direct {v2, v1, v0, p2}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;[B[Ljava/lang/String;)V

    move-object v0, v2

    goto/16 :goto_0

    :cond_7
    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init()V
    .locals 1

    const/4 v0, -0x2

    iput-byte v0, p0, Lcom/t4game/PlayerFunctionViewManager;->menuIndex:B

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/PlayerFunctionViewManager;->menuState:B

    return-void
.end method

.method public isMenuState_Excute()Z
    .locals 1

    iget-byte v0, p0, Lcom/t4game/PlayerFunctionViewManager;->menuState:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMenuIndex(B)V
    .locals 0

    iput-byte p1, p0, Lcom/t4game/PlayerFunctionViewManager;->menuIndex:B

    return-void
.end method

.method public setMenuState(B)V
    .locals 0

    iput-byte p1, p0, Lcom/t4game/PlayerFunctionViewManager;->menuState:B

    return-void
.end method
