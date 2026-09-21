.class public Lcom/t4game/GameUi;
.super Lcom/t4game/UI_Super;


# static fields
.field public static final TYPE_UI_CHOICEBOX:B = 0x9t

.field public static final TYPE_UI_COMMANDBUTTOM:B = 0xbt

.field public static final TYPE_UI_FOUNCTION:B = 0x1t

.field public static final TYPE_UI_GOODBOX:B = 0x7t

.field public static final TYPE_UI_GOODSBOX:B = 0xct

.field public static final TYPE_UI_IMAGEITEM:B = 0x4t

.field public static final TYPE_UI_INPUTBOX:B = 0x2t

.field public static final TYPE_UI_LIST:B = 0x8t

.field public static final TYPE_UI_MONEYBOX:B = 0x6t

.field public static final TYPE_UI_PAGELABLE:B = 0xat

.field public static final TYPE_UI_TEXTBOX:B = 0x3t

.field public static final TYPE_UI_TITLEBAR:B = 0x5t

.field static actionType:B = 0x0t

.field static final topAletIntroMaxTick:B = 0x28t

.field static final topAletIntroMinTick:B = 0x1t

.field public static topGameUI:Lcom/t4game/GameUi;


# instance fields
.field public BoundType:B

.field UIHash:Ljava/util/Hashtable;

.field private alert:Ljava/lang/String;

.field private bubbleColor:I

.field private bubbleX:I

.field private bubbleY:I

.field commandType:B

.field public focus:B

.field private isOnBody:Z

.field private isPointerConfirm:Z

.field lastPointedUi:B

.field lose_focus:I

.field public notShow:Ljava/util/Hashtable;

.field px:S

.field py:S

.field returnUI:Lcom/t4game/UI_Super;

.field private roleGood:Lcom/t4game/RoleGoods;

.field private screen:Lcom/t4game/GameScreen;

.field private tabC:Lcom/t4game/UI_TabContainer;

.field private topAletIntroTick:B

.field totalHight:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput-byte v0, Lcom/t4game/GameUi;->actionType:B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v2}, Lcom/t4game/UI_Super;-><init>(Lcom/t4game/UI_Super;)V

    iput-byte v1, p0, Lcom/t4game/GameUi;->BoundType:B

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/GameUi;->commandType:B

    const/16 v0, -0x3e8

    iput v0, p0, Lcom/t4game/GameUi;->lose_focus:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/t4game/GameUi;->UIHash:Ljava/util/Hashtable;

    iput-object v2, p0, Lcom/t4game/GameUi;->returnUI:Lcom/t4game/UI_Super;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/t4game/GameUi;->notShow:Ljava/util/Hashtable;

    iput-object v2, p0, Lcom/t4game/GameUi;->tabC:Lcom/t4game/UI_TabContainer;

    iput-byte v1, p0, Lcom/t4game/GameUi;->lastPointedUi:B

    iput-byte v1, p0, Lcom/t4game/GameUi;->topAletIntroTick:B

    return-void
.end method

.method public constructor <init>(Lcom/t4game/UI_Super;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/t4game/UI_Super;-><init>(Lcom/t4game/UI_Super;)V

    iput-byte v1, p0, Lcom/t4game/GameUi;->BoundType:B

    iput-byte v2, p0, Lcom/t4game/GameUi;->commandType:B

    const/16 v0, -0x3e8

    iput v0, p0, Lcom/t4game/GameUi;->lose_focus:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/t4game/GameUi;->UIHash:Ljava/util/Hashtable;

    iput-object v3, p0, Lcom/t4game/GameUi;->returnUI:Lcom/t4game/UI_Super;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/t4game/GameUi;->notShow:Ljava/util/Hashtable;

    iput-object v3, p0, Lcom/t4game/GameUi;->tabC:Lcom/t4game/UI_TabContainer;

    iput-byte v1, p0, Lcom/t4game/GameUi;->lastPointedUi:B

    iput-byte v1, p0, Lcom/t4game/GameUi;->topAletIntroTick:B

    iput-byte v2, p0, Lcom/t4game/GameUi;->id:B

    return-void
.end method

.method private getRef(B)Lcom/t4game/UI_Super;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/t4game/GameUi;->getTabC()Lcom/t4game/UI_TabContainer;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    goto :goto_0
.end method

.method private readData(Ljava/io/DataInputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    move v1, v6

    :goto_0
    if-ge v1, v0, :cond_10

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    if-ne v2, v5, :cond_1

    new-instance v2, Lcom/t4game/UI_FunctionItem;

    invoke-direct {v2, p0}, Lcom/t4game/UI_FunctionItem;-><init>(Lcom/t4game/GameUi;)V

    invoke-virtual {v2, p1}, Lcom/t4game/UI_FunctionItem;->init(Ljava/io/DataInputStream;)V

    invoke-virtual {p0, v2}, Lcom/t4game/GameUi;->addItem(Lcom/t4game/UI_Super;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    :cond_1
    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    new-instance v2, Lcom/t4game/UI_ChoiceBox;

    invoke-direct {v2, p0}, Lcom/t4game/UI_ChoiceBox;-><init>(Lcom/t4game/GameUi;)V

    invoke-virtual {v2, p1}, Lcom/t4game/UI_ChoiceBox;->init(Ljava/io/DataInputStream;)V

    invoke-virtual {p0, v2}, Lcom/t4game/GameUi;->addItem(Lcom/t4game/UI_Super;)V

    goto :goto_1

    :cond_2
    const/16 v3, 0xb

    if-ne v2, v3, :cond_7

    new-instance v2, Lcom/t4game/UI_CommandButtom;

    invoke-direct {v2, p0}, Lcom/t4game/UI_CommandButtom;-><init>(Lcom/t4game/GameUi;)V

    invoke-virtual {v2, p1}, Lcom/t4game/UI_CommandButtom;->init(Ljava/io/DataInputStream;)V

    iget-byte v3, v2, Lcom/t4game/UI_CommandButtom;->commandType:B

    if-nez v3, :cond_5

    iget-byte v3, p0, Lcom/t4game/GameUi;->commandType:B

    if-ne v3, v8, :cond_4

    iput-byte v6, p0, Lcom/t4game/GameUi;->commandType:B

    :cond_3
    :goto_2
    invoke-virtual {p0, v2}, Lcom/t4game/GameUi;->addItem(Lcom/t4game/UI_Super;)V

    goto :goto_1

    :cond_4
    iget-byte v3, p0, Lcom/t4game/GameUi;->commandType:B

    if-ne v3, v5, :cond_3

    iput-byte v7, p0, Lcom/t4game/GameUi;->commandType:B

    goto :goto_2

    :cond_5
    iget-byte v3, v2, Lcom/t4game/UI_CommandButtom;->commandType:B

    if-ne v3, v5, :cond_3

    iget-byte v3, p0, Lcom/t4game/GameUi;->commandType:B

    if-ne v3, v8, :cond_6

    iput-byte v5, p0, Lcom/t4game/GameUi;->commandType:B

    goto :goto_2

    :cond_6
    iget-byte v3, p0, Lcom/t4game/GameUi;->commandType:B

    if-nez v3, :cond_3

    iput-byte v7, p0, Lcom/t4game/GameUi;->commandType:B

    goto :goto_2

    :cond_7
    const/4 v3, 0x7

    if-ne v2, v3, :cond_8

    new-instance v2, Lcom/t4game/UI_GoodBox;

    invoke-direct {v2, p0}, Lcom/t4game/UI_GoodBox;-><init>(Lcom/t4game/GameUi;)V

    invoke-virtual {v2, p1}, Lcom/t4game/UI_GoodBox;->init(Ljava/io/DataInputStream;)V

    invoke-virtual {p0, v2}, Lcom/t4game/GameUi;->addItem(Lcom/t4game/UI_Super;)V

    goto :goto_1

    :cond_8
    const/4 v3, 0x4

    if-ne v2, v3, :cond_9

    new-instance v2, Lcom/t4game/UI_ImageBox;

    invoke-direct {v2, p0}, Lcom/t4game/UI_ImageBox;-><init>(Lcom/t4game/GameUi;)V

    invoke-virtual {v2, p1}, Lcom/t4game/UI_ImageBox;->init(Ljava/io/DataInputStream;)V

    invoke-virtual {p0, v2}, Lcom/t4game/GameUi;->addItem(Lcom/t4game/UI_Super;)V

    goto :goto_1

    :cond_9
    if-ne v2, v7, :cond_a

    new-instance v2, Lcom/t4game/UI_InputBox;

    invoke-direct {v2, p0}, Lcom/t4game/UI_InputBox;-><init>(Lcom/t4game/GameUi;)V

    invoke-virtual {v2, p1}, Lcom/t4game/UI_InputBox;->init(Ljava/io/DataInputStream;)V

    invoke-virtual {p0, v2}, Lcom/t4game/GameUi;->addItem(Lcom/t4game/UI_Super;)V

    goto :goto_1

    :cond_a
    const/16 v3, 0x8

    if-ne v2, v3, :cond_b

    new-instance v2, Lcom/t4game/UI_List;

    invoke-direct {v2, p0}, Lcom/t4game/UI_List;-><init>(Lcom/t4game/GameUi;)V

    invoke-virtual {v2, p1}, Lcom/t4game/UI_List;->init(Ljava/io/DataInputStream;)V

    invoke-virtual {p0, v2}, Lcom/t4game/GameUi;->addItem(Lcom/t4game/UI_Super;)V

    goto/16 :goto_1

    :cond_b
    const/4 v3, 0x6

    if-ne v2, v3, :cond_c

    new-instance v2, Lcom/t4game/UI_MoneyBox;

    invoke-direct {v2, p0}, Lcom/t4game/UI_MoneyBox;-><init>(Lcom/t4game/GameUi;)V

    invoke-virtual {v2, p1}, Lcom/t4game/UI_MoneyBox;->init(Ljava/io/DataInputStream;)V

    invoke-virtual {p0, v2}, Lcom/t4game/GameUi;->addItem(Lcom/t4game/UI_Super;)V

    goto/16 :goto_1

    :cond_c
    const/16 v3, 0xa

    if-ne v2, v3, :cond_d

    new-instance v2, Lcom/t4game/UI_PageLable;

    new-instance v3, Lcom/t4game/GameUi;

    invoke-virtual {p0}, Lcom/t4game/GameUi;->getTabC()Lcom/t4game/UI_TabContainer;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/t4game/GameUi;-><init>(Lcom/t4game/UI_Super;)V

    invoke-direct {v2, p0, v3}, Lcom/t4game/UI_PageLable;-><init>(Lcom/t4game/GameUi;Lcom/t4game/GameUi;)V

    invoke-virtual {v2, p1}, Lcom/t4game/UI_PageLable;->init(Ljava/io/DataInputStream;)V

    invoke-virtual {p0, v2}, Lcom/t4game/GameUi;->addItem(Lcom/t4game/UI_Super;)V

    goto/16 :goto_1

    :cond_d
    const/4 v3, 0x3

    if-ne v2, v3, :cond_e

    new-instance v2, Lcom/t4game/UI_TextBox;

    invoke-direct {v2, p0}, Lcom/t4game/UI_TextBox;-><init>(Lcom/t4game/GameUi;)V

    invoke-virtual {v2, p1}, Lcom/t4game/UI_TextBox;->init(Ljava/io/DataInputStream;)V

    invoke-virtual {p0, v2}, Lcom/t4game/GameUi;->addItem(Lcom/t4game/UI_Super;)V

    goto/16 :goto_1

    :cond_e
    const/4 v3, 0x5

    if-ne v2, v3, :cond_f

    new-instance v2, Lcom/t4game/UI_TitleBar;

    invoke-direct {v2, p0}, Lcom/t4game/UI_TitleBar;-><init>(Lcom/t4game/GameUi;)V

    invoke-virtual {v2, p1}, Lcom/t4game/UI_TitleBar;->init(Ljava/io/DataInputStream;)V

    invoke-virtual {p0, v2}, Lcom/t4game/GameUi;->addItem(Lcom/t4game/UI_Super;)V

    goto/16 :goto_1

    :cond_f
    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    new-instance v2, Lcom/t4game/UI_GoodsBox;

    invoke-direct {v2, p0}, Lcom/t4game/UI_GoodsBox;-><init>(Lcom/t4game/GameUi;)V

    invoke-virtual {v2, p1}, Lcom/t4game/UI_GoodsBox;->init(Ljava/io/DataInputStream;)V

    invoke-virtual {p0, v2}, Lcom/t4game/GameUi;->addItem(Lcom/t4game/UI_Super;)V

    goto/16 :goto_1

    :cond_10
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    if-lez v0, :cond_11

    move v1, v6

    :goto_3
    if-ge v1, v0, :cond_11

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    invoke-direct {p0, v3}, Lcom/t4game/GameUi;->getRef(B)Lcom/t4game/UI_Super;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/t4game/GameUi;->getUI(Ljava/io/DataInputStream;)[Lcom/t4game/UI_Super;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/t4game/GameUi;->setAlignment(BLcom/t4game/UI_Super;[Lcom/t4game/UI_Super;S)V

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_3

    :cond_11
    return-void
.end method

.method private testShowTopAletIntro()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-byte v1, p0, Lcom/t4game/GameUi;->topAletIntroTick:B

    if-lt v1, v3, :cond_0

    iget-byte v1, p0, Lcom/t4game/GameUi;->topAletIntroTick:B

    const/16 v2, 0x28

    if-gt v1, v2, :cond_0

    move v0, v3

    :cond_0
    return v0
.end method

.method private topAletIntroTick()V
    .locals 2

    iget-byte v0, p0, Lcom/t4game/GameUi;->topAletIntroTick:B

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/GameUi;->topAletIntroTick:B

    const/16 v1, 0x29

    if-ge v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/GameUi;->topAletIntroTick:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GameUi;->topAletIntroTick:B

    :cond_0
    return-void
.end method


# virtual methods
.method public addItem(Lcom/t4game/UI_Super;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/t4game/GameUi;->UIHash:Ljava/util/Hashtable;

    iget-byte v1, p1, Lcom/t4game/UI_Super;->id:B

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-byte v0, p1, Lcom/t4game/UI_Super;->type:B

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/t4game/GameUi;->getTabC()Lcom/t4game/UI_TabContainer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/t4game/UI_TabContainer;->addChild(Lcom/t4game/UI_Super;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/t4game/GameUi;->addChild(Lcom/t4game/UI_Super;)V

    goto :goto_0
.end method

.method public addNotShowComponentId(Ljava/lang/Byte;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/GameUi;->notShow:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/t4game/GameUi;->notShow:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lcom/t4game/GameUi;->notShow:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearAction()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GameUi;->returnUI:Lcom/t4game/UI_Super;

    const/4 v0, -0x1

    sput-byte v0, Lcom/t4game/GameUi;->actionType:B

    return-void
.end method

.method public clearFocus()V
    .locals 2

    const/4 v1, 0x0

    iget-byte v0, p0, Lcom/t4game/GameUi;->focus:B

    invoke-virtual {p0, v0}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/t4game/UI_Super;->setFocus(Z)V

    :cond_0
    iput-byte v1, p0, Lcom/t4game/GameUi;->focus:B

    return-void
.end method

.method public clearNotShow()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/GameUi;->notShow:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GameUi;->notShow:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_0
    return-void
.end method

.method protected clone()Lcom/t4game/UI_Super;
    .locals 3

    new-instance v0, Lcom/t4game/GameUi;

    invoke-direct {v0}, Lcom/t4game/GameUi;-><init>()V

    invoke-super {p0, v0}, Lcom/t4game/UI_Super;->clone(Lcom/t4game/UI_Super;)V

    iget-byte v1, p0, Lcom/t4game/GameUi;->BoundType:B

    iput-byte v1, v0, Lcom/t4game/GameUi;->BoundType:B

    iget-short v1, p0, Lcom/t4game/GameUi;->totalHight:S

    iput-short v1, v0, Lcom/t4game/GameUi;->totalHight:S

    iget-short v1, p0, Lcom/t4game/GameUi;->focusH:S

    iput-short v1, v0, Lcom/t4game/GameUi;->focusH:S

    invoke-virtual {p0}, Lcom/t4game/GameUi;->getTabC()Lcom/t4game/UI_TabContainer;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/GameUi;->tabC:Lcom/t4game/UI_TabContainer;

    iget-object v1, p0, Lcom/t4game/GameUi;->UIHash:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, v0, Lcom/t4game/GameUi;->UIHash:Ljava/util/Hashtable;

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/UI_Super;

    invoke-virtual {p0}, Lcom/t4game/UI_Super;->clone()Lcom/t4game/UI_Super;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/t4game/GameUi;->addItem(Lcom/t4game/UI_Super;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/t4game/GameUi;->clone()Lcom/t4game/UI_Super;

    move-result-object v0

    return-object v0
.end method

.method protected clone(Lcom/t4game/UI_Super;)V
    .locals 0

    return-void
.end method

.method public closeBubble()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GameUi;->screen:Lcom/t4game/GameScreen;

    iput-object v0, p0, Lcom/t4game/GameUi;->roleGood:Lcom/t4game/RoleGoods;

    iput-object v0, p0, Lcom/t4game/GameUi;->alert:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/t4game/GameUi;->isOnBody:Z

    iput-byte v1, p0, Lcom/t4game/GameUi;->topAletIntroTick:B

    return-void
.end method

.method public deleteItem(I)V
    .locals 4

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v1

    iget-byte v2, v1, Lcom/t4game/UI_Super;->upFocusIndex:B

    invoke-virtual {p0, v2}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-byte v3, v1, Lcom/t4game/UI_Super;->dnFocusIndex:B

    iput-byte v3, v2, Lcom/t4game/UI_Super;->dnFocusIndex:B

    :cond_0
    iget-byte v2, v1, Lcom/t4game/UI_Super;->dnFocusIndex:B

    invoke-virtual {p0, v2}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-byte v3, v1, Lcom/t4game/UI_Super;->upFocusIndex:B

    iput-byte v3, v2, Lcom/t4game/UI_Super;->upFocusIndex:B

    :cond_1
    iget-byte v2, v1, Lcom/t4game/UI_Super;->lfFocusIndex:B

    invoke-virtual {p0, v2}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-byte v3, v1, Lcom/t4game/UI_Super;->rtFocusIndex:B

    iput-byte v3, v2, Lcom/t4game/UI_Super;->rtFocusIndex:B

    :cond_2
    iget-byte v2, v1, Lcom/t4game/UI_Super;->rtFocusIndex:B

    invoke-virtual {p0, v2}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-byte v1, v1, Lcom/t4game/UI_Super;->lfFocusIndex:B

    iput-byte v1, v2, Lcom/t4game/UI_Super;->lfFocusIndex:B

    :cond_3
    iget-object v1, p0, Lcom/t4game/GameUi;->UIHash:Ljava/util/Hashtable;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/t4game/GameUi;->childList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    return-void
.end method

.method public deleteNotShowComponentId(Ljava/lang/Byte;)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/GameUi;->notShow:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/GameUi;->notShow:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GameUi;->notShow:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/t4game/GameUi;->draw(Ljavax/microedition/lcdui/Graphics;S)V

    return-void
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;S)V
    .locals 10

    const/4 v6, 0x7

    const/4 v9, 0x0

    invoke-super {p0, p1, p2}, Lcom/t4game/UI_Super;->draw(Ljavax/microedition/lcdui/Graphics;S)V

    iget-short v1, p0, Lcom/t4game/GameUi;->focusY:S

    if-lez v1, :cond_0

    iget-short v1, p0, Lcom/t4game/GameUi;->x:S

    iget-short v2, p0, Lcom/t4game/GameUi;->w:S

    iget-short v3, p0, Lcom/t4game/GameUi;->h:S

    invoke-virtual {p1, v1, p2, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    :cond_0
    iget-object v1, p0, Lcom/t4game/GameUi;->childList:Ljava/util/Vector;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/t4game/GameUi;->childList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/t4game/UI_Super;

    iget-object v2, p0, Lcom/t4game/GameUi;->notShow:Ljava/util/Hashtable;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/t4game/GameUi;->notShow:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Byte;

    iget-byte v5, v1, Lcom/t4game/UI_Super;->id:B

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_2
    iget-byte v2, v1, Lcom/t4game/UI_Super;->type:B

    if-ne v2, v6, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/t4game/UI_GoodBox;

    move-object v2, v0

    iget-boolean v2, v2, Lcom/t4game/UI_GoodBox;->isFocus:Z

    if-nez v2, :cond_1

    :cond_3
    iget-short v2, p0, Lcom/t4game/GameUi;->focusY:S

    invoke-virtual {v1, p1, v2}, Lcom/t4game/UI_Super;->draw(Ljavax/microedition/lcdui/Graphics;S)V

    goto :goto_0

    :cond_4
    iget-byte v1, p0, Lcom/t4game/GameUi;->focus:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    iget-byte v1, p0, Lcom/t4game/GameUi;->focus:B

    invoke-virtual {p0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-byte v1, v2, Lcom/t4game/UI_Super;->type:B

    if-ne v1, v6, :cond_5

    move-object v0, v2

    check-cast v0, Lcom/t4game/UI_GoodBox;

    move-object v1, v0

    iget-boolean v1, v1, Lcom/t4game/UI_GoodBox;->isFocus:Z

    if-eqz v1, :cond_5

    iget-short v1, p0, Lcom/t4game/GameUi;->focusY:S

    invoke-virtual {v2, p1, v1}, Lcom/t4game/UI_Super;->draw(Ljavax/microedition/lcdui/Graphics;S)V

    :cond_5
    iget-short v2, p0, Lcom/t4game/GameUi;->totalHight:S

    iget-short v3, p0, Lcom/t4game/GameUi;->h:S

    iget-short v4, p0, Lcom/t4game/GameUi;->focusH:S

    iget-short v1, p0, Lcom/t4game/GameUi;->x:S

    iget-short v5, p0, Lcom/t4game/GameUi;->w:S

    add-int/2addr v1, v5

    const/16 v5, 0xe

    sub-int/2addr v1, v5

    const/4 v5, 0x3

    sub-int v5, v1, v5

    add-int/lit8 v6, p2, 0x5

    iget-short v1, p0, Lcom/t4game/GameUi;->h:S

    const/16 v7, 0xa

    sub-int v7, v1, v7

    move-object v1, p0

    move-object v8, p1

    invoke-virtual/range {v1 .. v8}, Lcom/t4game/GameUi;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_6
    iget-short v1, p0, Lcom/t4game/GameUi;->focusY:S

    if-lez v1, :cond_7

    sget v1, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v2, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual {p1, v9, v9, v1, v2}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    :cond_7
    invoke-virtual {p0, p1}, Lcom/t4game/GameUi;->drawBubble(Ljavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public drawBubble(Ljavax/microedition/lcdui/Graphics;)V
    .locals 6

    iget-object v0, p0, Lcom/t4game/GameUi;->screen:Lcom/t4game/GameScreen;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/GameUi;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->stillOnScreen()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/t4game/GameUi;->testShowTopAletIntro()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/t4game/GameUi;->topAletIntroTick()V

    :cond_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GameUi;->screen:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/GameUi;->roleGood:Lcom/t4game/RoleGoods;

    iget v2, p0, Lcom/t4game/GameUi;->bubbleX:I

    iget v3, p0, Lcom/t4game/GameUi;->bubbleY:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/t4game/GameScreen;->paintGoodsName(Lcom/t4game/RoleGoods;IILjavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/GameUi;->roleGood:Lcom/t4game/RoleGoods;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/t4game/GameUi;->isOnBody:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GameUi;->screen:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/GameUi;->alert:Ljava/lang/String;

    iget v2, p0, Lcom/t4game/GameUi;->bubbleX:I

    iget v3, p0, Lcom/t4game/GameUi;->bubbleY:I

    iget v5, p0, Lcom/t4game/GameUi;->bubbleColor:I

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GameScreen;->paintFunctionIntro(Ljava/lang/String;IILjavax/microedition/lcdui/Graphics;I)V

    goto :goto_0
.end method

.method public drawBubbleWithRoleGoodGrade(Ljavax/microedition/lcdui/Graphics;[I)V
    .locals 6

    iget-object v0, p0, Lcom/t4game/GameUi;->screen:Lcom/t4game/GameScreen;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/GameUi;->screen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->stillOnScreen()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/t4game/GameUi;->testShowTopAletIntro()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/t4game/GameUi;->topAletIntroTick()V

    :cond_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GameUi;->screen:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/GameUi;->roleGood:Lcom/t4game/RoleGoods;

    iget v2, p0, Lcom/t4game/GameUi;->bubbleX:I

    iget v3, p0, Lcom/t4game/GameUi;->bubbleY:I

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GameScreen;->paintGoodsNameWithRoleGoodGrade(Lcom/t4game/RoleGoods;IILjavax/microedition/lcdui/Graphics;[I)V

    iget-object v0, p0, Lcom/t4game/GameUi;->roleGood:Lcom/t4game/RoleGoods;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/t4game/GameUi;->isOnBody:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GameUi;->screen:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/GameUi;->alert:Ljava/lang/String;

    iget v2, p0, Lcom/t4game/GameUi;->bubbleX:I

    iget v3, p0, Lcom/t4game/GameUi;->bubbleY:I

    iget v5, p0, Lcom/t4game/GameUi;->bubbleColor:I

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GameScreen;->paintFunctionIntro(Ljava/lang/String;IILjavax/microedition/lcdui/Graphics;I)V

    goto :goto_0
.end method

.method public getAction()Lcom/t4game/UI_Super;
    .locals 1

    iget-object v0, p0, Lcom/t4game/GameUi;->returnUI:Lcom/t4game/UI_Super;

    return-object v0
.end method

.method getTabC()Lcom/t4game/UI_TabContainer;
    .locals 1

    iget-object v0, p0, Lcom/t4game/GameUi;->tabC:Lcom/t4game/UI_TabContainer;

    if-nez v0, :cond_0

    new-instance v0, Lcom/t4game/UI_TabContainer;

    invoke-direct {v0, p0}, Lcom/t4game/UI_TabContainer;-><init>(Lcom/t4game/GameUi;)V

    iput-object v0, p0, Lcom/t4game/GameUi;->tabC:Lcom/t4game/UI_TabContainer;

    iget-object v0, p0, Lcom/t4game/GameUi;->tabC:Lcom/t4game/UI_TabContainer;

    invoke-virtual {p0, v0}, Lcom/t4game/GameUi;->addChild(Lcom/t4game/UI_Super;)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/GameUi;->tabC:Lcom/t4game/UI_TabContainer;

    return-object v0
.end method

.method public getUI(B)Lcom/t4game/UI_Super;
    .locals 2

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/t4game/GameUi;->getTabC()Lcom/t4game/UI_TabContainer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/GameUi;->UIHash:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/UI_Super;

    move-object v0, p0

    goto :goto_0
.end method

.method public getUI(Ljava/io/DataInputStream;)[Lcom/t4game/UI_Super;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    new-array v1, v0, [Lcom/t4game/UI_Super;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    invoke-virtual {p0, v3}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getUiPointerConfirm()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/t4game/GameUi;->isPointerConfirm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v1, p0, Lcom/t4game/GameUi;->isPointerConfirm:Z

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public init(Ljava/io/DataInputStream;)V
    .locals 2

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/t4game/GameUi;->px:S

    iput-short v0, p0, Lcom/t4game/GameUi;->py:S

    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iget-short v1, p0, Lcom/t4game/GameUi;->px:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GameUi;->x:S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iget-short v1, p0, Lcom/t4game/GameUi;->py:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GameUi;->y:S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/t4game/GameUi;->w:S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/t4game/GameUi;->h:S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/GameUi;->focus:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/GameUi;->BoundType:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/t4game/GameUi;->totalHight:S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/t4game/GameUi;->focusH:S

    invoke-direct {p0, p1}, Lcom/t4game/GameUi;->readData(Ljava/io/DataInputStream;)V

    iget-byte v0, p0, Lcom/t4game/GameUi;->focus:B

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/GameUi;->focus:B

    invoke-virtual {p0, v0}, Lcom/t4game/GameUi;->setFocus(B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public init(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/t4game/GameUi;->px:S

    iput-short v0, p0, Lcom/t4game/GameUi;->py:S

    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    iget-short v2, p0, Lcom/t4game/GameUi;->px:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, p0, Lcom/t4game/GameUi;->x:S

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    iget-short v2, p0, Lcom/t4game/GameUi;->py:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, p0, Lcom/t4game/GameUi;->y:S

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    iput-short v1, p0, Lcom/t4game/GameUi;->w:S

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    iput-short v1, p0, Lcom/t4game/GameUi;->h:S

    sget v1, Lcom/t4game/Defaults;->CANVAS_W:I

    iget-short v2, p0, Lcom/t4game/GameUi;->w:S

    sub-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/t4game/GameUi;->rx:S

    iget-short v1, p0, Lcom/t4game/GameUi;->h:S

    sget v2, Lcom/t4game/Defaults;->CANVAS_H:I

    if-ge v1, v2, :cond_0

    const/4 v1, 0x4

    iput-short v1, p0, Lcom/t4game/GameUi;->ry:S

    :cond_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/t4game/GameUi;->focus:B

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    iput-byte v1, p0, Lcom/t4game/GameUi;->BoundType:B

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    iput-short v1, p0, Lcom/t4game/GameUi;->totalHight:S

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    iput-short v1, p0, Lcom/t4game/GameUi;->focusH:S

    invoke-direct {p0, v0}, Lcom/t4game/GameUi;->readData(Ljava/io/DataInputStream;)V

    iget-byte v0, p0, Lcom/t4game/GameUi;->focus:B

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/GameUi;->focus:B

    invoke-virtual {p0, v0}, Lcom/t4game/GameUi;->setFocus(B)V

    iget-byte v0, p0, Lcom/t4game/GameUi;->focus:B

    iput-byte v0, p0, Lcom/t4game/GameUi;->lastPointedUi:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    sput-object p0, Lcom/t4game/GameUi;->topGameUI:Lcom/t4game/GameUi;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public keyEvent(I)V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, -0x6

    const/4 v5, -0x7

    const/4 v4, 0x1

    const/4 v3, -0x5

    const/4 v0, 0x0

    iget-byte v1, p0, Lcom/t4game/GameUi;->focus:B

    if-eq v1, v7, :cond_2

    iget-byte v0, p0, Lcom/t4game/GameUi;->focus:B

    invoke-virtual {p0, v0}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/t4game/UI_Super;->keyEvent(I)V

    :cond_2
    iget-byte v1, p0, Lcom/t4game/GameUi;->commandType:B

    if-nez v1, :cond_5

    if-eq p1, v3, :cond_3

    if-ne p1, v6, :cond_4

    :cond_3
    const/4 v1, 0x0

    sput-byte v1, Lcom/t4game/GameUi;->actionType:B

    :cond_4
    :goto_1
    sget-byte v1, Lcom/t4game/GameUi;->actionType:B

    if-eq v1, v7, :cond_0

    invoke-virtual {p0, v0}, Lcom/t4game/GameUi;->setAction(Lcom/t4game/UI_Super;)V

    goto :goto_0

    :cond_5
    iget-byte v1, p0, Lcom/t4game/GameUi;->commandType:B

    if-ne v1, v4, :cond_7

    if-eq p1, v3, :cond_6

    if-ne p1, v5, :cond_4

    :cond_6
    sput-byte v4, Lcom/t4game/GameUi;->actionType:B

    goto :goto_1

    :cond_7
    iget-byte v1, p0, Lcom/t4game/GameUi;->commandType:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    if-eq p1, v3, :cond_8

    if-ne p1, v6, :cond_9

    :cond_8
    const/4 v1, 0x0

    sput-byte v1, Lcom/t4game/GameUi;->actionType:B

    goto :goto_1

    :cond_9
    if-ne p1, v5, :cond_4

    sput-byte v4, Lcom/t4game/GameUi;->actionType:B

    goto :goto_1
.end method

.method public openBubble(Lcom/t4game/GameScreen;Lcom/t4game/RoleGoods;Ljava/lang/String;IIIZ)V
    .locals 2

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/t4game/GameUi;->screen:Lcom/t4game/GameScreen;

    iput-object p2, p0, Lcom/t4game/GameUi;->roleGood:Lcom/t4game/RoleGoods;

    iput-object p3, p0, Lcom/t4game/GameUi;->alert:Ljava/lang/String;

    iput p4, p0, Lcom/t4game/GameUi;->bubbleX:I

    iput p5, p0, Lcom/t4game/GameUi;->bubbleY:I

    iput p6, p0, Lcom/t4game/GameUi;->bubbleColor:I

    iput-boolean p7, p0, Lcom/t4game/GameUi;->isOnBody:Z

    iget-byte v0, p0, Lcom/t4game/GameUi;->topAletIntroTick:B

    if-ge v0, v1, :cond_0

    iput-byte v1, p0, Lcom/t4game/GameUi;->topAletIntroTick:B

    :cond_0
    return-void
.end method

.method public paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 7

    if-le p1, p2, :cond_0

    sget v0, Lcom/t4game/Defaults;->sfh:I

    div-int v0, p1, v0

    sget v1, Lcom/t4game/Defaults;->sfh:I

    div-int v1, p2, v1

    sget v2, Lcom/t4game/Defaults;->sfh:I

    div-int v2, p3, v2

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_0
    return-void
.end method

.method public pointEvent(II)B
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    sget-object v0, Lcom/t4game/GameUi;->topGameUI:Lcom/t4game/GameUi;

    if-ne v0, p0, :cond_1

    iget-short v0, p0, Lcom/t4game/GameUi;->x:S

    if-lt p1, v0, :cond_0

    iget-short v0, p0, Lcom/t4game/GameUi;->y:S

    add-int/lit8 v0, v0, 0x1c

    if-lt p2, v0, :cond_0

    iget-short v0, p0, Lcom/t4game/GameUi;->x:S

    iget-short v1, p0, Lcom/t4game/GameUi;->w:S

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    iget-short v0, p0, Lcom/t4game/GameUi;->y:S

    iget-short v1, p0, Lcom/t4game/GameUi;->h:S

    add-int/2addr v0, v1

    const/16 v1, 0x20

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_3

    :cond_0
    sput-byte v6, Lcom/t4game/GameUi;->actionType:B

    move v0, v7

    :goto_0
    return v0

    :cond_1
    iget-short v0, p0, Lcom/t4game/GameUi;->x:S

    if-lt p1, v0, :cond_2

    iget-short v0, p0, Lcom/t4game/GameUi;->y:S

    if-lt p2, v0, :cond_2

    iget-short v0, p0, Lcom/t4game/GameUi;->x:S

    iget-short v1, p0, Lcom/t4game/GameUi;->w:S

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_2

    iget-short v0, p0, Lcom/t4game/GameUi;->y:S

    iget-short v1, p0, Lcom/t4game/GameUi;->h:S

    add-int/2addr v0, v1

    if-le p2, v0, :cond_3

    :cond_2
    sput-byte v6, Lcom/t4game/GameUi;->actionType:B

    move v0, v7

    goto :goto_0

    :cond_3
    sget-byte v0, Lcom/t4game/GameUi;->actionType:B

    if-nez v0, :cond_4

    sput-byte v6, Lcom/t4game/GameUi;->actionType:B

    :cond_4
    iget-object v0, p0, Lcom/t4game/GameUi;->UIHash:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    move v2, v6

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/UI_Super;

    iget-object v3, p0, Lcom/t4game/GameUi;->notShow:Ljava/util/Hashtable;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/t4game/GameUi;->notShow:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Byte;

    iget-byte v5, v0, Lcom/t4game/UI_Super;->id:B

    invoke-direct {v4, v5}, Ljava/lang/Byte;-><init>(B)V

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_6
    iget-boolean v3, v0, Lcom/t4game/UI_Super;->focus:Z

    if-eqz v3, :cond_a

    invoke-virtual {v0, p1, p2}, Lcom/t4game/UI_Super;->pointEvent(II)B

    move-result v3

    :goto_2
    if-ltz v3, :cond_7

    move v2, v3

    :cond_7
    if-gez v3, :cond_8

    sput-byte v6, Lcom/t4game/GameUi;->actionType:B

    goto :goto_1

    :cond_8
    iget-byte v1, p0, Lcom/t4game/GameUi;->lastPointedUi:B

    if-ne v1, v2, :cond_9

    sput-byte v7, Lcom/t4game/GameUi;->actionType:B

    move v0, v2

    :goto_3
    int-to-byte v0, v0

    goto :goto_0

    :cond_9
    int-to-byte v1, v2

    iput-byte v1, p0, Lcom/t4game/GameUi;->lastPointedUi:B

    invoke-virtual {p0, v0}, Lcom/t4game/GameUi;->setAction(Lcom/t4game/UI_Super;)V

    sput-byte v6, Lcom/t4game/GameUi;->actionType:B

    move v0, v2

    goto :goto_3

    :cond_a
    move v3, v6

    goto :goto_2

    :cond_b
    move v0, v2

    goto :goto_3
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/t4game/GameUi;->UIHash:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/UI_Super;

    invoke-virtual {v0}, Lcom/t4game/UI_Super;->release()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/GameUi;->UIHash:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v0, -0x1

    sput-byte v0, Lcom/t4game/GameUi;->actionType:B

    return-void
.end method

.method public setAction(Lcom/t4game/UI_Super;)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/GameUi;->returnUI:Lcom/t4game/UI_Super;

    return-void
.end method

.method public setFocus(B)V
    .locals 3

    const/4 v2, -0x1

    iget-byte v0, p0, Lcom/t4game/GameUi;->focus:B

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/t4game/GameUi;->lose_focus:I

    iget-byte v0, p0, Lcom/t4game/GameUi;->focus:B

    invoke-virtual {p0, v0}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/t4game/UI_Super;->setFocus(Z)V

    iget-byte v0, p0, Lcom/t4game/GameUi;->focus:B

    if-eq v0, p1, :cond_2

    invoke-static {}, Lcom/t4game/PointerUtil;->clearConfirmInMenu()V

    iput-byte v2, p0, Lcom/t4game/GameUi;->lastPointedUi:B

    :cond_2
    iput-byte p1, p0, Lcom/t4game/GameUi;->focus:B

    invoke-virtual {p0, p1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/t4game/UI_Super;->setFocus(Z)V

    iput-object v0, p0, Lcom/t4game/GameUi;->returnUI:Lcom/t4game/UI_Super;

    iget-short v1, v0, Lcom/t4game/UI_Super;->y:S

    iget-short v0, v0, Lcom/t4game/UI_Super;->h:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lcom/t4game/GameUi;->setFocusY(S)V

    goto :goto_0
.end method

.method public setFocus(BI)V
    .locals 6

    const/16 v5, 0xa

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/16 v1, -0x3e8

    iput v1, p0, Lcom/t4game/GameUi;->lose_focus:I

    invoke-virtual {p0, p1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v2

    if-ne p2, v3, :cond_1

    iget-byte v1, v2, Lcom/t4game/UI_Super;->upFocusIndex:B

    if-eq v1, v3, :cond_0

    iget-byte v1, v2, Lcom/t4game/UI_Super;->upFocusIndex:B

    iput-byte v1, p0, Lcom/t4game/GameUi;->focus:B

    :cond_0
    :goto_0
    iget-byte v1, p0, Lcom/t4game/GameUi;->focus:B

    if-ne v1, p1, :cond_4

    iput p2, p0, Lcom/t4game/GameUi;->lose_focus:I

    :goto_1
    return-void

    :cond_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_2

    iget-byte v1, v2, Lcom/t4game/UI_Super;->dnFocusIndex:B

    if-eq v1, v3, :cond_0

    iget-byte v1, v2, Lcom/t4game/UI_Super;->dnFocusIndex:B

    iput-byte v1, p0, Lcom/t4game/GameUi;->focus:B

    goto :goto_0

    :cond_2
    const/4 v1, -0x3

    if-ne p2, v1, :cond_3

    iget-byte v1, v2, Lcom/t4game/UI_Super;->lfFocusIndex:B

    if-eq v1, v3, :cond_0

    iget-byte v1, v2, Lcom/t4game/UI_Super;->lfFocusIndex:B

    iput-byte v1, p0, Lcom/t4game/GameUi;->focus:B

    goto :goto_0

    :cond_3
    const/4 v1, -0x4

    if-ne p2, v1, :cond_0

    iget-byte v1, v2, Lcom/t4game/UI_Super;->rtFocusIndex:B

    if-eq v1, v3, :cond_0

    iget-byte v1, v2, Lcom/t4game/UI_Super;->rtFocusIndex:B

    iput-byte v1, p0, Lcom/t4game/GameUi;->focus:B

    goto :goto_0

    :cond_4
    iget-byte v1, p0, Lcom/t4game/GameUi;->focus:B

    invoke-virtual {p0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v3

    iget-byte v1, v2, Lcom/t4game/UI_Super;->type:B

    if-ne v1, v5, :cond_5

    iget-byte v1, v3, Lcom/t4game/UI_Super;->type:B

    if-ne v1, v5, :cond_5

    move-object v0, v2

    check-cast v0, Lcom/t4game/UI_PageLable;

    move-object v1, v0

    iput-boolean v4, v1, Lcom/t4game/UI_PageLable;->showInside:Z

    :cond_5
    invoke-virtual {v2, v4}, Lcom/t4game/UI_Super;->setFocus(Z)V

    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Lcom/t4game/UI_Super;->setFocus(Z)V

    iget-short v1, v3, Lcom/t4game/UI_Super;->y:S

    iget-short v2, v3, Lcom/t4game/UI_Super;->h:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    invoke-virtual {p0, v1}, Lcom/t4game/GameUi;->setFocusY(S)V

    goto :goto_1
.end method

.method public setFocus(Z)V
    .locals 0

    return-void
.end method

.method public setFocusY(S)V
    .locals 2

    iget-short v0, p0, Lcom/t4game/GameUi;->y:S

    iget-short v1, p0, Lcom/t4game/GameUi;->h:S

    add-int/2addr v0, v1

    sub-int v0, p1, v0

    if-lez v0, :cond_0

    iget-short v0, p0, Lcom/t4game/GameUi;->y:S

    iget-short v1, p0, Lcom/t4game/GameUi;->h:S

    add-int/2addr v0, v1

    sub-int v0, p1, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GameUi;->focusY:S

    :goto_0
    iget-short v0, p0, Lcom/t4game/GameUi;->y:S

    sub-int v0, p1, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GameUi;->focusH:S

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/t4game/GameUi;->focusY:S

    goto :goto_0
.end method

.method public testPoint(IISSSS)Z
    .locals 2

    const/4 v0, 0x0

    if-le p1, p3, :cond_0

    add-int v1, p3, p5

    if-ge p1, v1, :cond_0

    if-le p2, p4, :cond_0

    add-int v1, p4, p6

    if-ge p2, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
