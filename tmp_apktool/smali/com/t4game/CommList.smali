.class public Lcom/t4game/CommList;
.super Ljava/lang/Object;


# instance fields
.field action:Lcom/t4game/UI_Menu;

.field actionMenu:[[Ljava/lang/String;

.field cmd:I

.field cmdlist:[B

.field col:B

.field currentPage:B

.field gameui:Lcom/t4game/GameUi;

.field gameworld:Lcom/t4game/GameWorld;

.field imageH:Ljava/util/Hashtable;

.field imageId:[S

.field itemActionId:[[I

.field itemId:[I

.field left:Ljava/lang/String;

.field listIndex:I

.field loadS:[[B

.field loadState:[B

.field menuL:Ljava/lang/String;

.field menuR:Ljava/lang/String;

.field morePage:Z

.field numFlag:I

.field right:Ljava/lang/String;

.field tickTime:I

.field timeOn:I

.field title:Ljava/lang/String;

.field totalPage:B

.field viewState:B


# direct methods
.method public constructor <init>(Lcom/t4game/GameWorld;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string v6, "\u786e\u5b9a"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/t4game/GameUi;

    invoke-direct {v1}, Lcom/t4game/GameUi;-><init>()V

    iput-object v1, p0, Lcom/t4game/CommList;->gameui:Lcom/t4game/GameUi;

    iput-byte v4, p0, Lcom/t4game/CommList;->viewState:B

    const-string v1, "\u786e\u5b9a"

    iput-object v6, p0, Lcom/t4game/CommList;->left:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/t4game/CommList;->right:Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/CommList;->loadState:[B

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/CommList;->actionMenu:[[Ljava/lang/String;

    iput v4, p0, Lcom/t4game/CommList;->listIndex:I

    move-object v0, v2

    check-cast v0, [[B

    move-object v3, v0

    iput-object v3, p0, Lcom/t4game/CommList;->loadS:[[B

    move-object v0, v2

    check-cast v0, [[I

    move-object v3, v0

    iput-object v3, p0, Lcom/t4game/CommList;->itemActionId:[[I

    const-string v1, "\u786e\u5b9a"

    iput-object v6, p0, Lcom/t4game/CommList;->menuL:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/t4game/CommList;->menuR:Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/CommList;->action:Lcom/t4game/UI_Menu;

    iput-object v2, p0, Lcom/t4game/CommList;->itemId:[I

    iput v4, p0, Lcom/t4game/CommList;->cmd:I

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/t4game/CommList;->imageH:Ljava/util/Hashtable;

    iput-object v2, p0, Lcom/t4game/CommList;->imageId:[S

    iput-object p1, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    return-void
.end method

.method private sendMessage(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/t4game/GameWorld;->commListOn:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    :goto_0
    iget-object v0, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    iget v1, p0, Lcom/t4game/CommList;->cmd:I

    iget-object v2, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    goto :goto_0
.end method

.method private sendMessage(ZZII)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    :goto_0
    iget-object v0, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p3}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p4}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/CommList;->cmdlist:[B

    array-length v1, v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/t4game/CommList;->cmdlist:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v2, p0, Lcom/t4game/CommList;->cmdlist:[B

    aget-byte v2, v2, v0

    invoke-virtual {v1, v2}, Lcom/t4game/IoBuffer;->putByte(B)V

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, v2}, Lcom/t4game/IoBuffer;->putByte(B)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    iget v1, p0, Lcom/t4game/CommList;->cmd:I

    iget-object v2, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/CommList;->title:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/t4game/DraftingUtil;->paintFloatingDailog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    iget-byte v0, p0, Lcom/t4game/CommList;->viewState:B

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/t4game/CommList;->gameui:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1}, Lcom/t4game/GameUi;->draw(Ljavax/microedition/lcdui/Graphics;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/CommList;->viewState:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/CommList;->gameui:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1}, Lcom/t4game/GameUi;->draw(Ljavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/CommList;->action:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->draw(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0
.end method

.method public init(Lcom/t4game/IoBuffer;)V
    .locals 20

    invoke-virtual/range {p1 .. p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/CommList;->title:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/t4game/CommList;->col:B

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/CommList;->col:B

    move v4, v0

    new-array v5, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/CommList;->col:B

    move v6, v0

    if-ge v4, v6, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    goto :goto_0

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/t4game/IoBuffer;->getBoolean()Z

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/t4game/CommList;->morePage:Z

    invoke-virtual/range {p1 .. p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/t4game/CommList;->currentPage:B

    invoke-virtual/range {p1 .. p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/t4game/CommList;->totalPage:B

    invoke-virtual/range {p1 .. p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v4

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v4, 0x0

    :cond_1
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/CommList;->left:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v4

    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v4, 0x0

    :cond_2
    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/CommList;->right:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v4

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/t4game/CommList;->cmd:I

    invoke-virtual/range {p1 .. p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v8

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/CommList;->col:B

    move v4, v0

    filled-new-array {v8, v4}, [I

    move-result-object v4

    const-class v9, Ljava/lang/String;

    invoke-static {v9, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [[Ljava/lang/String;

    move-object v13, v0

    new-array v4, v8, [B

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/CommList;->loadState:[B

    const/4 v4, 0x1

    filled-new-array {v8, v4}, [I

    move-result-object v4

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [[I

    move-object v14, v0

    new-array v4, v8, [I

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/CommList;->itemId:[I

    new-array v4, v8, [[Ljava/lang/String;

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/CommList;->actionMenu:[[Ljava/lang/String;

    new-array v4, v8, [[I

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/CommList;->itemActionId:[[I

    new-array v4, v8, [[B

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/CommList;->loadS:[[B

    new-array v15, v8, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v8, :cond_6

    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/CommList;->col:B

    move v10, v0

    if-ge v9, v10, :cond_3

    aget-object v10, v13, v4

    invoke-virtual/range {p1 .. p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    int-to-byte v9, v9

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/CommList;->itemId:[I

    move-object v9, v0

    invoke-virtual/range {p1 .. p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v10

    aput v10, v9, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/CommList;->loadState:[B

    move-object v9, v0

    invoke-virtual/range {p1 .. p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v10

    aput-byte v10, v9, v4

    aget-object v9, v14, v4

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v11

    aput v11, v9, v10

    invoke-virtual/range {p1 .. p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v15, v4

    invoke-virtual/range {p1 .. p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v9

    if-lez v9, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/CommList;->actionMenu:[[Ljava/lang/String;

    move-object v10, v0

    new-array v11, v9, [Ljava/lang/String;

    aput-object v11, v10, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/CommList;->itemActionId:[[I

    move-object v10, v0

    new-array v11, v9, [I

    aput-object v11, v10, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/CommList;->loadS:[[B

    move-object v10, v0

    new-array v11, v9, [B

    aput-object v11, v10, v4

    const/4 v10, 0x0

    :goto_3
    if-ge v10, v9, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/CommList;->actionMenu:[[Ljava/lang/String;

    move-object v11, v0

    aget-object v11, v11, v4

    invoke-virtual/range {p1 .. p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/CommList;->itemActionId:[[I

    move-object v11, v0

    aget-object v11, v11, v4

    invoke-virtual/range {p1 .. p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v12

    aput v12, v11, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/CommList;->loadS:[[B

    move-object v11, v0

    aget-object v11, v11, v4

    invoke-virtual/range {p1 .. p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v12

    aput-byte v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/CommList;->actionMenu:[[Ljava/lang/String;

    move-object v9, v0

    const/4 v10, 0x0

    aput-object v10, v9, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/CommList;->itemActionId:[[I

    move-object v9, v0

    const/4 v10, 0x0

    aput-object v10, v9, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/CommList;->loadS:[[B

    move-object v9, v0

    const/4 v10, 0x0

    aput-object v10, v9, v4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    goto/16 :goto_1

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/t4game/IoBuffer;->getBoolean()Z

    move-result v16

    if-eqz v16, :cond_8

    new-array v4, v8, [S

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/t4game/CommList;->imageId:[S

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v8, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/CommList;->imageId:[S

    move-object v9, v0

    invoke-virtual/range {p1 .. p1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v10

    aput-short v10, v9, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/CommList;->imageId:[S

    move-object v9, v0

    aget-short v9, v9, v4

    const/4 v10, -0x1

    if-eq v9, v10, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/CommList;->imageH:Ljava/util/Hashtable;

    move-object v9, v0

    const-string v10, "0"

    const-string v11, "image"

    invoke-virtual {v9, v10, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/CommList;->gameui:Lcom/t4game/GameUi;

    move-object v4, v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/data/ui/commList_new_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/CommList;->col:B

    move v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".bin"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/t4game/GameUi;->init(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/CommList;->gameui:Lcom/t4game/GameUi;

    move-object v4, v0

    const/4 v8, 0x2

    iput-byte v8, v4, Lcom/t4game/GameUi;->commandType:B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/CommList;->gameui:Lcom/t4game/GameUi;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/CommList;->gameui:Lcom/t4game/GameUi;

    move-object v8, v0

    iget-byte v8, v8, Lcom/t4game/GameUi;->focus:B

    invoke-virtual {v4, v8}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object p1

    check-cast p1, Lcom/t4game/UI_List;

    check-cast p1, Lcom/t4game/UI_List;

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/UI_List;->setTitle([Ljava/lang/String;II)V

    invoke-virtual/range {p1 .. p1}, Lcom/t4game/UI_List;->clearAction()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/CommList;->gameui:Lcom/t4game/GameUi;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/t4game/GameUi;->setFocus(B)V

    const/4 v4, 0x0

    move/from16 v17, v4

    :goto_5
    array-length v4, v13

    move/from16 v0, v17

    move v1, v4

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/CommList;->col:B

    move v4, v0

    move v0, v4

    new-array v0, v0, [Lcom/t4game/ListItem;

    move-object/from16 v18, v0

    const/4 v4, 0x0

    move/from16 v19, v4

    :goto_6
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/CommList;->col:B

    move v4, v0

    move/from16 v0, v19

    move v1, v4

    if-ge v0, v1, :cond_c

    new-instance v4, Lcom/t4game/ListItem;

    invoke-direct {v4}, Lcom/t4game/ListItem;-><init>()V

    aput-object v4, v18, v19

    if-nez v19, :cond_b

    aget-object v4, v18, v19

    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/CommList;->imageH:Ljava/util/Hashtable;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/CommList;->imageId:[S

    move-object v6, v0

    aget-short v6, v6, v17

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/microedition/lcdui/Image;

    :goto_7
    aget-object v6, v14, v17

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v9, v13, v17

    aget-object v9, v9, v19

    aput-object v9, v7, v8

    aget-object v8, v15, v17

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x0

    :goto_8
    const/4 v9, 0x0

    const v10, 0xff00

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/t4game/ListItem;->Init(Ljavax/microedition/lcdui/Image;[I[Ljava/lang/String;Ljava/lang/String;[II[Ljava/lang/String;Z)V

    :goto_9
    add-int/lit8 v4, v19, 0x1

    move/from16 v19, v4

    goto :goto_6

    :cond_9
    const/4 v5, 0x0

    goto :goto_7

    :cond_a
    aget-object v8, v15, v17

    goto :goto_8

    :cond_b
    aget-object v4, v18, v19

    const/4 v5, 0x0

    aget-object v6, v14, v17

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aget-object v9, v13, v17

    aget-object v9, v9, v19

    aput-object v9, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/t4game/ListItem;->Init(Ljavax/microedition/lcdui/Image;[I[Ljava/lang/String;Ljava/lang/String;[II[Ljava/lang/String;Z)V

    goto :goto_9

    :cond_c
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/t4game/UI_List;->addChoice([Lcom/t4game/ListItem;)V

    add-int/lit8 v4, v17, 0x1

    move/from16 v17, v4

    goto/16 :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/CommList;->gameui:Lcom/t4game/GameUi;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/t4game/UI_List;->id:B

    move v5, v0

    invoke-virtual {v4, v5}, Lcom/t4game/GameUi;->setFocus(B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/CommList;->gameui:Lcom/t4game/GameUi;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/t4game/GameUi;->autoLayout()V

    return-void
.end method

.method public keyEvent(I)V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/t4game/CommList;->gameui:Lcom/t4game/GameUi;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/CommList;->viewState:B

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/t4game/CommList;->gameui:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1}, Lcom/t4game/GameUi;->keyEvent(I)V

    iget-object v0, p0, Lcom/t4game/CommList;->gameui:Lcom/t4game/GameUi;

    invoke-virtual {v0, v5}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    check-cast v0, Lcom/t4game/UI_List;

    check-cast v0, Lcom/t4game/UI_List;

    invoke-virtual {v0}, Lcom/t4game/UI_List;->GetCommand()S

    move-result v0

    if-ne v0, v7, :cond_2

    iget-object v0, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->npcFunction:Lcom/t4game/NpcQuest;

    iget-short v1, v1, Lcom/t4game/NpcQuest;->flag:S

    iget-object v2, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->npcFunction:Lcom/t4game/NpcQuest;

    iget-byte v2, v2, Lcom/t4game/NpcQuest;->flagId:B

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->sendComm_NpcFuction_Request_Message(SB)Z

    iget-object v0, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iput v5, v0, Lcom/t4game/GameScreen;->viewCom:I

    iget-object v0, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iput-boolean v5, v0, Lcom/t4game/GameWorld;->showIntro:Z

    goto :goto_0

    :cond_2
    const/4 v1, -0x6

    if-eq p1, v1, :cond_3

    const/4 v1, -0x5

    if-ne p1, v1, :cond_8

    :cond_3
    iget-object v1, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-boolean v1, v1, Lcom/t4game/GameWorld;->showIntro:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/t4game/CommList;->actionMenu:[[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/t4game/CommList;->left:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/t4game/CommList;->loadState:[B

    aget-byte v1, v1, v0

    shr-int/lit8 v2, v1, 0x4

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_4

    iget-object v2, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iput-boolean v5, v2, Lcom/t4game/GameWorld;->commListOn:Z

    iget-object v2, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iput-byte v5, v2, Lcom/t4game/GameWorld;->alertQuestFlag:B

    :cond_4
    shr-int/lit8 v2, v1, 0x2

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_5

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v6, :cond_6

    move v1, v6

    :goto_1
    iget-object v2, p0, Lcom/t4game/CommList;->itemId:[I

    aget v0, v2, v0

    invoke-direct {p0, v6, v1, v0, v7}, Lcom/t4game/CommList;->sendMessage(ZZII)Z

    :cond_5
    :goto_2
    iget-boolean v0, p0, Lcom/t4game/CommList;->morePage:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x3

    if-ne p1, v0, :cond_e

    iget-byte v0, p0, Lcom/t4game/CommList;->currentPage:B

    if-lez v0, :cond_0

    invoke-direct {p0, v6}, Lcom/t4game/CommList;->sendMessage(Z)Z

    goto/16 :goto_0

    :cond_6
    move v1, v5

    goto :goto_1

    :cond_7
    iput-byte v6, p0, Lcom/t4game/CommList;->viewState:B

    iput v0, p0, Lcom/t4game/CommList;->listIndex:I

    new-instance v1, Lcom/t4game/UI_Menu;

    iget-object v2, p0, Lcom/t4game/CommList;->actionMenu:[[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-direct {v1, v0}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/t4game/CommList;->action:Lcom/t4game/UI_Menu;

    goto :goto_2

    :cond_8
    const/4 v1, -0x7

    if-ne p1, v1, :cond_5

    iget-object v1, p0, Lcom/t4game/CommList;->actionMenu:[[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/t4game/CommList;->right:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/t4game/CommList;->loadState:[B

    aget-byte v1, v1, v0

    shr-int/lit8 v2, v1, 0x5

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_a

    iget-object v2, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->npcFunction:Lcom/t4game/NpcQuest;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iget v2, v2, Lcom/t4game/GameScreen;->viewCom:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_b

    iget-object v2, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v3, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->npcFunction:Lcom/t4game/NpcQuest;

    iget-short v3, v3, Lcom/t4game/NpcQuest;->flag:S

    iget-object v4, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v4, v4, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iget-object v4, v4, Lcom/t4game/GameScreen;->npcFunction:Lcom/t4game/NpcQuest;

    iget-byte v4, v4, Lcom/t4game/NpcQuest;->flagId:B

    invoke-virtual {v2, v3, v4}, Lcom/t4game/GameWorld;->sendComm_NpcFuction_Request_Message(SB)Z

    iget-object v2, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iput v5, v2, Lcom/t4game/GameScreen;->viewCom:I

    iget-object v2, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iput-boolean v5, v2, Lcom/t4game/GameWorld;->showIntro:Z

    :goto_3
    iget-object v2, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iput-boolean v5, v2, Lcom/t4game/GameWorld;->showIntro:Z

    :cond_9
    iget-object v2, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iput-boolean v5, v2, Lcom/t4game/GameWorld;->commListOn:Z

    :cond_a
    shr-int/lit8 v2, v1, 0x3

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_5

    shr-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v6, :cond_c

    move v1, v6

    :goto_4
    iget-object v2, p0, Lcom/t4game/CommList;->itemId:[I

    aget v0, v2, v0

    invoke-direct {p0, v5, v1, v0, v7}, Lcom/t4game/CommList;->sendMessage(ZZII)Z

    goto/16 :goto_2

    :cond_b
    iget-object v2, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/t4game/GameScreen;->npcFunction:Lcom/t4game/NpcQuest;

    goto :goto_3

    :cond_c
    move v1, v5

    goto :goto_4

    :cond_d
    iput-byte v6, p0, Lcom/t4game/CommList;->viewState:B

    iput v0, p0, Lcom/t4game/CommList;->listIndex:I

    new-instance v1, Lcom/t4game/UI_Menu;

    iget-object v2, p0, Lcom/t4game/CommList;->actionMenu:[[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-direct {v1, v0}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/t4game/CommList;->action:Lcom/t4game/UI_Menu;

    goto/16 :goto_2

    :cond_e
    const/4 v0, -0x4

    if-ne p1, v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/CommList;->currentPage:B

    iget-byte v1, p0, Lcom/t4game/CommList;->totalPage:B

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v5}, Lcom/t4game/CommList;->sendMessage(Z)Z

    goto/16 :goto_0

    :cond_f
    iget-byte v0, p0, Lcom/t4game/CommList;->viewState:B

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcom/t4game/CommList;->action:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->keyEvent(I)V

    iget-object v0, p0, Lcom/t4game/CommList;->action:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    if-eq v0, v7, :cond_10

    const/4 v1, -0x2

    if-ne v0, v1, :cond_11

    iput-byte v5, p0, Lcom/t4game/CommList;->viewState:B

    :cond_10
    :goto_5
    iget-object v0, p0, Lcom/t4game/CommList;->action:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/CommList;->action:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->clearCommand()V

    goto/16 :goto_0

    :cond_11
    iget-object v1, p0, Lcom/t4game/CommList;->loadS:[[B

    iget v2, p0, Lcom/t4game/CommList;->listIndex:I

    aget-object v1, v1, v2

    aget-byte v1, v1, v0

    shr-int/lit8 v2, v1, 0x4

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_12

    iget-object v2, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iput-boolean v5, v2, Lcom/t4game/GameWorld;->commListOn:Z

    :cond_12
    shr-int/lit8 v2, v1, 0x2

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_10

    shr-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v6, :cond_13

    move v1, v6

    :goto_6
    iget-object v2, p0, Lcom/t4game/CommList;->itemId:[I

    iget v3, p0, Lcom/t4game/CommList;->listIndex:I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/t4game/CommList;->itemActionId:[[I

    iget v4, p0, Lcom/t4game/CommList;->listIndex:I

    aget-object v3, v3, v4

    aget v0, v3, v0

    invoke-direct {p0, v5, v1, v2, v0}, Lcom/t4game/CommList;->sendMessage(ZZII)Z

    goto :goto_5

    :cond_13
    move v1, v5

    goto :goto_6
.end method

.method public onPointerEvent()V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/t4game/CommList;->gameui:Lcom/t4game/GameUi;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/CommList;->viewState:B

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/t4game/CommList;->gameui:Lcom/t4game/GameUi;

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    sget v2, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameUi;->pointEvent(II)B

    iget-object v0, p0, Lcom/t4game/CommList;->gameui:Lcom/t4game/GameUi;

    invoke-virtual {v0, v6}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    check-cast v0, Lcom/t4game/UI_List;

    check-cast v0, Lcom/t4game/UI_List;

    invoke-virtual {v0}, Lcom/t4game/UI_List;->GetCommand()S

    move-result v0

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerLeftSoftKey()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerConfirm()Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_2
    iget-object v1, p0, Lcom/t4game/CommList;->actionMenu:[[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/t4game/CommList;->left:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/t4game/CommList;->loadState:[B

    aget-byte v1, v1, v0

    shr-int/lit8 v2, v1, 0x4

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_3

    iget-object v2, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iput-boolean v6, v2, Lcom/t4game/GameWorld;->commListOn:Z

    :cond_3
    shr-int/lit8 v2, v1, 0x2

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_4

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v5, :cond_5

    move v1, v5

    :goto_1
    iget-object v2, p0, Lcom/t4game/CommList;->itemId:[I

    aget v0, v2, v0

    invoke-direct {p0, v5, v1, v0, v7}, Lcom/t4game/CommList;->sendMessage(ZZII)Z

    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/t4game/CommList;->morePage:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_5
    move v1, v6

    goto :goto_1

    :cond_6
    iput-byte v5, p0, Lcom/t4game/CommList;->viewState:B

    iput v0, p0, Lcom/t4game/CommList;->listIndex:I

    new-instance v1, Lcom/t4game/UI_Menu;

    iget-object v2, p0, Lcom/t4game/CommList;->actionMenu:[[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-direct {v1, v0}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/t4game/CommList;->action:Lcom/t4game/UI_Menu;

    goto :goto_2

    :cond_7
    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerRightSoftKey()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/t4game/CommList;->actionMenu:[[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_c

    iget-object v1, p0, Lcom/t4game/CommList;->right:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/t4game/CommList;->loadState:[B

    aget-byte v1, v1, v0

    shr-int/lit8 v2, v1, 0x5

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_9

    iget-object v2, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->npcFunction:Lcom/t4game/NpcQuest;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iget v2, v2, Lcom/t4game/GameScreen;->viewCom:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_a

    iget-object v2, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v3, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->npcFunction:Lcom/t4game/NpcQuest;

    iget-short v3, v3, Lcom/t4game/NpcQuest;->flag:S

    iget-object v4, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v4, v4, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iget-object v4, v4, Lcom/t4game/GameScreen;->npcFunction:Lcom/t4game/NpcQuest;

    iget-byte v4, v4, Lcom/t4game/NpcQuest;->flagId:B

    invoke-virtual {v2, v3, v4}, Lcom/t4game/GameWorld;->sendComm_NpcFuction_Request_Message(SB)Z

    iget-object v2, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iput v6, v2, Lcom/t4game/GameScreen;->viewCom:I

    iget-object v2, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iput-boolean v6, v2, Lcom/t4game/GameWorld;->showIntro:Z

    :goto_3
    iget-object v2, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iput-boolean v6, v2, Lcom/t4game/GameWorld;->showIntro:Z

    :cond_8
    iget-object v2, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iput-boolean v6, v2, Lcom/t4game/GameWorld;->commListOn:Z

    :cond_9
    shr-int/lit8 v2, v1, 0x3

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_4

    shr-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v5, :cond_b

    move v1, v5

    :goto_4
    iget-object v2, p0, Lcom/t4game/CommList;->itemId:[I

    aget v0, v2, v0

    invoke-direct {p0, v6, v1, v0, v7}, Lcom/t4game/CommList;->sendMessage(ZZII)Z

    goto :goto_2

    :cond_a
    iget-object v2, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/t4game/GameScreen;->npcFunction:Lcom/t4game/NpcQuest;

    goto :goto_3

    :cond_b
    move v1, v6

    goto :goto_4

    :cond_c
    iput-byte v5, p0, Lcom/t4game/CommList;->viewState:B

    iput v0, p0, Lcom/t4game/CommList;->listIndex:I

    new-instance v1, Lcom/t4game/UI_Menu;

    iget-object v2, p0, Lcom/t4game/CommList;->actionMenu:[[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-direct {v1, v0}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, p0, Lcom/t4game/CommList;->action:Lcom/t4game/UI_Menu;

    goto/16 :goto_2

    :cond_d
    iget-byte v0, p0, Lcom/t4game/CommList;->viewState:B

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/t4game/CommList;->action:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->pointerEvent()V

    iget-object v0, p0, Lcom/t4game/CommList;->action:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    if-eq v0, v7, :cond_e

    const/4 v1, -0x2

    if-ne v0, v1, :cond_f

    iput-byte v6, p0, Lcom/t4game/CommList;->viewState:B

    :cond_e
    :goto_5
    iget-object v0, p0, Lcom/t4game/CommList;->action:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/CommList;->action:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->clearCommand()V

    goto/16 :goto_0

    :cond_f
    iget-object v1, p0, Lcom/t4game/CommList;->loadS:[[B

    iget v2, p0, Lcom/t4game/CommList;->listIndex:I

    aget-object v1, v1, v2

    aget-byte v1, v1, v0

    shr-int/lit8 v2, v1, 0x4

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_10

    iget-object v2, p0, Lcom/t4game/CommList;->gameworld:Lcom/t4game/GameWorld;

    iput-boolean v6, v2, Lcom/t4game/GameWorld;->commListOn:Z

    :cond_10
    shr-int/lit8 v2, v1, 0x2

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_e

    shr-int/lit8 v1, v1, 0x1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v5, :cond_11

    move v1, v5

    :goto_6
    iget-object v2, p0, Lcom/t4game/CommList;->itemId:[I

    iget v3, p0, Lcom/t4game/CommList;->listIndex:I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/t4game/CommList;->itemActionId:[[I

    iget v4, p0, Lcom/t4game/CommList;->listIndex:I

    aget-object v3, v3, v4

    aget v0, v3, v0

    invoke-direct {p0, v6, v1, v2, v0}, Lcom/t4game/CommList;->sendMessage(ZZII)Z

    goto :goto_5

    :cond_11
    move v1, v6

    goto :goto_6
.end method

.method public pointEvent(II)V
    .locals 2

    iget-byte v0, p0, Lcom/t4game/CommList;->viewState:B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/CommList;->gameui:Lcom/t4game/GameUi;

    invoke-virtual {v0, p1, p2}, Lcom/t4game/GameUi;->pointEvent(II)B

    iget-object v0, p0, Lcom/t4game/CommList;->gameui:Lcom/t4game/GameUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object v0

    check-cast v0, Lcom/t4game/UI_List;

    check-cast v0, Lcom/t4game/UI_List;

    invoke-virtual {v0}, Lcom/t4game/UI_List;->GetCommand()S

    sget-byte v0, Lcom/t4game/GameUi;->actionType:B

    if-nez v0, :cond_0

    const/4 v0, -0x5

    invoke-virtual {p0, v0}, Lcom/t4game/CommList;->keyEvent(I)V

    :cond_0
    return-void
.end method
