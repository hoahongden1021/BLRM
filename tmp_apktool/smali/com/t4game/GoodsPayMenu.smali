.class public Lcom/t4game/GoodsPayMenu;
.super Ljava/lang/Object;


# instance fields
.field public MenuLv1:[Ljava/lang/String;

.field public MenuLv1Id:[I

.field public MenuLv1Indes:B

.field public MenuLv1LoadId:[B

.field public MenuLv1Next:[B

.field public MenuLv2:[[Ljava/lang/String;

.field public MenuLv2Id:[[I

.field public MenuLv2Indes:B

.field public MenuLv2LoadId:[[B

.field public MenuLv2_str:Ljava/lang/String;

.field public cmd:I

.field cmdlist:[B

.field public gs:Lcom/t4game/GameScreen;

.field numFlag:I

.field tickTime:I

.field timeOn:I

.field public type:B

.field public viewState:B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/t4game/GoodsPayMenu;->cmd:I

    iput-byte v0, p0, Lcom/t4game/GoodsPayMenu;->type:B

    return-void
.end method

.method private processEvent()V
    .locals 7

    const/4 v3, 0x3

    const/16 v2, 0x17

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-byte v0, p0, Lcom/t4game/GoodsPayMenu;->viewState:B

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    iget-byte v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    const/4 v1, -0x2

    if-ne v0, v1, :cond_5

    iget-byte v0, p0, Lcom/t4game/GoodsPayMenu;->type:B

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1LoadId:[B

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iget-byte v1, v1, Lcom/t4game/UI_Menu;->index:B

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v5, v0, Lcom/t4game/GameWorld;->commMenuOn:Z

    :cond_0
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1LoadId:[B

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iget-byte v1, v1, Lcom/t4game/UI_Menu;->index:B

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v1, v1, v2

    iget-object v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1LoadId:[B

    iget-byte v3, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-byte v2, v2, v3

    shr-int/lit8 v2, v2, 0x1

    and-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/t4game/GameWorld;->sendcommMenuActionMessage(ZIB)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->clearCommand()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-byte v0, v0, Lcom/t4game/GameWorld;->npcOrMenuPay:B

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v5}, Lcom/t4game/GameScreen;->setState(BZ)V

    :goto_1
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iput-byte v6, v0, Lcom/t4game/GameWorld;->npcOrMenuPay:B

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v4}, Lcom/t4game/GameScreen;->setState(BZ)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Next:[B

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-byte v0, v0, v1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_17

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v0, v0, v1

    const/16 v1, -0x64

    if-eq v0, v1, :cond_14

    iget-byte v0, p0, Lcom/t4game/GoodsPayMenu;->type:B

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/t4game/Defaults;->CNL_TW:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v0, v0, v1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v2, v4}, Lcom/t4game/GameScreen;->setState(BZ)V

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->recharge:Lcom/t4game/Recharge;

    invoke-virtual {v0}, Lcom/t4game/Recharge;->SendRecharge_Message()V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v1, v1, v2

    invoke-virtual {v0, v1, v5}, Lcom/t4game/GameWorld;->sendGetGoodsPayMessage(IB)Z

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1:[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/t4game/GameScreen;->goodsPayTitle:Ljava/lang/String;

    goto :goto_0

    :cond_7
    sget-boolean v0, Lcom/t4game/Defaults;->CNL_TENCENT:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v0, v0, v1

    const/16 v1, 0x11

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v2, v4}, Lcom/t4game/GameScreen;->setState(BZ)V

    sput-boolean v4, Lcom/t4game/Defaults;->beTencentRecharge:Z

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v1, v1, v2

    invoke-virtual {v0, v1, v5}, Lcom/t4game/GameWorld;->sendGetGoodsPayMessage(IB)Z

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1:[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/t4game/GameScreen;->goodsPayTitle:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    sget-boolean v0, Lcom/t4game/Defaults;->CNL_YUENAN:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v0, v0, v1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v2, v4}, Lcom/t4game/GameScreen;->setState(BZ)V

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->recharge:Lcom/t4game/Recharge;

    invoke-virtual {v0}, Lcom/t4game/Recharge;->SendRecharge_Message()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v1, v1, v2

    invoke-virtual {v0, v1, v5}, Lcom/t4game/GameWorld;->sendGetGoodsPayMessage(IB)Z

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1:[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/t4game/GameScreen;->goodsPayTitle:Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v1, v1, v2

    invoke-virtual {v0, v1, v5}, Lcom/t4game/GameWorld;->sendGetGoodsPayMessage(IB)Z

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1:[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/t4game/GameScreen;->goodsPayTitle:Ljava/lang/String;

    goto/16 :goto_0

    :cond_c
    iget-byte v0, p0, Lcom/t4game/GoodsPayMenu;->type:B

    if-ne v0, v4, :cond_d

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v1, v1, v2

    sget-byte v2, Lcom/t4game/Defaults;->linesOfScreen:B

    invoke-virtual {v0, v1, v2, v5}, Lcom/t4game/GameWorld;->sendSeniorityListMessage(IBB)Z

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1:[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/t4game/GameScreen;->str_TitleOfSeniority:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v1, v1, v2

    iput v1, v0, Lcom/t4game/GameScreen;->typeOfSeniority:I

    goto/16 :goto_0

    :cond_d
    iget-byte v0, p0, Lcom/t4game/GoodsPayMenu;->type:B

    if-ne v0, v6, :cond_12

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v0, v0, v1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->requestGameBulletin(B)Z

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v0, v0, v1

    if-ne v0, v3, :cond_f

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->InitActivityTakeOut()V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v0, v0, v1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_10

    invoke-static {}, Lcom/t4game/FirstRecharge;->getInstance()Lcom/t4game/FirstRecharge;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v1, v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/FirstRecharge;->sendFRechargeMsg(B)Z

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v0, v0, v1

    const/16 v1, 0x8

    if-ne v0, v1, :cond_11

    invoke-static {}, Lcom/t4game/FirstRecharge;->getInstance()Lcom/t4game/FirstRecharge;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v1, v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/FirstRecharge;->sendFRechargeMsg(B)Z

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v0, v0, v1

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    invoke-static {}, Lcom/t4game/FirstRecharge;->getInstance()Lcom/t4game/FirstRecharge;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v1, v1, v2

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/FirstRecharge;->sendFRechargeMsg(B)Z

    goto/16 :goto_0

    :cond_12
    iget-byte v0, p0, Lcom/t4game/GoodsPayMenu;->type:B

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1LoadId:[B

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_13

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v5, v0, Lcom/t4game/GameWorld;->commMenuOn:Z

    :cond_13
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1LoadId:[B

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v1, v1, v2

    iget-object v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1LoadId:[B

    iget-byte v3, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/t4game/GameWorld;->sendcommMenuActionMessage(ZIB)V

    goto/16 :goto_0

    :cond_14
    iget-byte v0, p0, Lcom/t4game/GoodsPayMenu;->type:B

    if-ne v0, v3, :cond_16

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1LoadId:[B

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x5

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_15

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v5, v0, Lcom/t4game/GameWorld;->commMenuOn:Z

    :cond_15
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1LoadId:[B

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x3

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v1, v1, v2

    iget-object v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1LoadId:[B

    iget-byte v3, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-byte v2, v2, v3

    shr-int/lit8 v2, v2, 0x1

    and-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    invoke-virtual {v0, v5, v1, v2}, Lcom/t4game/GameWorld;->sendcommMenuActionMessage(ZIB)V

    goto/16 :goto_0

    :cond_16
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v5}, Lcom/t4game/GameScreen;->setState(BZ)V

    goto/16 :goto_0

    :cond_17
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    new-instance v1, Lcom/t4game/UI_Menu;

    iget-object v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2:[[Ljava/lang/String;

    iget-byte v3, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v2, v2, v3

    invoke-direct {v1, v2}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iput-byte v4, p0, Lcom/t4game/GoodsPayMenu;->viewState:B

    iput-byte v5, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Indes:B

    iget-byte v0, p0, Lcom/t4game/GoodsPayMenu;->type:B

    if-ne v0, v6, :cond_1

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v1, v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lcom/t4game/GameWorld;->activityType:B

    goto/16 :goto_0

    :cond_18
    iget-byte v0, p0, Lcom/t4game/GoodsPayMenu;->viewState:B

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Indes:B

    iget-byte v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Indes:B

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Indes:B

    const/4 v1, -0x2

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    new-instance v1, Lcom/t4game/UI_Menu;

    iget-object v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    iput-byte v1, v0, Lcom/t4game/UI_Menu;->index:B

    iput-byte v5, p0, Lcom/t4game/GoodsPayMenu;->viewState:B

    goto/16 :goto_0

    :cond_19
    iget-byte v0, p0, Lcom/t4game/GoodsPayMenu;->type:B

    if-nez v0, :cond_21

    sget-boolean v0, Lcom/t4game/Defaults;->CNL_TW:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v0, v0, v1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v2, v4}, Lcom/t4game/GameScreen;->setState(BZ)V

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->recharge:Lcom/t4game/Recharge;

    invoke-virtual {v0}, Lcom/t4game/Recharge;->SendRecharge_Message()V

    goto/16 :goto_0

    :cond_1a
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Id:[[I

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Indes:B

    aget v1, v1, v2

    invoke-virtual {v0, v1, v5}, Lcom/t4game/GameWorld;->sendGetGoodsPayMessage(IB)Z

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2:[[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Indes:B

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/t4game/GameScreen;->goodsPayTitle:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1b
    sget-boolean v0, Lcom/t4game/Defaults;->CNL_TENCENT:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v0, v0, v1

    const/16 v1, 0x11

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v2, v4}, Lcom/t4game/GameScreen;->setState(BZ)V

    sput-boolean v4, Lcom/t4game/Defaults;->beTencentRecharge:Z

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->recharge:Lcom/t4game/Recharge;

    invoke-virtual {v0}, Lcom/t4game/Recharge;->SendRecharge_Message()V

    goto/16 :goto_0

    :cond_1c
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Id:[[I

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Indes:B

    aget v1, v1, v2

    invoke-virtual {v0, v1, v5}, Lcom/t4game/GameWorld;->sendGetGoodsPayMessage(IB)Z

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2:[[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Indes:B

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/t4game/GameScreen;->goodsPayTitle:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1d
    sget-boolean v0, Lcom/t4game/Defaults;->CNL_T4GAME:Z

    if-eqz v0, :cond_20

    sget-boolean v0, Lcom/t4game/Defaults;->CNL_LD:Z

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iget-object v0, v0, Lcom/t4game/UI_Menu;->menuString:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Indes:B

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2_str:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v0, v0, v1

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2_str:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2_str:Ljava/lang/String;

    const-string v1, "\u652f\u4ed8\u5b9d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2_str:Ljava/lang/String;

    const-string v1, "\u8054\u52a8\u4f18\u52bf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    :cond_1e
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v2, v4}, Lcom/t4game/GameScreen;->setState(BZ)V

    invoke-static {}, Lcom/t4game/Sdk_LD;->getInstance()Lcom/t4game/Sdk_LD;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Id:[[I

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Indes:B

    aget v1, v1, v2

    iput v1, v0, Lcom/t4game/Sdk_LD;->pkid:I

    invoke-static {}, Lcom/t4game/Sdk_LD;->getInstance()Lcom/t4game/Sdk_LD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/t4game/Sdk_LD;->sendListMsg()Z

    goto/16 :goto_0

    :cond_1f
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Id:[[I

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Indes:B

    aget v1, v1, v2

    invoke-virtual {v0, v1, v5}, Lcom/t4game/GameWorld;->sendGetGoodsPayMessage(IB)Z

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2:[[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Indes:B

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/t4game/GameScreen;->goodsPayTitle:Ljava/lang/String;

    goto/16 :goto_0

    :cond_20
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Id:[[I

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Indes:B

    aget v1, v1, v2

    invoke-virtual {v0, v1, v5}, Lcom/t4game/GameWorld;->sendGetGoodsPayMessage(IB)Z

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2:[[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Indes:B

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/t4game/GameScreen;->goodsPayTitle:Ljava/lang/String;

    goto/16 :goto_0

    :cond_21
    iget-byte v0, p0, Lcom/t4game/GoodsPayMenu;->type:B

    if-ne v0, v4, :cond_22

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Id:[[I

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Indes:B

    aget v1, v1, v2

    sget-byte v2, Lcom/t4game/Defaults;->linesOfScreen:B

    invoke-virtual {v0, v1, v2, v5}, Lcom/t4game/GameWorld;->sendSeniorityListMessage(IBB)Z

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2:[[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Indes:B

    aget-object v1, v1, v2

    iput-object v1, v0, Lcom/t4game/GameScreen;->str_TitleOfSeniority:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Id:[[I

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Indes:B

    aget v1, v1, v2

    iput v1, v0, Lcom/t4game/GameScreen;->typeOfSeniority:I

    goto/16 :goto_0

    :cond_22
    iget-byte v0, p0, Lcom/t4game/GoodsPayMenu;->type:B

    if-ne v0, v6, :cond_27

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->Activity_Container:[[[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->payGoodsMenu:Lcom/t4game/GoodsPayMenu;

    iget-byte v2, v2, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->payGoodsMenu:Lcom/t4game/GoodsPayMenu;

    iget-byte v2, v2, Lcom/t4game/GoodsPayMenu;->MenuLv2Indes:B

    aget-object v1, v1, v2

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    iput-byte v1, v0, Lcom/t4game/GameWorld;->activityType:B

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->Activity_Container:[[[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->payGoodsMenu:Lcom/t4game/GoodsPayMenu;

    iget-byte v2, v2, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->payGoodsMenu:Lcom/t4game/GoodsPayMenu;

    iget-byte v2, v2, Lcom/t4game/GoodsPayMenu;->MenuLv2Indes:B

    aget-object v1, v1, v2

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/t4game/GameWorld;->activityId:I

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v0, v0, v1

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0}, Lcom/t4game/GameWorld;->SendActivity_Question_Message()Z

    goto/16 :goto_0

    :cond_23
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v0, v0, v1

    if-ne v0, v4, :cond_24

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0}, Lcom/t4game/GameWorld;->SendActivity_Question_Message()Z

    goto/16 :goto_0

    :cond_24
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v0, v0, v1

    if-ne v0, v6, :cond_25

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0}, Lcom/t4game/GameWorld;->SendActivity_Question_Message()Z

    goto/16 :goto_0

    :cond_25
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v0, v0, v1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget v1, v1, Lcom/t4game/GameWorld;->activityId:I

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->SendActivity_List_Message(I)Z

    goto/16 :goto_0

    :cond_26
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Id:[I

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget v0, v0, v1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Id:[[I

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Indes:B

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->SendActivity_Draw_Gambling_Message(I)Z

    goto/16 :goto_0

    :cond_27
    iget-byte v0, p0, Lcom/t4game/GoodsPayMenu;->type:B

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2LoadId:[[B

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v0, v0, v1

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Indes:B

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_28

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v5, v0, Lcom/t4game/GameWorld;->commMenuOn:Z

    :cond_28
    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2LoadId:[[B

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v0, v0, v1

    iget-byte v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Indes:B

    aget-byte v0, v0, v1

    shr-int/lit8 v0, v0, 0x2

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Id:[[I

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v1, v1, v2

    iget-byte v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Indes:B

    aget v1, v1, v2

    iget-object v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2LoadId:[[B

    iget-byte v3, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1Indes:B

    aget-object v2, v2, v3

    iget-byte v3, p0, Lcom/t4game/GoodsPayMenu;->MenuLv2Indes:B

    aget-byte v2, v2, v3

    and-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    invoke-virtual {v0, v4, v1, v2}, Lcom/t4game/GameWorld;->sendcommMenuActionMessage(ZIB)V

    goto/16 :goto_0
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->draw(Ljavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    new-instance v1, Lcom/t4game/UI_Menu;

    iget-object v2, p0, Lcom/t4game/GoodsPayMenu;->MenuLv1:[Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    return-void
.end method

.method public keyPressed(I)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->keyEvent(I)V

    invoke-direct {p0}, Lcom/t4game/GoodsPayMenu;->processEvent()V

    return-void
.end method

.method public pointerEvent()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->pointerEvent()V

    invoke-direct {p0}, Lcom/t4game/GoodsPayMenu;->processEvent()V

    return-void
.end method

.method public setGameScreen(Lcom/t4game/GameScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/GoodsPayMenu;->gs:Lcom/t4game/GameScreen;

    return-void
.end method
